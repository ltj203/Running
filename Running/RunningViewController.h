//
//  RunningViewController.h
//  Running
//
//  Created by Lisa Jenkins on 2/13/13.
//  Copyright (c) 2013 nyu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AboutView.h"
#import "SignUpView.h"
#import "PhotosView.h"
#import "View.h"

@interface RunningViewController : UIViewController{
    UIView *mainView;
    View *welcome_view;
    PhotosView *photo_view;
    AboutView *about_view;
    SignUpView *signup_view;
}

-(void) changeView: (NSInteger) viewIndex;
-(void) showAlert;

@end
