//
//  RunningAppDelegate.h
//  Running
//
//  Created by Lisa Jenkins on 2/13/13.
//  Copyright (c) 2013 nyu. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RunningViewController;

@interface RunningAppDelegate : UIResponder <UIApplicationDelegate>{
    UIWindow *_window;
}

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) RunningViewController *viewController;

@end
