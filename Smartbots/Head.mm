//
//  Head.cpp
//  Smartbots
//
//  Created by Per Dervall on 12/11/11.
//  Copyright (c) 2011 Tretton37. All rights reserved.
//

#include <iostream>
#include "Head.h"
#include "RobotConstants.h"

Head::Head() {
}

Head::~Head() {
}

void Head::LoadGeometry(Isgl3dNode* pParentNode) {
    Isgl3dGLMesh * pHeadMesh = [Isgl3dCube meshWithGeometry:HEAD_SIZE
                                                    height:HEAD_SIZE depth:HEAD_SIZE nx:1 ny:1];
    Isgl3dMaterial * pHeadMaterial = [Isgl3dColorMaterial materialWithHexColors:@"FFFFFFFF" diffuse:@"33AB33" specular:@"00FF00" shininess:1.0f]; 
    
    // Create a node that will be our head pivot point
    // This is based at the (nonexistent) neck of our robot dude
    m_pHeadNode = [pParentNode createNode];
    [m_pHeadNode setPositionValues:0.0f y:LEG_LENGTH+BODY_HEIGHT z:0.0f];
    Isgl3dNode * pHeadMeshNode = [m_pHeadNode createNodeWithMesh:pHeadMesh andMaterial:pHeadMaterial];
    [pHeadMeshNode setPositionValues:0.0f y:HEAD_SIZE/2 z:0.0f];
}

void Head::Tic(float dt) {
}