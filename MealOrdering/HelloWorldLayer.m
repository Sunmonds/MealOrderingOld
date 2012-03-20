//
//  HelloWorldLayer.m
//  MealOrdering
//
//  Created by Sun on 12-3-8.
//  Copyright __MyCompanyName__ 2012年. All rights reserved.
//


// Import the interfaces
#import "HelloWorldLayer.h"

// HelloWorldLayer implementation
@implementation HelloWorldLayer

+(CCScene *) scene
{
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	HelloWorldLayer *layer = [HelloWorldLayer node];
	
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
		
		// create and initialize a Label
		CCLabelTTF *label = [CCLabelTTF labelWithString:@"Hello World" fontName:@"Marker Felt" fontSize:64];

		// ask director the the window size
		CGSize size = [[CCDirector sharedDirector] winSize];
	
		// position the label on the center of the screen
		label.position =  ccp( size.width /2 , size.height/2 );
		
		// add the label as a child to this Layer
		CCSprite* sp1=[CCSprite spriteWithFile:@"Icon.png"];
        sp1.position=ccp(0, 0);        
        sp1.anchorPoint=ccp(0, 0);
        sp1.tag=1;
        
                
        CCMenuItemSprite* menuItem1=[CCMenuItemSprite itemFromNormalSprite:sp1 selectedSprite:nil target:self selector:@selector(selectItem:)];
        CCMenu* menu=[CCMenu menuWithItems:menuItem1,nil];
        menu.position=ccp(0, 0);
        menu.anchorPoint=ccp(0, 0);
        
        [self addChild:menu];
	}
	return self;
}
-(void)selectItem:(CCMenuItemSprite*)sender
{
    
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
