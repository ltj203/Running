//
//  SignUpView.h
//  Running
//
//  Created by Lisa Jenkins on 2/15/13.
//  Copyright (c) 2013 nyu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SignUpView : UIView <UITextFieldDelegate,UIAlertViewDelegate>{
    UITextField *textField;
} 

-(void) showAlert;
-(UITextField*) getTextField;

@end
