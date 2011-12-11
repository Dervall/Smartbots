//
//  BooleanNeuron.h
//  Smartbots
//
//  Created by Per Dervall on 12/11/11.
//  Copyright (c) 2011 Tretton37. All rights reserved.
//

#ifndef Smartbots_BooleanNeuron_h
#define Smartbots_BooleanNeuron_h

#include "Neuron.h"

class Robot;

class BooleanNeuron : Neuron {
public:
    BooleanNeuron();
    virtual ~BooleanNeuron();
    
    virtual Neuron* Evaluate(Robot* pRobot);
    
    void SetTrueChild(Neuron* pTrue);
    void SetFalseChild(Neuron* pFalse);
    
protected:
    virtual bool EvaluateCondition(Robot* pRobot) = 0;
    
private:    
    Neuron* m_pTrue;
    Neuron* m_pFalse;
    
};

#endif
