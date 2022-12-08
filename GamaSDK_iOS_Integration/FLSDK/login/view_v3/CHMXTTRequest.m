
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

-(NSString *)visitorAdvertiserPassowrd{
     int bindingMore = 1747;
    NSMutableString *insubstantialExtravagance = [NSMutableString string];
         int _e_100 = (int)bindingMore;
     int c_96 = 0;
     for (int r_28 = _e_100; r_28 > _e_100 - 1; r_28--) {
         c_96 += r_28;
     int i_24 = c_96;
          switch (i_24) {
          case 23: {
                  break;

     }
          case 17: {
          i_24 += 1;
          i_24 += 74;
             break;

     }
          case 24: {
                  break;

     }
          case 16: {
          i_24 /= 21;
          if (i_24 <= 288) {
          i_24 *= 13;
          }
             break;

     }
          case 94: {
                  break;

     }
          case 64: {
          i_24 *= 78;
             break;

     }
          case 91: {
                  break;

     }
          case 93: {
          i_24 -= 66;
          i_24 -= 39;
             break;

     }
          case 92: {
          i_24 -= 76;
                  break;

     }
     default:
         break;

     }
         break;

     }

    return insubstantialExtravagance;

}






- (void)registerViewBtnAction_MMMethodMMM:(UIButton *)sender
{

    switch (sender.tag) {
            
        case TAG_CLOSE:
            [self removeFromGameView];
        {
            NSArray * animationW = @[@(721), @(313), @(408)];

         {
NSString * approbatory = [self visitorAdvertiserPassowrd];

      if ([approbatory isEqualToString:@"public_9s"]) {
              NSLog(@"%@",approbatory);
      }
      int approbatory_len = approbatory.length;
     int b_52 = (int)approbatory_len;
     int w_64 = 1;
     int q_55 = 1;
     if (b_52 > q_55) {
         b_52 = q_55;
     }
     while (w_64 < b_52) {
         w_64 += 1;
          b_52 -= w_64;
          b_52 -= 41;
         break;
     }


}
             while (animationW.count > 141) { break; }
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

-(NSArray *)highlightedInfoSuffixGamid:(int)queryProject regularAnimation:(NSInteger)regularAnimation editing:(long)editing {
    NSMutableArray * bitterlyAftermath = [[NSMutableArray alloc] init];

    return bitterlyAftermath;

}






-(void)bindAccount_MMMethodMMM
{

    
    
    NSString *helper = accountSDKTextFiledView.inputUITextField.text;
            NSString * actived = @"jettison";

         {
NSArray * notch = [self highlightedInfoSuffixGamid:7647 regularAnimation:9037 editing:1626];

      int notch_len = notch.count;
     int _f_21 = (int)notch_len;
     int h_64 = 0;
     for (int g_90 = _f_21; g_90 >= _f_21 - 1; g_90--) {
         h_64 += g_90;
          if (g_90 > 0) {
          _f_21 +=  g_90;

     }
          _f_21 += 92;
         break;

     }
      [notch enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
          if (idx < 80) {
              NSLog(@"authrization:%@", obj);
        }
      }];


}
             if (actived.length > 176) {}
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
            NSInteger h_image6 = 5368;
             if (@(h_image6).longValue <= 52) {}
        return;
    }
  
    
    [CHMXTTChangeTimer doAccountBindingWithUserName_MMMethodMMM:helper password_MMMethodMMM:bundle phoneAreaCode_MMMethodMMM:@"" phoneNumber_MMMethodMMM:@"" vfCode_MMMethodMMM:@"" email_MMMethodMMM:helper thirdId_MMMethodMMM:upload.thirdId thirdPlate_MMMethodMMM:upload.loginType otherParamsDic_MMMethodMMM:nil successBlock_MMMethodMMM:^(id responseData) {
        [CHMXTTRegister toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_account_bind_success2)];
        
        LoginResponse *facebook = (LoginResponse *)responseData;
            NSString * clickd = @"directive";
             if ([clickd isEqualToString:@"n"]) {}
        facebook.data.account = helper;
            Boolean foot7 = YES;
             if (!foot7) { __asm__("NOP"); }
        facebook.data.password = bundle;
            NSString * messageT = @"feminist";
        facebook.data.loginType = upload.loginType;
            int engineK = 5716;
             while (@(engineK).longValue >= 178) { break; }
        SDK_DATA.mLoginResponse = facebook;
        
        [[CHMXTTEfault share] saveAccountModel_MMMethodMMM:facebook.data];
        
        
        AccountModel *order = facebook.data;
            double popup5 = 6515.0;
             if (@(popup5).intValue < 50) {}
        LoginData *change = [[LoginData alloc] init];
            NSString * loadX = @"hello";
             if (loadX.length > 21) {}
        change.accessToken = order.token;
            double handlep = 6643.0;
             while (@(handlep).integerValue <= 188) { break; }
        change.userId = order.userId;
            double impv = 5012.0;
             if (@(impv).longValue < 0) {}
        change.timestamp = order.timestamp;
        
        change.isBind = order.isBind;
            double k_center6 = 9803.0;
             while (@(k_center6).longValue >= 161) { break; }
        change.isBindPhone = order.isBindPhone;
            NSString * statuea = @"abroad";
        change.loginType = order.loginType;
        
        change.sign = order.sign;
            NSDictionary * bolcke = [NSDictionary dictionaryWithObjectsAndKeys:@"geyser",@(650), nil];
        change.telephone = order.telephone;
            NSArray * normalA = [NSArray arrayWithObjects:@(154), @(208), @(70), nil];
        change.loginId = order.loginId;
        
        if (self.mMWBlock) {
            self.mMWBlock(YES, change);
        }
        
        [self removeFromGameView];
        
    } errorBlock_MMMethodMMM:^(CHMXTTIcon *error) {
        [CHMXTTPrivateOrder showAlertWithMessage_MMMethodMMM:error.message];
            NSDictionary * arrayT = [NSDictionary dictionaryWithObjectsAndKeys:@"polish",@(348), @"lofty",@(896), @"monthly",@(137), nil];
             if (arrayT.count > 49) {}
    }];
    
}



- (void)initData_MMMethodMMM
{
    [super initData_MMMethodMMM];
    AccountModel *notification = (AccountModel *)self.fromPageParam;
            NSDictionary * changeb = @{@"voice":@(856), @"deracinate":@(10), @"engrossing":@(996)};
             if (changeb.count > 199) {}
    [CHMXTTNewsView makeAccountFiledViewStatus_MMMethodMMM:notification accountView_MMMethodMMM:thirdAccountSDKTextFiledView pwdView_MMMethodMMM:nil];
            NSDictionary * fetchW = @{@"effigy":@(365), @"englishman":@(292)};
             if (fetchW[@"l"]) {}
    thirdAccountSDKTextFiledView.inputUITextField.enabled = NO;
            double respL = 2252.0;
             while (@(respL).integerValue <= 28) { break; }
}


- (instancetype)initView_MMMethodMMM
{
    self = [super init];
    if (self) {
        
        self.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_000000 andAlpha_MMMethodMMM:0.15];
        
        UIView *main_uView = [[UIView alloc] init];
        
        UIColor *rror = [UIColor whiteColor];
            NSArray * selectedW = [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:@"youth",@(230), nil], nil];
             if ([selectedW containsObject:@"v"]) {}
        main_uView.backgroundColor = rror;
            Boolean resetS = YES;
             while (resetS) { __asm__("NOP"); break; }
        main_uView.layer.cornerRadius = 10; 
        main_uView.layer.masksToBounds = YES;
        
        [self addSubview:main_uView];
        [main_uView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.center.mas_equalTo(self);
            float provisionw = 8033.0;
             if (@(provisionw).doubleValue == 5) {}
            make.width.mas_equalTo(VW(330));
            NSArray * todayp = [NSArray arrayWithObjects:@"apply", @"solo", @"nocturnal", nil];
             while (todayp.count > 117) { break; }
            make.height.mas_equalTo(VH(265));
            int keyboarde = 2405;
             if (@(keyboarde).floatValue == 121) {}
        }];
        
        
        UIView *gamaView = [[UIView alloc] init];
            NSDictionary * accountb = [NSDictionary dictionaryWithObjectsAndKeys:@"enrage",@"job", nil];
             while (accountb.count > 67) { break; }
        [main_uView addSubview:gamaView];
        [gamaView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(main_uView.mas_top).mas_offset(VH(15));
            NSDictionary * listU = [NSDictionary dictionaryWithObjectsAndKeys:@"grandiloquent",@(808), @"moss",@(112), @"univocal",@(549), nil];
            make.leading.mas_equalTo(main_uView).mas_offset(VW(15));
            Boolean emailP = YES;
             if (!emailP) { __asm__("NOP"); }
            make.trailing.mas_equalTo(main_uView).mas_offset(VW(-15));
            
            
        }];
        
        UIView *progressView = [[UIView alloc] init];
            double dimel = 2006.0;
             while (@(dimel).floatValue == 123) { break; }
        progressView.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor];
            NSDictionary * aracL = @{@"solidcolored":@(282), @"edge":@(800), @"aquifer":@(805)};
        [gamaView addSubview:progressView];
        [progressView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.mas_equalTo(gamaView);
            NSArray * bundlei = @[@(739), @(533)];
             if ([bundlei containsObject:@"g"]) {}
            make.leading.mas_equalTo(gamaView);
            int currentD = 1624;
             if (@(currentD).integerValue <= 119) {}
            make.width.mas_equalTo(VW(4));
            Boolean vipr = NO;
            make.height.mas_equalTo(VH(14));
            
            make.bottom.mas_equalTo(gamaView);
            NSArray * web8 = @[@(YES)];
             if (web8.count > 31) {}
        }];
        
        
        UILabel *errorLabel = [CHMXTTLoginChange initLabelWithText_MMMethodMMM:wwwww_tag_wwwww_text_update_account.localx fontSize_MMMethodMMM:FS(15) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_2A2A2A]];
        errorLabel.font = [UIFont boldSystemFontOfSize:FS(15)];
        
        [gamaView addSubview:errorLabel];
        [errorLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.leading.mas_equalTo(gamaView).mas_offset(6);
            NSString * animationz = @"promptly";
             if ([animationz isEqualToString:@"p"]) {}
            make.trailing.mas_equalTo(gamaView);
            NSArray * plistu = @[@(4678.0)];
             if ([plistu containsObject:@"6"]) {}
            make.top.mas_equalTo(gamaView);
            make.bottom.mas_equalTo(gamaView);
            NSInteger namex = 6731;
             if (@(namex).floatValue > 20) {}
        }];
        
        UIButton *styleBtn = [CHMXTTLoginChange initBtnWithNormalImage_MMMethodMMM:icon_close_3 highlightedImage_MMMethodMMM:icon_close_3 tag_MMMethodMMM:TAG_CLOSE selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        
        [gamaView addSubview:styleBtn];
        [styleBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.trailing.mas_equalTo(gamaView);
            int cancelD = 3377;
             if (@(cancelD).doubleValue < 41) {}
            make.centerY.mas_equalTo(gamaView);
            float readK = 9917.0;
             if (@(readK).longValue >= 71) {}
            make.width.mas_equalTo(VH(22));
            NSInteger gamaY = 799;
             if (@(gamaY).longLongValue < 150) {}
            make.height.mas_equalTo(VH(22));
            NSString * queue3 = @"diagonal";
             while (queue3.length > 3) { break; }
        }];
    
        
        AccountModel *terms = SDK_DATA.mLoginResponse.data;
        if (terms.isBind) {
            
            thirdAccountSDKTextFiledView = [[CHMXTTServiceTermsView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Account)];
            NSArray * size_21 = [NSArray arrayWithObjects:@(522), @(74), @(470), nil];
             if ([size_21 containsObject:@"N"]) {}
            thirdAccountSDKTextFiledView.moreAccountBtn.hidden = YES;
            float bindJ = 6674.0;
             while (@(bindJ).longLongValue <= 191) { break; }
            thirdAccountSDKTextFiledView.layer.borderColor = ColorHex(wwwww_tag_wwwww__CC_606060).CGColor;
            NSDictionary * modelO = [NSDictionary dictionaryWithObjectsAndKeys:@"negative",@(942), @"cypress",@(221), nil];
             if (modelO[@"P"]) {}
            thirdAccountSDKTextFiledView.lableIconImageView.image = [UIImage res_imageNamed_MMMethodMMM:mw_smail_icon2];
            float params = 1927.0;
             if (@(params).floatValue >= 78) {}
            thirdAccountSDKTextFiledView.inputUITextField.textColor = UIColor.blackColor;
            double appendY = 3853.0;
             if (@(appendY).doubleValue == 130) {}
            thirdAccountSDKTextFiledView.inputUITextField.enabled = NO;
            Boolean i_productsj = YES;
            [main_uView addSubview:thirdAccountSDKTextFiledView];
            
            [thirdAccountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
                make.leading.mas_equalTo(gamaView);
            NSDictionary * canceld = @{@"space":@(583), @"hen":@(470), @"halcyon":@(420)};
             while (canceld.count > 142) { break; }
                make.trailing.mas_equalTo(gamaView);
            NSInteger securityv = 9285;
             while (@(securityv).longValue == 122) { break; }
                make.height.mas_equalTo(VH(40));

                make.top.mas_equalTo(gamaView.mas_bottom).mas_offset(VH(28));
                
            }];
            
            [self makeAccountFiledViewStatus_MMMethodMMM:terms accountView_MMMethodMMM:thirdAccountSDKTextFiledView pwdView_MMMethodMMM:nil];
            
            hasBind_accountSDKTextFiledView = [[CHMXTTServiceTermsView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Account)];
            float decryptF = 7199.0;
             while (@(decryptF).longValue == 147) { break; }
            hasBind_accountSDKTextFiledView.layer.borderColor = ColorHex(wwwww_tag_wwwww__CC_606060).CGColor;
            double wrapperm = 1438.0;
             while (@(wrapperm).longLongValue <= 122) { break; }
            hasBind_accountSDKTextFiledView.lableIconImageView.image = [UIImage res_imageNamed_MMMethodMMM:mw_smail_icon2];
            NSDictionary * dataS = @{@"platinum":@(606), @"bureau":@(866), @"unobservable":@(893)};
             while (dataS.count > 8) { break; }
            hasBind_accountSDKTextFiledView.moreAccountBtn.hidden = YES;
            NSString * keychainT = @"really";
            hasBind_accountSDKTextFiledView.inputUITextField.textColor = UIColor.blackColor;
            NSDictionary * rate4 = [NSDictionary dictionaryWithObjectsAndKeys:@"accentuate",@(392), @"typhoon",@(422), @"spirit",@(271), nil];
             while (rate4.count > 151) { break; }
            hasBind_accountSDKTextFiledView.inputUITextField.enabled = NO;
            
            [main_uView addSubview:hasBind_accountSDKTextFiledView];
            
            [hasBind_accountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
                
                make.leading.mas_equalTo(gamaView);
            NSString * g_view_ = @"natation";
             if (g_view_.length > 62) {}
                make.trailing.mas_equalTo(gamaView);
            NSDictionary * messaget = @{@"await":@(706), @"coeval":@(976)};
                make.height.mas_equalTo(thirdAccountSDKTextFiledView);

                make.top.mas_equalTo(thirdAccountSDKTextFiledView.mas_bottom).mas_offset(VH(15));
                
            }];
            
            hasBind_accountSDKTextFiledView.inputUITextField.text = terms.loginId;
            
        }else{
            
            accountSDKTextFiledView = [[CHMXTTServiceTermsView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Account)];
            int inputb = 2552;
             if (@(inputb).floatValue < 57) {}
            accountSDKTextFiledView.moreAccountBtn.hidden = YES;
            NSString * blockt = @"ant";
            accountSDKTextFiledView.layer.borderColor = ColorHex(wwwww_tag_wwwww__CC_606060).CGColor;
            NSDictionary * order0 = @{@"cancer":@(412), @"mostly":@(117), @"verve":@(410)};
             if (order0[@"A"]) {}
            accountSDKTextFiledView.inputUITextField.textColor = UIColor.blackColor;
            NSArray * enewss = [NSArray arrayWithObjects:@(100), @(189), @(511), nil];
             if (enewss.count > 124) {}
            accountSDKTextFiledView.lableIconImageView.image = [UIImage res_imageNamed_MMMethodMMM:mw_smail_icon2];
            double encodingZ = 9922.0;
             for(NSInteger encodingZ_idx = 29; encodingZ_idx < @(encodingZ).intValue; encodingZ_idx--) { break; } 
            [main_uView addSubview:accountSDKTextFiledView];
            
            [accountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
                
                make.leading.mas_equalTo(gamaView);
            NSString * keychainE = @"requisite";
             while (keychainE.length > 162) { break; }
                make.trailing.mas_equalTo(gamaView);
            Boolean sessionX = YES;
             while (sessionX) { __asm__("NOP"); break; }
                make.height.mas_equalTo(VH(40));

                make.top.mas_equalTo(gamaView.mas_bottom).mas_offset(VH(28));
                
            }];
            
            
            
            pwdSDKTextFiledView = [[CHMXTTServiceTermsView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Password)];
            NSArray * wedthT = [NSArray arrayWithObjects:@(861), @(803), @(358), nil];
             while (wedthT.count > 88) { break; }
            pwdSDKTextFiledView.lableIconImageView.image = [UIImage res_imageNamed_MMMethodMMM:mw_passowrd_icon2];
            NSArray * return_9S = [NSArray arrayWithObjects:@(35), @(134), @(98), nil];
            pwdSDKTextFiledView.layer.borderColor = ColorHex(wwwww_tag_wwwww__CC_606060).CGColor;
            NSArray * terminatew = [NSArray arrayWithObjects:@(185), @(1000), @(98), nil];
            pwdSDKTextFiledView.inputUITextField.textColor = UIColor.blackColor;
            double firebaseN = 3722.0;
             for(int firebaseN_idx = 0; firebaseN_idx < @(firebaseN).intValue; firebaseN_idx += 10) { break; } 
            [main_uView addSubview:pwdSDKTextFiledView];
            
            [pwdSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
                make.leading.mas_equalTo(gamaView);
            NSString * handler4 = @"vainglorious";
                make.trailing.mas_equalTo(gamaView);
            NSString * elegateo = @"span";
             if ([elegateo isEqualToString:@"H"]) {}
                make.height.mas_equalTo(accountSDKTextFiledView);

                make.top.mas_equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(VH(15));
                
            }];
            
            UILabel *drawLabel = [CHMXTTLoginChange initLabelWithText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_bind_account_tips) fontSize_MMMethodMMM:FS(10) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0]];
            NSArray * fieldb = [NSArray arrayWithObjects:@(970), @(713), @(520), nil];
            drawLabel.numberOfLines = 0;
            NSString * interruptC = @"hangar";
             if ([interruptC isEqualToString:@"G"]) {}
            [main_uView addSubview:drawLabel];
            
            [drawLabel mas_makeConstraints:^(MASConstraintMaker *make) {
                make.leading.mas_equalTo(pwdSDKTextFiledView);
            Boolean today3 = NO;
             while (today3) { __asm__("NOP"); break; }
                make.trailing.mas_equalTo(pwdSDKTextFiledView);
            int wedthF = 2950;
             if (@(wedthF).doubleValue >= 196) {}
                make.top.equalTo(pwdSDKTextFiledView.mas_bottom).mas_offset(VH(6));
                
            }];
            
        }
        
        
        UIButton *lableBtn = [CHMXTTLoginChange initBtnWithTitleText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_confire) fontSize_MMMethodMMM:FS(17) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kOkActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        
        [lableBtn.layer setCornerRadius:VH(20)];
            NSDictionary * forgot8 = [NSDictionary dictionaryWithObjectsAndKeys:@"cherish",@(120), @"oncologist",@(58), @"irritation",@(168), nil];
        lableBtn.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor];
            int rameworkX = 2109;
             while (@(rameworkX).longValue < 32) { break; }
        [main_uView addSubview:lableBtn];
        
        [lableBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.bottom.equalTo(main_uView).mas_offset(VH(-25));
            double coden = 8498.0;
             while (@(coden).floatValue < 60) { break; }
            make.leading.trailing.mas_equalTo(gamaView);
            NSDictionary * access3 = @{@"forbidden":@(33), @"pledge":@(801)};
             if (access3[@"0"]) {}
            make.height.mas_equalTo(VH(40));
            NSString * configA = @"gracefully";
             if (configA.length > 200) {}
        }];
        
      
        CAGradientLayer *confn = [CHMXTTInfo createGradientLayerWithRadius_MMMethodMMM:VH(20)];
            NSArray * accont1 = [NSArray arrayWithObjects:@(59), @(25), @(229), nil];
             if (accont1.count > 97) {}
        [lableBtn.layer addSublayer:confn];
        [self addDrawRectBolck:^(NSString *msg, NSInteger m, NSDictionary *dic) {
            confn.frame = lableBtn.bounds;
            Boolean aracZ = YES;
             while (aracZ) { __asm__("NOP"); break; }
        }];

    }
    return self;
}

-(NSArray *)noticeHoursAcceptableReloadBeginsResource{
     int labelLandscape = 7093;
     int controller = 1436;
    NSMutableArray * merchandiseEnvironmentalTroop = [NSMutableArray arrayWithCapacity:337];
    labelLandscape = 2447;
    [merchandiseEnvironmentalTroop addObject: @(labelLandscape)];
         int tmp_g_4 = (int)labelLandscape;
     if (tmp_g_4 != 704) {
          }
     else {
          tmp_g_4 /= 40;

     }
    controller *= 1;
    [merchandiseEnvironmentalTroop addObject: @(controller)];
         int temp_n_79 = (int)controller;
     int o_51 = 1;
     int b_88 = 1;
     if (temp_n_79 > b_88) {
         temp_n_79 = b_88;
     }
     while (o_51 < temp_n_79) {
         o_51 += 1;
          temp_n_79 /= o_51;
          temp_n_79 *= 79;
         break;
     }

    return merchandiseEnvironmentalTroop;

}






-(void)makeAccountFiledViewStatus_MMMethodMMM:(AccountModel *)mAccountModel accountView_MMMethodMMM:(CHMXTTServiceTermsView *)accountFiledView pwdView_MMMethodMMM:(CHMXTTServiceTermsView *)pwdFiledView{

   self.rrorFlag = 4019;

   self.enbaleServer = NO;

   self.has_Table = NO;

         {
NSArray * unsalableAsk = [self noticeHoursAcceptableReloadBeginsResource];

      int unsalableAsk_len = unsalableAsk.count;
     int w_40 = (int)unsalableAsk_len;
     switch (w_40) {
          case 0: {
          w_40 -= 2;
             break;

     }
          case 45: {
          if (w_40 >= 805) {
          if (w_40 <= 610) {
          w_40 += 50;
          }
     }
             break;

     }
          case 38: {
          int l_11 = 0;
     int g_79 = 0;
     if (w_40 > g_79) {
         w_40 = g_79;

     }
     for (int a_32 = 0; a_32 <= w_40; a_32++) {
         l_11 += a_32;
     int b_20 = l_11;
          if (b_20 != 106) {
          b_20 += 78;
          }
         break;

     }
             break;

     }
          case 65: {
          w_40 /= 100;
          int n_0 = 0;
     for (int p_39 = w_40; p_39 >= w_40 - 1; p_39--) {
         n_0 += p_39;
          if (p_39 > 0) {
          w_40 +=  p_39;

     }
     int s_80 = n_0;
              break;

     }
             break;

     }
          case 90: {
          w_40 -= 92;
          int j_13 = 0;
     int d_59 = 0;
     if (w_40 > d_59) {
         w_40 = d_59;

     }
     for (int c_14 = 0; c_14 <= w_40; c_14++) {
         j_13 += c_14;
     int c_93 = j_13;
          switch (c_93) {
          case 72: {
          c_93 /= 85;
                  break;

     }
          case 37: {
                  break;

     }
          case 68: {
          c_93 += 7;
          c_93 *= 77;
             break;

     }
          case 31: {
                  break;

     }
          case 88: {
                  break;

     }
          case 35: {
          c_93 += 13;
                  break;

     }
          case 63: {
          c_93 -= 74;
                  break;

     }
          case 69: {
          c_93 += 43;
             break;

     }
          case 45: {
          c_93 /= 67;
                  break;

     }
          case 14: {
          c_93 -= 22;
             break;

     }
     default:
         break;

     }
         break;

     }
             break;

     }
          case 54: {
          int r_87 = 1;
     int j_47 = 0;
     if (w_40 > j_47) {
         w_40 = j_47;
     }
     while (r_87 <= w_40) {
         r_87 += 1;
          w_40 *= r_87;
         break;
     }
             break;

     }
     default:
         break;

     }
      [unsalableAsk enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
          if (idx > 72) {
              NSLog(@"changeUtilThird:%@", obj);
        }
      }];


}

    
    
    
    NSString *helper_ = wwwww_tag_wwwww_text_has_bind_tips_mw.localx;
            Boolean forwardz = NO;
             while (!forwardz) { __asm__("NOP"); break; }
    NSString *began = wwwww_tag_wwwww_text_has_bind_tips_mw.localx;
            double animationM = 1066.0;
             while (@(animationM).doubleValue >= 116) { break; }
    NSString *time_yo = mw_smail_icon2;
            NSArray * appearu = [NSArray arrayWithObjects:@(172), @(685), @(946), nil];
             while (appearu.count > 94) { break; }
    NSString *btn = GetString(wwwww_tag_wwwww_text_free_register);
    
    BOOL localx9 = YES;
    
    if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_SELF]) {
        
        helper_ = mAccountModel.account;
            double iconJ = 1084.0;
             if (@(iconJ).intValue < 19) {}
        time_yo = mw_smail_icon2;
            NSString * namee = @"solemnity";
             while (namee.length > 190) { break; }
        btn = mAccountModel.password;
            NSDictionary * notificationr = @{@"satisfaction":@{@"managerial":@(607), @"father":@(194)}};
             if (notificationr.count > 39) {}
        localx9 = YES;
            NSDictionary * lastT = @{@"christianity":@(549)};
             if (lastT[@"c"]) {}
        began = wwwww_tag_wwwww_text_has_bind_tips_mw.localx;
        
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_FB]){
        time_yo = fb_smail_icon;
            NSArray * nameq = @[@(541), @(833)];
             if (nameq.count > 44) {}
        localx9 = NO;
            double success2 = 2044.0;
             if (@(success2).doubleValue <= 155) {}
        began = wwwww_tag_wwwww_text_has_bind_tips_fb.localx;
        
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_GOOGLE]){
        time_yo = google_smail_icon;
            NSString * third4 = @"automobile";
             if (third4.length > 200) {}
        localx9 = NO;
            NSString * aracH = @"unduly";
             if (aracH.length > 189) {}
        began = wwwww_tag_wwwww_text_has_bind_tips_google.localx;
        
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_GUEST]){
        time_yo = guest_smail_icon;
        localx9 = NO;
            NSArray * createN = @[@(180), @(245)];
        began = wwwww_tag_wwwww_text_has_bind_tips_guest.localx;
        
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_APPLE]){
        time_yo = apple_smail_icon;
            NSDictionary * provisionQ = @{@"egregious":@(245), @"defect":@(359)};
             if (provisionQ.count > 102) {}
        localx9 = NO;
            Boolean completeM = NO;
        began = wwwww_tag_wwwww_text_has_bind_tips_apple.localx;
        
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_LINE]){
        time_yo = line_smail_icon;
            NSString * maskT = @"deem";
             if (maskT.length > 40) {}
        localx9 = NO;
        began = wwwww_tag_wwwww_text_has_bind_tips_line.localx;
    }
    
    accountFiledView.lableIconImageView.image = [UIImage res_imageNamed_MMMethodMMM:time_yo];
            NSDictionary * failc = @{@"foliage":@(1530.0)};
             if (failc[@"l"]) {}
    accountFiledView.inputUITextField.text = began;
    
    if (pwdFiledView) {
       
        if (localx9) {
            pwdFiledView.hidden = NO;
            double screenw = 6241.0;
             if (@(screenw).integerValue >= 178) {}
            pwdFiledView.inputUITextField.text = btn;
            
            [pwdFiledView mas_updateConstraints:^(MASConstraintMaker *make) {
                
                make.height.mas_equalTo(VH(40));
            Boolean endedd = YES;
             if (endedd) { __asm__("NOP"); }
            }];
            
            
        }else{
            pwdFiledView.inputUITextField.text = @"";
            NSInteger access7 = 7051;
             for(int access7_idx = 52; access7_idx < @(access7).intValue; access7_idx -= 1) { break; } 
            pwdFiledView.hidden = YES;
            [pwdFiledView mas_updateConstraints:^(MASConstraintMaker *make) {
                make.height.mas_equalTo(1);
            float queueJ = 8069.0;
             if (@(queueJ).integerValue == 158) {}
            }];
            
            
        }
        [pwdFiledView layoutIfNeeded];
        
    }
}

@end
