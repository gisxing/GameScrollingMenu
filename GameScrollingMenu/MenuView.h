//
//  MenuView.h
//  GameScrollingMenu
//
//  Created by gisxing on 14-4-13.
//  Copyright (c) 2014年 gisxing. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <SpriteKit/SpriteKit.h>

@interface MenuView : UIView 
@property (strong, nonatomic)SKScene *scene;


- (id)initWithFrame:(CGRect)frame WithScene:(SKScene *)scene;
+ (id)customView;
@end
