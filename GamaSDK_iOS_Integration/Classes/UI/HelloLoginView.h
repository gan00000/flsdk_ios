//
//  HelloLoginView.h
//  
//
//  Created by Sunny on 17/2/8.
//  Copyright © 2017年 Starpy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HelloTextField.h"

typedef NS_OPTIONS(NSUInteger, HelloLoginMode)
{
    HelloLogin_Default,
    HelloLogin_HadLogin,
    HelloLogin_GuestScreenShot,
    HelloLogin_GuestBindAccount,
};

@interface HelloLoginView : UIView <UITextFieldDelegate>
@property (nonatomic,retain) HelloTextField *mobile_phone_tf;
@property (nonatomic,retain) HelloTextField *mobile_area_tf;
@property (nonatomic,retain) HelloTextField *verfication_tf;

- (instancetype)initWithMode:(HelloLoginMode)mode;

@end
