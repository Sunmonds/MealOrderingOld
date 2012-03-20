//
//  MainMenuSense.m
//  MealOrdering
//
//  Created by Sun on 12-3-8.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "MainMenuScene.h"
#import "IntroduceLayer.h"
#import "WenjuanLayer.h"
#import "CuxiaoLayer.h"
#import "TuijianLayer.h"
#import "DeskChooseScene.h"

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

// on "init" you need to initialize your instance
-(id) init
{
	// always call "super" init
	// Apple recommends to re-assign "self" with the "super" return value
	if( (self=[super init])) {
		
        self.isTouchEnabled=YES;
        
		CCSprite* sprite=[CCSprite spriteWithFile:@"MainMenu.jpg"];
        sprite.position=ccp(0, 0);
        sprite.scale=1.1;
        sprite.anchorPoint=ccp(0, 0);
        [self addChild:sprite];
        
        CCSprite* sp1=[CCSprite spriteWithFile:@"Icon.png"];
        CCSprite* sp2=[CCSprite spriteWithFile:@"Icon.png"];        
        CCSprite* sp3=[CCSprite spriteWithFile:@"Icon.png"];        
        CCSprite* sp4=[CCSprite spriteWithFile:@"Icon.png"];        
        CCSprite* sp5=[CCSprite spriteWithFile:@"Icon.png"];       
        CCSprite* sp6=[CCSprite spriteWithFile:@"Icon.png"];
        
        
        
        CCMenuItemSprite* menuItem1=[CCMenuItemSprite itemFromNormalSprite:sp1 selectedSprite:nil target:self selector:@selector(selectItem:)];
        CCMenuItemSprite* menuItem2=[CCMenuItemSprite itemFromNormalSprite:sp2 selectedSprite:nil target:self selector:@selector(selectItem:)];
        CCMenuItemSprite* menuItem3=[CCMenuItemSprite itemFromNormalSprite:sp3 selectedSprite:nil target:self selector:@selector(selectItem:)];
        CCMenuItemSprite* menuItem4=[CCMenuItemSprite itemFromNormalSprite:sp4 selectedSprite:nil target:self selector:@selector(selectItem:)];
        CCMenuItemSprite* menuItem5=[CCMenuItemSprite itemFromNormalSprite:sp5 selectedSprite:nil target:self selector:@selector(selectItem:)];
        CCMenuItemSprite* menuItem6=[CCMenuItemSprite itemFromNormalSprite:sp6 selectedSprite:nil target:self selector:@selector(selectItem:)];
 
        
         menuItem1.position=ccp(200, 100);
         menuItem2.position=ccp(400, 100);
         menuItem3.position=ccp(600, 100);
         menuItem4.position=ccp(200, 300);
         menuItem5.position=ccp(400, 300);
         menuItem6.position=ccp(600, 300);
        
        menuItem1.tag=1;
        menuItem2.tag=2;
        menuItem3.tag=3;
        menuItem4.tag=4;
        menuItem5.tag=5;
        menuItem6.tag=6;
        
       
        CCMenu* menu=[CCMenu menuWithItems:menuItem1,menuItem2,menuItem3,menuItem4,menuItem5,menuItem6,nil];
        menu.position=ccp(100, 200);
        menu.anchorPoint=ccp(0, 0);
        
        [self addChild:menu];
        
        
	}
	return self;
}

-(void)selectItem:(CCSprite*)sender
{
    
    
    NSLog(@"ID:%d",sender.tag);
    
    switch (sender.tag) {
        case 1:
        { 
            // [[CCDirector sharedDirector] replaceScene:];
            CuxiaoLayer* cuxiao=[CuxiaoLayer node];
            [self addChild:cuxiao];            
            break;
        }
        case 2:
        {  
            // [[CCDirector sharedDirector] replaceScene:];
            WenjuanLayer* wenjuan=[WenjuanLayer node];
            [self addChild:wenjuan];                        
            break;
           
            
        }
        case 3:
            
            
            break;
            
        case 4:
        {
            // [[CCDirector sharedDirector] replaceScene:];            
            IntroduceLayer* introduce=[IntroduceLayer node];
            [self addChild:introduce];            
            break;
        }  
        case 5:
        {   
            // [[CCDirector sharedDirector] replaceScene:];
            TuijianLayer* tuijian=[TuijianLayer node];
            [self addChild:tuijian];                        
            break;
     
        }
        case 6:
            
            
            [[CCDirector sharedDirector] replaceScene:[DeskChooseScene scene] ];
            
            break;
            

            
        default:
            break;
    }
    
    
    
    
    
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
