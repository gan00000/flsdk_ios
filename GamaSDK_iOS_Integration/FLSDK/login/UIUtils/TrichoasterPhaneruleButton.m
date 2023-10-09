

#import "TrichoasterPhaneruleButton.h"
#import "SmilePitate.h"

@implementation TrichoasterPhaneruleButton

+ (UIButton *)initBtnWithType_MMMethodMMM:(BUTTON_TYPE)type
                          tag_MMMethodMMM:(NSUInteger)tag
                     selector:(SEL)selector
                       target_MMMethodMMM:(id)target
{
    
    NSString *normalImage = wwwww_tag_wwwww_btn_hy_png;
    NSString *highlightedImage = wwwww_tag_wwwww_btn_hy_png;
    NSString *titleText = @"";
    switch (type) {
        case BUTTON_TYPE_ACCOUNT: 
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
            
        case BUTTON_TYPE_OK: 
            normalImage = wwwww_tag_wwwww_sdk_btn_bg_png;
            highlightedImage = wwwww_tag_wwwww_sdk_btn_bg_png;
            titleText = @"確   認";
            break;
        case BUTTON_TYPE_BIND_FB: 
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
            
        case BUTTON_TYPE_CHANGE_ACCOUNT:  
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
    
    
    
    
    UIButton *mButton = [SmilePitate initBtnWithTitleText_MMMethodMMM:titleText fontSize_MMMethodMMM:FS(17) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:tag selector:selector target_MMMethodMMM:target];
    
    
    [mButton.layer setCornerRadius:20.0f];
    
    
    
    
    return mButton;
}


@end
