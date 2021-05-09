#include "proximity-lf.h"
#include "buzz/buzzvm.h"

/****************************************/
/****************************************/

REGISTER_LOOP_FUNCTIONS(CProximityLF, "proximity-lf");


/**
 * Functor to get data from the robots
 */
struct GetRobotData : public CBuzzLoopFunctions::COperation {

   /** Constructor */
   GetRobotData(void) {}

   /** The action happens here */
   virtual void operator()(const std::string& str_robot_id,
                           buzzvm_t t_vm) {
      /* Get the current number of valid neighbors */
      buzzobj_t tValidNeighbors = BuzzGet(t_vm, "validNeighbors");
      /* Make sure it's the type we expect (an integer) */
      if(!buzzobj_isint(tValidNeighbors)) {
         LOGERR << str_robot_id << ": variable 'tValidNeighbors' has wrong type " << buzztype_desc[tValidNeighbors->o.type] << std::endl;
         return;
      }
      /* Get the value */
      int nValidNeighbors = buzzobj_getint(tValidNeighbors);
      /* Set the mapping between robot id and number of valid neighbors */
      m_validNeighbors[t_vm->robot] = nValidNeighbors;

      /* Get the current number of invliad neighbors */
      buzzobj_t tInvalidNeighbors = BuzzGet(t_vm, "invalidNeighbors");
      /* Make sure it's the type we expect (an integer) */
      if(!buzzobj_isint(tInvalidNeighbors)) {
         LOGERR << str_robot_id << ": variable 'tInvalidNeighbors' has wrong type " << buzztype_desc[tInvalidNeighbors->o.type] << std::endl;
         return;
      }
      /* Get the value */
      int nInvalidNeighbors = buzzobj_getint(tInvalidNeighbors);
      /* Set the mapping between robot id and number of valid neighbors */
      m_invalidNeighbors[t_vm->robot] = nInvalidNeighbors;

      /* Get the current number of outer neighbors */
      buzzobj_t tOuterNeighbors = BuzzGet(t_vm, "outerNeighbors");
      /* Make sure it's the type we expect (an integer) */
      if(!buzzobj_isint(tOuterNeighbors)) {
         LOGERR << str_robot_id << ": variable 'tOuterNeighbors' has wrong type " << buzztype_desc[tOuterNeighbors->o.type] << std::endl;
         return;
      }
      /* Get the value */
      int nOuterNeighbors = buzzobj_getint(tOuterNeighbors);
      /* Set the mapping between robot id and number of valid neighbors */
      m_outerNeighbors[t_vm->robot] = nOuterNeighbors;

      /* Get if a robot is stopped (aka count > 0) */
      buzzobj_t tCount = BuzzGet(t_vm, "count");
      /* Make sure it's the type we expect (an integer) */
      if(!buzzobj_isint(tCount)) {
         LOGERR << str_robot_id << ": variable 'tCount' has wrong type " << buzztype_desc[tCount->o.type] << std::endl;
         return;
      }
      /* Get the value */
      int nCount = buzzobj_getint(tCount);
      /* Set the mapping between robot id and number of valid neighbors */
      m_stopped[t_vm->robot] = nCount;
   }

   /** Store the number of robots that have "index" of valid neighbors */
   std::map<int,int> m_validNeighbors;
   std::map<int,int> m_invalidNeighbors;
   std::map<int,int> m_outerNeighbors;
   /* Whether robots are stopped */
   std::map<int,int> m_stopped;
};

void CProximityLF::Init(TConfigurationNode& t_tree) {
   /* Call parent Init() */
   CBuzzLoopFunctions::Init(t_tree);
   /* Parse XML tree */
   GetNodeAttribute(t_tree, "outfile", m_strOutFile);

    /* Open the output file */
   m_cOutFile.open(m_strOutFile.c_str(),
                   std::ofstream::out | std::ofstream::trunc);
}

void CProximityLF::Reset() {
   /* Reset the output file */
   m_cOutFile.open(m_strOutFile.c_str(),
                   std::ofstream::out | std::ofstream::trunc);

}

void CProximityLF::Destroy() {
   m_cOutFile.close();
}

/****************************************/
/****************************************/

void CProximityLF::PostStep() {
    /* Get robot data */
    GetRobotData cGetRobotData;
    BuzzForeachVM(cGetRobotData);

    /* Flush data to the output file */
    for(int i = 0; i < GetNumRobots(); ++i) {
        m_cOutFile << GetSpace().GetSimulationClock() << "\t"
                << i << "\t"
                << cGetRobotData.m_invalidNeighbors[i] << "\t"
                << cGetRobotData.m_validNeighbors[i] << "\t"
                << cGetRobotData.m_stopped[i] << "\t"
                << cGetRobotData.m_outerNeighbors[i];
        m_cOutFile << std::endl;
    }
}

/****************************************/
/****************************************/

bool CProximityLF::IsExperimentFinished() {
   /* Feel free to try out custom ending conditions */
   return false;
}

/****************************************/
/****************************************/

int CProximityLF::GetNumRobots() const {
   return m_mapBuzzVMs.size();
}
