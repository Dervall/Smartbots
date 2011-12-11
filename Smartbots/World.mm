//
//  World.mm
//  Smartbots
//
//  Created by Per Dervall on 12/11/11.
//  Copyright (c) 2011 Tretton37. All rights reserved.
//

#include <iostream>
#include "World.h"
#include "Actor.h"

// TODO: This will do for now.
World* g_pWorldInstance = NULL;

World& World::GetInstance() {
    if (g_pWorldInstance == NULL) 
    {
        g_pWorldInstance = new World();
    }
    
    return *g_pWorldInstance;
}

World::World()
{
}

World::~World()
{
}

void World::Tic(float dt)
{
    for (int i = 0; i < m_Actors.size(); ++i) {
        m_Actors[i]->Tic(dt);
    }
}

void World::AddActor(Actor* pActor)
{
    m_Actors.push_back(pActor);
}

void World::RemoveActor(Actor* pActor)
{
    //for (std::vector<Actor*>::iterator itr = m_Actors.it
}

const std::vector<Actor*> World::GetActors()
{
    return m_Actors;
}