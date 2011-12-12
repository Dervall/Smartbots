//
//  HasTargetNeuron.h
//  Smartbots
//
//  Created by Per Dervall on 12/12/11.
//  Copyright (c) 2011 Tretton37. All rights reserved.
//

#ifndef Smartbots_HasTargetNeuron_h
#define Smartbots_HasTargetNeuron_h

#include "BooleanNeuron.h"

class HasTargetNeuron : public BooleanNeuron
{
public:
    HasTargetNeuron();
    virtual ~HasTargetNeuron();
    
protected:   
    virtual bool EvaluateCondition(Robot* pRobot);
};

#endif
