//
//  AboutView.m
//  Running
//
//  Created by Lisa Jenkins on 2/15/13.
//  Copyright (c) 2013 nyu. All rights reserved.
//

#import "AboutView.h"
#import "Util.h"

@implementation AboutView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor purpleColor];
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
    
    UILabel *label = [Util introText:@"About" textColor:[UIColor purpleColor] frame:self.frame];
    [self addSubview:label];
    
    UITextView *aboutText = [[UITextView alloc] initWithFrame: CGRectMake(x + width/8, y + height/5, width*3/4, height/3)];
    
    aboutText.text = @"Running is great because it is a very efficient form of exercise.  You don't need any special equipment to do it, and the cost to start is a pair of shoes.  You don't need other people to run, but it is motivating to have running partners. The one problem with running is it is very hard on your joints, so many runners have joint problems that persist for many years.";
    
    aboutText.showsVerticalScrollIndicator = true;
    aboutText.editable = NO;
    aboutText.font = [UIFont fontWithName:@"Courier" size: 16];
    [self addSubview:aboutText];
    
    UIButton *signupButton = [Util makeButton:@"Sign Up" frame:self.frame placement:@"left"];
    [self addSubview:signupButton];
    
    UIButton *backButton = [Util makeButton:@"Back" frame:self.frame placement:@"right"];
    [self addSubview:backButton];

    
    
}


@end
