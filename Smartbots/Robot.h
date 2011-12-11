//
//  Robot.h
//  Smartbots
//
//  Created by Per Dervall on 12/11/11.
//  Copyright (c) 2011 Tretton37. All rights reserved.
//

#ifndef Smartbots_Robot_h
#define Smartbots_Robot_h

#include "Actor.h"
#import "isgl3d.h"

class Body;
class Head;
class Arms;
class Brain;

class Robot : public Actor
{
public:
    Robot(Isgl3dNode* pNode);
    ~Robot();
    
    virtual void Tic(float dt);
    
    void SetBody(Body* pBody);
    void SetHead(Head* pHead);
    void SetArms(Arms* pArm);
    
    void LoadGeometry();
    
    virtual bool IsTargettable() const;
    void SetTarget(Actor* pTarget);
    
private:
    Brain* m_pBrain;
    Body* m_pBody;
    Head* m_pHead;
    Arms* m_pArms;
    
    Actor* m_pTarget;
};

#endif
