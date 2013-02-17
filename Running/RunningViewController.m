//
//  RunningViewController.m
//  Running
//
//  Created by Lisa Jenkins on 2/13/13.
//  Copyright (c) 2013 nyu. All rights reserved.
//

#import "RunningViewController.h"
#import "View.h"
#import "PhotosView.h"
#import "AboutView.h"
#import "SignUpView.h"
#import "Util.h"

@interface RunningViewController ()

@end

@implementation RunningViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    CGRect frame = [UIScreen mainScreen].applicationFrame;
    
    mainView = [[UIView alloc] initWithFrame:frame];
    
    welcome_view = [[View alloc] initWithFrame:frame];
    
    photo_view = [[PhotosView alloc] initWithFrame: frame];
    
    about_view = [[AboutView alloc] initWithFrame: frame];
    
    signup_view = [[SignUpView alloc] initWithFrame: frame];
    
    [mainView addSubview:welcome_view];
    [mainView addSubview:photo_view];
    [mainView addSubview:about_view];
    [mainView addSubview:signup_view];
    
    photo_view.hidden = true;
    about_view.hidden = true;
    signup_view.hidden = true;
    
    self.view = mainView;
}

-(void) changeView: (NSInteger) viewIndex {
    welcome_view.hidden = true;
    photo_view.hidden = true;
    about_view.hidden = true;
    signup_view.hidden = true;
    
    switch (viewIndex) {
        case 0:
            welcome_view.hidden = FALSE;
            //self.view = welcome_view;
            break;
        case 1:
            //self.view = photo_view;
            photo_view.hidden = FALSE;
            break;
        case 2:
           // self.view = about_view;
            about_view.hidden = FALSE;
            break;
        case 3:
            //self.view = signup_view;
            signup_view.hidden = FALSE;
            break;
        default:
            //self.view = welcome_view;
            welcome_view.hidden = FALSE;
            break;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) showAlert {
    [signup_view showAlert];
}

@end
