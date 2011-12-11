//
//  Actor.cpp
//  Smartbots
//
//  Created by Per Dervall on 12/11/11.
//  Copyright (c) 2011 Tretton37. All rights reserved.
//

#include <iostream>
#include "Actor.h"

Actor::Actor(Isgl3dNode* pNode) 
    : m_Type(NEUTRAL)
{
    m_pNode = pNode;
    m_Position.x = m_Position.y = m_Position.z = 0.0f;
    m_fDirection = 0.0f;
}

Actor::~Actor() {
    // Delete the node perhaps? Dunno.
}

bool Actor::IsTargettable() const
{
    return false;
}

void Actor::Tic(float dt) {    
    // Set the position of the scene graph node to whatever the position of the actor is
    m_fDirection += 20.0f * dt;
    
    [m_pNode setRotation:m_fDirection x:0.0f y:1.0f z:0.0f];
    [m_pNode setPositionValues:m_Position.x y:m_Position.y z:m_Position.z];
}

Actor::Type Actor::GetType() const
{
    return m_Type;
}

void Actor::SetType(Actor::Type type)
{
    m_Type = type;
}
