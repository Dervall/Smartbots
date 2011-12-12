//
//  MoveToTargetNeuron.h
//  Smartbots
//
//  Created by Per Dervall on 12/12/11.
//  Copyright (c) 2011 Tretton37. All rights reserved.
//

#ifndef Smartbots_MoveToTargetNeuron_h
#define Smartbots_MoveToTargetNeuron_h

#include "Neuron.h"

class Robot;

class MoveToTargetNeuron : public Neuron
{
public:
    virtual void Fire(Robot* pRobot);
};

#endif
