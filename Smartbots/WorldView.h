//
//  HelloWorldView.h
//  Smartbots
//
//  Created by Per Dervall on 12/11/11.
//  Copyright 2011 Tretton37. All rights reserved.
//

#import "isgl3d.h"

class Actor;
class Robot;

@interface WorldView : Isgl3dBasic3DView {

@private
	// The rendered text
	Isgl3dMeshNode * _3dText;
    Isgl3dMeshNode * _cube;
    Actor* m_pTestActor;
    Robot* m_pRobot;
}

@end


