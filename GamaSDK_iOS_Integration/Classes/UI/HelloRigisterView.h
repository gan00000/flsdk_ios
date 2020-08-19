//
//  HelloRigisterView.h
//  
//
//  Created by Sunny on 17/2/8.
//  Copyright © 2017年 sunn. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_OPTIONS(NSUInteger, HelloRigisterMode)
{
    Hello_Register_Normal = 0,
    Hello_Register_ResetPwd = 1,
    Hello_Register_FindPwd = 2,
    Hello_Register_Bind = 3,
    Hello_Register_Guest_Bind ,
    Hello_Register_GameCenter_Bind ,
    Hello_Register_Space,
    Hello_Register_Member_Manager,
    Hello_Register_Twitter_Bind,
    Hello_Register_Apple_Bind,
    Hello_Bind_Phone,
    Hello_Bind_Phone_Fetch_Reward,
};

@interface HelloRigisterView : UIView

- (instancetype)initWithFrame:(CGRect)frame viewMode:(HelloRigisterMode)mode;

@property (nonatomic, retain) UIView *parenView;

@end
