//
//  FindTargetNeuron.mm
//  Smartbots
//
//  Created by Per Dervall on 12/11/11.
//  Copyright (c) 2011 Tretton37. All rights reserved.
//

#include <iostream>
#include "FindTargetNeuron.h"
#include "TargetFinder.h"
#include "Robot.h"

FindTargetNeuron::FindTargetNeuron()
    : m_pFinder(NULL)
{
}

void FindTargetNeuron::SetTargetFinder(TargetFinder* pFinder)
{
    m_pFinder = pFinder;
}

void FindTargetNeuron::Fire(Robot* pRobot, float dt) {
    Actor* pTarget = m_pFinder->FindTarget(pRobot);
    pRobot->SetTarget(pTarget);
}
