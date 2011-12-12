//
//  HasTargetNeuron.mm
//  Smartbots
//
//  Created by Per Dervall on 12/12/11.
//  Copyright (c) 2011 Tretton37. All rights reserved.
//

#include <iostream>
#include "HasTargetNeuron.h"
#include "Robot.h"

HasTargetNeuron::HasTargetNeuron()
{
}

HasTargetNeuron::~HasTargetNeuron()
{
}

bool HasTargetNeuron::EvaluateCondition(Robot* pRobot) {
    return (pRobot->GetTarget() != NULL);
}