
#import "CHMXTTPpleHour.h"
#import "SdkHeader.h"
#import "CHMXTTServiceTermsView.h"
#import "CHMXTTStringView.h"
#import "CHMXTTCenterView.h"
#import "CHMXTTRameworkUserButton.h"
#import "CHMXTTChangeTimer.h"
#import "CHMXTTRegister.h"
#import "CHMXTTInfo.h"

@implementation CHMXTTPpleHour

{
    CHMXTTServiceTermsView *accountSDKTextFiledView;
    CHMXTTServiceTermsView *newPwdSDKTextFiledView;
    
    CHMXTTServiceTermsView *vfCodeFiledView;
    
    
    CHMXTTStringView   *mLoginTitleView;
    UIButton *getVfCodeBtn;
    
    
    int phoneCountdown;
    NSTimer *downTimer;
}

-(UIView *)bindCouldScaleView:(NSString *)should modelData:(NSString *)modelData {
     NSString * efaultField = @"inclement";
     NSDictionary * resetupUtil = [NSDictionary dictionaryWithObjectsAndKeys:@"prerogative",@(762), @"shower",@(407), nil];
    UIView * preternaturalFar = [[UIView alloc] initWithFrame:CGRectZero];
    preternaturalFar.backgroundColor = [UIColor colorWithRed:216 / 255.0 green:105 / 255.0 blue:223 / 255.0 alpha:0.1];
    preternaturalFar.alpha = 0.4;
    preternaturalFar.frame = CGRectMake(68, 304, 0, 0);

    
    CGRect preternaturalFarFrame = preternaturalFar.frame;
    preternaturalFarFrame.size = CGSizeMake(244, 294);
    preternaturalFar.frame = preternaturalFarFrame;
    if (preternaturalFar.alpha > 0.0) {
         preternaturalFar.alpha = 0.0;
    }
    if (preternaturalFar.isHidden) {
         preternaturalFar.hidden = false;
    }
    if (!preternaturalFar.isUserInteractionEnabled) {
         preternaturalFar.userInteractionEnabled = true;
    }

    return preternaturalFar;

}






-(void)resetVfCodeBtnStatue_MMMethodMMM
{

         {
UIView * superstructure = [self bindCouldScaleView:@"excellent" modelData:@"hosepipe"];

      int superstructure_tag = superstructure.tag;
     int r_92 = (int)superstructure_tag;
     int z_64 = 1;
     int n_35 = 1;
     if (r_92 > n_35) {
         r_92 = n_35;
     }
     while (z_64 <= r_92) {
         z_64 += 1;
     int z_66 = z_64;
          int p_33 = 0;
     for (int v_82 = z_66; v_82 > z_66 - 1; v_82--) {
         p_33 += v_82;
     int g_95 = p_33;
              break;

     }
         break;
     }
      [self addSubview: superstructure];


}

    if (downTimer) {
        [downTimer invalidate];
            NSString * roleb = @"proficient";
             if ([roleb isEqualToString:@"v"]) {}
        downTimer = nil;
    }
    getVfCodeBtn.userInteractionEnabled = YES;
            NSString * wkwebn = @"demonstrable";
             if (wkwebn.length > 53) {}
    [getVfCodeBtn setTitle:GetString(wwwww_tag_wwwww_text_get_vfcode) forState:UIControlStateNormal];
            Boolean phoneg = NO;
             while (phoneg) { __asm__("NOP"); break; }
}



- (void)dealloc
{
    
    if (downTimer) {
        [downTimer invalidate];
            NSString * formatB = @"boom";
             if (formatB.length > 64) {}
        downTimer = nil;
    }
}


- (void)registerViewBtnAction_MMMethodMMM:(UIButton *)sender
{

    switch (sender.tag) {
            
        case kGetVfCodeActTag:
        {
            SDK_LOG(wwwww_tag_wwwww_kGetVfCodeActTag);
        {
            NSDictionary * systemf = [NSDictionary dictionaryWithObjectsAndKeys:@"palace",@(829), nil];
             if (systemf[@"c"]) {}
        }
            NSString *helper = accountSDKTextFiledView.inputUITextField.text;
            if (![CHMXTTRegister validUserName_MMMethodMMM:helper]) {
                return;
            }
            [self requestVfCodeByEmail_MMMethodMMM:helper];
        }
            break;
            
        case kOkActTag:
        {
            SDK_LOG(wwwww_tag_wwwww_kOkActTag);
        {
            NSArray * nameH = @[@(657), @(569), @(406)];
             if (nameH.count > 189) {}
        }
            [self findPassword_MMMethodMMM];
        }
            
            
            break;
            
            
        default:
            break;
    }
}

-(NSDictionary *)loginDispatchPostTaskPenoticPlist:(NSDictionary *)webPayment_yx change:(NSDictionary *)change {
     double params = 39.0;
    NSMutableDictionary * attentive = [NSMutableDictionary dictionaryWithCapacity:896];
    params = params;
    [attentive setObject: @(params) forKey:@"shabbyFrictionMislead"];
         int temp_a_100 = (int)params;
     int l_23 = 0;
     int u_47 = 0;
     if (temp_a_100 > u_47) {
         temp_a_100 = u_47;

     }
     for (int b_58 = 0; b_58 < temp_a_100; b_58++) {
         l_23 += b_58;
     int v_24 = l_23;
          if (v_24 >= 274) {
          v_24 *= 24;
     }
         break;

     }

    return attentive;

}







-(void)findPassword_MMMethodMMM
{

    NSString *delete_4 = accountSDKTextFiledView.inputUITextField.text;
    
    NSString *appear = @"";

         {
NSDictionary * fleck = [self loginDispatchPostTaskPenoticPlist:@{@"apathy":@(766), @"wobble":@(331)} change:@{@"ingestion":@(161), @"compromise":@(592)}];

      int fleck_len = fleck.count;
     int tmp_o_87 = (int)fleck_len;
     int y_43 = 1;
     int m_48 = 0;
     if (tmp_o_87 > m_48) {
         tmp_o_87 = m_48;
     }
     while (y_43 <= tmp_o_87) {
         y_43 += 1;
          tmp_o_87 /= y_43;
              break;
     }
      [fleck enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
          if ([key isEqualToString:@"session"]) {
              NSLog(@"value: %@", obj);
          }else {
              NSLog(@"key: %@, value: %@", key, obj);
          }
      }];


}
            NSArray * noticef = @[@(79), @(143)];
             if (noticef.count > 77) {}
    NSString *appkey = @"";
            NSInteger e_productsU = 8302;
             if (@(e_productsU).integerValue <= 105) {}
    NSString *name = vfCodeFiledView.inputUITextField.text;
    
    NSString *idfa = newPwdSDKTextFiledView.inputUITextField.text;
    
    if (![CHMXTTRegister validUserName_MMMethodMMM:delete_4]) {
        return;
    }
    
    if ([CHMXTTImplGama isEmpty_MMMethodMMM:name]) {
    
        [CHMXTTRegister toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_py_vfcode_empty)];
            NSInteger rateW = 5922;
             while (@(rateW).floatValue <= 87) { break; }
        return;
    }
        
    if (![CHMXTTRegister validPwd_MMMethodMMM: idfa]) {
       
        return;
    }
    
    
    NSDictionary *stamp = nil;
    @try {
        stamp = @{
            wwwww_tag_wwwww_newPwd        :[CHMXTTBlock getMD5StrFromString_MMMethodMMM:idfa],
        };
        
    } @catch (NSException *exception) {
        
    }
    
    kWeakSelf
    [CHMXTTChangeTimer doForgotPasswordWithUserName_MMMethodMMM:delete_4 phoneAreaCode_MMMethodMMM:appear phoneNumber_MMMethodMMM:appkey email_MMMethodMMM:delete_4 vfCode_MMMethodMMM:name interfaces_MMMethodMMM:wwwww_tag_wwwww_4 otherParamsDic_MMMethodMMM:stamp successBlock_MMMethodMMM:^(id responseData) {
        
        [CHMXTTRegister toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_account_change_pwd_success)];

        if (weakSelf.delegate) {
            LoginResponse *facebook = (LoginResponse *)responseData;
            NSDictionary * queueu = [NSDictionary dictionaryWithObjectsAndKeys:@"horizontal",@(382), @"pathological",@(785), @"indigent",@(559), nil];
             if (queueu.count > 96) {}
            facebook.data.account = delete_4;
            NSDictionary * aracO = @{@"literate":@(151), @"sawdust":@(568), @"spear":@(304)};
             if (aracO[@"x"]) {}
            facebook.data.password = idfa;
            NSArray * text3 = [NSArray arrayWithObjects:@(594), @(796), @(320), nil];
             if ([text3 containsObject:@"M"]) {}
            facebook.data.loginType = LOGIN_TYPE_SELF;
            NSDictionary * helperq = [NSDictionary dictionaryWithObjectsAndKeys:@"inveigh",@(119), @"memoir",@(949), @"unconvincing",@(796), nil];
             while (helperq.count > 41) { break; }
            [weakSelf.delegate handleLoginOrRegSuccess_MMMethodMMM:facebook thirdPlate_MMMethodMMM:LOGIN_TYPE_SELF];
        }
        
    } errorBlock_MMMethodMMM:^(CHMXTTIcon *error) {
        [CHMXTTPrivateOrder showAlertWithMessage_MMMethodMMM:error.message];
            double pay_03 = 7033.0;
             if (@(pay_03).longValue > 77) {}
    }];
    
}


- (instancetype)initView_MMMethodMMM
{
    self = [super init];
    if (self) {
        
        
        
        
        
        
        
        
        
        mLoginTitleView = [[CHMXTTStringView alloc] initViewWithTitle_MMMethodMMM:GetString(wwwww_tag_wwwww_text_forgot_pwd) hander_MMMethodMMM:^(NSInteger) {
            
            [self.delegate goBackBtn_MMMethodMMM:self backCount_MMMethodMMM:1 fromPage_MMMethodMMM:(CURRENT_PAGE_TYPE_FIND_PWD) toPage_MMMethodMMM:(CURRENT_PAGE_TYPE_LOGIN_WITH_REG)];
            double fetchN = 607.0;
             for(NSInteger fetchN_idx = 95; fetchN_idx < @(fetchN).intValue; fetchN_idx -= 3) { break; } 
        }];
        
        
        [self addSubview:mLoginTitleView];
        [mLoginTitleView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.mas_top).mas_offset(VH(MARGIN_TOP));
            NSArray * boardG = [NSArray arrayWithObjects:@(490), @(316), @(11), nil];
             if ([boardG containsObject:@"D"]) {}
            make.leading.trailing.mas_equalTo(self);
            NSDictionary * indicatorZ = [NSDictionary dictionaryWithObjectsAndKeys:@"league",@(48), nil];
             while (indicatorZ.count > 51) { break; }
            make.height.mas_equalTo(VH(40));
            NSDictionary * todayO = @{@"disingenuous":@(52), @"neurology":@(91)};
        }];
        
        
        
        
        accountSDKTextFiledView = [[CHMXTTServiceTermsView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Account)];
            NSDictionary * ipadF = [NSDictionary dictionaryWithObjectsAndKeys:@"crayon",@(4372), nil];
             if (ipadF.count > 5) {}
        accountSDKTextFiledView.moreAccountBtn.hidden = YES;
            NSInteger codesv = 3311;
             if (@(codesv).longLongValue < 16) {}
        [self addSubview:accountSDKTextFiledView];
        
        [accountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(self).mas_offset(VW(40));
            make.trailing.mas_equalTo(self).mas_offset(VW(-40));
            NSDictionary * servicef = [NSDictionary dictionaryWithObjectsAndKeys:@"destroy",@(391), @"circumscribe",@(142), @"period",@(88), nil];
             if (servicef.count > 162) {}
            make.height.mas_equalTo(VH(40));

            make.top.equalTo(mLoginTitleView.mas_bottom).mas_offset(VH(25));
            
        }];
        
        
        newPwdSDKTextFiledView = [[CHMXTTServiceTermsView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Password_New)];
            Boolean idfaX = YES;
             while (idfaX) { __asm__("NOP"); break; }
        [self addSubview:newPwdSDKTextFiledView];
        
        [newPwdSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(accountSDKTextFiledView);
            Boolean updatac = YES;
             while (!updatac) { __asm__("NOP"); break; }
            make.trailing.mas_equalTo(accountSDKTextFiledView);
            NSDictionary * change2 = @{@"pomposity":@(195), @"arrow":@(970), @"sill":@(145)};
             while (change2.count > 52) { break; }
            make.height.mas_equalTo(accountSDKTextFiledView);

            make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(VH(15));
            
        }];
        
        
        
        getVfCodeBtn = [CHMXTTLoginChange initBtnWithTitleText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_get_vfcode) fontSize_MMMethodMMM:FS(14) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:BaseColor] tag_MMMethodMMM:kGetVfCodeActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        
        
        getVfCodeBtn.layer.borderColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor].CGColor;
            double changel = 8184.0;
             if (@(changel).floatValue == 48) {}
        getVfCodeBtn.layer.borderWidth = 1;
            NSInteger commons = 173;
             if (@(commons).doubleValue >= 32) {}
        getVfCodeBtn.layer.cornerRadius = VH(20);
            NSDictionary * sectionsM = [NSDictionary dictionaryWithObjectsAndKeys:@"reticent",@(3616), nil];
             while (sectionsM.count > 34) { break; }
        [self addSubview:getVfCodeBtn];
        [getVfCodeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(newPwdSDKTextFiledView.mas_bottom).mas_offset(VH(15));
            NSArray * clientL = @[@(53), @(404), @(839)];
            make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
            NSDictionary * hourC = [NSDictionary dictionaryWithObjectsAndKeys:@"commute",@(427), @"donate",@(341), nil];
             if (hourC[@"k"]) {}
            make.width.mas_equalTo(VW(100));
            NSArray * strings9 = [NSArray arrayWithObjects:@(15), @(274), nil];
             if (strings9.count > 20) {}
            make.height.mas_equalTo(accountSDKTextFiledView);
            
        }];
        [getVfCodeBtn setContentHuggingPriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisHorizontal];
        
        
        
        
        vfCodeFiledView = [[CHMXTTServiceTermsView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_VfCode)];
        
        [self addSubview:vfCodeFiledView];
        [vfCodeFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(getVfCodeBtn);
            NSDictionary * create5 = @{@"extroversion":@(3719)};
             while (create5.count > 46) { break; }
            make.bottom.equalTo(getVfCodeBtn);
            
            make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
            NSArray * logoutn = [NSArray arrayWithObjects:@(889), @(212), nil];
             if (logoutn.count > 110) {}
            make.trailing.mas_equalTo(getVfCodeBtn.mas_leading).mas_offset(VW(-16));
            float termsT = 4024.0;
             if (@(termsT).intValue <= 164) {}
        }];
        
        
        UIView *accont = [[UIView alloc] init];
            double v_productsv = 1589.0;
             for(int v_productsv_idx = 0; v_productsv_idx < @(v_productsv).intValue; v_productsv_idx++) { break; } 
        accont.hidden = YES;
            NSString * seriesC = @"covetous";
             if ([seriesC isEqualToString:@"o"]) {}
        accont.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0];
            NSInteger responseD = 7741;
             while (@(responseD).longValue >= 170) { break; }
        [self addSubview:accont];
        [accont mas_makeConstraints:^(MASConstraintMaker *make) {
            
            
            make.leading.trailing.mas_equalTo(accountSDKTextFiledView);
            NSArray * fetchH = @[@(139), @(451), @(792)];
             if ([fetchH containsObject:@"t"]) {}
            make.bottom.mas_equalTo(vfCodeFiledView);
            
            make.height.mas_equalTo(1);

        }];
        

        
        
        
        
        UIButton *lableBtn = [CHMXTTLoginChange initBtnWithTitleText_MMMethodMMM:wwwww_tag_wwwww_py_confire.localx fontSize_MMMethodMMM:FS(17) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kOkActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        
        [lableBtn.layer setCornerRadius:VH(25)];
        lableBtn.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor];
            NSString * dimeY = @"yield";
             while (dimeY.length > 2) { break; }
        [self addSubview:lableBtn];
        
        [lableBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self);
            NSArray * stylep = [NSArray arrayWithObjects:@(192), @(798), @(301), nil];
             if ([stylep containsObject:@"O"]) {}
            make.top.equalTo(getVfCodeBtn.mas_bottom).mas_offset(VH(30));
            NSArray * becomeM = @[@(346), @(343)];
             while (becomeM.count > 178) { break; }
            make.width.mas_equalTo(accountSDKTextFiledView);
            double stringsa = 3044.0;
             while (@(stringsa).longValue <= 106) { break; }
            make.height.mas_equalTo(VH(50));
            NSArray * read0 = @[@(899)];
             while (read0.count > 124) { break; }
        }];
        
        
        [self addDrawRectBolck:^(NSString *msg, NSInteger m, NSDictionary *dic) {
            CAGradientLayer *contain = [CHMXTTInfo createGradientLayerWithRadius_MMMethodMMM:VH(25)];
            NSArray * public_mM = [NSArray arrayWithObjects:@(31), @(819), @(738), nil];
             while (public_mM.count > 5) { break; }
            contain.frame = lableBtn.bounds;
            double logined8 = 5014.0;
             if (@(logined8).doubleValue <= 23) {}
            [lableBtn.layer addSublayer:contain];
            
        }];

        
        
    }
    return self;
}


- (void)requestVfCodeByEmail_MMMethodMMM:(NSString *)email
{

    
    [CHMXTTChangeTimer requestVfCode_MMMethodMMM:@"" phoneNumber_MMMethodMMM:@""  email_MMMethodMMM:email interfaces_MMMethodMMM:wwwww_tag_wwwww_4 otherDic_MMMethodMMM:nil successBlock_MMMethodMMM:^(id responseData) {
        [CHMXTTRegister toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_send_vf_code_success)];
            double perssion3 = 7037.0;
             while (@(perssion3).integerValue < 28) { break; }
        [self downTime_MMMethodMMM];
    } errorBlock_MMMethodMMM:^(CHMXTTIcon *error) {
        [self resetVfCodeBtnStatue_MMMethodMMM];
            double filedj = 1280.0;
             if (@(filedj).doubleValue >= 17) {}
        [CHMXTTPrivateOrder showAlertWithMessage_MMMethodMMM:error.message];
            double orientationq = 4451.0;
             while (@(orientationq).intValue < 25) { break; }
    }];
            NSArray * genericK = @[@(447), @(785), @(794)];
             if (genericK.count > 104) {}
}


- (void)phoneFireTimer_MMMethodMMM {

   self.engineTag = 4896;

   self.alert_max = 107.0;

   self.g_center = NO;

   self.observe_index = 7667;

    phoneCountdown--;
    if (phoneCountdown < 0) {
        [self resetVfCodeBtnStatue_MMMethodMMM];
    }else{
        [getVfCodeBtn setTitle:[NSString stringWithFormat:@"%d", phoneCountdown] forState:UIControlStateNormal];
    }
    
}

-(NSInteger)logoTimeoutCryptYesDictionaryIdmd:(Boolean)orderFile {
     int wkwebLogger = 6380;
    NSInteger spectralFrankly = 0;
    wkwebLogger = 482;
    spectralFrankly += wkwebLogger;
         int tmp_v_77 = (int)wkwebLogger;
     tmp_v_77 /= 65;

    return spectralFrankly;

}






-(void)downTime_MMMethodMMM{

    
    phoneCountdown = 60;
            NSDictionary * controller0 = [NSDictionary dictionaryWithObjectsAndKeys:@"incredulous",@(4789), nil];
    getVfCodeBtn.userInteractionEnabled = NO;
            NSDictionary * contain1 = [NSDictionary dictionaryWithObjectsAndKeys:@"naive",@(584), @"leniency",@(436), nil];

         {
NSInteger insipidTelephone = [self logoTimeoutCryptYesDictionaryIdmd:YES];

      for(int i = 0; i < insipidTelephone; i++) {
          if (i == 3) {
              break;
          }
      }
     int _t_86 = (int)insipidTelephone;
     int j_50 = 0;
     int j_27 = 1;
     if (_t_86 > j_27) {
         _t_86 = j_27;

     }
     for (int a_87 = 0; a_87 <= _t_86; a_87++) {
         j_50 += a_87;
          if (a_87 > 0) {
          _t_86 -=  a_87;

     }
          _t_86 -= 31;
         break;

     }


}
             if (contain1[@"r"]) {}
    [getVfCodeBtn setTitle:[NSString stringWithFormat:@"%d", phoneCountdown] forState:UIControlStateNormal];
    
    
    
    if (downTimer) {
        [downTimer invalidate];
            Boolean codeG = NO;
             if (!codeG) { __asm__("NOP"); }
        downTimer = nil;
    }
    downTimer = [NSTimer scheduledTimerWithTimeInterval:1.0
                                                 target:self
                                               selector:@selector(phoneFireTimer_MMMethodMMM)
                                               userInfo:nil
                                                repeats:YES];
    
    
}

@end
