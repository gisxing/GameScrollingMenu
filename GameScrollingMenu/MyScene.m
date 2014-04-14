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
@property (weak, nonatomic) MenuView *menu;

@end

@implementation MyScene


 #pragma mark - add a scroling uiview
 - (void)didMoveToView:(SKView *)view
 {
     //Called immediately after a scene is presented by a view.
     [super didMoveToView:view];

//     MenuView *menu = [[MenuView alloc]initWithFrame:self.frame WithScene:self.scene];
//   MenuView *menu = [[MenuView alloc]initWithFrame:self.frame];

//     MenuView *menu = [MenuView customView];
     
     self.menu  = [[[NSBundle mainBundle] loadNibNamed:@"MenuView" owner:nil options:nil] lastObject];
     self.menu.scene = self;
     [self.view addSubview:self.menu];
 
 }

-(void)willMoveFromView:(SKView*)view {
    NSLog(@"will move from view");
    //[self removeAllChildren];
    [self.menu removeFromSuperview];
    self.menu = nil;
}

-(id)initWithSize:(CGSize)size {
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        self.backgroundColor = [SKColor colorWithRed:0.30 green:0.15 blue:0.3 alpha:1.0];
        SKLabelNode *myLabel = [SKLabelNode labelNodeWithFontNamed:@"Chalkduster"];
        
        myLabel.text = @"hi hi , World!";
        myLabel.fontSize = 30;
        myLabel.position = CGPointMake(CGRectGetMidX(self.frame),
                                       CGRectGetMidY(self.frame));
            NSLog(@"first pos: %f, %f", CGRectGetMidX(self.frame), CGRectGetMidY(self.frame));
        [self addChild:myLabel];
        
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
