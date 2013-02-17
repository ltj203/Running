//
//  Util.h
//  Running
//
//  Created by Lisa Jenkins on 2/16/13.
//  Copyright (c) 2013 nyu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Util : NSObject

+(id) introText: (NSString *)someText textColor: (UIColor *) color frame: (CGRect) frame;

+(id) makeButton: (NSString *) buttonLabel frame: (CGRect) frame placement: (NSString *) placement;

+(id) drawBackgroundImage;

+(void) drawBackgroundImage: (CGRect) frame;

@end
