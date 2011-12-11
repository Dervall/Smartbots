//
//  Actor.h
//  Smartbots
//
//  This class should contain all the common functionality for an actor, which is whatever can be moved 
//  around in the scene graph by some method.
//
//  Created by Per Dervall on 12/11/11.
//  Copyright (c) 2011 Tretton37. All rights reserved.
//

#ifndef Smartbots_Actor_h
#define Smartbots_Actor_h

#import "isgl3d.h"

class Actor 
{
public:
    Actor (Isgl3dNode * pNode);
    ~Actor();
    
    virtual void Tic(float dt);
    
protected:
    float m_fPositionX;
    float m_fPositionY;
    float m_fPositionZ;
    
    float m_fDirection;
    
    Isgl3dNode* m_pNode;
};

#endif
