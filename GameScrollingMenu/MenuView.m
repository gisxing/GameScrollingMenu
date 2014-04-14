//
//  MenuView.m
//  GameScrollingMenu
//
//  Created by gisxing on 14-4-13.
//  Copyright (c) 2014年 gisxing. All rights reserved.
//

#import "MenuView.h"
#import "NewGameScene.h"

@interface MenuView () <UIScrollViewDelegate>


@property (weak, nonatomic)IBOutlet UIView *view;

@property (weak, nonatomic) IBOutlet UIScrollView *scrollMenu;
@property (weak, nonatomic) IBOutlet UIButton *button;
@property (weak, nonatomic) IBOutlet UILabel *myLabel;

@property ( nonatomic) BOOL flag;

@end

@implementation MenuView


+ (id)customView
{
    MenuView *customView = [[[NSBundle mainBundle] loadNibNamed:@"MenuView" owner:nil options:nil] lastObject];
    
    // make sure customView is not nil or the wrong class!
    if ([customView isKindOfClass:[MenuView class]]) {
        NSLog(@"init in class method");
        return customView;
    }
    else
        return nil;
}

-(SKScene *)scene {
    if (!_scene) _scene = [[SKScene alloc]init];
    return _scene;
}

-(BOOL )flag {
    if (!_flag) _flag = NO;
    return _flag;
}

- (IBAction)buttonClick:(id)sender {
    NSLog(@"click !");
    //when click , transit to a new scene

    NSLog(@"%f, %@", self.view.bounds.size.height,self.scene );
    self.myLabel.text = @"test";
    /*
     SKTransition *transition = [SKTransition doorsCloseHorizontalWithDuration:1];
     NewGameScene *gameScene = [[NewGameScene alloc] initWithSize:self.view.bounds.size];
     [self.scene.view presentScene:gameScene transition:transition];
    */
}

- (id)initWithFrame:(CGRect)frame WithScene:(SKScene *)scene
{
    self = [super initWithFrame:frame];

    if (self) {
        // Initialization code
        NSLog(@"init with frame with scene");
#warning why not set ??
        _scene = scene;
        self.flag = YES;
        [[NSBundle mainBundle] loadNibNamed:@"MenuView" owner:self options:nil];


        [self addSubview:self.view];
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if (self) {
        // Initialization code
        NSLog(@"init with frame");
        [[NSBundle mainBundle] loadNibNamed:@"MenuView" owner:self options:nil];
        //self.backgroundColor = [UIColor greenColor];
        self.flag = YES;
        
        [self addSubview:self.view];
    }
    return self;
}

/*
- (id)initWithCoder:(NSCoder *)aDecoder {
    if ((self = [super initWithCoder:aDecoder])) {
        NSLog(@"init in coder");
        
    }
    return self;
}
*/

- (void) awakeFromNib
{
    [super awakeFromNib];
#warning why not set ??
    NSLog(@"----awake from nib: %@, flag: %d", self.scene, self.flag);

    self.scrollMenu.contentSize = CGSizeMake(272, 1000);
    NSLog(@"size: %f, %f", self.scrollMenu.contentSize.height,self.scrollMenu.contentSize.width );
    //self.scrollMenu.backgroundColor = [UIColor redColor];
    //[self addSubview:self.view];
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
