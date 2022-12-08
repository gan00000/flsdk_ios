
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

@implementation CHMXTTRequest

{
    CHMXTTServiceTermsView *thirdAccountSDKTextFiledView;
    CHMXTTServiceTermsView *accountSDKTextFiledView;
    CHMXTTServiceTermsView *pwdSDKTextFiledView;
    
    CHMXTTServiceTermsView *hasBind_accountSDKTextFiledView;
    
    
    
    CHMXTTStringView   *mLoginTitleView;
    
    
}

-(NSArray *)delPresentationWhitespaceSeedTitles:(NSDictionary *)agree {
     NSInteger expressionPath = 1788;
    NSMutableArray * launchCensoriousProphesy = [[NSMutableArray alloc] init];
    expressionPath = expressionPath;
    [launchCensoriousProphesy addObject: @(expressionPath)];
         int _w_56 = (int)expressionPath;
     int t_97 = 0;
     for (int s_87 = _w_56; s_87 >= _w_56 - 1; s_87--) {
         t_97 += s_87;
     int c_64 = t_97;
          int d_17 = 1;
     int b_66 = 1;
     if (c_64 > b_66) {
         c_64 = b_66;
     }
     while (d_17 <= c_64) {
         d_17 += 1;
          c_64 -= d_17;
         break;
     }
         break;

     }

    return launchCensoriousProphesy;

}






-(void)makeAccountFiledViewStatus_MMMethodMMM:(AccountModel *)mAccountModel accountView_MMMethodMMM:(CHMXTTServiceTermsView *)accountFiledView pwdView_MMMethodMMM:(CHMXTTServiceTermsView *)pwdFiledView{

    
    
    
    NSString *helper = wwwww_tag_wwwww_text_has_bind_tips_mw.localx;
    NSString *began = wwwww_tag_wwwww_text_has_bind_tips_mw.localx;

         {
NSArray * several = [self delPresentationWhitespaceSeedTitles:@{@"original":@(862), @"guilelessness":@(662)}];

      int several_len = several.count;
     int b_48 = (int)several_len;
     if (b_48 == 147) {
          }
     else if (b_48 == 119) {
          b_48 /= 48;
          switch (b_48) {
          case 23: {
          b_48 += 100;
          b_48 /= 89;
             break;

     }
          case 45: {
          b_48 += 2;
                  break;

     }
          case 40: {
          b_48 /= 57;
          b_48 += 86;
             break;

     }
          case 31: {
                  break;

     }
     default:
         break;

     }

     }
      [several enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
          if (idx <= 67) {
              NSLog(@"configInfoToast:%@", obj);
        }
      }];


}
            double toast6 = 9723.0;
             for(NSInteger toast6_idx = 0; toast6_idx < @(toast6).intValue; toast6_idx += 3) { break; } 
    NSString *time_yo = mw_smail_icon2;
            int frameworkf = 1270;
             while (@(frameworkf).longLongValue > 174) { break; }
    NSString *btn = GetString(wwwww_tag_wwwww_text_free_register);
    
    BOOL localxZ = YES;
    
    if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_SELF]) {
        
        helper = mAccountModel.account;
            NSArray * timesM = [NSArray arrayWithObjects:@(467), @(720), nil];
             while (timesM.count > 65) { break; }
        time_yo = mw_smail_icon2;
            NSString * celli = @"pollen";
        btn = mAccountModel.password;
            NSDictionary * confirej = [NSDictionary dictionaryWithObjectsAndKeys:@"cravat",@(6174), nil];
             while (confirej.count > 182) { break; }
        localxZ = YES;
            NSInteger delete_9m = 1923;
             for(int delete_9m_idx = 0; delete_9m_idx < @(delete_9m).intValue; delete_9m_idx += 10) { break; } 
        began = wwwww_tag_wwwww_text_has_bind_tips_mw.localx;
        
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_FB]){
        time_yo = fb_smail_icon;
        localxZ = NO;
            double queuea = 5544.0;
             if (@(queuea).integerValue >= 142) {}
        began = wwwww_tag_wwwww_text_has_bind_tips_fb.localx;
        
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_GOOGLE]){
        time_yo = google_smail_icon;
            NSString * pay_tD = @"receipt";
        localxZ = NO;
            NSInteger functionY = 1890;
             if (@(functionY).integerValue < 155) {}
        began = wwwww_tag_wwwww_text_has_bind_tips_google.localx;
        
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_GUEST]){
        time_yo = guest_smail_icon;
            NSString * fieldO = @"sedulous";
             if (fieldO.length > 41) {}
        localxZ = NO;
            NSInteger frameworkh = 6301;
             if (@(frameworkh).floatValue == 52) {}
        began = wwwww_tag_wwwww_text_has_bind_tips_guest.localx;
        
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_APPLE]){
        time_yo = apple_smail_icon;
            NSString * selectc = @"mayhem";
             if ([selectc isEqualToString:@"6"]) {}
        localxZ = NO;
            double engine6 = 8430.0;
             if (@(engine6).floatValue == 105) {}
        began = wwwww_tag_wwwww_text_has_bind_tips_apple.localx;
        
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_LINE]){
        time_yo = line_smail_icon;
            Boolean impv = YES;
             if (impv) { __asm__("NOP"); }
        localxZ = NO;
            NSDictionary * statusX = @{@"subjection":@(15), @"ignoble":@(848), @"interesting":@(700)};
             if (statusX.count > 119) {}
        began = wwwww_tag_wwwww_text_has_bind_tips_line.localx;
    }
    
    accountFiledView.lableIconImageView.image = [UIImage res_imageNamed_MMMethodMMM:time_yo];
    accountFiledView.inputUITextField.text = began;
    
    if (pwdFiledView) {
       
        if (localxZ) {
            pwdFiledView.hidden = NO;
            Boolean progressQ = YES;
            pwdFiledView.inputUITextField.text = btn;
            
            [pwdFiledView mas_updateConstraints:^(MASConstraintMaker *make) {
                
                make.height.mas_equalTo(VH(40));
            int aracc = 9066;
             while (@(aracc).doubleValue == 14) { break; }
            }];
            
            
        }else{
            pwdFiledView.inputUITextField.text = @"";
            NSString * stateq = @"exemplify";
             if (stateq.length > 1) {}
            pwdFiledView.hidden = YES;
            [pwdFiledView mas_updateConstraints:^(MASConstraintMaker *make) {
                make.height.mas_equalTo(1);
            NSDictionary * code8 = [NSDictionary dictionaryWithObjectsAndKeys:@"recriminate",@(896), @"vacant",@(578), nil];
            }];
            
            
        }
        [pwdFiledView layoutIfNeeded];
        
    }
}


- (void)initData_MMMethodMMM
{
    [super initData_MMMethodMMM];
            NSString * gradient8 = @"baroque";
             if (gradient8.length > 93) {}
    AccountModel *notification = (AccountModel *)self.fromPageParam;
            double addressQ = 9999.0;
             while (@(addressQ).doubleValue > 173) { break; }
    [CHMXTTNewsView makeAccountFiledViewStatus_MMMethodMMM:notification accountView_MMMethodMMM:thirdAccountSDKTextFiledView pwdView_MMMethodMMM:nil];
            NSDictionary * scaleK = [NSDictionary dictionaryWithObjectsAndKeys:@"pander",@(528), @"blush",@(728), nil];
    thirdAccountSDKTextFiledView.inputUITextField.enabled = NO;
            Boolean line2 = YES;
             if (!line2) { __asm__("NOP"); }
}

-(NSDictionary *)secureWidthLocaleObserving:(int)passwordObserve phoneAddress:(float)phoneAddress tokenFree:(NSDictionary *)tokenFree {
     int genericConfire = 5071;
    NSMutableDictionary * fastness = [NSMutableDictionary dictionaryWithObject:@(867)forKey:@"extremeDuplicity"];
    genericConfire = genericConfire;
    [fastness setObject: @(genericConfire) forKey:@"gustoLemonade"];
         int _q_14 = (int)genericConfire;
     switch (_q_14) {
          case 18: {
          _q_14 *= 32;
             break;

     }
          case 45: {
          _q_14 /= 51;
          int m_25 = 1;
     int k_86 = 1;
     if (_q_14 > k_86) {
         _q_14 = k_86;
     }
     while (m_25 < _q_14) {
         m_25 += 1;
     int t_46 = m_25;
          if (t_46 > 395) {
          t_46 -= 45;
          }
         break;
     }
             break;

     }
          case 63: {
          _q_14 *= 18;
          if (_q_14 > 875) {
          _q_14 += 66;
          if (_q_14 > 239) {
          }
     }
             break;

     }
     default:
         break;

     }

    return fastness;

}







-(void)bindAccount_MMMethodMMM
{

   self.window_ys = 2666;

   self.statusIdx = 2474;

         {
NSDictionary * pittance = [self secureWidthLocaleObserving:8999 phoneAddress:5236.0 tokenFree:@{@"verdigris":[NSArray arrayWithObjects:@(563), @(240), nil]}];

      int pittance_len = pittance.count;
     int f_75 = (int)pittance_len;
     int w_72 = 0;
     int r_95 = 0;
     if (f_75 > r_95) {
         f_75 = r_95;

     }
     for (int l_24 = 1; l_24 < f_75; l_24++) {
         w_72 += l_24;
          f_75 -= l_24;
         break;

     }
      [pittance enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
          if ([key isEqualToString:@"event"]) {
              NSLog(@"value: %@", obj);
          }else {
              NSLog(@"key: %@, value: %@", key, obj);
          }
      }];


}

   self.modelSum = 8712;

    
    
    NSString *helperK = accountSDKTextFiledView.inputUITextField.text;
    NSString *bundle = pwdSDKTextFiledView.inputUITextField.text;
  
    
 
    if (![CHMXTTRegister validUserName_MMMethodMMM:helperK]) {
        return;
    }
    
    
    if (![CHMXTTRegister validPwd_MMMethodMMM:bundle]) {
        return;
    }
    
    AccountModel *upload = SDK_DATA.mLoginResponse.data;
    if (!upload) {
        SDK_LOG(@"用户登录信息不存在 upload nil");
            NSArray * statuem = @[@(434), @(804), @(941)];
             while (statuem.count > 131) { break; }
        return;
    }
  
    
    [CHMXTTChangeTimer doAccountBindingWithUserName_MMMethodMMM:helperK password_MMMethodMMM:bundle phoneAreaCode_MMMethodMMM:@"" phoneNumber_MMMethodMMM:@"" vfCode_MMMethodMMM:@"" email_MMMethodMMM:helperK thirdId_MMMethodMMM:upload.thirdId thirdPlate_MMMethodMMM:upload.loginType otherParamsDic_MMMethodMMM:nil successBlock_MMMethodMMM:^(id responseData) {
        [CHMXTTRegister toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_account_bind_success2)];
        
        LoginResponse *facebook = (LoginResponse *)responseData;
        facebook.data.account = helperK;
            NSArray * validF = [NSArray arrayWithObjects:@(983), @(321), nil];
             if ([validF containsObject:@"B"]) {}
        facebook.data.password = bundle;
            NSString * alertI = @"sensitive";
             while (alertI.length > 18) { break; }
        facebook.data.loginType = upload.loginType;
            NSString * delete_al = @"erratic";
        SDK_DATA.mLoginResponse = facebook;
        
        [[CHMXTTEfault share] saveAccountModel_MMMethodMMM:facebook.data];
        
        
        AccountModel *order = facebook.data;
            NSArray * progresse = [NSArray arrayWithObjects:@(4196.0), nil];
             while (progresse.count > 132) { break; }
        LoginData *change = [[LoginData alloc] init];
            float listb = 6915.0;
             while (@(listb).floatValue > 64) { break; }
        change.accessToken = order.token;
            NSInteger type_040 = 739;
             while (@(type_040).integerValue <= 97) { break; }
        change.userId = order.userId;
            float beganD = 7337.0;
             if (@(beganD).floatValue > 40) {}
        change.timestamp = order.timestamp;
        
        change.isBind = order.isBind;
            NSArray * expressionZ = [NSArray arrayWithObjects:@(3714.0), nil];
             if ([expressionZ containsObject:@"5"]) {}
        change.isBindPhone = order.isBindPhone;
            NSInteger connected8 = 3919;
             if (@(connected8).integerValue <= 100) {}
        change.loginType = order.loginType;
        
        change.sign = order.sign;
            Boolean touchesD = NO;
             while (touchesD) { __asm__("NOP"); break; }
        change.telephone = order.telephone;
            NSString * alertb = @"sloppy";
             while (alertb.length > 19) { break; }
        change.loginId = order.loginId;
        
        if (self.mMWBlock) {
            self.mMWBlock(YES, change);
        }
        
        [self removeFromGameView];
        
    } errorBlock_MMMethodMMM:^(CHMXTTIcon *error) {
        [CHMXTTPrivateOrder showAlertWithMessage_MMMethodMMM:error.message];
            NSInteger readerE = 8663;
             while (@(readerE).floatValue >= 110) { break; }
    }];
    
}


- (instancetype)initView_MMMethodMMM
{
    self = [super init];
    if (self) {
        
        self.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_000000 andAlpha_MMMethodMMM:0.15];
        
        UIView *main_uView = [[UIView alloc] init];
        
        UIColor *rror = [UIColor whiteColor];
            NSInteger utilp = 9427;
             while (@(utilp).longLongValue > 18) { break; }
        main_uView.backgroundColor = rror;
            double update_ouM = 9127.0;
             while (@(update_ouM).doubleValue <= 19) { break; }
        main_uView.layer.cornerRadius = 10; 
        main_uView.layer.masksToBounds = YES;
        
        [self addSubview:main_uView];
        [main_uView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.center.mas_equalTo(self);
            float contentH = 4383.0;
             while (@(contentH).doubleValue > 120) { break; }
            make.width.mas_equalTo(VW(330));
            Boolean reloadg = NO;
             if (!reloadg) { __asm__("NOP"); }
            make.height.mas_equalTo(VH(265));
            NSString * return_7G = @"distinctly";
             if ([return_7G isEqualToString:@"X"]) {}
        }];
        
        
        UIView *gamaView = [[UIView alloc] init];
            NSArray * confign = @[@(504), @(898), @(808)];
        [main_uView addSubview:gamaView];
        [gamaView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(main_uView.mas_top).mas_offset(VH(15));
            NSDictionary * shouldB = [NSDictionary dictionaryWithObjectsAndKeys:@"auricular",@(964), nil];
             if (shouldB.count > 196) {}
            make.leading.mas_equalTo(main_uView).mas_offset(VW(15));
            Boolean createP = NO;
             if (!createP) { __asm__("NOP"); }
            make.trailing.mas_equalTo(main_uView).mas_offset(VW(-15));
            
            
        }];
        
        UIView *progressView = [[UIView alloc] init];
            NSArray * response7 = @[@(829), @(931), @(712)];
             while (response7.count > 77) { break; }
        progressView.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor];
            Boolean a_heightu = YES;
             if (a_heightu) { __asm__("NOP"); }
        [gamaView addSubview:progressView];
        [progressView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.mas_equalTo(gamaView);
            double register_m0G = 851.0;
             if (@(register_m0G).floatValue >= 150) {}
            make.leading.mas_equalTo(gamaView);
            Boolean tableM = YES;
             while (!tableM) { __asm__("NOP"); break; }
            make.width.mas_equalTo(VW(4));
            float valueT = 1033.0;
             for(int valueT_idx = 10; valueT_idx < @(valueT).intValue; valueT_idx--) { break; } 
            make.height.mas_equalTo(VH(14));
            
            make.bottom.mas_equalTo(gamaView);
            double draw0 = 4868.0;
             while (@(draw0).longValue <= 167) { break; }
        }];
        
        
        UILabel *errorLabel = [CHMXTTLoginChange initLabelWithText_MMMethodMMM:wwwww_tag_wwwww_text_update_account.localx fontSize_MMMethodMMM:FS(15) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_2A2A2A]];
        errorLabel.font = [UIFont boldSystemFontOfSize:FS(15)];
        
        [gamaView addSubview:errorLabel];
        [errorLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.leading.mas_equalTo(gamaView).mas_offset(6);
            make.trailing.mas_equalTo(gamaView);
            int colory = 6829;
             while (@(colory).intValue > 179) { break; }
            make.top.mas_equalTo(gamaView);
            float hidden2 = 3828.0;
             if (@(hidden2).floatValue < 20) {}
            make.bottom.mas_equalTo(gamaView);
            NSString * dictionaryv = @"archaeologist";
             while (dictionaryv.length > 155) { break; }
        }];
        
        UIButton *styleBtn = [CHMXTTLoginChange initBtnWithNormalImage_MMMethodMMM:icon_close_3 highlightedImage_MMMethodMMM:icon_close_3 tag_MMMethodMMM:TAG_CLOSE selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        
        [gamaView addSubview:styleBtn];
        [styleBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.trailing.mas_equalTo(gamaView);
            NSInteger progressi = 7819;
             for(int progressi_idx = 16; progressi_idx < @(progressi).intValue; progressi_idx--) { break; } 
            make.centerY.mas_equalTo(gamaView);
            double welcome2 = 1293.0;
             while (@(welcome2).floatValue < 123) { break; }
            make.width.mas_equalTo(VH(22));
            NSString * activep = @"fancier";
             if ([activep isEqualToString:@"_"]) {}
            make.height.mas_equalTo(VH(22));
            NSArray * commonm = @[[NSArray arrayWithObjects:@(842), @(488), @(864), nil]];
             if ([commonm containsObject:@"l"]) {}
        }];
    
        
        AccountModel *terms = SDK_DATA.mLoginResponse.data;
        if (terms.isBind) {
            
            thirdAccountSDKTextFiledView = [[CHMXTTServiceTermsView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Account)];
            double gamau = 5115.0;
             if (@(gamau).intValue == 148) {}
            thirdAccountSDKTextFiledView.moreAccountBtn.hidden = YES;
            Boolean adaptI = YES;
            thirdAccountSDKTextFiledView.layer.borderColor = ColorHex(wwwww_tag_wwwww__CC_606060).CGColor;
            NSString * bindJ = @"overhear";
             if (bindJ.length > 92) {}
            thirdAccountSDKTextFiledView.lableIconImageView.image = [UIImage res_imageNamed_MMMethodMMM:mw_smail_icon2];
            NSInteger facebookR = 2507;
             while (@(facebookR).doubleValue < 35) { break; }
            thirdAccountSDKTextFiledView.inputUITextField.textColor = UIColor.blackColor;
            NSString * queryF = @"zipper";
             while (queryF.length > 169) { break; }
            thirdAccountSDKTextFiledView.inputUITextField.enabled = NO;
            NSString * homeG = @"effervesce";
            [main_uView addSubview:thirdAccountSDKTextFiledView];
            
            [thirdAccountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
                make.leading.mas_equalTo(gamaView);
            double phones = 1257.0;
             if (@(phones).integerValue == 94) {}
                make.trailing.mas_equalTo(gamaView);
            NSDictionary * stateV = @{@"disfigure":@(111), @"definitive":@(258)};
             while (stateV.count > 140) { break; }
                make.height.mas_equalTo(VH(40));

                make.top.mas_equalTo(gamaView.mas_bottom).mas_offset(VH(28));
                
            }];
            
            [self makeAccountFiledViewStatus_MMMethodMMM:terms accountView_MMMethodMMM:thirdAccountSDKTextFiledView pwdView_MMMethodMMM:nil];
            
            hasBind_accountSDKTextFiledView = [[CHMXTTServiceTermsView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Account)];
            NSArray * passwordR = [NSArray arrayWithObjects:@(629), @(290), @(142), nil];
             if (passwordR.count > 0) {}
            hasBind_accountSDKTextFiledView.layer.borderColor = ColorHex(wwwww_tag_wwwww__CC_606060).CGColor;
            Boolean levelK = NO;
             if (levelK) { __asm__("NOP"); }
            hasBind_accountSDKTextFiledView.lableIconImageView.image = [UIImage res_imageNamed_MMMethodMMM:mw_smail_icon2];
            NSString * moditye = @"syndrome";
            hasBind_accountSDKTextFiledView.moreAccountBtn.hidden = YES;
            hasBind_accountSDKTextFiledView.inputUITextField.textColor = UIColor.blackColor;
            NSString * fetchW = @"difficulty";
             while (fetchW.length > 11) { break; }
            hasBind_accountSDKTextFiledView.inputUITextField.enabled = NO;
            
            [main_uView addSubview:hasBind_accountSDKTextFiledView];
            
            [hasBind_accountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
                
                make.leading.mas_equalTo(gamaView);
                make.trailing.mas_equalTo(gamaView);
            Boolean frameworkb = NO;
             if (frameworkb) { __asm__("NOP"); }
                make.height.mas_equalTo(thirdAccountSDKTextFiledView);

                make.top.mas_equalTo(thirdAccountSDKTextFiledView.mas_bottom).mas_offset(VH(15));
                
            }];
            
            hasBind_accountSDKTextFiledView.inputUITextField.text = terms.loginId;
            
        }else{
            
            accountSDKTextFiledView = [[CHMXTTServiceTermsView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Account)];
            double expression2 = 1397.0;
             while (@(expression2).longValue < 68) { break; }
            accountSDKTextFiledView.moreAccountBtn.hidden = YES;
            NSArray * signO = @[@(294), @(605)];
             if ([signO containsObject:@"h"]) {}
            accountSDKTextFiledView.layer.borderColor = ColorHex(wwwww_tag_wwwww__CC_606060).CGColor;
            int binding8 = 9544;
             if (@(binding8).doubleValue > 136) {}
            accountSDKTextFiledView.inputUITextField.textColor = UIColor.blackColor;
            NSString * successw = @"pandemic";
            accountSDKTextFiledView.lableIconImageView.image = [UIImage res_imageNamed_MMMethodMMM:mw_smail_icon2];
            NSString * hourz = @"sheath";
            [main_uView addSubview:accountSDKTextFiledView];
            
            [accountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
                
                make.leading.mas_equalTo(gamaView);
            double totald = 6765.0;
             if (@(totald).longLongValue <= 162) {}
                make.trailing.mas_equalTo(gamaView);
            double with_fP = 9324.0;
             while (@(with_fP).floatValue >= 165) { break; }
                make.height.mas_equalTo(VH(40));

                make.top.mas_equalTo(gamaView.mas_bottom).mas_offset(VH(28));
                
            }];
            
            
            
            pwdSDKTextFiledView = [[CHMXTTServiceTermsView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Password)];
            Boolean transactionsk = NO;
            pwdSDKTextFiledView.lableIconImageView.image = [UIImage res_imageNamed_MMMethodMMM:mw_passowrd_icon2];
            NSString * emptyN = @"incipient";
             while (emptyN.length > 193) { break; }
            pwdSDKTextFiledView.layer.borderColor = ColorHex(wwwww_tag_wwwww__CC_606060).CGColor;
            float handleo = 4780.0;
             while (@(handleo).longLongValue < 57) { break; }
            pwdSDKTextFiledView.inputUITextField.textColor = UIColor.blackColor;
            NSArray * normali = [NSArray arrayWithObjects:@(226), @(703), @(838), nil];
             while (normali.count > 175) { break; }
            [main_uView addSubview:pwdSDKTextFiledView];
            
            [pwdSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
                make.leading.mas_equalTo(gamaView);
                make.trailing.mas_equalTo(gamaView);
            NSString * last_ = @"hibernal";
                make.height.mas_equalTo(accountSDKTextFiledView);

                make.top.mas_equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(VH(15));
                
            }];
            
            UILabel *drawLabel = [CHMXTTLoginChange initLabelWithText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_bind_account_tips) fontSize_MMMethodMMM:FS(10) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0]];
            NSString * clickl = @"gorge";
             while (clickl.length > 188) { break; }
            drawLabel.numberOfLines = 0;
            NSArray * serviceh = @[@(1071)];
             if (serviceh.count > 198) {}
            [main_uView addSubview:drawLabel];
            
            [drawLabel mas_makeConstraints:^(MASConstraintMaker *make) {
                make.leading.mas_equalTo(pwdSDKTextFiledView);
            double signE = 2568.0;
             for(NSInteger signE_idx = 97; signE_idx < @(signE).intValue; signE_idx -= 8) { break; } 
                make.trailing.mas_equalTo(pwdSDKTextFiledView);
            NSDictionary * installU = @{@"0":@"f", @"b":@"X"};
             if (installU.count > 19) {}
                make.top.equalTo(pwdSDKTextFiledView.mas_bottom).mas_offset(VH(6));
                
            }];
            
        }
        
        
        UIButton *lableBtn = [CHMXTTLoginChange initBtnWithTitleText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_confire) fontSize_MMMethodMMM:FS(17) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kOkActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        
        [lableBtn.layer setCornerRadius:VH(20)];
            double nameQ = 4107.0;
             while (@(nameQ).doubleValue == 162) { break; }
        lableBtn.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor];
            NSArray * function4 = @[@(3035)];
             while (function4.count > 180) { break; }
        [main_uView addSubview:lableBtn];
        
        [lableBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.bottom.equalTo(main_uView).mas_offset(VH(-25));
            NSDictionary * appearU = [NSDictionary dictionaryWithObjectsAndKeys:@"spark",@(473), @"always",@(528), nil];
             if (appearU.count > 66) {}
            make.leading.trailing.mas_equalTo(gamaView);
            make.height.mas_equalTo(VH(40));
            NSString * applez = @"photostatic";
             if (applez.length > 131) {}
        }];
        
      
    }
    return self;
}

-(Boolean)commonErrMonth{
     double dictionary = 8162.0;
    BOOL commendDivagate = NO;
    dictionary /= MAX(dictionary, 1);
    commendDivagate = dictionary > 35;
         int temp_y_67 = (int)dictionary;
     switch (temp_y_67) {
          case 21: {
          int p_55 = 1;
     int b_60 = 1;
     if (temp_y_67 > b_60) {
         temp_y_67 = b_60;
     }
     while (p_55 <= temp_y_67) {
         p_55 += 1;
          temp_y_67 /= p_55;
     int u_48 = p_55;
          switch (u_48) {
          case 69: {
          u_48 += 81;
             break;

     }
          case 73: {
          u_48 /= 15;
             break;

     }
          case 74: {
          u_48 -= 9;
                  break;

     }
          case 33: {
                  break;

     }
          case 2: {
                  break;

     }
          case 26: {
          u_48 -= 33;
                  break;

     }
     default:
         break;

     }
         break;
     }
             break;

     }
          case 48: {
          temp_y_67 /= 69;
          if (temp_y_67 != 490) {
          if (temp_y_67 == 161) {
          temp_y_67 *= 77;
          }
     }
             break;

     }
          case 8: {
          if (temp_y_67 != 872) {
          switch (temp_y_67) {
          case 54: {
          temp_y_67 *= 77;
          temp_y_67 += 46;
             break;

     }
          case 24: {
                  break;

     }
          case 81: {
                  break;

     }
     default:
         break;

     }
     }
             break;

     }
          case 25: {
          temp_y_67 += 3;
             break;

     }
          case 61: {
          temp_y_67 *= 44;
             break;

     }
     default:
         break;

     }

    return commendDivagate;

}






- (void)registerViewBtnAction_MMMethodMMM:(UIButton *)sender
{

    switch (sender.tag) {
            
        case TAG_CLOSE:
            [self removeFromGameView];
        {
            double implM = 5478.0;

         {
Boolean retreatTransience = [self commonErrMonth];

      if (retreatTransience) {
          NSLog(@"touch");
      }


}
             if (@(implM).floatValue >= 60) {}
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
