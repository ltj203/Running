//
//  SignUpView.m
//  Running
//
//  Created by Lisa Jenkins on 2/15/13.
//  Copyright (c) 2013 nyu. All rights reserved.
//

#import "SignUpView.h"
#import "RunningViewController.h"
#import "Util.h"

@implementation SignUpView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
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
    
    UILabel *label = [Util introText:@"Sign Up" textColor:[UIColor purpleColor] frame:self.frame];
    [self addSubview:label];
    
    UIFont *font = [UIFont fontWithName:@"Courier" size:50];
    CGFloat line_height = [@"A" sizeWithFont: font].height;
    textField = [[UITextField alloc] initWithFrame:CGRectMake(x + width/8, y + (height + line_height)/3, width/2, line_height)];
    textField.borderStyle = UITextBorderStyleBezel;
    textField.textColor = [UIColor blackColor];
    textField.backgroundColor = [UIColor whiteColor];
    textField.clearButtonMode = UITextFieldViewModeAlways;
    textField.keyboardType = UIKeyboardTypeDefault;
    textField.returnKeyType = UIReturnKeyJoin;
    textField.delegate = self;
    [self addSubview:textField];
    
    CGSize buttonSize = CGSizeMake(70, 45);
    UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    submitButton.frame = CGRectMake(x + width*2/3, y + (height + line_height)/3, buttonSize.width, buttonSize.height);
    textField.borderStyle = UITextBorderStyleBezel;
    [submitButton setTitleColor:[UIColor purpleColor] forState: UIControlStateNormal];
    [submitButton setTitle: @"Join" forState:UIControlStateNormal];
    [submitButton addTarget:
     [UIApplication sharedApplication].delegate
                    action:@selector(touchUpInside:)
          forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:submitButton];
    
    UIButton *backButton = [Util makeButton:@"Back" frame:self.frame placement:@"right"];
    [self addSubview:backButton];
    
}

-(BOOL) textFieldShouldReturn:(UITextField *)tf {
    if ([tf.text isEqualToString:@""]) {
        tf.placeholder = @"<enter your email>";
    } else {
        [tf resignFirstResponder];
    }
    
    return YES;
}

-(void)textFieldDidEndEditing:(UITextField *)textField {
    [self showAlert];
}

-(void) showAlert {
    NSMutableString *message = [[NSMutableString alloc] initWithString: @"Your email address is "];
    if ([textField.text isEqualToString:@""]) {
        [message appendString: @"...oops! You forgot to enter your email!"];
    } else {
        [message appendString:textField.text];
    }
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Thank you for signing up" message: message delegate:self cancelButtonTitle:@"Dismiss" otherButtonTitles:NULL, nil];
    
    [alert show];
}



@end
