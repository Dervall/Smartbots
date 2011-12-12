//
//  DistanceToTargetGreaterNeuron.h
//  Smartbots
//
//  Created by Per Dervall on 12/12/11.
//  Copyright (c) 2011 Tretton37. All rights reserved.
//

#ifndef Smartbots_DistanceToTargetGreaterNeuron_h
#define Smartbots_DistanceToTargetGreaterNeuron_h

#include "BooleanNeuron.h"

class DistanceToTargetGreaterNeuron : public BooleanNeuron {
public:
    DistanceToTargetGreaterNeuron(float fDistance);
    virtual ~DistanceToTargetGreaterNeuron();
    
protected:
    virtual bool EvaluateCondition(Robot* pRobot);
    
private:
    float m_fDistance;
    
};

#endif
