//
//  LoadingScene.m
//  MealOrdering
//
//  Created by sunlei on 11-11-16.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import "LoadingScene.h"


@implementation LoadingScene

+(CCScene *) scene
{
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	LoadingScene *layer = [LoadingScene node];
	
	// add layer as a child to scene
	[scene addChild: layer];
	
	// return the scene
	return scene;
}
@end
