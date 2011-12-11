//
//  Actor.cpp
//  Smartbots
//
//  Created by Per Dervall on 12/11/11.
//  Copyright (c) 2011 Tretton37. All rights reserved.
//

#include <iostream>
#include "Actor.h"

Actor::Actor(Isgl3dNode* pNode) {
    m_pNode = pNode;
    
    m_fDirection = 0.0f;
    m_fPositionX = 0.0f;
    m_fPositionY = 0.0f;
    m_fPositionZ = 0.0f;
}

Actor::~Actor() {
    // Delete the node perhaps? Dunno.
}

void Actor::Tic(float dt) {    
    // Set the position of the scene graph node to whatever the position of the actor is
    m_fDirection += 20.0f * dt;
    
    [m_pNode setRotation:m_fDirection x:0.0f y:1.0f z:0.0f];
    [m_pNode setPositionValues:m_fPositionX y:m_fPositionY z:m_fPositionY];
}