
#import "FindPasswordView.h"
#import "SdkHeader.h"
#import "SDKTextFiledView.h"
#import "LoginTitleView.h"
#import "PhoneView.h"
#import "LoginButton.h"
#import "SDKRequest.h"
#import "SdkUtil.h"

@implementation FindPasswordView

{
    SDKTextFiledView *accountSDKTextFiledView;
    SDKTextFiledView *newPwdSDKTextFiledView;
    SDKTextFiledView *againPwdSDKTextFiledView;
    
    SDKTextFiledView *vfCodeFiledView;
    
    
    LoginTitleView   *mLoginTitleView;
    UIButton *getVfCodeBtn;
    
    
    int phoneCountdown;
    NSTimer *downTimer;
}

-(int)validAccontTempAppearManagerOrder{
    int underwriterWeigh = 0;

    return underwriterWeigh;

}






-(void)findPassword_MMMethodMMM
{

    NSString *userName = accountSDKTextFiledView.inputUITextField.text;
    
    NSString *areaCode = @"";

         {
int silk = [self validAccontTempAppearManagerOrder];

      if (silk > 58) {
             NSLog(@"%d",silk);
      }
     int p_35 = (int)silk;
     if (p_35 == 213) {
          p_35 /= 41;
          if (p_35 != 864) {
          p_35 += 28;
          p_35 -= 67;
     }
     }


}
            NSArray * dimeN = @[@(243), @(913)];
             if (dimeN.count > 17) {}
    NSString *phoneNum = @"";
            NSString * beganK = @"reconnaissance";
    NSString *vfCode = vfCodeFiledView.inputUITextField.text;
    
    NSString *newPwd = newPwdSDKTextFiledView.inputUITextField.text;
            NSInteger removeu = 4999;
             if (@(removeu).doubleValue <= 32) {}
    NSString *againPwd = againPwdSDKTextFiledView.inputUITextField.text;
    
    if (![SdkUtil validUserName_MMMethodMMM:userName]) {
        return;
    }
    
    if ([StringUtil isEmpty_MMMethodMMM:vfCode]) {
    
        [SdkUtil toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_py_vfcode_empty)];
            NSString * modityM = @"derelict";
        return;
    }
        
    if (![SdkUtil validPwd_MMMethodMMM: newPwd] || ![SdkUtil validPwd_MMMethodMMM: againPwd]) {
       
        return;
    }
    
    if (![newPwd isEqualToString:againPwd]) {
    
        [SdkUtil toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_pwd_not_equel)];
            double welcomeU = 7791.0;
             if (@(welcomeU).intValue <= 59) {}
        return;
    }
    
    NSDictionary *otherParamsDic = nil;
    @try {
        otherParamsDic = @{
            wwwww_tag_wwwww_newPwd        :[SUtil getMD5StrFromString_MMMethodMMM:newPwd],
        };
        
    } @catch (NSException *exception) {
        
    }
    
    kWeakSelf
    [SDKRequest doForgotPasswordWithUserName_MMMethodMMM:userName phoneAreaCode_MMMethodMMM:areaCode phoneNumber_MMMethodMMM:phoneNum email_MMMethodMMM:userName vfCode_MMMethodMMM:vfCode interfaces_MMMethodMMM:wwwww_tag_wwwww_4 otherParamsDic_MMMethodMMM:otherParamsDic successBlock_MMMethodMMM:^(id responseData) {
        
        [SdkUtil toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_account_change_pwd_success)];

        if (weakSelf.delegate) {
            LoginResponse *cc = (LoginResponse *)responseData;
            NSDictionary * transactionsq = [NSDictionary dictionaryWithObjectsAndKeys:@"tenuous",@(823), @"futures",@(564), nil];
            cc.data.account = userName;
            NSInteger sectionsy = 5286;
             if (@(sectionsy).longLongValue >= 100) {}
            cc.data.password = newPwd;
            NSString * urlsH = @"serial";
             if ([urlsH isEqualToString:@"e"]) {}
            cc.data.loginType = LOGIN_TYPE_SELF;
            int fromA = 3130;
             if (@(fromA).floatValue == 103) {}
            [weakSelf.delegate handleLoginOrRegSuccess_MMMethodMMM:cc thirdPlate_MMMethodMMM:LOGIN_TYPE_SELF];
        }
        
    } errorBlock_MMMethodMMM:^(BJError *error) {
        [AlertUtil showAlertWithMessage_MMMethodMMM:error.message];
            NSArray * getsdk9 = [NSArray arrayWithObjects:@"maid", @"drollery", nil];
    }];
    
}



- (void)dealloc
{
   self.inputSpace = 3624.0;

   self.fieldArr = @[@(356), @(441), @(365)];

   self.nameSpace = 9086.0;

    
    if (downTimer) {
        [downTimer invalidate];
        downTimer = nil;
    }
}

-(long)parsePolshipOnly:(double)endedBecome {
    long nervous = 0;

    return nervous;

}






- (void)registerViewBtnAction_MMMethodMMM:(UIButton *)sender
{

         {
long comedienneEsoteric = [self parsePolshipOnly:7324.0];

      NSLog(@"%ld",comedienneEsoteric);
     int h_94 = (int)comedienneEsoteric;
     if (h_94 < 429) {
          switch (h_94) {
          case 84: {
          h_94 /= 96;
                  break;

     }
          case 52: {
          h_94 -= 26;
          h_94 -= 40;
             break;

     }
          case 63: {
          h_94 += 92;
          h_94 *= 21;
             break;

     }
          case 24: {
          h_94 -= 27;
          h_94 += 66;
             break;

     }
          case 28: {
          h_94 -= 48;
          if (h_94 >= 503) {
          h_94 -= 95;
          }
             break;

     }
          case 88: {
          h_94 /= 88;
             break;

     }
          case 32: {
          if (h_94 >= 214) {
          h_94 += 70;
          }
             break;

     }
     default:
         break;

     }
     }


}

    switch (sender.tag) {
            
        case kGetVfCodeActTag:
        {
            SDK_LOG(wwwww_tag_wwwww_kGetVfCodeActTag);
        {
        }
            [self endEditing:YES];
        {
            NSDictionary * gradientU = @{@"pictorial":@(172)};
             if (gradientU.count > 78) {}
        }
            NSString *account = accountSDKTextFiledView.inputUITextField.text;
            if (![SdkUtil validUserName_MMMethodMMM:account]) {
                return;
            }
            [self requestVfCodeByEmail_MMMethodMMM:account];
        }
            break;
            
        case kOkActTag:
        {
            SDK_LOG(wwwww_tag_wwwww_kOkActTag);
        {
            NSArray * responceo = @[@"inelasticity", @"seminal", @"argot"];
             while (responceo.count > 184) { break; }
        }
            [self findPassword_MMMethodMMM];
        }
            
            
            break;
            
            
        default:
            break;
    }
}



- (instancetype)initView_MMMethodMMM
{
    self = [super init];
    if (self) {
        
        
        
        
        
        
        
        
        
        mLoginTitleView = [[LoginTitleView alloc] initViewWithTitle_MMMethodMMM:GetString(wwwww_tag_wwwww_text_forgot_pwd) hander_MMMethodMMM:^(NSInteger) {
            
            [self.delegate goBackBtn_MMMethodMMM:self backCount_MMMethodMMM:1 fromPage_MMMethodMMM:(CURRENT_PAGE_TYPE_FIND_PWD) toPage_MMMethodMMM:(CURRENT_PAGE_TYPE_LOGIN_WITH_REG)];
            NSArray * engine1 = [NSArray arrayWithObjects:@"ascend", @"ideal", nil];
        }];
        
        
        [self addSubview:mLoginTitleView];
        [mLoginTitleView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.mas_top).mas_offset(VH(MARGIN_TOP));
            double lable_ = 8358.0;
             if (@(lable_).intValue < 36) {}
            make.leading.trailing.mas_equalTo(self);
            NSDictionary * indicators = [NSDictionary dictionaryWithObjectsAndKeys:@"dorsal",@(78), nil];
             if (indicators[@"5"]) {}
            make.height.mas_equalTo(VH(40));
            NSArray * implR = @[@(427), @(309)];
             if ([implR containsObject:@"i"]) {}
        }];
        
        
        
        
        accountSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Account)];
        accountSDKTextFiledView.moreAccountBtn.hidden = YES;
            NSString * movedz = @"puzzle";
             while (movedz.length > 27) { break; }
        [self addSubview:accountSDKTextFiledView];
        
        [accountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(self).mas_offset(40);
            NSString * window_n5f = @"bruise";
             while (window_n5f.length > 143) { break; }
            make.trailing.mas_equalTo(self).mas_offset(-40);
            double boardf = 6425.0;
             if (@(boardf).longLongValue <= 26) {}
            make.height.mas_equalTo(VH(40));

            make.top.equalTo(mLoginTitleView.mas_bottom).mas_offset(VH(25));
            
        }];
        
        
        
        getVfCodeBtn = [UIUtil initBtnWithTitleText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_get_vfcode) fontSize_MMMethodMMM:FS(14) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kGetVfCodeActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        
        
        [self addSubview:getVfCodeBtn];
        [getVfCodeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(VH(15));
            NSString * seriesn = @"pillow";
            make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
            NSInteger wrapperE = 9936;
             while (@(wrapperE).doubleValue >= 113) { break; }
            make.width.mas_equalTo(VW(100));
            NSArray * authtication7 = @[@(3471.0)];
             if ([authtication7 containsObject:@"4"]) {}
            make.height.mas_equalTo(accountSDKTextFiledView);
            
        }];
            NSArray * shouldn = @[@(735), @(136), @(117)];
        [getVfCodeBtn setContentHuggingPriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisHorizontal];
        
        
        UIView *lineView1 = [[UIView alloc] init];
            NSString * macaddressv = @"polymer";
             if (macaddressv.length > 31) {}
        lineView1.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0];
            int aracx = 398;
             if (@(aracx).integerValue >= 134) {}
        [self addSubview:lineView1];
        [lineView1 mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.width.mas_equalTo(0.5);
            NSArray * filedq = [NSArray arrayWithObjects:@(677), @(825), @(729), nil];
             if ([filedq containsObject:@"3"]) {}
            make.trailing.mas_equalTo(getVfCodeBtn.mas_leading);
            make.centerY.mas_equalTo(getVfCodeBtn);
            NSString * statusZ = @"agrarian";
            make.height.mas_equalTo(VH(14));

        }];
        
        
        vfCodeFiledView = [[SDKTextFiledView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_VfCode)];
        
        [self addSubview:vfCodeFiledView];
        [vfCodeFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(getVfCodeBtn);
            NSString * httpF = @"impermeability";
             if ([httpF isEqualToString:@"Y"]) {}
            make.bottom.equalTo(getVfCodeBtn);
            
            make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
            NSDictionary * findy = @{@"earring":[NSArray arrayWithObjects:@"crazy", @"provide", nil]};
             if (findy.count > 1) {}
            make.trailing.mas_equalTo(lineView1.mas_leading);
            int localizedW = 9239;
             if (@(localizedW).longValue == 183) {}
        }];
        
        
        UIView *vfCodeFiledView_bottom_line = [[UIView alloc] init];
            Boolean h_hideP = NO;
             while (!h_hideP) { __asm__("NOP"); break; }
        vfCodeFiledView_bottom_line.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0];
            NSArray * animationO = @[@(41), @(307), @(669)];
             if (animationO.count > 189) {}
        [self addSubview:vfCodeFiledView_bottom_line];
        [vfCodeFiledView_bottom_line mas_makeConstraints:^(MASConstraintMaker *make) {
            
            
            make.leading.trailing.mas_equalTo(accountSDKTextFiledView);
            NSDictionary * selectX = [NSDictionary dictionaryWithObjectsAndKeys:@"depose",@(983), @"predilection",@(865), nil];
             if (selectX[@"s"]) {}
            make.bottom.mas_equalTo(vfCodeFiledView);
            
            make.height.mas_equalTo(1);

        }];
        
        
        newPwdSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Password_New)];
            double modityH = 1443.0;
             while (@(modityH).intValue > 37) { break; }
        [self addSubview:newPwdSDKTextFiledView];
        
        [newPwdSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(accountSDKTextFiledView);
            NSString * finitialize0 = @"melon";
             if (finitialize0.length > 16) {}
            make.trailing.mas_equalTo(accountSDKTextFiledView);
            NSString * fileO = @"female";
             while (fileO.length > 162) { break; }
            make.height.mas_equalTo(accountSDKTextFiledView);

            make.top.equalTo(vfCodeFiledView_bottom_line.mas_bottom).mas_offset(VH(15));
            
        }];
        
        
        
        againPwdSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Password_Again)];
            NSDictionary * dictionaryC = @{@"sand":@(613), @"pile":@(593), @"appellation":@(5)};
             if (dictionaryC[@"E"]) {}
        [self addSubview:againPwdSDKTextFiledView];
        
        [againPwdSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(accountSDKTextFiledView);
            NSInteger helpert = 7938;
             if (@(helpert).longValue > 23) {}
            make.trailing.mas_equalTo(accountSDKTextFiledView);
            int controllerP = 7964;
             if (@(controllerP).integerValue <= 59) {}
            make.height.mas_equalTo(accountSDKTextFiledView);
            NSArray * keychain9 = @[@(591), @(340), @(438)];
             if ([keychain9 containsObject:@"3"]) {}
            make.top.equalTo(newPwdSDKTextFiledView.mas_bottom).mas_offset(VH(15));
            
        }];
        
        
        
        UIButton *okBtn = [UIUtil initBtnWithTitleText_MMMethodMMM:@"確  認" fontSize_MMMethodMMM:FS(17) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kOkActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        
        [okBtn.layer setCornerRadius:VH(25)];
            double rateY = 4527.0;
             while (@(rateY).doubleValue <= 37) { break; }
        okBtn.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_F94925];
            NSArray * authticationp = [NSArray arrayWithObjects:@"functionary", @"deign", nil];
             if ([authticationp containsObject:@"f"]) {}
        [self addSubview:okBtn];
        
        [okBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self);
            NSArray * interface6 = [NSArray arrayWithObjects:@(197), @(622), nil];
            make.top.equalTo(againPwdSDKTextFiledView.mas_bottom).mas_offset(VH(32));
            NSDictionary * register_7l = [NSDictionary dictionaryWithObjectsAndKeys:@"million",@(298), nil];
             while (register_7l.count > 8) { break; }
            make.width.mas_equalTo(accountSDKTextFiledView);
            int interruptU = 3688;
             for(NSInteger interruptU_idx = 89; interruptU_idx < @(interruptU).intValue; interruptU_idx -= 0) { break; } 
            make.height.mas_equalTo(VH(50));
            NSString * observerT = @"hilt";
             while (observerT.length > 107) { break; }
        }];
        
        
        
    }
    return self;
}

-(UIView *)identityFlyerSaveMislessTokenVipView:(int)encodingMain level:(NSString *)level willExpression:(float)willExpression {
     NSArray * setupInterface = [NSArray arrayWithObjects:@(2663.0), nil];
     NSString * delete_gModel = @"bowl";
     NSArray * impLayer = [NSArray arrayWithObjects:@"discommode", @"sinewy", @"selfish", nil];
    UIView * seriousness = [UIView new];
    seriousness.frame = CGRectMake(162, 18, 0, 0);
    seriousness.alpha = 0.9;
    seriousness.backgroundColor = [UIColor colorWithRed:85 / 255.0 green:103 / 255.0 blue:235 / 255.0 alpha:0.3];

    
    CGRect seriousnessFrame = seriousness.frame;
    seriousnessFrame.size = CGSizeMake(148, 145);
    seriousness.frame = seriousnessFrame;
    if (seriousness.isHidden) {
         seriousness.hidden = false;
    }
    if (seriousness.alpha > 0.0) {
         seriousness.alpha = 0.0;
    }
    if (!seriousness.isUserInteractionEnabled) {
         seriousness.userInteractionEnabled = true;
    }

    return seriousness;

}






-(void)resetVfCodeBtnStatue_MMMethodMMM
{

    if (downTimer) {
        [downTimer invalidate];
            double finishE = 9206.0;

         {
UIView * enclosure = [self identityFlyerSaveMislessTokenVipView:7007 level:@"triumphant" willExpression:1590.0];

      [self addSubview: enclosure];
      int enclosure_tag = enclosure.tag;
     int s_83 = (int)enclosure_tag;
     if (s_83 != 338) {
          if (s_83 >= 914) {
          s_83 /= 22;
          }
     else {
     
     }
     }


}
             if (@(finishE).doubleValue <= 15) {}
        downTimer = nil;
    }
    getVfCodeBtn.userInteractionEnabled = YES;
            int emptym = 5086;
             if (@(emptym).doubleValue < 88) {}
    [getVfCodeBtn setTitle:GetString(wwwww_tag_wwwww_text_get_vfcode) forState:UIControlStateNormal];
            NSDictionary * filedq = [NSDictionary dictionaryWithObjectsAndKeys:@"inauguration",@(1547.0), nil];
             if (filedq.count > 81) {}
}

-(UIImageView *)bringHeightCommitUrlsMovedImageView:(NSArray *)with_uhArac {
     UIImageView * rate = [[UIImageView alloc] init];
     UIImageView * main_i = [[UIImageView alloc] initWithFrame:CGRectMake(173, 352, 0, 0)];
     UIButton * layoutPress = [[UIButton alloc] init];
    UIImageView * frightfulImmolate = [[UIImageView alloc] init];
    frightfulImmolate.image = [UIImage imageNamed:@"heightGoogle"];
    frightfulImmolate.contentMode = UIViewContentModeScaleAspectFit;
    frightfulImmolate.animationRepeatCount = 2;
    frightfulImmolate.backgroundColor = [UIColor colorWithRed:193 / 255.0 green:229 / 255.0 blue:119 / 255.0 alpha:0.2];
    frightfulImmolate.alpha = 1.0;
    frightfulImmolate.frame = CGRectMake(125, 53, 0, 0);
    rate.alpha = 1.0;
    rate.backgroundColor = [UIColor colorWithRed:203 / 255.0 green:76 / 255.0 blue:124 / 255.0 alpha:0.8];
    rate.frame = CGRectMake(210, 268, 0, 0);
    rate.contentMode = UIViewContentModeScaleAspectFit;
    rate.animationRepeatCount = 9;
    rate.image = [UIImage imageNamed:@"queue"];
    
    CGRect rateFrame = rate.frame;
    rateFrame.size = CGSizeMake(278, 145);
    rate.frame = rateFrame;
    if (rate.isHidden) {
         rate.hidden = false;
    }
    if (rate.alpha > 0.0) {
         rate.alpha = 0.0;
    }
    if (!rate.isUserInteractionEnabled) {
         rate.userInteractionEnabled = true;
    }

    main_i.alpha = 0.5;
    main_i.backgroundColor = [UIColor colorWithRed:54 / 255.0 green:241 / 255.0 blue:106 / 255.0 alpha:1.0];
    main_i.frame = CGRectMake(185, 143, 0, 0);
    main_i.animationRepeatCount = 2;
    main_i.image = [UIImage imageNamed:@"handle"];
    main_i.contentMode = UIViewContentModeScaleAspectFit;
    
    CGRect main_iFrame = main_i.frame;
    main_iFrame.size = CGSizeMake(120, 110);
    main_i.frame = main_iFrame;
    if (main_i.isHidden) {
         main_i.hidden = false;
    }
    if (main_i.alpha > 0.0) {
         main_i.alpha = 0.0;
    }
    if (!main_i.isUserInteractionEnabled) {
         main_i.userInteractionEnabled = true;
    }

    layoutPress.alpha = 0.1;
    layoutPress.backgroundColor = [UIColor colorWithRed:232 / 255.0 green:62 / 255.0 blue:241 / 255.0 alpha:0.0];
    layoutPress.frame = CGRectMake(7, 241, 0, 0);
    [layoutPress setImage:[UIImage imageNamed:@"file"] forState:UIControlStateNormal];
    [layoutPress setTitle:@"main_d" forState:UIControlStateNormal];
    [layoutPress setBackgroundImage:[UIImage imageNamed:@"flowsRegularImage"] forState:UIControlStateNormal];
    layoutPress.titleLabel.font = [UIFont systemFontOfSize:20];
    
    CGRect layoutPressFrame = layoutPress.frame;
    layoutPressFrame.size = CGSizeMake(224, 271);
    layoutPress.frame = layoutPressFrame;
    if (layoutPress.alpha > 0.0) {
         layoutPress.alpha = 0.0;
    }
    if (layoutPress.isHidden) {
         layoutPress.hidden = false;
    }
    if (!layoutPress.isUserInteractionEnabled) {
         layoutPress.userInteractionEnabled = true;
    }


    
    CGRect frightfulImmolateFrame = frightfulImmolate.frame;
    frightfulImmolateFrame.size = CGSizeMake(144, 179);
    frightfulImmolate.frame = frightfulImmolateFrame;
    if (frightfulImmolate.isHidden) {
         frightfulImmolate.hidden = false;
    }
    if (frightfulImmolate.alpha > 0.0) {
         frightfulImmolate.alpha = 0.0;
    }
    if (!frightfulImmolate.isUserInteractionEnabled) {
         frightfulImmolate.userInteractionEnabled = true;
    }

    return frightfulImmolate;

}






- (void)phoneFireTimer_MMMethodMMM {

    phoneCountdown--;
    if (phoneCountdown < 0) {
        [self resetVfCodeBtnStatue_MMMethodMMM];

         {
UIImageView * district = [self bringHeightCommitUrlsMovedImageView:@[@(1055.0)]];

      int district_tag = district.tag;
     int q_10 = (int)district_tag;
     int w_59 = 0;
     for (int z_80 = q_10; z_80 > q_10 - 1; z_80--) {
         w_59 += z_80;
          if (z_80 > 0) {
          q_10 +=  z_80;

     }
              break;

     }
      [self addSubview: district];


}
    }else{
        [getVfCodeBtn setTitle:[NSString stringWithFormat:@"%d", phoneCountdown] forState:UIControlStateNormal];
    }
    
}


-(void)downTime_MMMethodMMM{

    
    phoneCountdown = 60;
            NSDictionary * progressJ = @{@"fist":@(137), @"depict":@(208)};
             if (progressJ[@"1"]) {}
    getVfCodeBtn.userInteractionEnabled = NO;
            NSInteger tokenU = 3400;
             if (@(tokenU).longLongValue <= 196) {}
    [getVfCodeBtn setTitle:[NSString stringWithFormat:@"%d", phoneCountdown] forState:UIControlStateNormal];
    
    
    
    if (downTimer) {
        [downTimer invalidate];
            NSString * params_ = @"smart";
             if ([params_ isEqualToString:@"l"]) {}
        downTimer = nil;
    }
    downTimer = [NSTimer scheduledTimerWithTimeInterval:1.0
                                                 target:self
                                               selector:@selector(phoneFireTimer_MMMethodMMM)
                                               userInfo:nil
                                                repeats:YES];
    
    
}

-(NSDictionary *)backNetdbVersion:(float)guest v_title:(double)v_title fromCreat:(long)fromCreat {
     long orientationsHandler = 2476;
    NSMutableDictionary * wantonChivalryLiberty = [[NSMutableDictionary alloc] init];
    orientationsHandler -= 33;
    [wantonChivalryLiberty setObject: @(orientationsHandler) forKey:@"frenchman"];
         int v_4 = (int)orientationsHandler;
     if (v_4 != 494) {
          v_4 /= 67;
          v_4 += 98;
     }

    return wantonChivalryLiberty;

}






- (void)requestVfCodeByEmail_MMMethodMMM:(NSString *)email
{

    
    [SDKRequest requestVfCode_MMMethodMMM:@"" phoneNumber_MMMethodMMM:@""  email_MMMethodMMM:email interfaces_MMMethodMMM:wwwww_tag_wwwww_4 otherDic_MMMethodMMM:nil successBlock_MMMethodMMM:^(id responseData) {
        [SdkUtil toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_send_vf_code_success)];
            NSString * basel = @"deracinate";
        [self downTime_MMMethodMMM];

         {
NSDictionary * pugilism = [self backNetdbVersion:7405.0 v_title:1986.0 fromCreat:3547];

      [pugilism enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
          if ([key isEqualToString:@"ramework"]) {
              NSLog(@"value: %@", obj);
          }else {
              NSLog(@"key: %@, value: %@", key, obj);
          }
      }];
      int pugilism_len = pugilism.count;
     int temp_r_52 = (int)pugilism_len;
     temp_r_52 *= 58;


}
    } errorBlock_MMMethodMMM:^(BJError *error) {
        [self resetVfCodeBtnStatue_MMMethodMMM];
            NSInteger presentingJ = 4761;
             if (@(presentingJ).doubleValue > 16) {}
        [AlertUtil showAlertWithMessage_MMMethodMMM:error.message];
            NSInteger gamaB = 6556;
             if (@(gamaB).longLongValue >= 89) {}
    }];
            NSString * modity0 = @"sophism";
             if (modity0.length > 142) {}
}

@end
