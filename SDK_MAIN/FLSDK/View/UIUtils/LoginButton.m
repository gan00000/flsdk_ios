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

+ (UIButton *)initBtnWithType_MMMethodMMM:(BUTTON_TYPE)type
                          tag_MMMethodMMM:(NSUInteger)tag
                     selector:(SEL)selector
                       target_MMMethodMMM:(id)target
{
    
    NSString *normalImage = wwwww_tag_wwwww_btn_hy_png;
    NSString *highlightedImage = wwwww_tag_wwwww_btn_hy_png;
    NSString *titleText = @"";
    switch (type) {
        case BUTTON_TYPE_ACCOUNT: //會員賬號登入
            normalImage = wwwww_tag_wwwww_sdk_btn_bg_png;
            highlightedImage = wwwww_tag_wwwww_sdk_btn_bg_png;
            titleText = wwwww_tag_wwwww_beautifulaire_sisterary;
            break;
            
        case BUTTON_TYPE_FB:
            normalImage = wwwww_tag_wwwww_btn_fb_png;
            highlightedImage = wwwww_tag_wwwww_btn_fb_png;
            break;
            
        case BUTTON_TYPE_GEUST:
            normalImage = wwwww_tag_wwwww_btn_yk_png;
            highlightedImage = wwwww_tag_wwwww_btn_yk_png;
            break;
            
        case BUTTON_TYPE_APPLE:
            normalImage = wwwww_tag_wwwww_btn_ios_png;
            highlightedImage = wwwww_tag_wwwww_btn_ios_png;
            break;
        case BUTTON_TYPE_ACCOUNT_LOGIN:
            normalImage = wwwww_tag_wwwww_sdk_btn_bg_png;
            highlightedImage = wwwww_tag_wwwww_sdk_btn_bg_png;
            titleText = wwwww_tag_wwwww_fatu_misless;
            break;
            
        case BUTTON_TYPE_ACCOUNT_REGISTER:
                   normalImage = wwwww_tag_wwwww_sdk_btn_bg_png;
                   highlightedImage = wwwww_tag_wwwww_sdk_btn_bg_png;
                   titleText = wwwww_tag_wwwww_nattion_pecc;
                   break;
            
        case BUTTON_TYPE_OK: //確認
            normalImage = wwwww_tag_wwwww_sdk_btn_bg_png;
            highlightedImage = wwwww_tag_wwwww_sdk_btn_bg_png;
            titleText = wwwww_tag_wwwww_sportsome_pilfaction;
            break;
        case BUTTON_TYPE_BIND_FB: //綁定
            normalImage = wwwww_tag_wwwww_sdk_btn_bdfb_png;
            highlightedImage = wwwww_tag_wwwww_sdk_btn_bdfb_png;
            break;
            
        case BUTTON_TYPE_BIND_APPLE:
            normalImage = wwwww_tag_wwwww_sdk_btn_bdios_png;
            highlightedImage = wwwww_tag_wwwww_sdk_btn_bdios_png;
            break;
            
        case BUTTON_TYPE_BIND_GEUST:
            normalImage = wwwww_tag_wwwww_sdk_btn_bdyk_png;
            highlightedImage = wwwww_tag_wwwww_sdk_btn_bdyk_png;
            break;
            
        case BUTTON_TYPE_CHANGE_ACCOUNT:  //切換帳號
            normalImage = wwwww_tag_wwwww_sdk_btn_bg_png;
            highlightedImage = wwwww_tag_wwwww_sdk_btn_bg_png;
            titleText = wwwww_tag_wwwww_sexfy_egorary;
            break;
        case BUTTON_TYPE_BIND_ACCOUNT://綁定會員
            normalImage = wwwww_tag_wwwww_sdk_btn_bg_png;
            highlightedImage = wwwww_tag_wwwww_sdk_btn_bg_png;
            titleText = wwwww_tag_wwwww_thusence_discussion;
            break;
            
        default:
            break;
    }
    
    //UIButton *mButton = [UIUtil initBtnWithNormalImage_MMMethodMMM:normalImage highlightedImage_MMMethodMMM:highlightedImage tag_MMMethodMMM:tag selector:selector target_MMMethodMMM:target];
    
//    UIButton *mButton = [UIUtil initBtnWithNormalImage_MMMethodMMM:normalImage highlightedImage_MMMethodMMM:highlightedImage titleText_MMMethodMMM:titleText tag_MMMethodMMM:tag selector:selector target_MMMethodMMM:target];
    
    UIButton *mButton = [UIUtil initBtnWithTitleText_MMMethodMMM:titleText fontSize_MMMethodMMM:FS(17) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:tag selector:selector target_MMMethodMMM:target];
    
//    [UIUtil initBtnWithTitle:titleText tag_MMMethodMMM:tag selector:selector target_MMMethodMMM:target];
    
//    [mButton setTitleColor:[UIColor whiteColor] forState:0];
    [mButton.layer setCornerRadius:20.0f];
    
    //closeImageView.backgroundColor = [UIColor clearColor];
//    [mButton.layer setCornerRadius:kR2BtnCornerRadius];
    //mButton.imageView.contentMode = UIViewContentModeScaleAspectFit;
    
    return mButton;
}


@end
