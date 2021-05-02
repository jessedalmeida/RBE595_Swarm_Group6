#ifndef PROXIMITY_H
#define PROXIMITY_H

#include <buzz/argos/buzz_loop_functions.h>

class CProximityLF : public CBuzzLoopFunctions {

public:

   CProximityLF() {}
   ~CProximityLF() override {}

   /**
    * Executes user-defined initialization logic.
    * @param t_tree The 'loop_functions' XML configuration tree.
    */
   void Init(TConfigurationNode& t_tree) override;

   /**
    * Executes user-defined reset logic.
    * This method should restore the state of the simulation at it was right
    * after Init() was called.
    * @see Init()
    */
   void Reset() override;

private:

   Real m_fProximityRange;

};

#endif
