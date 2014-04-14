//
//  NewGameScene.m
//  GameScrollingMenu
//
//  Created by gisxing on 14-4-13.
//  Copyright (c) 2014年 gisxing. All rights reserved.
//

#import "NewGameScene.h"

@implementation NewGameScene

-(id)initWithSize:(CGSize)size {
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        
        self.backgroundColor = [SKColor colorWithRed:0.15 green:0.15 blue:0.3 alpha:1.0];
        
 
         SKLabelNode *myLabel = [SKLabelNode labelNodeWithFontNamed:@"Chalkduster"];
         
         myLabel.text = @"Hello, World!";
         myLabel.fontSize = 30;
         myLabel.position = CGPointMake(CGRectGetMidX(self.frame),
         CGRectGetMidY(self.frame));
         
         [self addChild:myLabel];
 
    }
    return self;
}
@end
