//
//  FindTargetNeuron.h
//  Smartbots
//
//  Created by Per Dervall on 12/11/11.
//  Copyright (c) 2011 Tretton37. All rights reserved.
//

#ifndef Smartbots_FindTargetNeuron_h
#define Smartbots_FindTargetNeuron_h

#include  "Neuron.h"

class TargetFinder;
class Robot;

class FindTargetNeuron : public Neuron {
public:
    FindTargetNeuron();
    FindTargetNeuron(TargetFinder* pFinder);
    
    void SetTargetFinder(TargetFinder* pFinder);
    
    virtual void Fire(Robot* pRobot);
    
private:
    TargetFinder* m_pFinder;
};

#endif
