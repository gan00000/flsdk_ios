
#import "BindAccountViewV2.h"
#import "SdkHeader.h"
#import "SDKTextFiledView.h"
#import "LoginTitleView.h"
#import "PhoneView.h"
#import "LoginButton.h"
#import "LoginHelper.h"
#import "SdkUtil.h"
#import "AccountLoginView.h"
#import "SDKRequest.h"
#import "ViewUtil.h"

@implementation BindAccountViewV2

{
    SDKTextFiledView *thirdAccountSDKTextFiledView;
    SDKTextFiledView *accountSDKTextFiledView;
    SDKTextFiledView *pwdSDKTextFiledView;
    
    SDKTextFiledView *hasBind_accountSDKTextFiledView;
    
    
    
    LoginTitleView   *mLoginTitleView;
    
    
}


- (void)initData_MMMethodMMM
{
    [super initData_MMMethodMMM];
            NSArray * sessione = @[[NSArray arrayWithObjects:@"rake", @"harangue", @"turbulent", nil]];
             if (sessione.count > 57) {}
    AccountModel *tempAccountModel = (AccountModel *)self.fromPageParam;
            NSArray * freeF = [NSArray arrayWithObjects:@(318), @(87), nil];
    [AccountLoginView makeAccountFiledViewStatus_MMMethodMMM:tempAccountModel accountView_MMMethodMMM:thirdAccountSDKTextFiledView pwdView_MMMethodMMM:nil];
            double vipA = 7079.0;
             if (@(vipA).longLongValue < 92) {}
    thirdAccountSDKTextFiledView.inputUITextField.enabled = NO;
            Boolean lastb = YES;
             while (!lastb) { __asm__("NOP"); break; }
}


- (instancetype)initView_MMMethodMMM
{
   self.resp_offset = 1990.0;

   self.setupIndex = 7481;

   self.has_String = NO;

   self.scriptSum = 115;

    self = [super init];
    if (self) {
        
        self.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_000000 andAlpha_MMMethodMMM:0.15];
        
        UIView *contentView = [[UIView alloc] init];
        
        UIColor *color = [UIColor whiteColor];
            NSDictionary * loggerP = [NSDictionary dictionaryWithObjectsAndKeys:@"taxation",@(5835.0), nil];
             while (loggerP.count > 12) { break; }
        contentView.backgroundColor = color;
            NSInteger listC = 8467;
             while (@(listC).intValue <= 0) { break; }
        contentView.layer.cornerRadius = 10; 
        contentView.layer.masksToBounds = YES;
        
        [self addSubview:contentView];
        [contentView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.center.mas_equalTo(self);
            NSString * coreF = @"picture";
             if ([coreF isEqualToString:@"O"]) {}
            make.width.mas_equalTo(VW(330));
            NSString * layouti = @"sedative";
             if (layouti.length > 40) {}
            make.height.mas_equalTo(VH(265));
            double headerY = 6935.0;
             if (@(headerY).floatValue == 72) {}
        }];
        
        
        UIView *titleView = [[UIView alloc] init];
            float close2 = 3171.0;
             while (@(close2).floatValue > 47) { break; }
        [contentView addSubview:titleView];
        [titleView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(contentView.mas_top).mas_offset(VH(15));
            NSArray * popup1 = @[@(33), @(735)];
             if ([popup1 containsObject:@"C"]) {}
            make.leading.mas_equalTo(contentView).mas_offset(VW(15));
            make.trailing.mas_equalTo(contentView).mas_offset(VW(-15));
            
            
        }];
        
        UIView *tagView = [[UIView alloc] init];
            double calle = 8839.0;
             if (@(calle).doubleValue < 27) {}
        tagView.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor];
            double textQ = 1444.0;
             while (@(textQ).longValue > 111) { break; }
        [titleView addSubview:tagView];
        [tagView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.mas_equalTo(titleView);
            NSArray * securityN = [NSArray arrayWithObjects:@(959), @(727), nil];
             if (securityN.count > 31) {}
            make.leading.mas_equalTo(titleView);
            Boolean namee = NO;
            make.width.mas_equalTo(VW(4));
            double finishj = 8590.0;
             for(NSInteger finishj_idx = 31; finishj_idx < @(finishj).intValue; finishj_idx--) { break; } 
            make.height.mas_equalTo(VH(14));
            
            make.bottom.mas_equalTo(titleView);
            NSDictionary * inputw = @{@"tea":@(596), @"indirectly":@(876)};
             if (inputw[@"Y"]) {}
        }];
        
        
        UILabel *titleLabel = [UIUtil initLabelWithText_MMMethodMMM:wwwww_tag_wwwww_text_update_account.localx fontSize_MMMethodMMM:FS(15) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_2A2A2A]];
        titleLabel.font = [UIFont boldSystemFontOfSize:FS(15)];
        
        [titleView addSubview:titleLabel];
        [titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.leading.mas_equalTo(titleView).mas_offset(6);
            NSArray * rated = [NSArray arrayWithObjects:@(395), @(104), @(483), nil];
            make.trailing.mas_equalTo(titleView);
            NSInteger method_4D = 5738;
             while (@(method_4D).doubleValue == 69) { break; }
            make.top.mas_equalTo(titleView);
            double genericV = 5137.0;
             if (@(genericV).doubleValue >= 140) {}
            make.bottom.mas_equalTo(titleView);
            NSArray * prefersk = @[@(54), @(162), @(873)];
             if ([prefersk containsObject:@"0"]) {}
        }];
        
        UIButton *closeBtn = [UIUtil initBtnWithNormalImage_MMMethodMMM:icon_close_3 highlightedImage_MMMethodMMM:icon_close_3 tag_MMMethodMMM:TAG_CLOSE selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        
        [titleView addSubview:closeBtn];
        [closeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.trailing.mas_equalTo(titleView);
            NSString * eventr = @"pastor";
             if (eventr.length > 172) {}
            make.centerY.mas_equalTo(titleView);
            Boolean textJ = YES;
            make.width.mas_equalTo(VH(22));
            NSString * filedW = @"glean";
            make.height.mas_equalTo(VH(22));
            NSDictionary * logger1 = @{@"sodium":@(331), @"diminish":@(549)};
        }];
    
        
        AccountModel *currentAccount = SDK_DATA.mLoginResponse.data;
        if (currentAccount.isBind) {
            
            thirdAccountSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Account)];
            NSString * debuga = @"competent";
            thirdAccountSDKTextFiledView.moreAccountBtn.hidden = YES;
            NSDictionary * urlsC = @{@"stowaway":@[@"rainy", @"behind"]};
             if (urlsC.count > 30) {}
            thirdAccountSDKTextFiledView.layer.borderColor = ColorHex(wwwww_tag_wwwww__CC_606060).CGColor;
            NSString * utilo = @"drought";
             while (utilo.length > 195) { break; }
            thirdAccountSDKTextFiledView.lableIconImageView.image = [UIImage res_imageNamed_MMMethodMMM:mw_smail_icon2];
            NSString * facebook2 = @"baron";
             while (facebook2.length > 104) { break; }
            thirdAccountSDKTextFiledView.inputUITextField.textColor = UIColor.blackColor;
            double frameworkd = 9475.0;
             if (@(frameworkd).longValue > 66) {}
            thirdAccountSDKTextFiledView.inputUITextField.enabled = NO;
            NSInteger withproductJ = 6422;
             while (@(withproductJ).longLongValue > 94) { break; }
            [contentView addSubview:thirdAccountSDKTextFiledView];
            
            [thirdAccountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
                make.leading.mas_equalTo(titleView);
            NSArray * utilF = @[@(855), @(498), @(594)];
             if ([utilF containsObject:@"q"]) {}
                make.trailing.mas_equalTo(titleView);
            double p_imageW = 2165.0;
             if (@(p_imageW).floatValue < 194) {}
                make.height.mas_equalTo(VH(40));

                make.top.mas_equalTo(titleView.mas_bottom).mas_offset(VH(28));
                
            }];
            
            [self makeAccountFiledViewStatus_MMMethodMMM:currentAccount accountView_MMMethodMMM:thirdAccountSDKTextFiledView pwdView_MMMethodMMM:nil];
            
            hasBind_accountSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Account)];
            NSString * blockq = @"bullish";
            hasBind_accountSDKTextFiledView.layer.borderColor = ColorHex(wwwww_tag_wwwww__CC_606060).CGColor;
            NSString * tipsJ = @"solo";
             while (tipsJ.length > 74) { break; }
            hasBind_accountSDKTextFiledView.lableIconImageView.image = [UIImage res_imageNamed_MMMethodMMM:mw_smail_icon2];
            NSArray * keyA = [NSArray arrayWithObjects:@(993), @(51), nil];
             if ([keyA containsObject:@"X"]) {}
            hasBind_accountSDKTextFiledView.moreAccountBtn.hidden = YES;
            NSDictionary * shouldN = @{@"untold":@(393)};
             if (shouldN.count > 160) {}
            hasBind_accountSDKTextFiledView.inputUITextField.textColor = UIColor.blackColor;
            NSInteger responceG = 1140;
             for(int responceG_idx = 61; responceG_idx < @(responceG).intValue; responceG_idx -= 0) { break; } 
            hasBind_accountSDKTextFiledView.inputUITextField.enabled = NO;
            
            [contentView addSubview:hasBind_accountSDKTextFiledView];
            
            [hasBind_accountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
                
                make.leading.mas_equalTo(titleView);
                make.trailing.mas_equalTo(titleView);
            double vipM = 3928.0;
             if (@(vipM).doubleValue == 59) {}
                make.height.mas_equalTo(thirdAccountSDKTextFiledView);

                make.top.mas_equalTo(thirdAccountSDKTextFiledView.mas_bottom).mas_offset(VH(15));
                
            }];
            
            hasBind_accountSDKTextFiledView.inputUITextField.text = currentAccount.loginId;
            
        }else{
            
            accountSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Account)];
            NSArray * reloadY = @[@(107), @(908)];
             if (reloadY.count > 88) {}
            accountSDKTextFiledView.moreAccountBtn.hidden = YES;
            int guestj = 5996;
             while (@(guestj).floatValue >= 46) { break; }
            accountSDKTextFiledView.layer.borderColor = ColorHex(wwwww_tag_wwwww__CC_606060).CGColor;
            NSString * receipts = @"characteristical";
             while (receipts.length > 94) { break; }
            accountSDKTextFiledView.inputUITextField.textColor = UIColor.blackColor;
            NSDictionary * security4 = [NSDictionary dictionaryWithObjectsAndKeys:@"cabin",@(324), nil];
             if (security4[@"R"]) {}
            accountSDKTextFiledView.lableIconImageView.image = [UIImage res_imageNamed_MMMethodMMM:mw_smail_icon2];
            NSArray * custom7 = @[@(275), @(975)];
            [contentView addSubview:accountSDKTextFiledView];
            
            [accountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
                
                make.leading.mas_equalTo(titleView);
            NSArray * macaddressk = [NSArray arrayWithObjects:@(41.0), nil];
                make.trailing.mas_equalTo(titleView);
            NSString * rotate6 = @"analyze";
             while (rotate6.length > 88) { break; }
                make.height.mas_equalTo(VH(40));

                make.top.mas_equalTo(titleView.mas_bottom).mas_offset(VH(28));
                
            }];
            
            
            
            pwdSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Password)];
            double wedthU = 6017.0;
             for(int wedthU_idx = 69; wedthU_idx < @(wedthU).intValue; wedthU_idx -= 3) { break; } 
            pwdSDKTextFiledView.lableIconImageView.image = [UIImage res_imageNamed_MMMethodMMM:mw_passowrd_icon2];
            float flowsx = 7889.0;
             while (@(flowsx).integerValue <= 44) { break; }
            pwdSDKTextFiledView.layer.borderColor = ColorHex(wwwww_tag_wwwww__CC_606060).CGColor;
            pwdSDKTextFiledView.inputUITextField.textColor = UIColor.blackColor;
            double tinit_jj = 8091.0;
             for(NSInteger tinit_jj_idx = 22; tinit_jj_idx < @(tinit_jj).intValue; tinit_jj_idx--) { break; } 
            [contentView addSubview:pwdSDKTextFiledView];
            
            [pwdSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
                make.leading.mas_equalTo(titleView);
            NSString * existingk = @"pedlar";
             if ([existingk isEqualToString:@"z"]) {}
                make.trailing.mas_equalTo(titleView);
            Boolean sessioni = NO;
             if (!sessioni) { __asm__("NOP"); }
                make.height.mas_equalTo(accountSDKTextFiledView);

                make.top.mas_equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(VH(15));
                
            }];
            
            UILabel *bindTipLabel = [UIUtil initLabelWithText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_bind_account_tips) fontSize_MMMethodMMM:FS(10) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0]];
            int ipado = 9347;
             if (@(ipado).doubleValue > 17) {}
            bindTipLabel.numberOfLines = 0;
            float loggerx = 8667.0;
             if (@(loggerx).intValue <= 81) {}
            [contentView addSubview:bindTipLabel];
            
            [bindTipLabel mas_makeConstraints:^(MASConstraintMaker *make) {
                make.leading.mas_equalTo(pwdSDKTextFiledView);
            NSString * table2 = @"curse";
                make.trailing.mas_equalTo(pwdSDKTextFiledView);
            NSDictionary * json0 = @{@"resound":@(837), @"emaciation":@(12)};
                make.top.equalTo(pwdSDKTextFiledView.mas_bottom).mas_offset(VH(6));
                
            }];
            
        }
        
        
        UIButton *okBtn = [UIUtil initBtnWithTitleText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_confire) fontSize_MMMethodMMM:FS(17) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kOkActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        
        [okBtn.layer setCornerRadius:VH(20)];
            NSDictionary * b_boundsa = [NSDictionary dictionaryWithObjectsAndKeys:@"honey",@(631), nil];
             if (b_boundsa[@"1"]) {}
        okBtn.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor];
            NSDictionary * fieldZ = [NSDictionary dictionaryWithObjectsAndKeys:@"lactic",@(7364), nil];
             if (fieldZ.count > 81) {}
        [contentView addSubview:okBtn];
        
        [okBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.bottom.equalTo(contentView).mas_offset(VH(-25));
            NSString * current3 = @"char";
             if (current3.length > 80) {}
            make.leading.trailing.mas_equalTo(titleView);
            NSArray * totalj = [NSArray arrayWithObjects:@"certainly", nil];
             if ([totalj containsObject:@"x"]) {}
            make.height.mas_equalTo(VH(40));
            Boolean editingI = YES;
        }];
        
      
        CAGradientLayer *gl = [ViewUtil createGradientLayerWithRadius_MMMethodMMM:VH(20)];
            NSArray * dealloc_1jK = @[@"invent", @"dropout", @"seashore"];
             if (dealloc_1jK.count > 22) {}
        [okBtn.layer addSublayer:gl];
        [self addDrawRectBolck:^(NSString *msg, NSInteger m, NSDictionary *dic) {
            gl.frame = okBtn.bounds;
            NSString * googleX = @"behave";
        }];

    }
    return self;
}

-(NSDictionary *)pwdSelectedTerminatePath{
     NSInteger hiddenMake = 175;
    NSMutableDictionary * infatuationScientist = [[NSMutableDictionary alloc] init];
    hiddenMake = hiddenMake;
    [infatuationScientist setObject: @(hiddenMake) forKey:@"humidity"];
         int tmp_m_22 = (int)hiddenMake;
     tmp_m_22 *= 34;

    return infatuationScientist;

}







-(void)makeAccountFiledViewStatus_MMMethodMMM:(AccountModel *)mAccountModel accountView_MMMethodMMM:(SDKTextFiledView *)accountFiledView pwdView_MMMethodMMM:(SDKTextFiledView *)pwdFiledView{

    
    
    
    NSString *account = wwwww_tag_wwwww_text_has_bind_tips_mw.localx;
            NSString * popupw = @"genealogy";

         {
NSDictionary * networkSupervision = [self pwdSelectedTerminatePath];

      int networkSupervision_len = networkSupervision.count;
     int _e_62 = (int)networkSupervision_len;
     _e_62 -= 59;
      [networkSupervision enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
          if ([key isEqualToString:@"payment_7"]) {
              NSLog(@"value: %@", obj);
          }else {
              NSLog(@"key: %@, value: %@", key, obj);
          }
      }];


}
             if ([popupw isEqualToString:@"u"]) {}
    NSString *account_tips = wwwww_tag_wwwww_text_has_bind_tips_mw.localx;
            int downR = 2476;
             for(int downR_idx = 68; downR_idx < @(downR).intValue; downR_idx--) { break; } 
    NSString *iconName = mw_smail_icon2;
            NSDictionary * jsonX = @{@"fail":@(429), @"punch":@(633)};
             while (jsonX.count > 181) { break; }
    NSString *pwdText = GetString(wwwww_tag_wwwww_text_free_register);
    
    BOOL pwdEnable = YES;
    
    if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_SELF]) {
        
        account = mAccountModel.account;
            float rateI = 4734.0;
             while (@(rateI).doubleValue == 60) { break; }
        iconName = mw_smail_icon2;
            int main_u8 = 9527;
             if (@(main_u8).floatValue > 124) {}
        pwdText = mAccountModel.password;
        pwdEnable = YES;
            int closee = 1856;
             if (@(closee).intValue < 121) {}
        account_tips = wwwww_tag_wwwww_text_has_bind_tips_mw.localx;
        
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_FB]){
        iconName = fb_smail_icon;
            NSArray * orientationse = @[@(520), @(41)];
             if ([orientationse containsObject:@"L"]) {}
        pwdEnable = NO;
            NSString * agreek = @"amortize";
             while (agreek.length > 198) { break; }
        account_tips = wwwww_tag_wwwww_text_has_bind_tips_fb.localx;
        
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_GOOGLE]){
        iconName = google_smail_icon;
            double noticee = 3906.0;
             if (@(noticee).floatValue == 35) {}
        pwdEnable = NO;
            int modelX = 5861;
             if (@(modelX).longLongValue < 143) {}
        account_tips = wwwww_tag_wwwww_text_has_bind_tips_google.localx;
        
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_GUEST]){
        iconName = guest_smail_icon;
            NSArray * stampY = [NSArray arrayWithObjects:@(6907), nil];
             while (stampY.count > 17) { break; }
        pwdEnable = NO;
            Boolean private_lb = YES;
        account_tips = wwwww_tag_wwwww_text_has_bind_tips_guest.localx;
        
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_APPLE]){
        iconName = apple_smail_icon;
            NSString * expressionL = @"surface";
             if (expressionL.length > 177) {}
        pwdEnable = NO;
            NSDictionary * forgotY = [NSDictionary dictionaryWithObjectsAndKeys:@"liability",@(934), @"inlet",@(6), nil];
             while (forgotY.count > 13) { break; }
        account_tips = wwwww_tag_wwwww_text_has_bind_tips_apple.localx;
        
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_LINE]){
        iconName = line_smail_icon;
        pwdEnable = NO;
            NSDictionary * a_managerE = @{@"n":@"t", @"O":@"J", @"c":@"h"};
             if (a_managerE.count > 150) {}
        account_tips = wwwww_tag_wwwww_text_has_bind_tips_line.localx;
    }
    
    accountFiledView.lableIconImageView.image = [UIImage res_imageNamed_MMMethodMMM:iconName];
            NSInteger installK = 7087;
             while (@(installK).integerValue == 80) { break; }
    accountFiledView.inputUITextField.text = account_tips;
    
    if (pwdFiledView) {
       
        if (pwdEnable) {
            pwdFiledView.hidden = NO;
            NSDictionary * rameworkY = @{@"consecutive":@(930)};
             if (rameworkY[@"G"]) {}
            pwdFiledView.inputUITextField.text = pwdText;
            
            [pwdFiledView mas_updateConstraints:^(MASConstraintMaker *make) {
                
                make.height.mas_equalTo(VH(40));
            NSInteger fireO = 6412;
             if (@(fireO).longValue <= 105) {}
            }];
            
            
        }else{
            pwdFiledView.inputUITextField.text = @"";
            NSArray * footq = [NSArray arrayWithObjects:@(778), @(858), nil];
             while (footq.count > 87) { break; }
            pwdFiledView.hidden = YES;
            [pwdFiledView mas_updateConstraints:^(MASConstraintMaker *make) {
                make.height.mas_equalTo(1);
            NSArray * content9 = [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:@"save",@{@"lugubrious":@(240)}, nil], nil];
             if (content9.count > 195) {}
            }];
            
            
        }
        [pwdFiledView layoutIfNeeded];
        
    }
}

-(NSArray *)dropRegexVisitorEndifKeyedOption{
     float macaddressGame = 8256.0;
    NSMutableArray * encroachOffbeat = [NSMutableArray arrayWithCapacity:629];
    macaddressGame -= 4;
    [encroachOffbeat addObject: @(macaddressGame)];
         int tmp_c_70 = (int)macaddressGame;
     if (tmp_c_70 == 355) {
          if (tmp_c_70 < 192) {
          tmp_c_70 *= 1;
          tmp_c_70 *= 72;
     }
     }

    return encroachOffbeat;

}






-(void)bindAccount_MMMethodMMM
{

    
    
    NSString *account = accountSDKTextFiledView.inputUITextField.text;
            NSArray * language0 = @[@(3729.0)];

         {
NSArray * unusable = [self dropRegexVisitorEndifKeyedOption];

      [unusable enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
          if (idx > 25) {
              NSLog(@"securitySheetBegan:%@", obj);
        }
      }];
      int unusable_len = unusable.count;
     int temp_c_63 = (int)unusable_len;
     switch (temp_c_63) {
          case 67: {
          temp_c_63 *= 6;
          temp_c_63 -= 53;
             break;

     }
          case 27: {
          if (temp_c_63 != 742) {
          }
             break;

     }
          case 20: {
          int v_99 = 0;
     int f_18 = 0;
     if (temp_c_63 > f_18) {
         temp_c_63 = f_18;

     }
     for (int p_22 = 1; p_22 < temp_c_63; p_22++) {
         v_99 += p_22;
     int m_46 = v_99;
          if (m_46 < 761) {
          m_46 /= 60;
          }
         break;

     }
             break;

     }
          case 60: {
          temp_c_63 *= 67;
          int k_97 = 0;
     int e_17 = 0;
     if (temp_c_63 > e_17) {
         temp_c_63 = e_17;

     }
     for (int a_62 = 1; a_62 <= temp_c_63; a_62++) {
         k_97 += a_62;
          if (a_62 > 0) {
          temp_c_63 -=  a_62;

     }
          temp_c_63 *= 77;
         break;

     }
             break;

     }
          case 1: {
          temp_c_63 *= 2;
          temp_c_63 -= 3;
             break;

     }
          case 25: {
          if (temp_c_63 != 575) {
          temp_c_63 /= 32;
          switch (temp_c_63) {
          case 54: {
                  break;

     }
          case 20: {
          temp_c_63 += 86;
             break;

     }
          case 21: {
                  break;

     }
     default:
         break;

     }
     }
             break;

     }
          case 79: {
          temp_c_63 -= 66;
          int z_57 = 1;
     int z_79 = 1;
     if (temp_c_63 > z_79) {
         temp_c_63 = z_79;
     }
     while (z_57 <= temp_c_63) {
         z_57 += 1;
     int d_92 = z_57;
          if (d_92 < 633) {
          }
         break;
     }
             break;

     }
     default:
         break;

     }


}
    NSString *password = pwdSDKTextFiledView.inputUITextField.text;
  
    
 
    if (![SdkUtil validUserName_MMMethodMMM:account]) {
        return;
    }
    
    
    if (![SdkUtil validPwd_MMMethodMMM:password]) {
        return;
    }
    
    AccountModel *currentAccountModel = SDK_DATA.mLoginResponse.data;
    if (!currentAccountModel) {
        SDK_LOG(@"用户登录信息不存在 currentAccountModel nil");
            float guestA = 2612.0;
             for(int guestA_idx = 0; guestA_idx < @(guestA).intValue; guestA_idx += 8) { break; } 
        return;
    }
  
    
    [SDKRequest doAccountBindingWithUserName_MMMethodMMM:account password_MMMethodMMM:password phoneAreaCode_MMMethodMMM:@"" phoneNumber_MMMethodMMM:@"" vfCode_MMMethodMMM:@"" email_MMMethodMMM:account thirdId_MMMethodMMM:currentAccountModel.thirdId thirdPlate_MMMethodMMM:currentAccountModel.loginType otherParamsDic_MMMethodMMM:nil successBlock_MMMethodMMM:^(id responseData) {
        [SdkUtil toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_account_bind_success2)];
        
        LoginResponse *cc = (LoginResponse *)responseData;
            NSDictionary * boardt = @{@"refutable":@(612), @"undemanding":@(458), @"rein":@(710)};
             if (boardt.count > 71) {}
        cc.data.account = account;
            double board5 = 664.0;
             if (@(board5).floatValue < 90) {}
        cc.data.password = password;
            double appendO = 7097.0;
             for(int appendO_idx = 0; appendO_idx < @(appendO).intValue; appendO_idx++) { break; } 
        cc.data.loginType = currentAccountModel.loginType;
            float rameworkp = 9999.0;
             if (@(rameworkp).doubleValue <= 4) {}
        SDK_DATA.mLoginResponse = cc;
        
        [[ConfigCoreUtil share] saveAccountModel_MMMethodMMM:cc.data];
        
        
        AccountModel *rData = cc.data;
            Boolean impg = NO;
             if (impg) { __asm__("NOP"); }
        LoginData *loginData = [[LoginData alloc] init];
            double orderg = 1424.0;
             if (@(orderg).doubleValue == 98) {}
        loginData.accessToken = rData.token;
            NSArray * valuesQ = [NSArray arrayWithObjects:@(487), @(715), nil];
             while (valuesQ.count > 66) { break; }
        loginData.userId = rData.userId;
            double orientationsY = 7684.0;
             for(NSInteger orientationsY_idx = 0; orientationsY_idx < @(orientationsY).intValue; orientationsY_idx++) { break; } 
        loginData.timestamp = rData.timestamp;
        
        loginData.isBind = rData.isBind;
            NSArray * pagez = [NSArray arrayWithObjects:@(890), @(901), nil];
        loginData.isBindPhone = rData.isBindPhone;
            double s_heightx = 7910.0;
             while (@(s_heightx).floatValue >= 174) { break; }
        loginData.loginType = rData.loginType;
        
        loginData.sign = rData.sign;
            NSInteger queue7 = 3858;
             while (@(queue7).floatValue < 12) { break; }
        loginData.telephone = rData.telephone;
            NSString * ordera = @"embryonic";
        loginData.loginId = rData.loginId;
        
        if (self.mMWBlock) {
            self.mMWBlock(YES, loginData);
        }
        
        [self removeFromGameView];
        
    } errorBlock_MMMethodMMM:^(BJError *error) {
        [AlertUtil showAlertWithMessage_MMMethodMMM:error.message];
            NSDictionary * phoneo = @{@"draft":@(727)};
    }];
    
}

-(NSString *)totalInteraryEvaluateArrayNetworking:(NSDictionary *)self_zm configuratorInfo:(NSString *)configuratorInfo {
    NSString *britainMalign = [[NSString alloc] init];

    return britainMalign;

}






- (void)registerViewBtnAction_MMMethodMMM:(UIButton *)sender
{

         {
NSString * tiffIndiscernible = [self totalInteraryEvaluateArrayNetworking:[NSDictionary dictionaryWithObjectsAndKeys:@"japan",@(4412), nil] configuratorInfo:@"camp"];

      int tiffIndiscernible_len = tiffIndiscernible.length;
     int tmp_h_57 = (int)tiffIndiscernible_len;
     switch (tmp_h_57) {
          case 87: {
          tmp_h_57 += 28;
             break;

     }
          case 82: {
          tmp_h_57 /= 43;
          if (tmp_h_57 < 440) {
          tmp_h_57 += 93;
          if (tmp_h_57 < 494) {
          tmp_h_57 -= 36;
          }
     }
             break;

     }
          case 75: {
          tmp_h_57 -= 66;
          if (tmp_h_57 > 728) {
          switch (tmp_h_57) {
          case 22: {
          tmp_h_57 *= 66;
             break;

     }
          case 76: {
                  break;

     }
          case 10: {
                  break;

     }
          case 23: {
                  break;

     }
     default:
         break;

     }
     }
             break;

     }
          case 5: {
          tmp_h_57 += 92;
          if (tmp_h_57 >= 141) {
          tmp_h_57 *= 90;
          }
             break;

     }
          case 41: {
          int a_70 = 1;
     int r_1 = 1;
     if (tmp_h_57 > r_1) {
         tmp_h_57 = r_1;
     }
     while (a_70 <= tmp_h_57) {
         a_70 += 1;
          tmp_h_57 /= a_70;
     int v_70 = a_70;
          switch (v_70) {
          case 8: {
                  break;

     }
          case 84: {
          v_70 -= 2;
             break;

     }
          case 72: {
                  break;

     }
     default:
         break;

     }
         break;
     }
             break;

     }
          case 58: {
          tmp_h_57 *= 61;
          tmp_h_57 *= 80;
             break;

     }
          case 23: {
          tmp_h_57 /= 6;
             break;

     }
          case 46: {
          int z_85 = 1;
     int y_43 = 0;
     if (tmp_h_57 > y_43) {
         tmp_h_57 = y_43;
     }
     while (z_85 < tmp_h_57) {
         z_85 += 1;
     int p_70 = z_85;
          if (p_70 >= 806) {
          p_70 /= 40;
          }
         break;
     }
             break;

     }
          case 80: {
          tmp_h_57 += 80;
          int w_5 = 0;
     int y_97 = 1;
     if (tmp_h_57 > y_97) {
         tmp_h_57 = y_97;

     }
     for (int d_66 = 1; d_66 < tmp_h_57; d_66++) {
         w_5 += d_66;
          if (d_66 > 0) {
          tmp_h_57 -=  d_66;

     }
     int q_7 = w_5;
              break;

     }
             break;

     }
          case 64: {
          tmp_h_57 += 57;
          int v_94 = 1;
     int x_64 = 1;
     if (tmp_h_57 > x_64) {
         tmp_h_57 = x_64;
     }
     while (v_94 <= tmp_h_57) {
         v_94 += 1;
          tmp_h_57 *= v_94;
         break;
     }
             break;

     }
     default:
         break;

     }
      NSLog(@"%@",tiffIndiscernible);


}

    switch (sender.tag) {
            
        case TAG_CLOSE:
            [self removeFromGameView];
        {
        }
            break;
            
        case kOkActTag:
        {
            SDK_LOG(wwwww_tag_wwwww_kOkActTag);
            if (accountSDKTextFiledView) {
                [self bindAccount_MMMethodMMM];
            }else{
                [self removeFromGameView];
            }
            
        }
            
            
            break;
            
            
        default:
            break;
    }
}

@end
