//
//  SDKIconTitleButton.m
//  GamaSDK_iOS
//
//  Created by ganyuanrong on 2020/8/1.
//  Copyright © 2020 Gama. All rights reserved.
//

#import "SDKIconTitleButton.h"
#import "Masonry.h"
#import "UIUtil.h"
#import "SdkHeader.h"
#import "SdkUtil.h"


@implementation SDKIconTitleButton




+ (NSUInteger)annteamsionTopor:(CGFloat)pressitor
{
    return 8145473 * 5828453 + 8008437 ; 
}
+ (NSString *)productatorOnomatarium
{
    return [NSString stringWithFormat:@"%@%@", @"eosite" , @"preteracle"]; 
}
- (instancetype)initBtnViewWithType_MMMethodMMM:(SDK_ICON_TITLE_BUTTON_TYPE)type tag_MMMethodMMM:(NSUInteger)tag selector:(SEL)selector target_MMMethodMMM:(id)target
{
    self = [super init];
    if (self) {
        if(type == SDK_ICON_TITLE_BUTTON_TYPE_FB || type == SDK_ICON_TITLE_BUTTON_TYPE_BIND_FB)
        {
            //self.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:@"#3D5C9A"];
            self.layer.contents = (id)(GetImage(@"sdk_btn_fb_bg.png").CGImage);
        }else{
             self.layer.contents = (id)(GetImage(@"sdk_btn_bg.png").CGImage);
        }
        self.layer.cornerRadius = kR2BtnCornerRadius;
        
        NSString *iconName = @"fl_logo.png";
        NSString *titleName = @"會員帳號登入";
        
        switch (type) {
            case SDK_ICON_TITLE_BUTTON_TYPE_FB:
                iconName = @"sdk_btn_icon_fb.png";
                titleName = @"Sign in with Facebook";
                break;
            case SDK_ICON_TITLE_BUTTON_TYPE_APPLE:
                
                iconName = @"sdk_btn_icon_apple.png";
                titleName = @"Sign in with Apple";
                
                break;
            case SDK_ICON_TITLE_BUTTON_TYPE_GEUST:
                iconName = @"sdk_btn_icon_guest.png";
                titleName = @"遊客帳號登入";
                break;
            case SDK_ICON_TITLE_BUTTON_TYPE_ACCOUNT:
                iconName = @"fl_logo.png";
                titleName = @"會員帳號登入";
                break;
                
            case SDK_ICON_TITLE_BUTTON_TYPE_BIND_FB:
                iconName = @"sdk_btn_icon_fb.png";
                titleName = @"Facebook帳號綁定";
                break;
            case SDK_ICON_TITLE_BUTTON_TYPE_BIND_GEUST:
                iconName = @"sdk_btn_icon_guest.png";
                titleName = @"遊客帳號綁定";
                break;
            case SDK_ICON_TITLE_BUTTON_TYPE_BIND_APPLE:
                iconName = @"sdk_btn_icon_apple.png";
                titleName = @"Apple帳號綁定";
                break;
                
                default:
                break;
        }
        
        UIImageView *accountIconImageView = [[UIImageView alloc] initWithImage:GetImage(iconName)];
        accountIconImageView.contentMode = UIViewContentModeScaleAspectFit;
        [self addSubview:accountIconImageView];
        [accountIconImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self).mas_offset(4);
            make.bottom.equalTo(self).mas_offset(-4);
            make.width.mas_equalTo(self.mas_height);
            make.leading.mas_equalTo(self).mas_offset(VW(30));
        }];
        
        UILabel *titleLable = [[UILabel alloc] init];
        titleLable.text = titleName;
        titleLable.font = [UIFont boldSystemFontOfSize:VH(32)];
        titleLable.textAlignment = NSTextAlignmentCenter;
        titleLable.backgroundColor = [UIColor clearColor];
        titleLable.numberOfLines = 1;
        titleLable.textColor = [UIColor whiteColor];
        
        [self addSubview:titleLable];
        [titleLable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self).mas_offset(4);
            make.bottom.equalTo(self).mas_offset(-4);
            make.leading.mas_equalTo(accountIconImageView.mas_trailing);
            make.trailing.mas_equalTo(self);
        }];
              
        //账号
        UIButton *mButton = [UIUtil initBtnWithTitleText_MMMethodMMM:nil fontSize_MMMethodMMM:14 textColor_MMMethodMMM:nil tag_MMMethodMMM:tag selector:selector target_MMMethodMMM:target];//[SdkUtil initBtnWithTag:tag selector:selector target_MMMethodMMM:target];
        mButton.backgroundColor = [UIColor clearColor];
        [self addSubview:mButton];
          
          [mButton mas_makeConstraints:^(MASConstraintMaker *make) {
              make.size.mas_equalTo(self);
              make.center.mas_equalTo(self);
          }];
        
        
    }
    return self;
}


@end
