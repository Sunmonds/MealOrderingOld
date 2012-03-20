//
//  DeskChooseScene.m
//  MealOrdering
//
//  Created by Sun on 12-3-8.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "DeskChooseScene.h"
#import "FoodListScene.h"


@implementation DeskChooseScene

+(CCScene *) scene
{
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	DeskChooseScene *layer = [DeskChooseScene node];
	
	// add layer as a child to scene
	[scene addChild: layer];
	
	// return the scene
	return scene;
}

// on "init" you need to initialize your instance
-(id) init
{
	// always call "super" init
	// Apple recommends to re-assign "self" with the "super" return value
	if( (self=[super init])) {		
        
		CCSprite* sprite=[CCSprite spriteWithFile:@"DeskList.jpg"];
        sprite.position=ccp(0, 0);
        sprite.scale=1.1;
        sprite.anchorPoint=ccp(0, 0);
        [self addChild:sprite];
        
        
        CCSprite* sp1=[CCSprite spriteWithFile:@"Icon.png"];
        
        
        CCMenuItemSprite* menuItem1=[CCMenuItemSprite itemFromNormalSprite:sp1 selectedSprite:nil target:self selector:@selector(selectDesk:)];
        
        CCMenu* menu=[CCMenu menuWithItems:menuItem1,nil];
        menu.position=ccp(200, 600);
        menu.anchorPoint=ccp(0, 0);
        
        [self addChild:menu];
    }
    return self;
}

-(void)selectDesk:(id)sender
  {
      [[CCDirector sharedDirector] replaceScene:[FoodListScene scene]];
  }
// on "dealloc" you need to release all your retained objects
- (void) dealloc
{
	// in case you have something to dealloc, do it in this method
	// in this particular example nothing needs to be released.
	// cocos2d will automatically release all the children (Label)
	
	// don't forget to call "super dealloc"
	[super dealloc];
}
@end