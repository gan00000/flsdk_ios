
#import "SDKIconTitleButton.h"
#import "Masonry.h"
#import "UIUtil.h"
#import "SdkHeader.h"
#import "SdkUtil.h"


@implementation SDKIconTitleButton




- (instancetype)initBtnViewWithType_MMMethodMMM:(SDK_ICON_TITLE_BUTTON_TYPE)type tag_MMMethodMMM:(NSUInteger)tag selector:(SEL)selector target_MMMethodMMM:(id)target
{
   self.existing_tag = 4977;

   self.touchSum = 6992;

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
        {
            NSString * timesk = @"watchful";
             if ([timesk isEqualToString:@"g"]) {}
        }
        NSString *titleName = wwwww_tag_wwwww_today_fiveess;
        
        switch (type) {
            case SDK_ICON_TITLE_BUTTON_TYPE_FB:
                iconName = wwwww_tag_wwwww_sdk_btn_icon_fb_png;
        {
            NSArray * touchesV = [NSArray arrayWithObjects:@(307), @(239), nil];
        }
                titleName = @"Sign in with Facebook";
        {
            NSInteger rotateE = 9540;
             if (@(rotateE).integerValue <= 78) {}
        }
                break;
            case SDK_ICON_TITLE_BUTTON_TYPE_APPLE:
                
                iconName = wwwww_tag_wwwww_sdk_btn_icon_apple_png;
        {
            Boolean homeG = NO;
             if (homeG) { __asm__("NOP"); }
        }
                titleName = @"Sign in with Apple";
                
                break;
            case SDK_ICON_TITLE_BUTTON_TYPE_GEUST:
                iconName = wwwww_tag_wwwww_sdk_btn_icon_guest_png;
        {
            float portraitf = 3524.0;
             for(int portraitf_idx = 0; portraitf_idx < @(portraitf).intValue; portraitf_idx += 1) { break; } 
        }
                titleName = wwwww_tag_wwwww_betteritive_exampleage;
        {
            double filex = 831.0;
             if (@(filex).integerValue >= 126) {}
        }
                break;
            case SDK_ICON_TITLE_BUTTON_TYPE_ACCOUNT:
                iconName = wwwww_tag_wwwww_fl_logo_png;
        {
            NSArray * editT = @[@(8496)];
             if ([editT containsObject:@"Z"]) {}
        }
                titleName = wwwww_tag_wwwww_today_fiveess;
        {
        }
                break;
                
            case SDK_ICON_TITLE_BUTTON_TYPE_BIND_FB:
                iconName = wwwww_tag_wwwww_sdk_btn_icon_fb_png;
        {
        }
                titleName = wwwww_tag_wwwww_ichthyshootness_stear;
        {
            NSDictionary * common7 = [NSDictionary dictionaryWithObjectsAndKeys:@"outlook",@(729), @"lave",@(914), nil];
             if (common7.count > 64) {}
        }
                break;
            case SDK_ICON_TITLE_BUTTON_TYPE_BIND_GEUST:
                iconName = wwwww_tag_wwwww_sdk_btn_icon_guest_png;
        {
            float rrorB = 7996.0;
             if (@(rrorB).doubleValue > 113) {}
        }
                titleName = wwwww_tag_wwwww_battbetter_aloneics;
        {
            int stringsm = 3511;
             if (@(stringsm).integerValue == 4) {}
        }
                break;
            case SDK_ICON_TITLE_BUTTON_TYPE_BIND_APPLE:
                iconName = wwwww_tag_wwwww_sdk_btn_icon_apple_png;
        {
            int wrapperK = 5110;
             for(NSInteger wrapperK_idx = 0; wrapperK_idx < @(wrapperK).intValue; wrapperK_idx += 0) { break; } 
        }
                titleName = wwwww_tag_wwwww_plasative_comdebateatic;
        {
            NSDictionary * tokene = @{@"cipher":@(958)};
             if (tokene[@"m"]) {}
        }
                break;
                
                default:
                break;
        }
        
        UIImageView *accountIconImageView = [[UIImageView alloc] initWithImage:GetImage(iconName)];
        {
            NSString * textc = @"nefarious";
             if ([textc isEqualToString:@"d"]) {}
        }
        accountIconImageView.contentMode = UIViewContentModeScaleAspectFit;
        {
            NSDictionary * color9 = [NSDictionary dictionaryWithObjectsAndKeys:@"anger",@(846), nil];
             while (color9.count > 93) { break; }
        }
        [self addSubview:accountIconImageView];
        [accountIconImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self).mas_offset(4);
        {
            NSString * ipadG = @"stash";
             if (ipadG.length > 193) {}
        }
            make.bottom.equalTo(self).mas_offset(-4);
        {
            NSString * clientA = @"congruous";
             if ([clientA isEqualToString:@"H"]) {}
        }
            make.width.mas_equalTo(self.mas_height);
        {
            NSString * type_yqg = @"galley";
             while (type_yqg.length > 7) { break; }
        }
            make.leading.mas_equalTo(self).mas_offset(VW(30));
        {
            NSDictionary * filedG = @{@"exercisebook":@(255), @"schism":@(243), @"puncture":@(954)};
        }
        }];
        
        UILabel *titleLable = [[UILabel alloc] init];
        {
            double perssione = 5696.0;
             while (@(perssione).integerValue >= 22) { break; }
        }
        titleLable.text = titleName;
        titleLable.font = [UIFont boldSystemFontOfSize:VH(32)];
        {
            NSInteger enginei = 6548;
             while (@(enginei).longValue < 118) { break; }
        }
        titleLable.textAlignment = NSTextAlignmentCenter;
        {
            NSDictionary * pamentA = @{@"8":@"w", @"J":@"V", @"L":@"o"};
        }
        titleLable.backgroundColor = [UIColor clearColor];
        {
            int loadR = 7241;
             while (@(loadR).doubleValue <= 161) { break; }
        }
        titleLable.numberOfLines = 1;
        {
            int array7 = 8439;
             while (@(array7).doubleValue >= 16) { break; }
        }
        titleLable.textColor = [UIColor whiteColor];
        
        [self addSubview:titleLable];
        [titleLable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self).mas_offset(4);
        {
            int lineu = 3068;
             while (@(lineu).doubleValue == 194) { break; }
        }
            make.bottom.equalTo(self).mas_offset(-4);
        {
            NSInteger mask9 = 7278;
             if (@(mask9).longLongValue <= 46) {}
        }
            make.leading.mas_equalTo(accountIconImageView.mas_trailing);
        {
        }
            make.trailing.mas_equalTo(self);
        {
            NSString * with_dK = @"summer";
        }
        }];
              
        
        UIButton *mButton = [UIUtil initBtnWithTitleText_MMMethodMMM:nil fontSize_MMMethodMMM:14 textColor_MMMethodMMM:nil tag_MMMethodMMM:tag selector:selector target_MMMethodMMM:target];
        {
            NSString * actionW = @"inability";
        }
        mButton.backgroundColor = [UIColor clearColor];
        {
            double scale8 = 7468.0;
             if (@(scale8).integerValue > 167) {}
        }
        [self addSubview:mButton];
          
          [mButton mas_makeConstraints:^(MASConstraintMaker *make) {
              make.size.mas_equalTo(self);
        {
            NSDictionary * orderK = @{@"succulent":@(60)};
             if (orderK[@"q"]) {}
        }
              make.center.mas_equalTo(self);
        {
            NSString * efaultO = @"frisk";
             if (efaultO.length > 84) {}
        }
          }];
        
        
    }
    return self;
}


@end
