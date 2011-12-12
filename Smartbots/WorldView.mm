//
//  HelloWorldView.m
//  Smartbots
//
//  Created by Per Dervall on 12/11/11.
//  Copyright 2011 Tretton37. All rights reserved.
//

#import "WorldView.h"
#include "Actor.h"
#include "Robot.h"
#include "Body.h"
#include "Head.h"
#include "Arms.h"
#include "World.h"
#include "Brain.h"
#include "HasTargetNeuron.h"
#include "FindTargetNeuron.h"
#include "ClosestTargetFinder.h"
#include "DistanceToTargetGreaterNeuron.h"
#include "MoveToTargetNeuron.h"
#include "FireNeuron.h"

@implementation WorldView

- (id) init {
	
	if ((self = [super init])) {

		// Translate the camera.
		[self.camera setPosition:iv3(0, 2, 7)];

        World& rWorld = World::GetInstance();
        
        // Create a bitchin' robot
        Isgl3dNode* pNode = [self.scene createNode];
        m_pRobot = new Robot(pNode);
        m_pRobot->SetBody(new Body());
        m_pRobot->SetHead(new Head());
        m_pRobot->SetArms(new Arms());
        m_pRobot->LoadGeometry();
        m_pRobot->SetType(Actor::FRIENDLY);
        
        // Program the brain to move the robot towards the evil robot and fire once its
        // close enough
        Brain* pBrain = new Brain();
        
        HasTargetNeuron* pHasTargetNeuron = new HasTargetNeuron();
        pHasTargetNeuron->SetFalseChild(new FindTargetNeuron(new ClosestTargetFinder(Actor::HOSTILE)));
    

        BooleanNeuron* pDistanceNeuron = new DistanceToTargetGreaterNeuron(2.0f);
        pDistanceNeuron->SetTrueChild(new MoveToTargetNeuron());
        pDistanceNeuron->SetFalseChild(new FireNeuron());
        pHasTargetNeuron->SetTrueChild(pDistanceNeuron);
        
        Neuron* rootNeuron = pHasTargetNeuron;
        
        pBrain->SetRootNeuron(rootNeuron);
        m_pRobot->SetBrain(pBrain);
        
        rWorld.AddActor(m_pRobot);
        
        pNode = [self.scene createNode];
        Robot* pEvilRobot = new Robot(pNode);
        pEvilRobot->SetBody(new Body());
        pEvilRobot->SetHead(new Head());
        pEvilRobot->SetArms(new Arms());
        pEvilRobot->LoadGeometry();
        pEvilRobot->SetType(Actor::HOSTILE);
        pEvilRobot->GetPosition().x = 1.0f;
        pEvilRobot->GetPosition().z = -8.0f;
        
        rWorld.AddActor(pEvilRobot);
        
		[self schedule:@selector(tick:)];
	}
	return self;
}

- (void) dealloc {

	[super dealloc];
}


- (void) tick:(float)dt {
	// Rotate the text around the y axis
    World::GetInstance().Tic(dt);
}


@end

