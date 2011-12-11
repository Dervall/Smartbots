//
//  ClosestTargetFinder.h
//  Smartbots
//
//  Created by Per Dervall on 12/11/11.
//  Copyright (c) 2011 Tretton37. All rights reserved.
//

#ifndef Smartbots_ClosestTargetFinder_h
#define Smartbots_ClosestTargetFinder_h

#include "TargetFinder.h"

class ClosestTargetFinder : TargetFinder
{
public:
    ClosestTargetFinder(Actor::Type typeToFind);
    virtual Actor* FindTarget(Robot* pRobot);
    
};

#endif
