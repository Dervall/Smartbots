//
//  Robot.cpp
//  Smartbots
//
//  Created by Per Dervall on 12/11/11.
//  Copyright (c) 2011 Tretton37. All rights reserved.
//

#include <iostream>
#include "Robot.h"
#include "Body.h"
#include "Head.h"
#include "Arms.h"
#include "RobotConstants.h"

Robot::Robot(Isgl3dNode* pNode) 
    : Actor(pNode)
    , m_pBrain(NULL)
    , m_pBody(NULL)
    , m_pArms(NULL) 
    , m_pHead(NULL)
    , m_pTarget(NULL)
{    
}

Robot::~Robot() {
    if (m_pBody != NULL) {
        delete m_pBody;
        m_pBody = NULL;
    }
    if (m_pHead != NULL) {
        delete m_pHead;
        m_pHead = NULL;
    }
}

bool Robot::IsTargettable() const
{
    return true;
}

void Robot::SetTarget(Actor *pTarget)
{
    m_pTarget = pTarget;
}

void Robot::Tic(float dt) {
    if (m_pBody) m_pBody->Tic(dt);
    if (m_pArms) m_pArms->Tic(dt);
    if (m_pHead) m_pHead->Tic(dt);
    
    Actor::Tic(dt);
}

void Robot::LoadGeometry() {
    if (m_pBody != NULL) {
        m_pBody->LoadGeometry(m_pNode);
    }
    if (m_pHead != NULL) {
        m_pHead->LoadGeometry(m_pNode);
    }
    if (m_pArms != NULL) {
        m_pArms->LoadGeometry(m_pNode);
    }
}

void Robot::SetArms(Arms* pArms) {
    m_pArms = pArms;
}

void Robot::SetBody(Body *pBody) {
    m_pBody = pBody;
}

void Robot::SetHead(Head *pHead) {
    m_pHead = pHead;
}