//
//  TuijianLayer.m
//  MealOrdering
//
//  Created by Sun on 12-3-8.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "TuijianLayer.h"


@implementation TuijianLayer

- (id)init {
    self = [super init];
    if (self) {
        // create and initialize a Label
        CCSprite* sprite=[CCSprite spriteWithFile:@"Tuijian.jpg"];
        sprite.position=ccp(0, 0);
        sprite.scale=1.1;
        sprite.anchorPoint=ccp(0, 0);
        [self addChild:sprite];
		
		// add the label as a child to this Layer
		CCSprite* sp1=[CCSprite spriteWithFile:@"Icon.png"];
        
        
        CCMenuItemSprite* menuItem1=[CCMenuItemSprite itemFromNormalSprite:sp1 selectedSprite:nil target:self selector:@selector(close)];
        
        CCMenu* menu=[CCMenu menuWithItems:menuItem1,nil];
        menu.position=ccp(800, 80);
        menu.anchorPoint=ccp(0, 0);
        
        [self addChild:menu];
        
    }
    return self;
}

-(void)close
{
    [self removeFromParentAndCleanup:YES];
}
@end
