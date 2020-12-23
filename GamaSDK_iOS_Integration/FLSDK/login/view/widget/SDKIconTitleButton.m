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
#import "GamaUtils.h"


@implementation SDKIconTitleButton

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initBtnViewWithType:(SDK_ICON_TITLE_BUTTON_TYPE)type tag:(NSUInteger)tag selector:(SEL)selector target:(id)target
{
    self = [super init];
    if (self) {
        
        self.backgroundColor = [UIColor whiteColor];
        self.layer.cornerRadius = VH(25);
        
        NSString *iconName = @"h_icon_en.png";
        NSString *titleName = @"會員帳號登入";
        
        switch (type) {
            case SDK_ICON_TITLE_BUTTON_TYPE_FB:
                iconName = @"sdk_btn_icon_fb.png";
                titleName = @"Facebook Login";
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
                iconName = @"h_icon_en.png";
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
            make.height.mas_equalTo(VH(36));
            make.centerY.mas_equalTo(self);
            make.width.mas_equalTo(accountIconImageView.mas_height);
            make.leading.mas_equalTo(self).mas_offset(VW(12));
        }];
        
        UILabel *titleLable = [[UILabel alloc] init];
        titleLable.text = titleName;
//        if (device_is_iPhoneX) {
//
//        }else{
//            titleLable.font = [UIFont boldSystemFontOfSize:14];
//        }
        titleLable.font = [UIFont systemFontOfSize:VH(21)];
        titleLable.textAlignment = NSTextAlignmentCenter;
        titleLable.backgroundColor = [UIColor clearColor];
        titleLable.numberOfLines = 1;
        titleLable.textColor = [UIColor colorWithHexString:@"#F349C1"];
        
        [self addSubview:titleLable];
        [titleLable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self).mas_offset(4);
            make.bottom.equalTo(self).mas_offset(-4);
            make.leading.mas_equalTo(accountIconImageView.mas_trailing);
            make.trailing.mas_equalTo(self).mas_offset(-20);
        }];
              
        //账号
        UIButton *mButton = [GamaUtils initBtnWithTag:tag selector:selector target:target];
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
