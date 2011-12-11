//
//  Neuron.h
//  Smartbots
//
//  Created by Per Dervall on 12/11/11.
//  Copyright (c) 2011 Tretton37. All rights reserved.
//

#ifndef Smartbots_Neuron_h
#define Smartbots_Neuron_h

class Robot;

// Base class for all evaluating neurons. This one is effectivly a nop neuron.
class Neuron 
{
public:
    Neuron();
    virtual ~Neuron();
    
    void Fire(Robot* pRobot, float dt);
    
};

#endif
