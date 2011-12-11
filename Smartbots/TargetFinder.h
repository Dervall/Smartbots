//
//  TargetFinder.h
//  Smartbots
//
//  Created by Per Dervall on 12/11/11.
//  Copyright (c) 2011 Tretton37. All rights reserved.
//

#ifndef Smartbots_TargetFinder_h
#define Smartbots_TargetFinder_h

#include "Actor.h"

class Robot;

class TargetFinder
{
public:
    TargetFinder(Actor::Type typeToFind);
    virtual Actor* FindTarget(Robot* pRobot) = 0;
    Actor::Type GetTypeToFind();
    
private:
    Actor::Type m_typeToFind;
};

#endif
