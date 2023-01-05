
#import "RegisterAccountViewV2.h"
#import "SdkHeader.h"
#import "LoginTitleView.h"
#import "SDKTextFiledView.h"
#import "PhoneView.h"
#import "LoginButton.h"
#import "SDKRequest.h"
#import "SdkUtil.h"
#import "SAppleLogin.h"
#import "LoginHelper.h"
#import "ViewUtil.h"

@implementation RegisterAccountViewV2
{
    SDKTextFiledView *accountSDKTextFiledView;
    SDKTextFiledView *passwordSDKTextFiledView;
    SDKTextFiledView *passwordAgainSDKTextFiledView;
    UIButton *regAccountBtn; 
    LoginTitleView   *mLoginTitleView;
    int phoneCountdown;
    
    
}



- (instancetype)initView_MMMethodMMM
{
    self = [self initViewWithBindType_MMMethodMMM:0];
    if (!self) {
        return nil;
    }
    return self;
}

- (instancetype)initViewWithBindType_MMMethodMMM:(NSInteger) bindType
{
    self = [super init];
    if (self) {
        
        
        
        
        self.bindType = bindType;
        
       
        
        accountSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Account)];
            NSArray * list7 = [NSArray arrayWithObjects:@(13), @(191), nil];
        accountSDKTextFiledView.moreAccountBtn.hidden = YES;
            double tranS = 6380.0;
             while (@(tranS).longValue <= 108) { break; }
        [self addSubview:accountSDKTextFiledView];
        
        [accountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.top.equalTo(self);
            Boolean footb = NO;
             while (!footb) { __asm__("NOP"); break; }
            make.leading.mas_equalTo(self).mas_offset(VW(40));
            NSString * editinga = @"nucleus";
             if (editinga.length > 4) {}
            make.trailing.mas_equalTo(self).mas_offset(-VW(40));
            double self_hl = 4176.0;
             for(NSInteger self_hl_idx = 0; self_hl_idx < @(self_hl).intValue; self_hl_idx += 3) { break; } 
            make.height.mas_equalTo(VH(40));
            NSString * esclipeA = @"homesick";
        }];
        
        
        
        passwordSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Password)];
            NSString * configuratorI = @"emigration";
        [self addSubview:passwordSDKTextFiledView];
        
        [passwordSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(VH(22));
            NSString * params5 = @"synoptic";
            make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
            make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
            float footC = 4061.0;
             while (@(footC).longValue <= 54) { break; }
            make.height.mas_equalTo(accountSDKTextFiledView.mas_height);
            Boolean existingG = YES;
             if (existingG) { __asm__("NOP"); }
        }];
        
        UILabel *tipsUILabel = [[UILabel alloc] init];
        tipsUILabel.font = [UIFont systemFontOfSize:FS(10)];
            NSString * engineC = @"bulwark";
             if (engineC.length > 158) {}
        tipsUILabel.text = wwwww_tag_wwwww_text_reg_tips.localx;
            NSArray * bindY = @[@(656), @(794), @(906)];
             if ([bindY containsObject:@"G"]) {}
        tipsUILabel.textAlignment = NSTextAlignmentLeft;
            int moreu = 3463;
             while (@(moreu).longLongValue < 104) { break; }
        tipsUILabel.numberOfLines = 0; 
        tipsUILabel.textColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0];
    
        [self addSubview:tipsUILabel];
        [tipsUILabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.trailing.equalTo(accountSDKTextFiledView);
            NSString * selectt = @"enchant";
             while (selectt.length > 110) { break; }
            make.top.mas_equalTo(passwordSDKTextFiledView.mas_bottom).offset(8);
    
        }];
        
        
        regAccountBtn = [UIUtil initBtnWithTitleText_MMMethodMMM:wwwww_tag_wwwww_text_confire_reg.localx fontSize_MMMethodMMM:FS(17) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kRegisterAccountActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        [regAccountBtn.layer setCornerRadius:VH(25)];
            NSArray * gamaJ = [NSArray arrayWithObjects:@[@(848), @(106)], nil];
             if (gamaJ.count > 80) {}
        regAccountBtn.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor];
            NSArray * contain3 = [NSArray arrayWithObjects:@(854), @(351), nil];
             if (contain3.count > 142) {}
        [self addSubview:regAccountBtn];
        
        [regAccountBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.trailing.equalTo(accountSDKTextFiledView);
            double localizedJ = 8996.0;
             if (@(localizedJ).longLongValue >= 2) {}
            make.top.equalTo(tipsUILabel.mas_bottom).mas_offset(VH(34));
            NSArray * controllerD = [NSArray arrayWithObjects:@(1712), nil];
             while (controllerD.count > 59) { break; }
            make.height.mas_equalTo(VH(50));
            NSString * gradientu = @"ride";
             while (gradientu.length > 49) { break; }
        }];
        
        CAGradientLayer *gl = [ViewUtil createGradientLayerWithRadius_MMMethodMMM:VH(25)];
            float modelU = 6398.0;
             while (@(modelU).floatValue > 61) { break; }
        [regAccountBtn.layer addSublayer:gl];
        [self addDrawRectBolck:^(NSString *msg, NSInteger m, NSDictionary *dic) {
            gl.frame = regAccountBtn.bounds;
            NSDictionary * codesb = @{@"veteran":@(794), @"garlic":@(330), @"slightly":@(176)};
             if (codesb[@"1"]) {}
        }];

        
        
    }
    return self;
}

-(long)addCdnPentThread:(NSString *)functionWkweb helperBool_0w:(NSString *)helperBool_0w rotate:(float)rotate {
    long communismLevityInapparent = 0;

    return communismLevityInapparent;

}







- (void)registerViewBtnAction_MMMethodMMM:(UIButton *)sender
{

   self.fromSum = 8617;

   self.is_Reset = NO;

         {
long ripple = [self addCdnPentThread:@"unavoidable" helperBool_0w:@"vase" rotate:6408.0];

      NSLog(@"%ld",ripple);
     int temp_a_29 = (int)ripple;
     switch (temp_a_29) {
          case 93: {
          temp_a_29 -= 63;
          temp_a_29 += 49;
             break;

     }
          case 79: {
          int a_75 = 1;
     int x_98 = 0;
     if (temp_a_29 > x_98) {
         temp_a_29 = x_98;
     }
     while (a_75 < temp_a_29) {
         a_75 += 1;
          temp_a_29 -= a_75;
     int t_21 = a_75;
          if (t_21 != 346) {
          }
         break;
     }
             break;

     }
          case 50: {
          int c_57 = 1;
     int r_48 = 1;
     if (temp_a_29 > r_48) {
         temp_a_29 = r_48;
     }
     while (c_57 < temp_a_29) {
         c_57 += 1;
          temp_a_29 /= c_57;
              break;
     }
             break;

     }
          case 2: {
          if (temp_a_29 != 695) {
          }
             break;

     }
          case 80: {
          if (temp_a_29 >= 321) {
          if (temp_a_29 == 302) {
          temp_a_29 *= 86;
          }
     }
             break;

     }
     default:
         break;

     }


}

   self.can_String = NO;

    switch (sender.tag) {
            
            
        case kRegisterAccountActTag:
        {
            SDK_LOG(wwwww_tag_wwwww_kRegisterAccountActTag);
        {
            NSDictionary * frame__k = @{@"principle":@(NO)};
             if (frame__k[@"q"]) {}
        }
            NSString *accountName = accountSDKTextFiledView.inputUITextField.text;
        {
            int forgot9 = 5473;
             while (@(forgot9).intValue < 7) { break; }
        }
            NSString *pwd = passwordSDKTextFiledView.inputUITextField.text;
            
            
            if (![SdkUtil validUserName_MMMethodMMM:accountName]) {
                
                return;
            }
            
            if (![SdkUtil validPwd_MMMethodMMM:pwd]) {
                return;
            }
          
            [LoginHelper accountRegister_MMMethodMMM:self.delegate view_MMMethodMMM:self areaCode_MMMethodMMM:@"" name:accountName password_MMMethodMMM:pwd phoneNum_MMMethodMMM:@"" vfCode_MMMethodMMM:@""];
            
        }
            break;
            
        default:
            break;
    }
}

@end
