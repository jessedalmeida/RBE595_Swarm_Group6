#include "proximity-lf.h"
#include <argos3/plugins/robots/kheperaiv/simulator/kheperaiv_entity.h>
#include <argos3/plugins/simulator/entities/proximity_sensor_equipped_entity.h>

/****************************************/
/****************************************/

void CProximityLF::Init(TConfigurationNode& t_tree) {
   /* Call parent Init() */
   CBuzzLoopFunctions::Init(t_tree);
   /* Parse XML tree */
   GetNodeAttribute(t_tree, "proximity_range", m_fProximityRange);
   /* Delegate the rest of the initialization to Reset() */
   Reset();
}

/****************************************/
/****************************************/

void CProximityLF::Reset() {
   /* Go through all the kheperas */
   CSpace::TMapPerType& mapRobots = GetSpace().GetEntitiesByType("kheperaiv");
   for(auto itRobot = mapRobots.begin();
       itRobot != mapRobots.end();
       ++itRobot) {
      /* Get handle to khepera entity and controller */
      CKheperaIVEntity& cRobot = *any_cast<CKheperaIVEntity*>(itRobot->second);
      /* Get the proximity sensor equipped entity */
      CProximitySensorEquippedEntity& cPSEE = cRobot.GetProximitySensorEquippedEntity();
      /* Go through the sensors */
      for(auto itSensor = cPSEE.GetSensors().begin();
          itSensor != cPSEE.GetSensors().end();
          ++itSensor) {
         /* Change the range */
         (*itSensor)->Direction.Normalize();
         (*itSensor)->Direction *= m_fProximityRange;
      }
   }
}

/****************************************/
/****************************************/

REGISTER_LOOP_FUNCTIONS(CProximityLF, "proximity-lf");
