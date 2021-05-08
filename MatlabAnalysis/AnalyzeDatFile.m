function AnalyzeDatFile(dat_files)
% ANALYZEDATFILES - given a folder of .dat files, will compile the data to
% analyze the swarm behavior. Specifically for shape formation
% Each .dat file must be the same length (aka same simulation duration)
% Column 1 of .dat file should be simulation time
% Column 2 of .dat file should be the robot ID
% Column 3 of .dat file should be the number of invalid neighbors (inside
% radius)
% Column 4 of .dat file should be the number of valid neighbors (on radius)
% Column 5 of .dat file should be the number of the counter (aka is the
% robot moving or stopped).
arguments
    dat_files (1,:) string
end

fileList = dir(dat_files + "/*.dat");
num_files = size(fileList,1);

filename = dat_files + "/" + fileList(1).name;
A = readtable(filename);
B = A{:,:};
% Averaging the readings in the multiple dat files
for i = 2:num_files
    filename = dat_files + "/" + fileList(i).name;
    A = readtable(filename);
    B = B + A{:,:};
end
B = B./num_files;
num_robots = 1 + max(B(:,2));
time_steps = size(B,1)/num_robots;
% Determining the percentage of robots stopped, the average
% number of valid robots, and averagae number of invalid robots over time
c = distinguishable_colors(num_robots);

num_valid_neighbors = zeros(time_steps,6);
num_invalid_neighbors = zeros(time_steps,1);

time_step_average = zeros(time_steps,1);
average_valid_neighbors = zeros(time_steps,1);
average_invalid_neighbors = zeros(time_steps,1);
for j = 1:num_robots:size(B,1)
    time_step_average(floor(j/num_robots)+1,1) = sum(B(j:j+num_robots-1,5) >= 0)/num_robots;
    average_valid_neighbors(floor(j/num_robots)+1,1) = sum(B(j:j+num_robots-1,4))/num_robots;
    average_invalid_neighbors(floor(j/num_robots)+1,1) = sum(B(j:j+num_robots-1,3))/num_robots;
    
    for i = 1:6
        num_valid_neighbors(j,i) = sum(B(j:j+num_robots-1,4) == i);
        num_invalid_neighbors(j,1) = sum(B(j:j+num_robots-1,3) > 0);
    end
end
% Stopped plot
figure()
plot(B(1:num_robots:end,1),time_step_average,...
        'Color',c(1,:),'LineWidth',2);
xlabel("Argos time steps (0.1 seconds)",'FontSize',16)
ylabel(sprintf("Percentage of robots stopped"),'FontSize',16)
title('Percentage of robots stopped over time in Simulation','FontSize',18)
% legend('FontSize',20)


% Valid Neighbors  plot
figure()
plot(B(1:num_robots:end,1),average_valid_neighbors,...
        'Color',c(2,:),'LineWidth',2);
xlabel("Argos time steps (0.1 seconds)",'FontSize',16)
ylabel(sprintf("Average number of valid neighbors per robot"),'FontSize',16)
title('Number of valid neighbors over time in Simulation','FontSize',18)

% Invalid Neighbors plot
figure()
plot(B(1:num_robots:end,1),average_invalid_neighbors,...
        'Color',c(3,:),'LineWidth',2);
xlabel("Argos time steps (0.1 seconds)",'FontSize',16)
ylabel(sprintf("Average number of invalid neighbors per robot"),'FontSize',16)
title('Number of invalid neighbors over time in Simulation','FontSize',18)

end