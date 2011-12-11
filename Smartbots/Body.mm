//
//  Body.cpp
//  Smartbots
//
//  Created by Per Dervall on 12/11/11.
//  Copyright (c) 2011 Tretton37. All rights reserved.
//

#include <iostream>

#include "Body.h"
#include "RobotConstants.h"



Body::Body() 
    : m_pBodyNode(NULL)
    , m_pLeftLegNode(NULL)
    , m_pRightLegNode(NULL) {
}

Body::~Body() {
}

void Body::Tic(float dt) {
}

void Body::LoadGeometry(Isgl3dNode* pParentNode) 
{
    // Create the leg mesh and material
    Isgl3dGLMesh * pLegMesh = [Isgl3dCube meshWithGeometry:LEG_WIDTH
                                                      height:LEG_LENGTH depth:LEG_WIDTH nx:1 ny:1];
    Isgl3dMaterial * pLeftLegMaterial = [Isgl3dColorMaterial materialWithHexColors:@"FFFFFFFF" diffuse:@"33AB33" specular:@"00FF00" shininess:1.0f]; 
    Isgl3dMaterial * pRightLegMaterial = [Isgl3dColorMaterial materialWithHexColors:@"FFFFFFFF" diffuse:@"FFABFF" specular:@"00FF00" shininess:1.0f]; 
    
    // The leg base node is located in the crotch. Neccessary for wiggling legs correctly.
    m_pLeftLegNode = [pParentNode createNode];
    [m_pLeftLegNode setPositionValues:-LEG_SPACING/2 - LEG_WIDTH/2 y:LEG_LENGTH z:0.0f];
    
    Isgl3dNode * pLeftLegMeshNode = [m_pLeftLegNode createNodeWithMesh:pLegMesh andMaterial:pLeftLegMaterial];
    [pLeftLegMeshNode setPositionValues:0.0f y:-LEG_LENGTH/2.0f z:0.0f];
    
    m_pRightLegNode = [pParentNode createNode];
    [m_pRightLegNode setPositionValues:LEG_SPACING/2 + LEG_WIDTH/2 y:LEG_LENGTH z:0.0f];
    
    Isgl3dNode * pRightLegMeshNode = [m_pRightLegNode createNodeWithMesh:pLegMesh andMaterial:pRightLegMaterial];
    [pRightLegMeshNode setPositionValues:0.0f y:-LEG_LENGTH/2 z:0.0f];


    // Create the body mesh and material
    Isgl3dGLMesh * pBodyMesh = [Isgl3dCube meshWithGeometry:BODY_WIDTH
                                                     height:BODY_HEIGHT depth:BODY_DEPTH nx:1 ny:1];
    Isgl3dMaterial * pBodyMaterial = [Isgl3dColorMaterial materialWithHexColors:@"FFFFFFFF" diffuse:@"FFAB33" specular:@"00FF00" shininess:1.0f]; 
    
    m_pBodyNode = [pParentNode createNodeWithMesh:pBodyMesh andMaterial:pBodyMaterial];
    [m_pBodyNode setPositionValues:0.0f y:LEG_LENGTH+BODY_HEIGHT/2 z:0.0f];
}