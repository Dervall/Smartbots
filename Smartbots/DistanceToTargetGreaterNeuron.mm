//
//  DistanceToTargetGreaterNeuron.mm
//  Smartbots
//
//  Created by Per Dervall on 12/12/11.
//  Copyright (c) 2011 Tretton37. All rights reserved.
//

#include <iostream>
#include "DistanceToTargetGreaterNeuron.h"
#include "Robot.h"

DistanceToTargetGreaterNeuron::DistanceToTargetGreaterNeuron(float fDistance)
    : m_fDistance(fDistance)
{
}

DistanceToTargetGreaterNeuron::~DistanceToTargetGreaterNeuron() 
{
}

bool DistanceToTargetGreaterNeuron::EvaluateCondition(Robot* pRobot)
{
    Actor* pTarget = pRobot->GetTarget();
    if (pTarget != NULL) 
    {
        Isgl3dVector3 a = pRobot->GetPosition();
        Isgl3dVector3 b = pTarget->GetPosition();
        iv3Sub(&a, &b);
        
        return (iv3Length(&a) > m_fDistance);
    }   
    return false;
}
