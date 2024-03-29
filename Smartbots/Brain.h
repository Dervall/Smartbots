//
//  Brain.h
//  Smartbots
//
//  Created by Per Dervall on 12/11/11.
//  Copyright (c) 2011 Tretton37. All rights reserved.
//

#ifndef Smartbots_Brain_h
#define Smartbots_Brain_h

class Neuron;
class Robot;

class Brain 
{
public:
    Brain();
    ~Brain();
    
    void Tic(Robot* pRobot, float dt);

    void SetRootNeuron(Neuron *pNeuron);

private:
    Neuron* m_pRootNeuron;



};

#endif
