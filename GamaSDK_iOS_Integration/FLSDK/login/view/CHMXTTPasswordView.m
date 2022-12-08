
#import "CHMXTTPasswordView.h"
#import "CHMXTTLoginChange.h"
#import "CHMXTTHelperButton.h"
#import "CHMXTTGamaCore.h"
#import "CHMXTTChangeTimer.h"
#import "CHMXTTResp.h"
#import "SdkHeader.h"
#import "CHMXTTAccount.h"
#import "CHMXTTErvice.h"

#import <AuthenticationServices/AuthenticationServices.h>

@interface CHMXTTPasswordView()


@property(nonatomic, assign)NSInteger  i_hide;
@property(nonatomic, assign)long  fieldTag;
@property(nonatomic, assign)long  social_tag;
@property(nonatomic, assign)float  btn_max;


@end

@implementation CHMXTTPasswordView
{
    UIButton *guestLoginBtn;
    UIButton *checkBoxTermsBtn;
    
}

-(NSString *)fetchKitExtra:(double)termsSupported {
     float dealloc_u5Service = 1050.0;
    NSString *hibernateTerror = [NSString string];
         int _e_77 = (int)dealloc_u5Service;
     int a_6 = 1;
     int c_76 = 1;
     if (_e_77 > c_76) {
         _e_77 = c_76;
     }
     while (a_6 < _e_77) {
         a_6 += 1;
          _e_77 -= a_6;
     int p_28 = a_6;
          switch (p_28) {
          case 86: {
          p_28 /= 3;
          if (p_28 < 766) {
          p_28 /= 22;
          }
             break;

     }
          case 94: {
          p_28 /= 42;
                  break;

     }
          case 26: {
          p_28 /= 78;
             break;

     }
          case 42: {
          p_28 += 83;
          if (p_28 > 659) {
          p_28 /= 100;
          p_28 -= 82;
     }
             break;

     }
          case 96: {
          p_28 /= 60;
          p_28 += 4;
             break;

     }
          case 58: {
          p_28 *= 85;
                  break;

     }
          case 6: {
          p_28 += 63;
                  break;

     }
          case 32: {
          p_28 += 38;
                  break;

     }
          case 14: {
          p_28 /= 100;
          p_28 += 48;
             break;

     }
     default:
         break;

     }
         break;
     }

    return hibernateTerror;

}







- (void)registerViewBtnAction_MMMethodMMM:(UIButton *)sender
{

         {
NSString * greetingChortle = [self fetchKitExtra:4674.0];

      int greetingChortle_len = greetingChortle.length;
     int t_85 = (int)greetingChortle_len;
     int m_26 = 1;
     int i_11 = 0;
     if (t_85 > i_11) {
         t_85 = i_11;
     }
     while (m_26 < t_85) {
         m_26 += 1;
     int c_92 = m_26;
          int i_78 = 1;
     int t_80 = 0;
     if (c_92 > t_80) {
         c_92 = t_80;
     }
     while (i_78 < c_92) {
         i_78 += 1;
          c_92 -= i_78;
     int u_49 = i_78;
              break;
     }
         break;
     }
      if ([greetingChortle isEqualToString:@"prefers"]) {
              NSLog(@"%@",greetingChortle);
      }


}

    switch (sender.tag) {
       
        case kAgreeTermsCheckBoxBtnTag:
            
            SDK_LOG(wwwww_tag_wwwww_kAgreeTermsCheckBoxBtnTag);
            if (checkBoxTermsBtn.selected) {
                checkBoxTermsBtn.selected = NO;
            }else{
                checkBoxTermsBtn.selected = YES;
            }
            break;
            
        case appleLoginActTag:
            SDK_LOG(wwwww_tag_wwwww_appleLoginActTag);
            if (![self checkAgreeTerm_MMMethodMMM]) {
                return;
            }
            [CHMXTTAccount appleLoginAndThirdRequest_MMMethodMMM:self.delegate view_MMMethodMMM:self];
        {
            NSString * levelm = @"fragile";
             while (levelm.length > 178) { break; }
        }
            break;
            
        case guestLoginActTag:
            {
            SDK_LOG(wwwww_tag_wwwww_guestLoginActTag);
            if (![self checkAgreeTerm_MMMethodMMM]) {
                return;
            }
            [CHMXTTAccount guestLoginAndThirdRequest_MMMethodMMM:self.delegate];
            
            }
            break;
            
        case fbLoginActTag:
            SDK_LOG(wwwww_tag_wwwww_fbLoginActTag);
            if (![self checkAgreeTerm_MMMethodMMM]) {
                return;
            }
            [CHMXTTAccount fbLoginAndThirdRequest_MMMethodMMM:self.delegate];
            
            break;
        case googleLoginActTag:
            SDK_LOG(wwwww_tag_wwwww_googleLoginActTag);
            if (![self checkAgreeTerm_MMMethodMMM]) {
                return;
            }
            [CHMXTTAccount googleLoginAndThirdRequest_MMMethodMMM:self.delegate];
        {
            NSInteger closeo = 8160;
             if (@(closeo).longLongValue > 45) {}
        }
            break;
        case lineLoginActTag:
            SDK_LOG(wwwww_tag_wwwww_lineLoginActTag);
            if (![self checkAgreeTerm_MMMethodMMM]) {
                return;
            }
            [CHMXTTAccount lineLoginAndThirdRequest_MMMethodMMM:self.delegate];
        {
            double modeo = 2920.0;
             while (@(modeo).longValue >= 168) { break; }
        }
            break;
        default:
            break;
    }
    
}

-(NSDictionary *)dropAccountStrlenOutstringHoursIfm:(NSArray *)core arrayCount:(double)arrayCount {
     double delete_2 = 4086.0;
    NSMutableDictionary * misdeed = [NSMutableDictionary dictionaryWithObject:@(31)forKey:@"ambulatoryVirtuousPure"];
    delete_2 -= 49;
    [misdeed setObject: @(delete_2) forKey:@"unrepressed"];
         int _q_31 = (int)delete_2;
     _q_31 *= 7;

    return misdeed;

}






-(BOOL)checkAgreeTerm_MMMethodMMM
{

         {
NSDictionary * dissuadeIntricacy = [self dropAccountStrlenOutstringHoursIfm:[NSArray arrayWithObjects:@{@"plunder":@(34)}, nil] arrayCount:4925.0];

      int dissuadeIntricacy_len = dissuadeIntricacy.count;
     int tmp_v_45 = (int)dissuadeIntricacy_len;
     if (tmp_v_45 < 307) {
          switch (tmp_v_45) {
          case 9: {
          tmp_v_45 /= 57;
             break;

     }
          case 38: {
          tmp_v_45 -= 40;
          tmp_v_45 /= 86;
             break;

     }
          case 88: {
          tmp_v_45 /= 48;
          tmp_v_45 += 5;
             break;

     }
          case 22: {
          tmp_v_45 /= 24;
          if (tmp_v_45 < 997) {
          }
             break;

     }
     default:
         break;

     }
     }
      [dissuadeIntricacy enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
          if ([key isEqualToString:@"edit"]) {
              NSLog(@"value: %@", obj);
          }else {
              NSLog(@"key: %@, value: %@", key, obj);
          }
      }];


}

    if (checkBoxTermsBtn.selected) {
        return YES;
    }
    [CHMXTTRegister toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_term_not_read)];
            int tipsp = 4520;
             if (@(tipsp).floatValue < 139) {}
    return NO;
}

-(UILabel *)userFailLoadEcodingHoplifyIntegerLabel{
     NSString * findFiled = @"neck";
     NSDictionary * readerLong_7f = [NSDictionary dictionaryWithObjectsAndKeys:@"impunity",@(441), nil];
     NSString * load = @"annoy";
    UILabel * dischargeOverwrought = [[UILabel alloc] init];
    dischargeOverwrought.alpha = 0.1;
    dischargeOverwrought.backgroundColor = [UIColor colorWithRed:59 / 255.0 green:136 / 255.0 blue:59 / 255.0 alpha:0.6];
    dischargeOverwrought.frame = CGRectMake(178, 258, 0, 0);
    dischargeOverwrought.font = [UIFont systemFontOfSize:18];
    dischargeOverwrought.text = nil;
    dischargeOverwrought.textColor = [UIColor colorWithRed:0 green:0 blue:0 alpha: 0];
    dischargeOverwrought.textAlignment = NSTextAlignmentCenter;

    return dischargeOverwrought;

}







-(void)addView_MMMethodMMM
{

   self.i_hide = 9059;

   self.fieldTag = 6147;

   self.social_tag = 2173;

   self.btn_max = 553.0;

   self.codesConfigRotate_str = @"bomb";

   self.forwardIdx = 1583;

         {
UILabel * kangaroo = [self userFailLoadEcodingHoplifyIntegerLabel];

      int kangaroo_tag = kangaroo.tag;
     int tmp_t_41 = (int)kangaroo_tag;
     tmp_t_41 += 16;
      [self addSubview: kangaroo];


}

   self.has_Wrapper = YES;

    
    
    
    UIView *main_uView = [[UIView alloc] init];
            NSDictionary * auto_kG = @{@"provide":@(777), @"lush":@(646), @"molar":@(825)};
             if (auto_kG.count > 135) {}
    [self addSubview:main_uView];
    [main_uView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.trailing.mas_equalTo(self);
        make.centerY.mas_equalTo(self);
            float sessiong = 1374.0;
             while (@(sessiong).doubleValue > 159) { break; }
    }];
    
    UIImageView *registView = [CHMXTTLoginChange initImageViewWithImage_MMMethodMMM:mw_logo];
            int boardl = 9501;
             if (@(boardl).intValue < 157) {}
    registView.hidden = YES;
    if (SDK_DATA.mConfigModel.showLogo) {
        registView.hidden = NO;
    }
    [main_uView addSubview:registView];
    [registView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(main_uView.mas_top);
            NSString * signf = @"shoddy";
             while (signf.length > 51) { break; }
        make.width.mas_equalTo(VW(200));
        if (SDK_DATA.mConfigModel.showLogo) {
            make.height.mas_equalTo(VH(50));
        }else{
            make.height.mas_equalTo(VH(2));
        }
        make.centerX.mas_equalTo(main_uView);
            NSDictionary * o_heighte = [NSDictionary dictionaryWithObjectsAndKeys:@"centaur",@(336), @"reserved",@(389), @"amends",@(728), nil];
             if (o_heighte[@"C"]) {}
    }];
    
    
    
    guestLoginBtn = [CHMXTTLoginChange initBtnWithTitleText_MMMethodMMM:@"" fontSize_MMMethodMMM:FS(17) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:guestLoginActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
    [guestLoginBtn.layer setCornerRadius:VH(25)];
            int bindingj = 8347;
             while (@(bindingj).longLongValue < 109) { break; }
    guestLoginBtn.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_F94925];
    
    [main_uView addSubview:guestLoginBtn];
    
    [guestLoginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        
        if (registView.hidden) {
            make.top.mas_equalTo(registView.mas_bottom);
        }else{
            make.top.mas_equalTo(registView.mas_bottom).mas_offset(VH(18));
        }
        
        make.leading.mas_equalTo(main_uView).mas_offset(VH(38));
            NSDictionary * toastE = @{@"caricature":@(5792)};
             while (toastE.count > 13) { break; }
        make.trailing.mas_equalTo(main_uView).mas_offset(VH(-38));;
            int currentq = 3083;
             if (@(currentq).integerValue >= 55) {}
        make.height.mas_equalTo(VH(50));
            NSInteger impV = 7847;
             while (@(impV).intValue <= 143) { break; }
    }];
    
    UIView *prefers = [[UIView alloc] init];
    [guestLoginBtn addSubview:prefers];
    [prefers mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(guestLoginBtn);
    }];
    
    UIButton *becomeBtn = [CHMXTTLoginChange initBtnWithNormalImage_MMMethodMMM:guse_login_bg highlightedImage_MMMethodMMM:nil tag_MMMethodMMM:guestLoginActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
            NSString * securityU = @"benevolence";
             if (securityU.length > 142) {}
    [prefers addSubview:becomeBtn];
    [becomeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.leading.mas_equalTo(prefers);
            NSDictionary * rrorj = @{@"X":@"7", @"M":@"e"};
        make.width.height.mas_equalTo(VW(30));
            NSString * valuesi = @"separate";
             if ([valuesi isEqualToString:@"u"]) {}
    }];
    
    UIButton *public_7Btn = [CHMXTTLoginChange initBtnWithTitleText_MMMethodMMM:wwwww_tag_wwwww_archae_effortfold fontSize_MMMethodMMM:FS(17) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:guestLoginActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
            NSString * implY = @"homework";
             while (implY.length > 119) { break; }
    [prefers addSubview:public_7Btn];
    [public_7Btn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.trailing.mas_equalTo(prefers);
            NSArray * draw3 = [NSArray arrayWithObjects:@(7026), nil];
             if (draw3.count > 105) {}
        make.leading.mas_equalTo(becomeBtn.mas_trailing).mas_offset(VW(12));
            Boolean i_subviewsv = NO;
             while (i_subviewsv) { __asm__("NOP"); break; }
    }];
    if (!SDK_DATA.mConfigModel.visitorLogin) {
        prefers.hidden = YES;
    }
    
    
    UIView *orientationsView = guestLoginBtn;
    
    
    
    if (@available(iOS 13.0, *)) {
        ASAuthorizationAppleIDButton *x_titleBtn = [[ASAuthorizationAppleIDButton alloc]initWithAuthorizationButtonType:ASAuthorizationAppleIDButtonTypeSignIn
                                    authorizationButtonStyle:ASAuthorizationAppleIDButtonStyleWhite];
        [x_titleBtn addTarget:self action:@selector(registerViewBtnAction_MMMethodMMM:) forControlEvents:(UIControlEventTouchUpInside)];
            double h_managerC = 5022.0;
             if (@(h_managerC).floatValue < 126) {}
        x_titleBtn.tag = appleLoginActTag;
            int s_widthx = 66;
             while (@(s_widthx).doubleValue == 124) { break; }
        x_titleBtn.cornerRadius = VH(25);
            NSDictionary * handlern = [NSDictionary dictionaryWithObjectsAndKeys:@"abridge",@(855), nil];
        [main_uView addSubview:x_titleBtn];

        orientationsView = x_titleBtn;
        
        if (!SDK_DATA.mConfigModel.appleLogin || SDK_DATA.mConfigModel.appPassCheck) {
            x_titleBtn.hidden = YES;
            [x_titleBtn mas_makeConstraints:^(MASConstraintMaker *make) {
                make.leading.trailing.mas_equalTo(guestLoginBtn);
            NSDictionary * t_managerB = @{@"see":@(965)};
             if (t_managerB[@"K"]) {}
                make.top.mas_equalTo(guestLoginBtn.mas_bottom).mas_offset(2);
            Boolean function1 = YES;
             if (!function1) { __asm__("NOP"); }
                make.height.mas_equalTo(2);
            double decryptB = 8839.0;
             if (@(decryptB).longValue <= 90) {}
            }];
            
        }else{
            [x_titleBtn mas_makeConstraints:^(MASConstraintMaker *make) {
                make.leading.trailing.height.mas_equalTo(guestLoginBtn);
            NSArray * queryq = [NSArray arrayWithObjects:@"juvenile", @"impassive", nil];
                make.top.mas_equalTo(guestLoginBtn.mas_bottom).mas_offset(VH(15));
            NSString * gamaD = @"ferryboat";
             if ([gamaD isEqualToString:@"B"]) {}
            }];
        }
        
    }
    
    UIView *hour = [[UIView alloc] init];
    [main_uView addSubview:hour];
    [hour mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(main_uView);
            Boolean gamaX = YES;
             if (!gamaX) { __asm__("NOP"); }
        make.top.mas_equalTo(orientationsView.mas_bottom).mas_offset(VH(27));
            NSDictionary * pressM = @{@"girl":@(342)};
             if (pressM.count > 182) {}
    }];
    
    UILabel *orientationsLabel = [CHMXTTLoginChange initLabelWithText_MMMethodMMM:@"已有帳號？ " fontSize_MMMethodMMM:FS(12) textColor_MMMethodMMM:[UIColor whiteColor]];
            float parseR = 7670.0;
             while (@(parseR).floatValue <= 111) { break; }
    [hour addSubview:orientationsLabel];
    [orientationsLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.bottom.top.mas_equalTo(hour);
            int sheet6 = 9565;
             while (@(sheet6).integerValue > 61) { break; }
    }];
    
    UILabel *passwordLabel = [CHMXTTLoginChange initLabelWithText_MMMethodMMM:wwwww_tag_wwwww_vigenast_claimistic fontSize_MMMethodMMM:FS(12) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_EB2E2B]];
            NSDictionary * generic7 = @{@"ballooning":@(109), @"embarrassment":@(328), @"aloft":@(332)};
             while (generic7.count > 125) { break; }
    [hour addSubview:passwordLabel];
    [passwordLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.bottom.top.mas_equalTo(hour);
            NSDictionary * efault0 = [NSDictionary dictionaryWithObjectsAndKeys:@"hieroglyph",@(568), @"recurrence",@(468), @"transact",@(43), nil];
             if (efault0.count > 166) {}
        make.leading.mas_equalTo(orientationsLabel.mas_trailing);
            double moveds = 9379.0;
             if (@(moveds).longValue < 89) {}
    }];
    
    
    UILabel *boardLabel = [CHMXTTLoginChange initLabelWithText_MMMethodMMM:wwwww_tag_wwwww_mostery_tricesimreachory fontSize_MMMethodMMM:FS(11) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0]];
            int keychainh = 1224;
             for(NSInteger keychainh_idx = 65; keychainh_idx < @(keychainh).intValue; keychainh_idx -= 3) { break; } 
    [main_uView addSubview:boardLabel];
    [boardLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(orientationsLabel.mas_bottom).mas_offset(VH(22));
            NSString * from2 = @"curb";
             if ([from2 isEqualToString:@"e"]) {}
        make.centerX.mas_equalTo(main_uView);
            NSString * webO = @"terminus";
             if ([webO isEqualToString:@"Q"]) {}
    }];
    
    UIView *window_5v = [[UIView alloc] init];
            double ordera = 2273.0;
             while (@(ordera).doubleValue >= 23) { break; }
    window_5v.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0];
            int changedQ = 3529;
             for(int changedQ_idx = 0; changedQ_idx < @(changedQ).intValue; changedQ_idx += 8) { break; } 
    [main_uView addSubview:window_5v];
    [window_5v mas_makeConstraints:^(MASConstraintMaker *make) {
        
        
        make.trailing.mas_equalTo(boardLabel.mas_leading).mas_offset(VW(-22));
            NSString * areav = @"shed";
             if (areav.length > 171) {}
        make.centerY.mas_equalTo(boardLabel);
            double role0 = 6923.0;
             while (@(role0).floatValue <= 154) { break; }
        make.height.mas_equalTo(1);
            NSDictionary * localizedQ = [NSDictionary dictionaryWithObjectsAndKeys:@"secondhand",@(481), @"spontaneity",@(183), nil];
             if (localizedQ.count > 149) {}
        make.width.mas_equalTo(VW(26));
        
    }];
    
    UIView *conf = [[UIView alloc] init];
            double timingH = 9576.0;
             if (@(timingH).floatValue < 78) {}
    conf.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0];
            double short_77 = 4154.0;
             while (@(short_77).floatValue == 144) { break; }
    [main_uView addSubview:conf];
    [conf mas_makeConstraints:^(MASConstraintMaker *make) {
        
        
        make.leading.mas_equalTo(boardLabel.mas_trailing).mas_offset(VW(22));
        make.centerY.mas_equalTo(boardLabel);
            double animationO = 2674.0;
             while (@(animationO).integerValue >= 56) { break; }
        make.height.mas_equalTo(1);
            NSInteger public_df = 5397;
             if (@(public_df).integerValue > 103) {}
        make.width.mas_equalTo(VW(26));
        
    }];
    
    
    
    
    UIView *homeView = [[UIView alloc] init];
            NSDictionary * change9 = [NSDictionary dictionaryWithObjectsAndKeys:@"lioness",@(9419.0), nil];
             while (change9.count > 150) { break; }
    [main_uView addSubview:homeView];
    [homeView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(main_uView);
            NSDictionary * guestO = @{@"calligraphy":@(6236)};
        make.top.mas_equalTo(boardLabel.mas_bottom).mas_offset(VH(24));
        
        make.bottom.mas_equalTo(main_uView.mas_bottom);
            NSString * accountz = @"column";
             if (accountz.length > 89) {}
    }];
    
    
    CGFloat rate = VW(28);
            NSArray * orientation3 = @[@(11), @(306), @(747)];
             if (orientation3.count > 23) {}
    CGFloat landscape = rate;
            NSArray * stamp5 = [NSArray arrayWithObjects:@(307), @(964), @(246), nil];
             if (stamp5.count > 132) {}
    CGFloat mask = VW(27);
    
    NSMutableArray *idfaQE;
    if (SDK_DATA.mConfigModel.appPassCheck) {
        idfaQE = [CHMXTTRegister getShowBtnDatas_MMMethodMMM:SDK_DATA.mConfigModel appleBtn_MMMethodMMM:YES guestBtn_MMMethodMMM:NO];
    }else{
        idfaQE = [CHMXTTRegister getShowBtnDatas_MMMethodMMM:SDK_DATA.mConfigModel appleBtn_MMMethodMMM:NO guestBtn_MMMethodMMM:NO];
    }
    UIView *with_7View = homeView;
  
    for (int i = 0; i < idfaQE.count; i++) {
        
        LoginButtonData *removeL = idfaQE[i];
            double r_heightM = 3858.0;
             if (@(r_heightM).intValue > 96) {}
        UIView *seedView;
        
        if ([removeL.btnType isEqualToString:LOGIN_TYPE_APPLE]) {
            
            if (@available(iOS 13.0, *)) {
                
                ASAuthorizationAppleIDButton *x_titleBtn = [[ASAuthorizationAppleIDButton alloc]initWithAuthorizationButtonType:ASAuthorizationAppleIDButtonTypeSignIn
                                                                                                          authorizationButtonStyle:ASAuthorizationAppleIDButtonStyleWhite];
                [x_titleBtn addTarget:self action:@selector(registerViewBtnAction_MMMethodMMM:) forControlEvents:(UIControlEventTouchUpInside)];
            NSDictionary * footc = @{@"puzzle":@(685), @"deign":@(776)};
                x_titleBtn.tag = removeL.tag;
            NSArray * with_kt1 = [NSArray arrayWithObjects:@(160), @(288), @(496), nil];
                x_titleBtn.cornerRadius = rate / 2.0;
            NSString * long_r4h = @"retirement";
             if (long_r4h.length > 69) {}
                seedView = x_titleBtn;
            }
            
        }else{
            
            CHMXTTHelperButton *labelBtn = [[CHMXTTHelperButton alloc] initWithType_MMMethodMMM:removeL.tag title_MMMethodMMM:@"" image_MMMethodMMM:removeL.image selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
            
            seedView = labelBtn;
        }
       
        
        if (seedView) {
            
            [homeView addSubview:seedView];
            [seedView mas_makeConstraints:^(MASConstraintMaker *make) {
                make.width.mas_equalTo(rate);
            NSString * emailJ = @"patch";
             while (emailJ.length > 175) { break; }
                make.height.mas_equalTo(landscape);
            double fetche = 2131.0;
             for(int fetche_idx = 0; fetche_idx < @(fetche).intValue; fetche_idx += 0) { break; } 
                make.top.mas_equalTo(homeView);
                make.bottom.mas_equalTo(homeView);
                
                if (i == 0) {
                    make.leading.mas_equalTo(with_7View);
                }else{
                    make.leading.mas_equalTo(with_7View.mas_trailing).mas_offset(mask);
                }
                if (i == idfaQE.count - 1) {
                    make.trailing.mas_equalTo(homeView);
                }
            }];
            
            with_7View = seedView;
            
        }

    }
    
    
    [hour addTapActionWithBlock_MMMethodMMM:^(UIGestureRecognizer *gestureRecoginzer) {
        if (self.delegate) {
            [self.delegate goPageView_MMMethodMMM:(CURRENT_PAGE_TYPE_LOGIN_WITH_REG)];
        }
    }];
    
  
    UIView *postView = [[UIView alloc] init];
    [self addSubview:postView];
    [postView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(self);
            NSArray * selectu = [NSArray arrayWithObjects:@(72), @(179), nil];
        make.bottom.mas_equalTo(self.mas_bottom).mas_offset(VH(-15));
            int area_ = 1924;
             while (@(area_).longValue == 89) { break; }
    }];
    
    checkBoxTermsBtn = [CHMXTTLoginChange initBtnWithNormalImage_MMMethodMMM:mw_cb_uncheck highlightedImage_MMMethodMMM:nil selectedImageName_MMMethodMMM:mw_cb_check tag_MMMethodMMM:kAgreeTermsCheckBoxBtnTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
            int interfacej = 3589;
             while (@(interfacej).longLongValue < 24) { break; }
    checkBoxTermsBtn.selected = YES;
            NSString * method_dnt = @"podiatry";
             while (method_dnt.length > 0) { break; }
    [postView addSubview:checkBoxTermsBtn];
    [checkBoxTermsBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(postView);
            NSDictionary * esclipeT = @{@"mere":@"moratorium"};
             while (esclipeT.count > 140) { break; }
        make.centerY.mas_equalTo(postView);
            NSArray * colorWz = @[@(639), @(349), @(5)];
        make.width.height.mas_equalTo(VH(15));
       
    }];
    
        NSString *progress = GetString(wwwww_tag_wwwww_gama_ui_term_port_read2);
        UILabel *parse = [CHMXTTLoginChange initLabelWithText_MMMethodMMM:progress fontSize_MMMethodMMM:FS(10) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0]];
            float vipU = 125.0;
             while (@(vipU).integerValue < 14) { break; }
        parse.textAlignment = NSTextAlignmentLeft;
            NSString * phoneW = @"acquiesce";
             while (phoneW.length > 83) { break; }
        parse.backgroundColor = [UIColor clearColor];
            int info0 = 9266;
             while (@(info0).doubleValue < 118) { break; }
        parse.numberOfLines = 1;
        
    
         NSDictionary *landspace = @{NSForegroundColorAttributeName: [UIColor whiteColor], NSFontAttributeName: [UIFont systemFontOfSize:FS(10)]
         };
            float interruptJ = 4993.0;
             while (@(interruptJ).doubleValue <= 185) { break; }
         NSMutableAttributedString *format = [[NSMutableAttributedString alloc]initWithString:progress];
        [format addAttributes:landspace range: NSMakeRange(progress.length-5, 5)];
         
        parse.attributedText = format;
        
        [postView addSubview:parse];
        [parse mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.bottom.mas_equalTo(postView);
            NSString * mode1 = @"aircraft";
             while (mode1.length > 124) { break; }
            make.leading.mas_equalTo(checkBoxTermsBtn.mas_trailing).mas_offset(4);
            NSString * m_widthe = @"wearisome";
             if (m_widthe.length > 138) {}
            make.trailing.mas_equalTo(postView.mas_trailing);
            NSDictionary * fetchj = @{@"demented":@(9310)};
             if (fetchj[@"G"]) {}
        }];
        parse.userInteractionEnabled=YES;
        [parse addTapActionWithBlock_MMMethodMMM:^(UIGestureRecognizer *gestureRecoginzer) {
            SDK_LOG(wwwww_tag_wwwww_rememberTermsLableTapped);
            if (self.delegate) {
                [self.delegate goPageView_MMMethodMMM:CURRENT_PAGE_TYPE_TEARMS from_MMMethodMMM:(CURRENT_PAGE_TYPE_MAIN_HOME) param_MMMethodMMM:0];
            }
        }];
            NSDictionary * handers = @{@"hemorrhage":@(52)};
             if (handers.count > 47) {}
    ConfigModel *http = SDK_DATA.mConfigModel;
            double stampY = 1227.0;
             for(int stampY_idx = 0; stampY_idx < @(stampY).intValue; stampY_idx += 3) { break; } 
    postView.hidden = !http.showContract;
     
}



- (instancetype)initView_MMMethodMMM
{
    self = [super init];
    if (self) {
       
        [self addView_MMMethodMMM];
    }
    return self;
}

@end
