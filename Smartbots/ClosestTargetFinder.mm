//
//  ClosestTargetFinder.mm
//  Smartbots
//
//  Created by Per Dervall on 12/11/11.
//  Copyright (c) 2011 Tretton37. All rights reserved.
//

#include <iostream>
#include "ClosestTargetFinder.h"
#include "World.h"
#include "Robot.h"

ClosestTargetFinder::ClosestTargetFinder(Actor::Type typeToFind)
    : TargetFinder(typeToFind)
{
}

Actor* ClosestTargetFinder::FindTarget(Robot *pRobot) 
{
    Actor* pFoundActor = NULL;
    float fBestDistance = 9999999999.0f;
    Isgl3dVector3 robotPos = pRobot->GetPosition();
    
    World& rWorld = World::GetInstance();
    const std::vector<Actor*> actors = rWorld.GetActors();
    for (int i = 0; i < actors.size(); ++i) 
    {
        Actor* pActor = actors[i];
        if (pActor->IsTargettable()) {
            if (pActor != (Actor*)pRobot) {
                if (pActor->GetType() == GetTypeToFind()) {
                    Isgl3dVector3 targetPos = pActor->GetPosition();
                    iv3Sub(&targetPos, &robotPos);
                    float fDistance = iv3Length(&targetPos);
                    if (fDistance < fBestDistance) {
                        pFoundActor = pActor;
                        fBestDistance = fDistance;
                    }
                }
            }
        }
    }
    
    return pFoundActor;
}