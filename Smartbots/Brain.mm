//
//  Brain.mm
//  Smartbots
//
//  Created by Per Dervall on 12/11/11.
//  Copyright (c) 2011 Tretton37. All rights reserved.
//

#include <iostream>
#include "Brain.h"
#include "Neuron.h"

Brain::Brain() 
    : m_pRootNeuron(NULL)
{
}

Brain::~Brain() {
    if (m_pRootNeuron) {
        delete m_pRootNeuron;
    }
}

void Brain::Tic(Robot* pRobot, float dt) {
    if (m_pRootNeuron)
    {
        m_pRootNeuron->Fire(pRobot);
    }
}

void Brain::SetRootNeuron(Neuron *pNeuron) {
    m_pRootNeuron = pNeuron;
}