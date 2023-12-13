

#import "ExteroseQuadragenineButton.h"
#import "Masonry.h"
#import "OrbOpen.h"
#import "SdkHeader.h"
#import "ElsureTraditional.h"


@implementation ExteroseQuadragenineButton



- (instancetype)initBtnViewWithType_MMMethodMMM:(SDK_ICON_TITLE_BUTTON_TYPE)type tag_MMMethodMMM:(NSUInteger)tag selector:(SEL)selector target_MMMethodMMM:(id)target
{
    self = [super init];
    if (self) {
        if(type == SDK_ICON_TITLE_BUTTON_TYPE_FB || type == SDK_ICON_TITLE_BUTTON_TYPE_BIND_FB)
        {
            
            self.layer.contents = (id)(GetImage(wwwww_tag_wwwww_sdk_btn_fb_bg_png).CGImage);
        }else{
             self.layer.contents = (id)(GetImage(wwwww_tag_wwwww_sdk_btn_bg_png).CGImage);
        }
        self.layer.cornerRadius = kR2BtnCornerRadius;
        
        NSString *iconName = wwwww_tag_wwwww_fl_logo_png;
        NSString *titleName = wwwww_tag_wwwww_today_fiveess;
        
        switch (type) {
            case SDK_ICON_TITLE_BUTTON_TYPE_FB:
                iconName = wwwww_tag_wwwww_sdk_btn_icon_fb_png;
                titleName = @"Sign in with Facebook";
                break;
            case SDK_ICON_TITLE_BUTTON_TYPE_APPLE:
                
                iconName = wwwww_tag_wwwww_sdk_btn_icon_apple_png;
                titleName = @"Sign in with Apple";
                
                break;
            case SDK_ICON_TITLE_BUTTON_TYPE_GEUST:
                iconName = wwwww_tag_wwwww_sdk_btn_icon_guest_png;
                titleName = wwwww_tag_wwwww_betteritive_exampleage;
                break;
            case SDK_ICON_TITLE_BUTTON_TYPE_ACCOUNT:
                iconName = wwwww_tag_wwwww_fl_logo_png;
                titleName = wwwww_tag_wwwww_today_fiveess;
                break;
                
            case SDK_ICON_TITLE_BUTTON_TYPE_BIND_FB:
                iconName = wwwww_tag_wwwww_sdk_btn_icon_fb_png;
                titleName = wwwww_tag_wwwww_ichthyshootness_stear;
                break;
            case SDK_ICON_TITLE_BUTTON_TYPE_BIND_GEUST:
                iconName = wwwww_tag_wwwww_sdk_btn_icon_guest_png;
                titleName = wwwww_tag_wwwww_battbetter_aloneics;
                break;
            case SDK_ICON_TITLE_BUTTON_TYPE_BIND_APPLE:
                iconName = wwwww_tag_wwwww_sdk_btn_icon_apple_png;
                titleName = wwwww_tag_wwwww_plasative_comdebateatic;
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
              
        
        UIButton *mButton = [OrbOpen initBtnWithTitleText_MMMethodMMM:nil fontSize_MMMethodMMM:14 textColor_MMMethodMMM:nil tag_MMMethodMMM:tag selector:selector target_MMMethodMMM:target];
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
