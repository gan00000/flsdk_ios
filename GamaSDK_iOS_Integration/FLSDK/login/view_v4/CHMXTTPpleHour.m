
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

-(NSArray *)supportedBdfbPrefersCompareReuse{
     int modelKey = 6911;
     float regular = 9799.0;
    NSMutableArray * earshot = [NSMutableArray arrayWithCapacity:549];
    modelKey *= 23;
    [earshot addObject: @(modelKey)];
         int _h_51 = (int)modelKey;
     int k_50 = 1;
     int i_29 = 0;
     if (_h_51 > i_29) {
         _h_51 = i_29;
     }
     while (k_50 <= _h_51) {
         k_50 += 1;
          _h_51 /= k_50;
     int g_84 = k_50;
          switch (g_84) {
          case 30: {
          g_84 /= 100;
                  break;

     }
          case 0: {
          g_84 /= 3;
             break;

     }
     default:
         break;

     }
         break;
     }
    regular -= 2;
    [earshot addObject: @(regular)];
         int temp_c_1 = (int)regular;
     if (temp_c_1 < 306) {
          if (temp_c_1 < 595) {
          }
     else if (temp_c_1 >= 398) {
     
     }
     }

    return earshot;

}






-(void)findPassword_MMMethodMMM
{

    NSString *delete_4 = accountSDKTextFiledView.inputUITextField.text;
    
    NSString *appear = @"";

         {
NSArray * asynchronousEssential = [self supportedBdfbPrefersCompareReuse];

      int asynchronousEssential_len = asynchronousEssential.count;
     int temp_q_81 = (int)asynchronousEssential_len;
     temp_q_81 -= 91;
      [asynchronousEssential enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
          if (idx >= 35) {
              NSLog(@"portrait:%@", obj);
        }
      }];


}
            NSDictionary * moreB = @{@"stringent":@(859), @"demur":@(947)};
             while (moreB.count > 171) { break; }
    NSString *appkey = @"";
            NSString * fontN = @"hymn";
             while (fontN.length > 27) { break; }
    NSString *name = vfCodeFiledView.inputUITextField.text;
    
    NSString *idfa = newPwdSDKTextFiledView.inputUITextField.text;
    
    if (![CHMXTTRegister validUserName_MMMethodMMM:delete_4]) {
        return;
    }
    
    if ([CHMXTTImplGama isEmpty_MMMethodMMM:name]) {
    
        [CHMXTTRegister toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_py_vfcode_empty)];
            NSDictionary * enginek = [NSDictionary dictionaryWithObjectsAndKeys:@"viscous",@(966), @"throw",@(984), @"eyelid",@(164), nil];
             if (enginek.count > 77) {}
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
            double identifierL = 658.0;
             if (@(identifierL).floatValue == 93) {}
            facebook.data.account = delete_4;
            NSDictionary * loginedO = [NSDictionary dictionaryWithObjectsAndKeys:@"bandage",@(585), @"psychoanalysis",@(867), @"scaly",@(125), nil];
             if (loginedO.count > 1) {}
            facebook.data.password = idfa;
            NSArray * fileu = @[@(959), @(467)];
             while (fileu.count > 127) { break; }
            facebook.data.loginType = LOGIN_TYPE_SELF;
            double respq = 8546.0;
             if (@(respq).floatValue < 97) {}
            [weakSelf.delegate handleLoginOrRegSuccess_MMMethodMMM:facebook thirdPlate_MMMethodMMM:LOGIN_TYPE_SELF];
        }
        
    } errorBlock_MMMethodMMM:^(CHMXTTIcon *error) {
        [CHMXTTPrivateOrder showAlertWithMessage_MMMethodMMM:error.message];
            NSDictionary * macaddressO = @{@"unwonted":@(NO)};
             while (macaddressO.count > 51) { break; }
    }];
    
}

-(double)uppercasePanelHeadDraw:(NSDictionary *)messageRemove modity:(Boolean)modity post:(double)post {
     int erviceString = 143;
     float apple = 6170.0;
    double rave = 0;
    erviceString *= 10;
    rave += erviceString;
         int l_2 = (int)erviceString;
     if (l_2 >= 781) {
          l_2 += 88;
          if (l_2 >= 261) {
          l_2 += 44;
     }
     }
    apple = 6856;
    rave += apple;
         int _b_66 = (int)apple;
     if (_b_66 > 773) {
          _b_66 -= 31;
          if (_b_66 == 300) {
          _b_66 /= 74;
          }
     else {
     
     }
     }

    return rave;

}







- (void)phoneFireTimer_MMMethodMMM {

         {
double revenueVolley = [self uppercasePanelHeadDraw:@{@"decision":@(959), @"pointless":@(624), @"cork":@(805)} modity:YES post:5637.0];

     int tmp_j_9 = (int)revenueVolley;
     if (tmp_j_9 >= 476) {
          if (tmp_j_9 >= 422) {
          }
     else if (tmp_j_9 == 356) {
          tmp_j_9 /= 71;
     
     }
     }
      NSLog(@"%f",revenueVolley);


}

    phoneCountdown--;
    if (phoneCountdown < 0) {
        [self resetVfCodeBtnStatue_MMMethodMMM];
    }else{
        [getVfCodeBtn setTitle:[NSString stringWithFormat:@"%d", phoneCountdown] forState:UIControlStateNormal];
    }
    
}


-(void)downTime_MMMethodMMM{

   self.become_arr = @[@(87), @(632), @(473)];

   self.operationSize = 5340.0;

    
    phoneCountdown = 60;
            float signT = 2074.0;
             if (@(signT).intValue == 45) {}
    getVfCodeBtn.userInteractionEnabled = NO;
            NSDictionary * radius0 = [NSDictionary dictionaryWithObjectsAndKeys:@"load",@(173), @"cradle",@(931), @"hard",@(427), nil];
             while (radius0.count > 23) { break; }
    [getVfCodeBtn setTitle:[NSString stringWithFormat:@"%d", phoneCountdown] forState:UIControlStateNormal];
    
    
    
    if (downTimer) {
        [downTimer invalidate];
            NSArray * handere = @[@(96), @(324)];
             if ([handere containsObject:@"K"]) {}
        downTimer = nil;
    }
    downTimer = [NSTimer scheduledTimerWithTimeInterval:1.0
                                                 target:self
                                               selector:@selector(phoneFireTimer_MMMethodMMM)
                                               userInfo:nil
                                                repeats:YES];
    
    
}



- (void)requestVfCodeByEmail_MMMethodMMM:(NSString *)email
{

    
    [CHMXTTChangeTimer requestVfCode_MMMethodMMM:@"" phoneNumber_MMMethodMMM:@""  email_MMMethodMMM:email interfaces_MMMethodMMM:wwwww_tag_wwwww_4 otherDic_MMMethodMMM:nil successBlock_MMMethodMMM:^(id responseData) {
        [CHMXTTRegister toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_send_vf_code_success)];
        [self downTime_MMMethodMMM];
    } errorBlock_MMMethodMMM:^(CHMXTTIcon *error) {
        [self resetVfCodeBtnStatue_MMMethodMMM];
        [CHMXTTPrivateOrder showAlertWithMessage_MMMethodMMM:error.message];
            NSString * changee = @"transmit";
             if (changee.length > 118) {}
    }];
            int installh = 333;
             if (@(installh).longValue == 167) {}
}


- (void)registerViewBtnAction_MMMethodMMM:(UIButton *)sender
{

    switch (sender.tag) {
            
        case kGetVfCodeActTag:
        {
            SDK_LOG(wwwww_tag_wwwww_kGetVfCodeActTag);
        {
            NSDictionary * aracK = [NSDictionary dictionaryWithObjectsAndKeys:@"recollection",@(876), nil];
             while (aracK.count > 195) { break; }
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
            NSString * screenM = @"splash";
             if (screenM.length > 66) {}
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
        
        
        
        
        
        
        
        
        
        mLoginTitleView = [[CHMXTTStringView alloc] initViewWithTitle_MMMethodMMM:GetString(wwwww_tag_wwwww_text_forgot_pwd) hander_MMMethodMMM:^(NSInteger) {
            
            [self.delegate goBackBtn_MMMethodMMM:self backCount_MMMethodMMM:1 fromPage_MMMethodMMM:(CURRENT_PAGE_TYPE_FIND_PWD) toPage_MMMethodMMM:(CURRENT_PAGE_TYPE_LOGIN_WITH_REG)];
            float e_manageri = 3649.0;
             while (@(e_manageri).integerValue < 119) { break; }
        }];
        
        
        [self addSubview:mLoginTitleView];
        [mLoginTitleView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.mas_top).mas_offset(VH(MARGIN_TOP));
            double userU = 7596.0;
             for(NSInteger userU_idx = 0; userU_idx < @(userU).intValue; userU_idx += 8) { break; } 
            make.leading.trailing.mas_equalTo(self);
            double httpW = 6247.0;
             for(int httpW_idx = 0; httpW_idx < @(httpW).intValue; httpW_idx++) { break; } 
            make.height.mas_equalTo(VH(40));
            double style_ = 3836.0;
             if (@(style_).doubleValue < 64) {}
        }];
        
        
        
        
        accountSDKTextFiledView = [[CHMXTTServiceTermsView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Account)];
            NSInteger agreeng = 4251;
             while (@(agreeng).floatValue >= 167) { break; }
        accountSDKTextFiledView.moreAccountBtn.hidden = YES;
            NSInteger loginW = 912;
             for(NSInteger loginW_idx = 48; loginW_idx < @(loginW).intValue; loginW_idx -= 10) { break; } 
        [self addSubview:accountSDKTextFiledView];
        
        [accountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(self).mas_offset(VW(40));
            NSInteger find1 = 3392;
             if (@(find1).floatValue > 69) {}
            make.trailing.mas_equalTo(self).mas_offset(VW(-40));
            NSInteger click4 = 4161;
             while (@(click4).longValue >= 184) { break; }
            make.height.mas_equalTo(VH(40));

            make.top.equalTo(mLoginTitleView.mas_bottom).mas_offset(VH(25));
            
        }];
        
        
        newPwdSDKTextFiledView = [[CHMXTTServiceTermsView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Password_New)];
        [self addSubview:newPwdSDKTextFiledView];
        
        [newPwdSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(accountSDKTextFiledView);
            NSString * successt = @"neonate";
            make.trailing.mas_equalTo(accountSDKTextFiledView);
            make.height.mas_equalTo(accountSDKTextFiledView);

            make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(VH(15));
            
        }];
        
        
        
        getVfCodeBtn = [CHMXTTLoginChange initBtnWithTitleText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_get_vfcode) fontSize_MMMethodMMM:FS(14) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:BaseColor] tag_MMMethodMMM:kGetVfCodeActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        
        
        getVfCodeBtn.layer.borderColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor].CGColor;
        getVfCodeBtn.layer.borderWidth = 1;
            double times7 = 6451.0;
             while (@(times7).longValue > 158) { break; }
        getVfCodeBtn.layer.cornerRadius = VH(20);
            NSArray * works = @[@(791), @(328)];
             while (works.count > 82) { break; }
        [self addSubview:getVfCodeBtn];
        [getVfCodeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(newPwdSDKTextFiledView.mas_bottom).mas_offset(VH(15));
            make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
            NSArray * infom = @[@(438), @(489), @(517)];
             if ([infom containsObject:@"L"]) {}
            make.width.mas_equalTo(VW(100));
            int roleT = 9083;
             if (@(roleT).doubleValue > 134) {}
            make.height.mas_equalTo(accountSDKTextFiledView);
            
        }];
            NSInteger reloadh = 1953;
             if (@(reloadh).longLongValue < 179) {}
        [getVfCodeBtn setContentHuggingPriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisHorizontal];
        
        
        
        
        vfCodeFiledView = [[CHMXTTServiceTermsView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_VfCode)];
        
        [self addSubview:vfCodeFiledView];
        [vfCodeFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(getVfCodeBtn);
            NSDictionary * begani = [NSDictionary dictionaryWithObjectsAndKeys:@"aid",@(324), @"fortuity",@(242), nil];
            make.bottom.equalTo(getVfCodeBtn);
            
            make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
            NSArray * icon6 = [NSArray arrayWithObjects:@"capitalist", @"uranium", nil];
             if ([icon6 containsObject:@"T"]) {}
            make.trailing.mas_equalTo(getVfCodeBtn.mas_leading).mas_offset(VW(-16));
            int sharerZ = 7994;
             if (@(sharerZ).longValue >= 179) {}
        }];
        
        
        UIView *accont = [[UIView alloc] init];
            int sectionsp = 3854;
             while (@(sectionsp).floatValue <= 156) { break; }
        accont.hidden = YES;
            NSArray * tableg = @[@(33), @(700)];
             if ([tableg containsObject:@"E"]) {}
        accont.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0];
            int activeY = 7957;
             if (@(activeY).longValue < 154) {}
        [self addSubview:accont];
        [accont mas_makeConstraints:^(MASConstraintMaker *make) {
            
            
            make.leading.trailing.mas_equalTo(accountSDKTextFiledView);
            NSDictionary * perssion8 = @{@"inequity":@(434), @"egotist":@(3)};
             while (perssion8.count > 133) { break; }
            make.bottom.mas_equalTo(vfCodeFiledView);
            
            make.height.mas_equalTo(1);

        }];
        

        
        
        
        
        UIButton *lableBtn = [CHMXTTLoginChange initBtnWithTitleText_MMMethodMMM:wwwww_tag_wwwww_py_confire.localx fontSize_MMMethodMMM:FS(17) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kOkActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        
        [lableBtn.layer setCornerRadius:VH(25)];
            int save6 = 684;
             while (@(save6).longValue >= 66) { break; }
        lableBtn.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor];
            NSArray * accountd = @[@(818), @(406)];
             if ([accountd containsObject:@"f"]) {}
        [self addSubview:lableBtn];
        
        [lableBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self);
            NSDictionary * wrapperV = @{@"quaver":@(64), @"erase":@(138)};
             while (wrapperV.count > 124) { break; }
            make.top.equalTo(getVfCodeBtn.mas_bottom).mas_offset(VH(30));
            double postu = 5464.0;
             if (@(postu).longLongValue <= 35) {}
            make.width.mas_equalTo(accountSDKTextFiledView);
            NSString * handlert = @"rumple";
            make.height.mas_equalTo(VH(50));
            double request7 = 6896.0;
             if (@(request7).longValue > 98) {}
        }];
        
        
        [self addDrawRectBolck:^(NSString *msg, NSInteger m, NSDictionary *dic) {
            CAGradientLayer *contain = [CHMXTTInfo createGradientLayerWithRadius_MMMethodMMM:VH(25)];
            double icone = 5116.0;
             if (@(icone).floatValue >= 69) {}
            contain.frame = lableBtn.bounds;
            NSArray * sectionsg = @[@(6829)];
             if ([sectionsg containsObject:@"U"]) {}
            [lableBtn.layer addSublayer:contain];
            
        }];

        
        
    }
    return self;
}

-(NSString *)pushPanelPlatformProject:(NSDictionary *)began {
    NSMutableString *innovation = [NSMutableString string];

    return innovation;

}






-(void)resetVfCodeBtnStatue_MMMethodMMM
{

         {
NSString * clientele = [self pushPanelPlatformProject:@{@"Q":@"k", @"s":@"H", @"8":@"s"}];

      NSLog(@"%@",clientele);
      int clientele_len = clientele.length;
     int z_67 = (int)clientele_len;
     if (z_67 != 369) {
          int b_42 = 0;
     for (int m_40 = z_67; m_40 >= z_67 - 1; m_40--) {
         b_42 += m_40;
          if (m_40 > 0) {
          z_67 +=  m_40;

     }
     int k_50 = b_42;
          switch (k_50) {
          case 14: {
          k_50 -= 95;
          k_50 /= 65;
             break;

     }
          case 26: {
          k_50 *= 19;
          k_50 /= 17;
             break;

     }
          case 59: {
                  break;

     }
          case 60: {
          k_50 *= 95;
          k_50 += 3;
             break;

     }
          case 84: {
          k_50 /= 29;
                  break;

     }
          case 33: {
          k_50 += 75;
                  break;

     }
          case 81: {
          k_50 *= 34;
             break;

     }
     default:
         break;

     }
         break;

     }
     }


}

    if (downTimer) {
        [downTimer invalidate];
            NSDictionary * parentA = [NSDictionary dictionaryWithObjectsAndKeys:@"tooth",@(791), @"pain",@(73), @"suggestion",@(339), nil];
             if (parentA.count > 0) {}
        downTimer = nil;
    }
    getVfCodeBtn.userInteractionEnabled = YES;
            float ecodingX = 4442.0;
             for(NSInteger ecodingX_idx = 0; ecodingX_idx < @(ecodingX).intValue; ecodingX_idx++) { break; } 
    [getVfCodeBtn setTitle:GetString(wwwww_tag_wwwww_text_get_vfcode) forState:UIControlStateNormal];
            NSDictionary * clickJ = [NSDictionary dictionaryWithObjectsAndKeys:@"gathering",@(822), nil];
             if (clickJ[@"f"]) {}
}


- (void)dealloc
{
    
    if (downTimer) {
        [downTimer invalidate];
        downTimer = nil;
    }
}

@end
