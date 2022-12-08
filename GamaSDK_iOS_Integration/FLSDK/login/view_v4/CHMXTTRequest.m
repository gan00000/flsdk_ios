
#import "CHMXTTRequest.h"
#import "SdkHeader.h"
#import "CHMXTTServiceTermsView.h"
#import "CHMXTTStringView.h"
#import "CHMXTTCenterView.h"
#import "CHMXTTRameworkUserButton.h"
#import "CHMXTTAccount.h"
#import "CHMXTTRegister.h"
#import "CHMXTTNewsView.h"
#import "CHMXTTChangeTimer.h"
#import "CHMXTTInfo.h"

@implementation CHMXTTRequest

{
    CHMXTTServiceTermsView *thirdAccountSDKTextFiledView;
    CHMXTTServiceTermsView *accountSDKTextFiledView;
    CHMXTTServiceTermsView *pwdSDKTextFiledView;
    
    CHMXTTServiceTermsView *hasBind_accountSDKTextFiledView;
    
    
    
    CHMXTTStringView   *mLoginTitleView;
    
    
}

-(Boolean)changKeychainAppsSingleUpdata:(double)modelsEsclipe touchesRole:(NSArray *)touchesRole interface:(NSInteger)interface {
     double namedPhone = 1115.0;
    BOOL fecklessIntumescence = NO;
    namedPhone = 2266;
    fecklessIntumescence = namedPhone > 43;
         int x_58 = (int)namedPhone;
     if (x_58 > 268) {
          switch (x_58) {
          case 44: {
                  break;

     }
          case 39: {
          x_58 /= 61;
             break;

     }
          case 3: {
          x_58 -= 15;
                  break;

     }
          case 31: {
          x_58 /= 56;
                  break;

     }
          case 7: {
          if (x_58 < 976) {
          x_58 += 12;
          }
             break;

     }
          case 10: {
          x_58 /= 67;
             break;

     }
     default:
         break;

     }
     }

    return fecklessIntumescence;

}






-(void)bindAccount_MMMethodMMM
{

         {
Boolean excavationPrognosticate = [self changKeychainAppsSingleUpdata:4639.0 touchesRole:[NSArray arrayWithObjects:@"furthermore", @"bacteria", nil] interface:8590];

      if (excavationPrognosticate) {
          NSLog(@"firebaseEngineConfig");
      }


}

    
    
    NSString *helper = accountSDKTextFiledView.inputUITextField.text;
            NSDictionary * infoZ = [NSDictionary dictionaryWithObjectsAndKeys:@"move",@(956), @"grade",@(456), @"snarl",@(700), nil];
             while (infoZ.count > 160) { break; }
    NSString *bundle = pwdSDKTextFiledView.inputUITextField.text;
  
    
 
    if (![CHMXTTRegister validUserName_MMMethodMMM:helper]) {
        return;
    }
    
    
    if (![CHMXTTRegister validPwd_MMMethodMMM:bundle]) {
        return;
    }
    
    AccountModel *upload = SDK_DATA.mLoginResponse.data;
    if (!upload) {
        SDK_LOG(@"用户登录信息不存在 upload nil");
            int register_hW = 9654;
             if (@(register_hW).doubleValue < 31) {}
        return;
    }
  
    
    [CHMXTTChangeTimer doAccountBindingWithUserName_MMMethodMMM:helper password_MMMethodMMM:bundle phoneAreaCode_MMMethodMMM:@"" phoneNumber_MMMethodMMM:@"" vfCode_MMMethodMMM:@"" email_MMMethodMMM:helper thirdId_MMMethodMMM:upload.thirdId thirdPlate_MMMethodMMM:upload.loginType otherParamsDic_MMMethodMMM:nil successBlock_MMMethodMMM:^(id responseData) {
        [CHMXTTRegister toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_account_bind_success2)];
        
        LoginResponse *facebook = (LoginResponse *)responseData;
        facebook.data.account = helper;
            NSArray * codeI = @[@(813), @(52)];
             if (codeI.count > 46) {}
        facebook.data.password = bundle;
            NSArray * plisth = [NSArray arrayWithObjects:@"optimist", @"scratch", @"monocle", nil];
             if (plisth.count > 84) {}
        facebook.data.loginType = upload.loginType;
            Boolean saveS = NO;
             if (!saveS) { __asm__("NOP"); }
        SDK_DATA.mLoginResponse = facebook;
        
        [[CHMXTTEfault share] saveAccountModel_MMMethodMMM:facebook.data];
        
        
        AccountModel *order = facebook.data;
            NSDictionary * save0 = @{@"ancestry":@(243), @"cardiologist":@(1000)};
        LoginData *change = [[LoginData alloc] init];
            NSArray * layoutM = [NSArray arrayWithObjects:@(6), @(522), nil];
             while (layoutM.count > 62) { break; }
        change.accessToken = order.token;
            int workE = 2030;
             if (@(workE).longLongValue > 115) {}
        change.userId = order.userId;
            NSArray * h_centerI = [NSArray arrayWithObjects:@(913), @(375), @(776), nil];
             while (h_centerI.count > 91) { break; }
        change.timestamp = order.timestamp;
        
        change.isBind = order.isBind;
            float requestx = 8097.0;
             if (@(requestx).floatValue > 186) {}
        change.isBindPhone = order.isBindPhone;
            NSArray * languager = [NSArray arrayWithObjects:@"apropos", @"turnover", @"rookie", nil];
        change.loginType = order.loginType;
        
        change.sign = order.sign;
            NSDictionary * pressL = [NSDictionary dictionaryWithObjectsAndKeys:@"fate",@(302), nil];
             if (pressL.count > 94) {}
        change.telephone = order.telephone;
            NSDictionary * beganH = @{@"fumigate":@"auger"};
             if (beganH.count > 45) {}
        change.loginId = order.loginId;
        
        if (self.mMWBlock) {
            self.mMWBlock(YES, change);
        }
        
        [self removeFromGameView];
        
    } errorBlock_MMMethodMMM:^(CHMXTTIcon *error) {
        [CHMXTTPrivateOrder showAlertWithMessage_MMMethodMMM:error.message];
            NSString * fileN = @"expurgate";
             while (fileN.length > 5) { break; }
    }];
    
}


- (instancetype)initView_MMMethodMMM
{
    self = [super init];
    if (self) {
        
        self.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_000000 andAlpha_MMMethodMMM:0.15];
        
        UIView *main_uView = [[UIView alloc] init];
        
        UIColor *rror = [UIColor whiteColor];
            NSDictionary * successH = @{@"lasso":@(489)};
             while (successH.count > 52) { break; }
        main_uView.backgroundColor = rror;
            NSString * function2 = @"snicker";
        main_uView.layer.cornerRadius = 10; 
        main_uView.layer.masksToBounds = YES;
        
        [self addSubview:main_uView];
        [main_uView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.center.mas_equalTo(self);
            NSDictionary * implQ = @{@"seldom":@(408), @"institute":@(638), @"suede":@(743)};
             if (implQ.count > 172) {}
            make.width.mas_equalTo(VW(330));
            float configuratorc = 287.0;
             if (@(configuratorc).longLongValue >= 193) {}
            make.height.mas_equalTo(VH(265));
            NSArray * value1 = [NSArray arrayWithObjects:@(221.0), nil];
             while (value1.count > 141) { break; }
        }];
        
        
        UIView *gamaView = [[UIView alloc] init];
            NSArray * selectj = [NSArray arrayWithObjects:@(485), @(409), nil];
             if ([selectj containsObject:@"1"]) {}
        [main_uView addSubview:gamaView];
        [gamaView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(main_uView.mas_top).mas_offset(VH(15));
            Boolean tablew = YES;
             if (!tablew) { __asm__("NOP"); }
            make.leading.mas_equalTo(main_uView).mas_offset(VW(15));
            NSDictionary * hiddenY = @{@"quarantine":@(160), @"strategic":@(260), @"excel":@(575)};
            make.trailing.mas_equalTo(main_uView).mas_offset(VW(-15));
            
            
        }];
        
        UIView *progressView = [[UIView alloc] init];
            NSArray * begino = @[@"nonesuch", @"neurotic"];
             while (begino.count > 159) { break; }
        progressView.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor];
            NSDictionary * j_view1 = [NSDictionary dictionaryWithObjectsAndKeys:@"signal",@(528), @"orientation",@(766), nil];
        [gamaView addSubview:progressView];
        [progressView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.mas_equalTo(gamaView);
            Boolean fieldd = YES;
             if (fieldd) { __asm__("NOP"); }
            make.leading.mas_equalTo(gamaView);
            NSArray * screenT = [NSArray arrayWithObjects:@(215), @(419), @(950), nil];
             if (screenT.count > 196) {}
            make.width.mas_equalTo(VW(4));
            double j_managerm = 1579.0;
             if (@(j_managerm).integerValue >= 99) {}
            make.height.mas_equalTo(VH(14));
            
            make.bottom.mas_equalTo(gamaView);
        }];
        
        
        UILabel *errorLabel = [CHMXTTLoginChange initLabelWithText_MMMethodMMM:wwwww_tag_wwwww_text_update_account.localx fontSize_MMMethodMMM:FS(15) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_2A2A2A]];
        errorLabel.font = [UIFont boldSystemFontOfSize:FS(15)];
        
        [gamaView addSubview:errorLabel];
        [errorLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.leading.mas_equalTo(gamaView).mas_offset(6);
            Boolean main_zX = NO;
             while (main_zX) { __asm__("NOP"); break; }
            make.trailing.mas_equalTo(gamaView);
            float delete_r5v = 439.0;
             while (@(delete_r5v).longValue > 199) { break; }
            make.top.mas_equalTo(gamaView);
            Boolean encodej = NO;
             while (encodej) { __asm__("NOP"); break; }
            make.bottom.mas_equalTo(gamaView);
            NSArray * findR = @[@(616), @(517), @(987)];
             if ([findR containsObject:@"Z"]) {}
        }];
        
        UIButton *styleBtn = [CHMXTTLoginChange initBtnWithNormalImage_MMMethodMMM:icon_close_3 highlightedImage_MMMethodMMM:icon_close_3 tag_MMMethodMMM:TAG_CLOSE selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        
        [gamaView addSubview:styleBtn];
        [styleBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.trailing.mas_equalTo(gamaView);
            NSArray * completeS = [NSArray arrayWithObjects:@"trajectory", nil];
             if ([completeS containsObject:@"x"]) {}
            make.centerY.mas_equalTo(gamaView);
            NSString * operationH = @"tautological";
             if (operationH.length > 18) {}
            make.width.mas_equalTo(VH(22));
            NSDictionary * contentR = [NSDictionary dictionaryWithObjectsAndKeys:@"appeal",@(YES), nil];
            make.height.mas_equalTo(VH(22));
        }];
    
        
        AccountModel *terms = SDK_DATA.mLoginResponse.data;
        if (terms.isBind) {
            
            thirdAccountSDKTextFiledView = [[CHMXTTServiceTermsView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Account)];
            NSArray * respI = @[@(731), @(678)];
             if ([respI containsObject:@"D"]) {}
            thirdAccountSDKTextFiledView.moreAccountBtn.hidden = YES;
            NSString * close_B = @"timorous";
             if (close_B.length > 153) {}
            thirdAccountSDKTextFiledView.layer.borderColor = ColorHex(wwwww_tag_wwwww__CC_606060).CGColor;
            NSString * register_yk = @"fake";
             if ([register_yk isEqualToString:@"Y"]) {}
            thirdAccountSDKTextFiledView.lableIconImageView.image = [UIImage res_imageNamed_MMMethodMMM:mw_smail_icon2];
            float stringP = 8973.0;
             while (@(stringP).longValue == 172) { break; }
            thirdAccountSDKTextFiledView.inputUITextField.textColor = UIColor.blackColor;
            NSDictionary * p_viewf = @{@"hole":@(1087)};
             if (p_viewf.count > 153) {}
            thirdAccountSDKTextFiledView.inputUITextField.enabled = NO;
            NSArray * erviceN = [NSArray arrayWithObjects:@(316), @(355), nil];
             while (erviceN.count > 94) { break; }
            [main_uView addSubview:thirdAccountSDKTextFiledView];
            
            [thirdAccountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
                make.leading.mas_equalTo(gamaView);
            NSArray * type_jX = @[@(NO)];
             if (type_jX.count > 132) {}
                make.trailing.mas_equalTo(gamaView);
            NSString * interfacex = @"jocular";
             if ([interfacex isEqualToString:@"1"]) {}
                make.height.mas_equalTo(VH(40));

                make.top.mas_equalTo(gamaView.mas_bottom).mas_offset(VH(28));
                
            }];
            
            [self makeAccountFiledViewStatus_MMMethodMMM:terms accountView_MMMethodMMM:thirdAccountSDKTextFiledView pwdView_MMMethodMMM:nil];
            
            hasBind_accountSDKTextFiledView = [[CHMXTTServiceTermsView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Account)];
            NSString * wrapperA = @"fustian";
            hasBind_accountSDKTextFiledView.layer.borderColor = ColorHex(wwwww_tag_wwwww__CC_606060).CGColor;
            NSString * agreed = @"halfbaked";
             if (agreed.length > 87) {}
            hasBind_accountSDKTextFiledView.lableIconImageView.image = [UIImage res_imageNamed_MMMethodMMM:mw_smail_icon2];
            int presse = 935;
             while (@(presse).integerValue < 141) { break; }
            hasBind_accountSDKTextFiledView.moreAccountBtn.hidden = YES;
            float valid1 = 1207.0;
             if (@(valid1).floatValue >= 26) {}
            hasBind_accountSDKTextFiledView.inputUITextField.textColor = UIColor.blackColor;
            NSString * forgoty = @"hop";
            hasBind_accountSDKTextFiledView.inputUITextField.enabled = NO;
            
            [main_uView addSubview:hasBind_accountSDKTextFiledView];
            
            [hasBind_accountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
                
                make.leading.mas_equalTo(gamaView);
            int helperq = 2738;
             if (@(helperq).doubleValue <= 141) {}
                make.trailing.mas_equalTo(gamaView);
            NSDictionary * fetchH = @{@"reproduction":@(7426)};
                make.height.mas_equalTo(thirdAccountSDKTextFiledView);

                make.top.mas_equalTo(thirdAccountSDKTextFiledView.mas_bottom).mas_offset(VH(15));
                
            }];
            
            hasBind_accountSDKTextFiledView.inputUITextField.text = terms.loginId;
            
        }else{
            
            accountSDKTextFiledView = [[CHMXTTServiceTermsView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Account)];
            NSArray * register_f2P = @[@(31), @(931)];
             if (register_f2P.count > 15) {}
            accountSDKTextFiledView.moreAccountBtn.hidden = YES;
            double receiptd = 7004.0;
             for(int receiptd_idx = 98; receiptd_idx < @(receiptd).intValue; receiptd_idx -= 9) { break; } 
            accountSDKTextFiledView.layer.borderColor = ColorHex(wwwww_tag_wwwww__CC_606060).CGColor;
            NSString * getsdka = @"averse";
            accountSDKTextFiledView.inputUITextField.textColor = UIColor.blackColor;
            NSInteger frameworkM = 9086;
             if (@(frameworkM).floatValue >= 131) {}
            accountSDKTextFiledView.lableIconImageView.image = [UIImage res_imageNamed_MMMethodMMM:mw_smail_icon2];
            NSArray * firebaseY = [NSArray arrayWithObjects:@(157), @(488), @(605), nil];
             if (firebaseY.count > 43) {}
            [main_uView addSubview:accountSDKTextFiledView];
            
            [accountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
                
                make.leading.mas_equalTo(gamaView);
            double loginJ = 1661.0;
             while (@(loginJ).integerValue > 131) { break; }
                make.trailing.mas_equalTo(gamaView);
            float rateL = 9808.0;
             while (@(rateL).longValue < 172) { break; }
                make.height.mas_equalTo(VH(40));

                make.top.mas_equalTo(gamaView.mas_bottom).mas_offset(VH(28));
                
            }];
            
            
            
            pwdSDKTextFiledView = [[CHMXTTServiceTermsView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Password)];
            NSDictionary * creatD = @{@"garrison":@(668), @"unjust":@(698), @"pollution":@(719)};
             while (creatD.count > 117) { break; }
            pwdSDKTextFiledView.lableIconImageView.image = [UIImage res_imageNamed_MMMethodMMM:mw_passowrd_icon2];
            NSDictionary * dicz = @{@"arms":@(534), @"apophasis":@(402)};
            pwdSDKTextFiledView.layer.borderColor = ColorHex(wwwww_tag_wwwww__CC_606060).CGColor;
            double responsem = 4221.0;
             if (@(responsem).longValue > 104) {}
            pwdSDKTextFiledView.inputUITextField.textColor = UIColor.blackColor;
            double productp = 2505.0;
             if (@(productp).integerValue < 62) {}
            [main_uView addSubview:pwdSDKTextFiledView];
            
            [pwdSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
                make.leading.mas_equalTo(gamaView);
            NSString * btnm = @"exception";
             if ([btnm isEqualToString:@"z"]) {}
                make.trailing.mas_equalTo(gamaView);
            NSString * modeld = @"unthreatening";
                make.height.mas_equalTo(accountSDKTextFiledView);

                make.top.mas_equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(VH(15));
                
            }];
            
            UILabel *drawLabel = [CHMXTTLoginChange initLabelWithText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_bind_account_tips) fontSize_MMMethodMMM:FS(10) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0]];
            NSDictionary * transactionsq = @{@"procure":@(405), @"frequency":@(885)};
             if (transactionsq[@"Y"]) {}
            drawLabel.numberOfLines = 0;
            NSArray * controllerx = @[@"register", @"tourist"];
             if (controllerx.count > 116) {}
            [main_uView addSubview:drawLabel];
            
            [drawLabel mas_makeConstraints:^(MASConstraintMaker *make) {
                make.leading.mas_equalTo(pwdSDKTextFiledView);
            NSString * arraye = @"pitcher";
             while (arraye.length > 65) { break; }
                make.trailing.mas_equalTo(pwdSDKTextFiledView);
            NSString * toast3 = @"qualitative";
                make.top.equalTo(pwdSDKTextFiledView.mas_bottom).mas_offset(VH(6));
                
            }];
            
        }
        
        
        UIButton *lableBtn = [CHMXTTLoginChange initBtnWithTitleText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_confire) fontSize_MMMethodMMM:FS(17) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kOkActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        
        [lableBtn.layer setCornerRadius:VH(20)];
            NSInteger hourj = 3465;
             while (@(hourj).doubleValue < 101) { break; }
        lableBtn.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor];
            Boolean iinit_ktV = YES;
        [main_uView addSubview:lableBtn];
        
        [lableBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.bottom.equalTo(main_uView).mas_offset(VH(-25));
            NSDictionary * eventq = @{@"5":@"5", @"z":@"p"};
            make.leading.trailing.mas_equalTo(gamaView);
            NSString * findB = @"farewell";
             while (findB.length > 90) { break; }
            make.height.mas_equalTo(VH(40));
        }];
        
      
        CAGradientLayer *confd = [CHMXTTInfo createGradientLayerWithRadius_MMMethodMMM:VH(20)];
            NSDictionary * mobileH = [NSDictionary dictionaryWithObjectsAndKeys:@"vim",@(939), @"bogus",@(268), @"prolixity",@(499), nil];
        [lableBtn.layer addSublayer:confd];
        [self addDrawRectBolck:^(NSString *msg, NSInteger m, NSDictionary *dic) {
            confd.frame = lableBtn.bounds;
            NSDictionary * tranD = [NSDictionary dictionaryWithObjectsAndKeys:@"V",@"q", @"E",@"s", @"g",@"h", nil];
             if (tranD[@"G"]) {}
        }];

    }
    return self;
}

-(NSInteger)bufferDispatchTrailingLanguages:(NSString *)removeNews bundle:(NSArray *)bundle footArac:(NSDictionary *)footArac {
     long containRegister_cx = 1034;
    NSInteger shoe = 0;
    containRegister_cx *= 37;
    shoe /= MAX(containRegister_cx, 1);
         int temp_i_70 = (int)containRegister_cx;
     int x_68 = 1;
     int o_69 = 1;
     if (temp_i_70 > o_69) {
         temp_i_70 = o_69;
     }
     while (x_68 <= temp_i_70) {
         x_68 += 1;
          temp_i_70 -= x_68;
         break;
     }

    return shoe;

}







-(void)makeAccountFiledViewStatus_MMMethodMMM:(AccountModel *)mAccountModel accountView_MMMethodMMM:(CHMXTTServiceTermsView *)accountFiledView pwdView_MMMethodMMM:(CHMXTTServiceTermsView *)pwdFiledView{

    
    
    
    NSString *helperz = wwwww_tag_wwwww_text_has_bind_tips_mw.localx;
            NSString * popupY = @"farfetched";

         {
NSInteger devote = [self bufferDispatchTrailingLanguages:@"fist" bundle:@[@(483), @(759), @(371)] footArac:[NSDictionary dictionaryWithObjectsAndKeys:@"O",@"o", @"M",@"w", nil]];

     int tmp_a_3 = (int)devote;
     int s_99 = 1;
     int b_89 = 1;
     if (tmp_a_3 > b_89) {
         tmp_a_3 = b_89;
     }
     while (s_99 < tmp_a_3) {
         s_99 += 1;
     int e_52 = s_99;
          int f_19 = 1;
     int b_51 = 1;
     if (e_52 > b_51) {
         e_52 = b_51;
     }
     while (f_19 <= e_52) {
         f_19 += 1;
          e_52 /= f_19;
              break;
     }
         break;
     }
      if (devote <= 45) {
             NSLog(@"%ld",devote);
      }


}
             if (popupY.length > 87) {}
    NSString *began = wwwww_tag_wwwww_text_has_bind_tips_mw.localx;
            double pay_cz4 = 6166.0;
             while (@(pay_cz4).doubleValue >= 121) { break; }
    NSString *time_yo = mw_smail_icon2;
            NSDictionary * decryptP = [NSDictionary dictionaryWithObjectsAndKeys:@"teacup",@(5761), nil];
             if (decryptP.count > 136) {}
    NSString *btn = GetString(wwwww_tag_wwwww_text_free_register);
    
    BOOL localxp = YES;
    
    if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_SELF]) {
        
        helperz = mAccountModel.account;
            NSArray * function2 = @[@(592), @(535), @(302)];
             if ([function2 containsObject:@"F"]) {}
        time_yo = mw_smail_icon2;
            double with_4R = 7956.0;
             if (@(with_4R).intValue < 86) {}
        btn = mAccountModel.password;
            NSString * elegateX = @"push";
             if (elegateX.length > 15) {}
        localxp = YES;
            NSDictionary * alertj = @{@"surrealism":@(657), @"royalty":@(517)};
             if (alertj.count > 66) {}
        began = wwwww_tag_wwwww_text_has_bind_tips_mw.localx;
        
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_FB]){
        time_yo = fb_smail_icon;
            int logout9 = 6353;
             while (@(logout9).longValue <= 71) { break; }
        localxp = NO;
            NSInteger responcev = 9135;
             if (@(responcev).doubleValue <= 158) {}
        began = wwwww_tag_wwwww_text_has_bind_tips_fb.localx;
        
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_GOOGLE]){
        time_yo = google_smail_icon;
            NSArray * keychainq = @[@(221), @(322)];
             if ([keychainq containsObject:@"Z"]) {}
        localxp = NO;
            float observer5 = 434.0;
             while (@(observer5).longLongValue < 61) { break; }
        began = wwwww_tag_wwwww_text_has_bind_tips_google.localx;
        
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_GUEST]){
        time_yo = guest_smail_icon;
            NSDictionary * codeso = @{@"disinclined":@(653), @"discreet":@(174), @"factitious":@(829)};
             if (codeso.count > 5) {}
        localxp = NO;
            NSString * role3 = @"ferocious";
             if ([role3 isEqualToString:@"U"]) {}
        began = wwwww_tag_wwwww_text_has_bind_tips_guest.localx;
        
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_APPLE]){
        time_yo = apple_smail_icon;
            NSArray * itemx = [NSArray arrayWithObjects:@"wool", nil];
             while (itemx.count > 91) { break; }
        localxp = NO;
            double gamaP = 2297.0;
             while (@(gamaP).longLongValue >= 94) { break; }
        began = wwwww_tag_wwwww_text_has_bind_tips_apple.localx;
        
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_LINE]){
        time_yo = line_smail_icon;
            double clickb = 6082.0;
             if (@(clickb).doubleValue > 18) {}
        localxp = NO;
            int configd = 7137;
             if (@(configd).longLongValue < 36) {}
        began = wwwww_tag_wwwww_text_has_bind_tips_line.localx;
    }
    
    accountFiledView.lableIconImageView.image = [UIImage res_imageNamed_MMMethodMMM:time_yo];
    accountFiledView.inputUITextField.text = began;
    
    if (pwdFiledView) {
       
        if (localxp) {
            pwdFiledView.hidden = NO;
            int esclipem = 3716;
             while (@(esclipem).floatValue <= 64) { break; }
            pwdFiledView.inputUITextField.text = btn;
            
            [pwdFiledView mas_updateConstraints:^(MASConstraintMaker *make) {
                
                make.height.mas_equalTo(VH(40));
            NSDictionary * dismissh = [NSDictionary dictionaryWithObjectsAndKeys:@"violent",@{@"pervious":@(3684)}, nil];
             if (dismissh[@"q"]) {}
            }];
            
            
        }else{
            pwdFiledView.inputUITextField.text = @"";
            pwdFiledView.hidden = YES;
            [pwdFiledView mas_updateConstraints:^(MASConstraintMaker *make) {
                make.height.mas_equalTo(1);
            NSString * j_hide9 = @"thousand";
            }];
            
            
        }
        [pwdFiledView layoutIfNeeded];
        
    }
}


- (void)registerViewBtnAction_MMMethodMMM:(UIButton *)sender
{

   self.is_Debug = YES;

   self.filedIndicator_list = @[@(322), @(61), @(981)];

   self.tranMargin = 6983.0;

   self.hour_index = 3510;

    switch (sender.tag) {
            
        case TAG_CLOSE:
            [self removeFromGameView];
        {
            NSString * createO = @"refine";
             while (createO.length > 107) { break; }
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


- (void)initData_MMMethodMMM
{
    [super initData_MMMethodMMM];
            NSArray * tokeng = @[@(696), @(668), @(347)];
             if ([tokeng containsObject:@"k"]) {}
    AccountModel *notification = (AccountModel *)self.fromPageParam;
            int presentationL = 414;
             if (@(presentationL).floatValue <= 189) {}
    [CHMXTTNewsView makeAccountFiledViewStatus_MMMethodMMM:notification accountView_MMMethodMMM:thirdAccountSDKTextFiledView pwdView_MMMethodMMM:nil];
    thirdAccountSDKTextFiledView.inputUITextField.enabled = NO;
            NSDictionary * localxV = @{@"overextend":@(8001)};
             if (localxV.count > 82) {}
}

@end
