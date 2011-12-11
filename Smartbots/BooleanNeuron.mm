//
//  BooleanNeuron.mm
//  Smartbots
//
//  Created by Per Dervall on 12/11/11.
//  Copyright (c) 2011 Tretton37. All rights reserved.
//

#include <iostream>
#include "BooleanNeuron.h"

BooleanNeuron::BooleanNeuron() : m_pFalse(NULL), m_pTrue(NULL) 
{
}

BooleanNeuron::~BooleanNeuron() 
{
    if (m_pFalse) 
    {
        delete m_pFalse;
        m_pFalse = NULL;
    }
    
    if (m_pTrue) 
    {
        delete m_pTrue;
        m_pTrue = NULL;
    }
}

void BooleanNeuron::SetTrueChild(Neuron* pTrue) 
{
    if (m_pTrue) 
    {
        delete m_pTrue;
        m_pTrue = pTrue;
    }
}

void BooleanNeuron::SetFalseChild(Neuron* pFalse)
{
    if (m_pFalse) 
    {
        delete m_pFalse;
        m_pFalse = pFalse;
    }
}

void BooleanNeuron::Fire(Robot *pRobot, float dt) 
{
    if (EvaluateCondition(pRobot))
    {
        if (m_pTrue) 
        {
            m_pTrue->Fire(pRobot, dt);
        }
    }
    else
    {
        if (m_pFalse)
        {
            m_pFalse->Fire(pRobot, dt);
        }
    }
}