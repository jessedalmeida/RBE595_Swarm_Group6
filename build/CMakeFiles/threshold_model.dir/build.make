# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.20.1/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.20.1/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/marcreardon/Documents/RBE595_Swarm_Group6

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/marcreardon/Documents/RBE595_Swarm_Group6/build

# Include any dependencies generated for this target.
include CMakeFiles/threshold_model.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/threshold_model.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/threshold_model.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/threshold_model.dir/flags.make

CMakeFiles/threshold_model.dir/threshold_model_autogen/mocs_compilation.cpp.o: CMakeFiles/threshold_model.dir/flags.make
CMakeFiles/threshold_model.dir/threshold_model_autogen/mocs_compilation.cpp.o: threshold_model_autogen/mocs_compilation.cpp
CMakeFiles/threshold_model.dir/threshold_model_autogen/mocs_compilation.cpp.o: CMakeFiles/threshold_model.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/marcreardon/Documents/RBE595_Swarm_Group6/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/threshold_model.dir/threshold_model_autogen/mocs_compilation.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/threshold_model.dir/threshold_model_autogen/mocs_compilation.cpp.o -MF CMakeFiles/threshold_model.dir/threshold_model_autogen/mocs_compilation.cpp.o.d -o CMakeFiles/threshold_model.dir/threshold_model_autogen/mocs_compilation.cpp.o -c /Users/marcreardon/Documents/RBE595_Swarm_Group6/build/threshold_model_autogen/mocs_compilation.cpp

CMakeFiles/threshold_model.dir/threshold_model_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/threshold_model.dir/threshold_model_autogen/mocs_compilation.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/marcreardon/Documents/RBE595_Swarm_Group6/build/threshold_model_autogen/mocs_compilation.cpp > CMakeFiles/threshold_model.dir/threshold_model_autogen/mocs_compilation.cpp.i

CMakeFiles/threshold_model.dir/threshold_model_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/threshold_model.dir/threshold_model_autogen/mocs_compilation.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/marcreardon/Documents/RBE595_Swarm_Group6/build/threshold_model_autogen/mocs_compilation.cpp -o CMakeFiles/threshold_model.dir/threshold_model_autogen/mocs_compilation.cpp.s

CMakeFiles/threshold_model.dir/threshold_model.cpp.o: CMakeFiles/threshold_model.dir/flags.make
CMakeFiles/threshold_model.dir/threshold_model.cpp.o: ../threshold_model.cpp
CMakeFiles/threshold_model.dir/threshold_model.cpp.o: CMakeFiles/threshold_model.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/marcreardon/Documents/RBE595_Swarm_Group6/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/threshold_model.dir/threshold_model.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/threshold_model.dir/threshold_model.cpp.o -MF CMakeFiles/threshold_model.dir/threshold_model.cpp.o.d -o CMakeFiles/threshold_model.dir/threshold_model.cpp.o -c /Users/marcreardon/Documents/RBE595_Swarm_Group6/threshold_model.cpp

CMakeFiles/threshold_model.dir/threshold_model.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/threshold_model.dir/threshold_model.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/marcreardon/Documents/RBE595_Swarm_Group6/threshold_model.cpp > CMakeFiles/threshold_model.dir/threshold_model.cpp.i

CMakeFiles/threshold_model.dir/threshold_model.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/threshold_model.dir/threshold_model.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/marcreardon/Documents/RBE595_Swarm_Group6/threshold_model.cpp -o CMakeFiles/threshold_model.dir/threshold_model.cpp.s

# Object files for target threshold_model
threshold_model_OBJECTS = \
"CMakeFiles/threshold_model.dir/threshold_model_autogen/mocs_compilation.cpp.o" \
"CMakeFiles/threshold_model.dir/threshold_model.cpp.o"

# External object files for target threshold_model
threshold_model_EXTERNAL_OBJECTS =

libthreshold_model.dylib: CMakeFiles/threshold_model.dir/threshold_model_autogen/mocs_compilation.cpp.o
libthreshold_model.dylib: CMakeFiles/threshold_model.dir/threshold_model.cpp.o
libthreshold_model.dylib: CMakeFiles/threshold_model.dir/build.make
libthreshold_model.dylib: /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX11.1.sdk/usr/lib/libdl.tbd
libthreshold_model.dylib: /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX11.1.sdk/usr/lib/libpthread.tbd
libthreshold_model.dylib: /usr/local/lib/libfreeimage.dylib
libthreshold_model.dylib: /usr/local/lib/libfreeimageplus.dylib
libthreshold_model.dylib: /usr/local/Cellar/qt/6.0.3/lib/QtOpenGLWidgets.framework/Versions/A/QtOpenGLWidgets
libthreshold_model.dylib: /usr/local/lib/liblua5.4.dylib
libthreshold_model.dylib: /usr/local/lib/libbuzz.dylib
libthreshold_model.dylib: /usr/local/Cellar/qt/6.0.3/lib/QtWidgets.framework/Versions/A/QtWidgets
libthreshold_model.dylib: /usr/local/Cellar/qt/6.0.3/lib/QtOpenGL.framework/Versions/A/QtOpenGL
libthreshold_model.dylib: /usr/local/Cellar/qt/6.0.3/lib/QtGui.framework/Versions/A/QtGui
libthreshold_model.dylib: /usr/local/Cellar/qt/6.0.3/lib/QtCore.framework/Versions/A/QtCore
libthreshold_model.dylib: CMakeFiles/threshold_model.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/marcreardon/Documents/RBE595_Swarm_Group6/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX shared library libthreshold_model.dylib"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/threshold_model.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/threshold_model.dir/build: libthreshold_model.dylib
.PHONY : CMakeFiles/threshold_model.dir/build

CMakeFiles/threshold_model.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/threshold_model.dir/cmake_clean.cmake
.PHONY : CMakeFiles/threshold_model.dir/clean

CMakeFiles/threshold_model.dir/depend:
	cd /Users/marcreardon/Documents/RBE595_Swarm_Group6/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/marcreardon/Documents/RBE595_Swarm_Group6 /Users/marcreardon/Documents/RBE595_Swarm_Group6 /Users/marcreardon/Documents/RBE595_Swarm_Group6/build /Users/marcreardon/Documents/RBE595_Swarm_Group6/build /Users/marcreardon/Documents/RBE595_Swarm_Group6/build/CMakeFiles/threshold_model.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/threshold_model.dir/depend

