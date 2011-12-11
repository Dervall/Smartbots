//
//  World.h
//  Smartbots
//
//  Created by Per Dervall on 12/11/11.
//  Copyright (c) 2011 Tretton37. All rights reserved.
//

#ifndef Smartbots_World_h
#define Smartbots_World_h

#include <vector>

class Actor;

class World
{
public:
    static World& GetInstance();
    
    virtual ~World();
    
    void Tic(float dt);
    
    void AddActor(Actor* pActor);
    void RemoveActor(Actor* pActor);
    
    const std::vector<Actor*> GetActors();
    
private:
    World();
    
    std::vector<Actor*> m_Actors;
    
};

#endif
