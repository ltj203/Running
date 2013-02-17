//
//  Util.m
//  Running
//
//  Created by Lisa Jenkins on 2/16/13.
//  Copyright (c) 2013 nyu. All rights reserved.
//

#import "Util.h"

@implementation Util

+(id) introText: (NSString *)someText textColor: (UIColor *) color frame:(CGRect)frame{
    CGPoint origin = frame.origin;
    CGSize size = frame.size;
    CGFloat width = size.width;
    CGFloat x = origin.x;
    CGFloat y = origin.y;
    
    NSString *introText = someText;
    CGSize textSize = [introText sizeWithFont:[UIFont fontWithName:@"Courier" size:50]];
    CGRect labelRect = CGRectMake(x + (width - textSize.width)/2, y + textSize.height/2, textSize.width, textSize.height);
    UILabel *label = [[UILabel alloc] initWithFrame: labelRect];
    label.backgroundColor = [UIColor clearColor];
    label.font = [UIFont fontWithName:@"Courier" size:50];
    label.text = introText;
    label.textColor =  color;
    
    return label;
}

+(id) makeButton: (NSString *) buttonLabel frame: (CGRect) frame placement:(NSString *)placement{
    CGPoint origin = frame.origin;
    CGSize size = frame.size;
    CGFloat width = size.width;
    CGFloat height = size.height;
    CGFloat x = origin.x;
    CGFloat y = origin.y;
    CGSize buttonSize = CGSizeMake(70, 45);
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    if (placement == @"left") {
        button.frame = CGRectMake(x + (width - buttonSize.width)/4, y + (height - buttonSize.height)*3/4, buttonSize.width, buttonSize.height);
    } else if (placement == @"right") {
        button.frame = CGRectMake(x + (width - buttonSize.width)*3/4, y + (height - buttonSize.height)*3/4, buttonSize.width, buttonSize.height);
    } else {
        button.frame = CGRectMake(x + (width-buttonSize.width)/2, y + (height-buttonSize.height)/2, buttonSize.width, buttonSize.height);
    }
    
    [button setTitleColor:[UIColor purpleColor] forState: UIControlStateNormal];
    [button setTitle: buttonLabel forState:UIControlStateNormal];
    [button addTarget:
        [UIApplication sharedApplication].delegate
                action:@selector(touchUpInside:)
      forControlEvents:UIControlEventTouchUpInside];
    
    return button;
}

+(id) drawBackgroundImage {
    UIImageView *background = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"run_background.jpg"]];
    return background;
}

+(void) drawBackgroundImage: (CGRect) frame {
    CGPoint origin = frame.origin;
    CGSize size = frame.size;
    CGFloat width = size.width;
    CGFloat height = size.height;
    CGFloat x = origin.x;
    CGFloat y = origin.y;
    
    UIImage *background = [UIImage imageNamed:@"run_background.jpg"];
    [background drawAtPoint: (CGPointMake(x + (width - background.size.width)/2, y + (height - background.size.height)/2))];
}


@end
