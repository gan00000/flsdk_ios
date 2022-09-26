//
//  LoginButton.m
//  R2DSDK
//
//  Created by ganyuanrong on 2020/7/8.
//  Copyright © 2020 ganyuanrong. All rights reserved.
//

#import "LoginButton.h"
#import "UIUtil.h"

@implementation LoginButton

+ (UIButton *)initBtnWithType:(BUTTON_TYPE)type
                          tag:(NSUInteger)tag
                     selector:(SEL)selector
                       target:(id)target
{
    
    NSString *normalImage = @"btn_hy.png";
    NSString *highlightedImage = @"btn_hy.png";
    NSString *titleText = @"";
    switch (type) {
        case BUTTON_TYPE_ACCOUNT: //會員賬號登入
            normalImage = @"sdk_btn_bg.png";
            highlightedImage = @"sdk_btn_bg.png";
            titleText = @"會員賬號登入";
            break;
            
        case BUTTON_TYPE_FB:
            normalImage = @"btn_fb.png";
            highlightedImage = @"btn_fb.png";
            break;
            
        case BUTTON_TYPE_GEUST:
            normalImage = @"btn_yk.png";
            highlightedImage = @"btn_yk.png";
            break;
            
        case BUTTON_TYPE_APPLE:
            normalImage = @"btn_ios.png";
            highlightedImage = @"btn_ios.png";
            break;
        case BUTTON_TYPE_ACCOUNT_LOGIN:
            normalImage = @"sdk_btn_bg.png";
            highlightedImage = @"sdk_btn_bg.png";
            titleText = @"會員登入";
            break;
            
        case BUTTON_TYPE_ACCOUNT_REGISTER:
                   normalImage = @"sdk_btn_bg.png";
                   highlightedImage = @"sdk_btn_bg.png";
                   titleText = @"註冊會員";
                   break;
            
        case BUTTON_TYPE_OK: //確認
            normalImage = @"sdk_btn_bg.png";
            highlightedImage = @"sdk_btn_bg.png";
            titleText = @"確   認";
            break;
        case BUTTON_TYPE_BIND_FB: //綁定
            normalImage = @"sdk_btn_bdfb.png";
            highlightedImage = @"sdk_btn_bdfb.png";
            break;
            
        case BUTTON_TYPE_BIND_APPLE:
            normalImage = @"sdk_btn_bdios.png";
            highlightedImage = @"sdk_btn_bdios.png";
            break;
            
        case BUTTON_TYPE_BIND_GEUST:
            normalImage = @"sdk_btn_bdyk.png";
            highlightedImage = @"sdk_btn_bdyk.png";
            break;
            
        case BUTTON_TYPE_CHANGE_ACCOUNT:  //切換帳號
            normalImage = @"sdk_btn_bg.png";
            highlightedImage = @"sdk_btn_bg.png";
            titleText = @"切換帳號";
            break;
        case BUTTON_TYPE_BIND_ACCOUNT://綁定會員
            normalImage = @"sdk_btn_bg.png";
            highlightedImage = @"sdk_btn_bg.png";
            titleText = @"綁定會員";
            break;
            
        default:
            break;
    }
    
    //UIButton *mButton = [UIUtil initBtnWithNormalImage:normalImage highlightedImage:highlightedImage tag:tag selector:selector target:target];
    
//    UIButton *mButton = [UIUtil initBtnWithNormalImage:normalImage highlightedImage:highlightedImage titleText:titleText tag:tag selector:selector target:target];
    
    UIButton *mButton = [UIUtil initBtnWithTitleText:titleText fontSize:FS(17) textColor:[UIColor whiteColor] tag:tag selector:selector target:target];
    
//    [UIUtil initBtnWithTitle:titleText tag:tag selector:selector target:target];
    
//    [mButton setTitleColor:[UIColor whiteColor] forState:0];
    [mButton.layer setCornerRadius:20.0f];
    
    //closeImageView.backgroundColor = [UIColor clearColor];
//    [mButton.layer setCornerRadius:kR2BtnCornerRadius];
    //mButton.imageView.contentMode = UIViewContentModeScaleAspectFit;
    
    return mButton;
}


@end
