//
//  View.m
//  Running
//
//  Created by Lisa Jenkins on 2/13/13.
//  Copyright (c) 2013 nyu. All rights reserved.
//

#import "View.h"
#import "Util.h"

@implementation View

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}



// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    CGPoint origin = self.frame.origin;
    CGSize size = self.frame.size;
    CGFloat width = size.width;
    CGFloat height = size.height;
    CGFloat x = origin.x;
    CGFloat y = origin.y;
    
    [Util drawBackgroundImage:self.frame];
    
    image = [UIImage imageNamed: @"run_main.jpg"];
    CGPoint center = CGPointMake(x + (width - image.size.width)/2, y + (height - image.size.height)/4);
    
    [image drawAtPoint:center];
    
    UILabel *label = [Util introText:@"Run" textColor:[UIColor purpleColor] frame:self.frame];
    [self addSubview:label];
    
    UIButton *aboutButton = [Util makeButton:@"About" frame:self.frame placement:@"left"];
    [self addSubview:aboutButton];
    
    UIButton *photosButton = [Util makeButton:@"Photos" frame:self.frame placement:@"right"];
    [self addSubview:photosButton];
    
}


@end
