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

