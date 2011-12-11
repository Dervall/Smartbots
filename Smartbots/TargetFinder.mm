//
//  TargetFinder.mm
//  Smartbots
//
//  Created by Per Dervall on 12/11/11.
//  Copyright (c) 2011 Tretton37. All rights reserved.
//

#include <iostream>
#include "TargetFinder.h"

TargetFinder::TargetFinder(Actor::Type typeToFind)
    : m_typeToFind(typeToFind)
{
}

Actor::Type TargetFinder::GetTypeToFind()
{
    return m_typeToFind;
}