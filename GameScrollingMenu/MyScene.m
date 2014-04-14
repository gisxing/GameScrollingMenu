//
//  MyScene.m
//  GameScrollingMenu
//
//  Created by gisxing on 14-4-13.
//  Copyright (c) 2014年 gisxing. All rights reserved.
//

#import "MyScene.h"
#import "MenuView.h"
#import "NewGameScene.h"

@interface MyScene ()


@end

@implementation MyScene


 #pragma mark - add a scroling uiview
 - (void)didMoveToView:(SKView *)view
 {
     //Called immediately after a scene is presented by a view.
     [super didMoveToView:view];

     MenuView *menu = [[MenuView alloc]initWithFrame:self.frame WithScene:self.scene];
//   MenuView *menu = [[MenuView alloc]initWithFrame:self.frame];

//     MenuView *menu = [MenuView customView];
     
     
     [self.view addSubview:menu];
 
 }

-(void)willMoveFromView:(SKView*)view {
    NSLog(@"will move from view");
    [self removeAllChildren];
}

-(id)initWithSize:(CGSize)size {
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        self.backgroundColor = [SKColor colorWithRed:0.30 green:0.15 blue:0.3 alpha:1.0];
    }
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    /* Called when a touch begins */
  
    
    for (UITouch *touch in touches) {
        CGPoint location = [touch locationInNode:self];
        
        SKSpriteNode *sprite = [SKSpriteNode spriteNodeWithImageNamed:@"Spaceship"];
        
        sprite.position = location;
        
        SKAction *action = [SKAction rotateByAngle:M_PI duration:1];
        
        [sprite runAction:[SKAction repeatActionForever:action]];
        
        [self addChild:sprite];
    }
}

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end
