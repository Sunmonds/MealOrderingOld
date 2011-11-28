//
//  MainMenuScene.m
//  MealOrdering
//
//  Created by sunlei on 11-11-16.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import "MainMenuScene.h"


@implementation MainMenuScene
+(CCScene *) scene
{
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	MainMenuScene *layer = [MainMenuScene node];
	
	// add layer as a child to scene
	[scene addChild: layer];
	
	// return the scene
	return scene;
}
@end
