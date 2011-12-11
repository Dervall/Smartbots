//
//  DistanceToNeuron.h
//  Smartbots
//
//  Created by Per Dervall on 12/11/11.
//  Copyright (c) 2011 Tretton37. All rights reserved.
//

#ifndef Smartbots_DistanceToNeuron_h
#define Smartbots_DistanceToNeuron_h

#include "BooleanNeuron.h"

class DistanceToNeuron
{
public:
    DistanceToNeuron();
    
protected:
    virtual bool EvaluateCondition(Robot* pRobot);

private:
    float m_fDistance;
    
};

#endif
