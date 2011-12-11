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
    enum Type
    {
        FRIENDLY,
        HOSTILE,
        NEUTRAL
    };
    
    Actor (Isgl3dNode * pNode);
    ~Actor();
    
    virtual void Tic(float dt);
    virtual bool IsTargettable() const;
    
    Type GetType() const;
    void SetType(Type type);
    
    inline const Isgl3dVector3& GetPosition() const { return m_Position; }
    inline Isgl3dVector3& GetPosition() { return m_Position; }
    
    
protected:
    Isgl3dVector3 m_Position;
    
    float m_fDirection;
    Type m_Type;
    
    Isgl3dNode* m_pNode;
};

#endif
