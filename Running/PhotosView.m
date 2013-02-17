//
//  PhotosView.m
//  Running
//
//  Created by Lisa Jenkins on 2/14/13.
//  Copyright (c) 2013 nyu. All rights reserved.
//

#import "PhotosView.h"
#import "Util.h"

@implementation PhotosView

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
    
    UILabel *label = [Util introText:@"Photos" textColor:[UIColor whiteColor] frame:self.frame];
    [self addSubview:label];
    
    UIImage *genericImage = [UIImage imageNamed:@"form.jpg"];
    CGFloat rightX = x + width*3/4 - genericImage.size.width/2;
    CGFloat leftX = x + width/4 - genericImage.size.width/2;
    CGFloat topY = y + height/3 - genericImage.size.height/2;
    CGFloat bottomY = y + height*2/3 - genericImage.size.height/2;
    
    UIImage *image1 = [UIImage imageNamed: @"form.jpg"];
    CGPoint topLeft = CGPointMake(leftX,topY);
    [image1 drawAtPoint:topLeft];
    
    UIImage *image2 = [UIImage imageNamed: @"racing.jpg"];
    CGPoint topRight = CGPointMake(rightX,topY);
    [image2 drawAtPoint:topRight];
    
    UIImage *image3 = [UIImage imageNamed: @"shoes.jpg"];
    CGPoint bottomLeft = CGPointMake(leftX,bottomY);
    [image3 drawAtPoint:bottomLeft];
    
    UIImage *image4 = [UIImage imageNamed: @"speed.jpg"];
    CGPoint bottomRight = CGPointMake(rightX,bottomY);
    [image4 drawAtPoint:bottomRight];
    
    UIButton *backButton = [Util makeButton:@"Back" frame:self.frame placement:@"right"];
    [backButton setCenter:CGPointMake(bottomRight.x + backButton.frame.size.width/2, bottomRight.y + image4.size.height + backButton.frame.size.height)];
    [self addSubview:backButton];
    
}


@end
