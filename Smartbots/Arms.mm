//
//  Arms.cpp
//  Smartbots
//
//  Created by Per Dervall on 12/11/11.
//  Copyright (c) 2011 Tretton37. All rights reserved.
//

#include <iostream>
#include "Arms.h"
#include "RobotConstants.h"

float testwave = 0.0f;

Arms::Arms() {}

Arms::~Arms() {}

void Arms::Tic(float dt) 
{
    testwave += 10.0f * dt;
    [m_pLeftArmNode setRotation:testwave
                              x:1.0f y:0.0f z:0.0f];
}

void Arms::LoadGeometry(Isgl3dNode *pParentNode) 
{
    // Create the arm mesh and materials
    Isgl3dGLMesh * pArmMesh = [Isgl3dCube meshWithGeometry:ARM_WIDTH
                                                    height:ARM_LENGTH depth:ARM_DEPTH nx:1 ny:1];
    Isgl3dMaterial * pLeftArmMaterial = [Isgl3dColorMaterial materialWithHexColors:@"FFFFFFFF" diffuse:@"33AB33" specular:@"00FF00" shininess:1.0f]; 
    Isgl3dMaterial * pRightArmMaterial = [Isgl3dColorMaterial materialWithHexColors:@"FFFFFFFF" diffuse:@"AAAB33" specular:@"00FF00" shininess:1.0f]; 

    const float ARM_ATTACH_X = BODY_WIDTH/2;
    const float ARM_ATTACH_Y = LEG_LENGTH + BODY_HEIGHT - 0.1f;
    
    m_pLeftArmNode = [pParentNode createNode];
    [m_pLeftArmNode setPositionValues:-ARM_ATTACH_X y:ARM_ATTACH_Y z:0.0f];
    Isgl3dNode* pLeftArmMeshNode = [m_pLeftArmNode createNodeWithMesh:pArmMesh andMaterial:pLeftArmMaterial];
    [pLeftArmMeshNode setPositionValues:-ARM_WIDTH/2 y:-ARM_LENGTH/2+0.1f z:0.0f];

    m_pRightArmNode = [pParentNode createNode];
    [m_pRightArmNode setPositionValues:ARM_ATTACH_X y:ARM_ATTACH_Y z:0.0f];
    Isgl3dNode* pRightArmMeshNode = [m_pRightArmNode createNodeWithMesh:pArmMesh andMaterial:pRightArmMaterial];
    [pRightArmMeshNode setPositionValues:ARM_WIDTH/2 y:-ARM_LENGTH/2+0.1f z:0.0f];
}