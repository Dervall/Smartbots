//
//  SmartbotsAppDelegate.h
//  Smartbots
//
//  Created by Per Dervall on 12/11/11.
//  Copyright 2011 Tretton37. All rights reserved.
//

@class Isgl3dViewController;

@interface SmartbotsAppDelegate : NSObject <UIApplicationDelegate> {

@private
	Isgl3dViewController * _viewController;
	UIWindow * _window;
}

@property (nonatomic, retain) UIWindow * window;

@end
