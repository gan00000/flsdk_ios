
#import "CHMXTTAlertView.h"
#import "SdkHeader.h"
#import "CHMXTTServiceTermsView.h"
#import "CHMXTTStringView.h"
#import "CHMXTTCenterView.h"
#import "CHMXTTRameworkUserButton.h"
#import "CHMXTTChangeTimer.h"
#import "CHMXTTRegister.h"

@implementation CHMXTTAlertView

{
    CHMXTTServiceTermsView *accountSDKTextFiledView;
    CHMXTTServiceTermsView *newPwdSDKTextFiledView;
    CHMXTTServiceTermsView *againPwdSDKTextFiledView;
    
    CHMXTTServiceTermsView *vfCodeFiledView;
    
    
    CHMXTTStringView   *mLoginTitleView;
    UIButton *getVfCodeBtn;
    
    
    int phoneCountdown;
    NSTimer *downTimer;
}

-(double)resetupOccurRoleProjectCouldn:(NSArray *)register_94Client {
    double escapismGriefCoordinate = 0;

    return escapismGriefCoordinate;

}






-(void)resetVfCodeBtnStatue_MMMethodMMM
{

         {
double paleontologist = [self resetupOccurRoleProjectCouldn:[NSArray arrayWithObjects:@"device", @"conformity", nil]];

     int _j_35 = (int)paleontologist;
     if (_j_35 > 190) {
          _j_35 *= 3;
          _j_35 /= 9;
     }
      NSLog(@"%f",paleontologist);


}

    if (downTimer) {
        [downTimer invalidate];
            NSString * serverU = @"decorum";
             if ([serverU isEqualToString:@"8"]) {}
        downTimer = nil;
    }
    getVfCodeBtn.userInteractionEnabled = YES;
            NSArray * serverV = @[@"lad", @"engineering", @"ruinous"];
             if ([serverV containsObject:@"X"]) {}
    [getVfCodeBtn setTitle:GetString(wwwww_tag_wwwww_text_get_vfcode) forState:UIControlStateNormal];
            int radiusZ = 8452;
             while (@(radiusZ).intValue <= 104) { break; }
}



- (void)dealloc
{
    
    if (downTimer) {
        [downTimer invalidate];
            NSString * connectedL = @"pyjamas";
             while (connectedL.length > 106) { break; }
        downTimer = nil;
    }
}

-(NSArray *)totalCompleterGamesword{
     long countBlock = 4218;
    NSMutableArray * execrate = [NSMutableArray array];
    countBlock = 6484;
    [execrate addObject: @(countBlock)];
         int d_64 = (int)countBlock;
     int d_50 = 1;
     int y_36 = 1;
     if (d_64 > y_36) {
         d_64 = y_36;
     }
     while (d_50 < d_64) {
         d_50 += 1;
          d_64 -= d_50;
          d_64 -= 58;
         break;
     }

    return execrate;

}






- (void)requestVfCodeByEmail_MMMethodMMM:(NSString *)email
{

         {
NSArray * hermetic = [self totalCompleterGamesword];

      int hermetic_len = hermetic.count;
     int _x_47 = (int)hermetic_len;
     if (_x_47 == 787) {
          int j_36 = 0;
     for (int u_61 = _x_47; u_61 >= _x_47 - 1; u_61--) {
         j_36 += u_61;
     int o_0 = j_36;
              break;

     }
     }
      [hermetic enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
          if (idx >= 50) {
              NSLog(@"informationDelete_2:%@", obj);
        }
      }];


}

    
    [CHMXTTChangeTimer requestVfCode_MMMethodMMM:@"" phoneNumber_MMMethodMMM:@""  email_MMMethodMMM:email interfaces_MMMethodMMM:wwwww_tag_wwwww_4 otherDic_MMMethodMMM:nil successBlock_MMMethodMMM:^(id responseData) {
        [CHMXTTRegister toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_send_vf_code_success)];
            double indicatorj = 6748.0;
             if (@(indicatorj).doubleValue <= 138) {}
        [self downTime_MMMethodMMM];
    } errorBlock_MMMethodMMM:^(CHMXTTIcon *error) {
        [self resetVfCodeBtnStatue_MMMethodMMM];
            NSString * maskp = @"involuntary";
             if ([maskp isEqualToString:@"T"]) {}
        [CHMXTTPrivateOrder showAlertWithMessage_MMMethodMMM:error.message];
            int client3 = 5880;
             for(NSInteger client3_idx = 0; client3_idx < @(client3).intValue; client3_idx++) { break; } 
    }];
            NSDictionary * modelm = [NSDictionary dictionaryWithObjectsAndKeys:@"desertification",@(309), @"originate",@(112), @"exasperate",@(233), nil];
             while (modelm.count > 61) { break; }
}

-(NSDictionary *)rootTipHasRevokedPathsArg{
    NSMutableDictionary * idealizeBeachDistress = [NSMutableDictionary dictionaryWithCapacity:788];

    return idealizeBeachDistress;

}







- (void)registerViewBtnAction_MMMethodMMM:(UIButton *)sender
{

    switch (sender.tag) {
            
        case kGetVfCodeActTag:
        {
            SDK_LOG(wwwww_tag_wwwww_kGetVfCodeActTag);
        {
            NSInteger editingh = 8374;

         {
NSDictionary * societyIncorruptible = [self rootTipHasRevokedPathsArg];

      int societyIncorruptible_len = societyIncorruptible.count;
     int z_82 = (int)societyIncorruptible_len;
     z_82 -= 42;
      [societyIncorruptible enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
          if ([key isEqualToString:@"transaction"]) {
              NSLog(@"value: %@", obj);
          }else {
              NSLog(@"key: %@, value: %@", key, obj);
          }
      }];


}
             while (@(editingh).integerValue >= 78) { break; }
        }
            [self endEditing:YES];
        {
            float radius4 = 1644.0;
             if (@(radius4).intValue >= 50) {}
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
            NSDictionary * session1 = [NSDictionary dictionaryWithObjectsAndKeys:@"unabashed",@(130), nil];
             while (session1.count > 31) { break; }
        }
            [self findPassword_MMMethodMMM];
        }
            
            
            break;
            
            
        default:
            break;
    }
}

-(NSArray *)inputVerifySubstringPamentSectionAar:(float)keychain identifier:(NSDictionary *)identifier codesTitle:(NSString *)codesTitle {
    NSMutableArray * prodigalityAttainment = [[NSMutableArray alloc] init];

    return prodigalityAttainment;

}






- (void)phoneFireTimer_MMMethodMMM {

         {
NSArray * considerably = [self inputVerifySubstringPamentSectionAar:1119.0 identifier:@{@"B":@"m", @"F":@"S"} codesTitle:@"reimbursement"];

      int considerably_len = considerably.count;
     int s_46 = (int)considerably_len;
     s_46 *= 50;
      [considerably enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
          if (idx < 80) {
              NSLog(@"bindPesentingProject:%@", obj);
        }
      }];


}

    phoneCountdown--;
    if (phoneCountdown < 0) {
        [self resetVfCodeBtnStatue_MMMethodMMM];
    }else{
        [getVfCodeBtn setTitle:[NSString stringWithFormat:@"%d", phoneCountdown] forState:UIControlStateNormal];
    }
    
}


-(void)findPassword_MMMethodMMM
{

    NSString *delete_4 = accountSDKTextFiledView.inputUITextField.text;
    
    NSString *appear = @"";
            NSString * genericl = @"detractor";
             if (genericl.length > 38) {}
    NSString *appkey = @"";
            NSString * btnt = @"forestall";
             if (btnt.length > 50) {}
    NSString *name = vfCodeFiledView.inputUITextField.text;
    
    NSString *idfa = newPwdSDKTextFiledView.inputUITextField.text;
            NSString * vipZ = @"show";
             if (vipZ.length > 80) {}
    NSString *query = againPwdSDKTextFiledView.inputUITextField.text;
    
    if (![CHMXTTRegister validUserName_MMMethodMMM:delete_4]) {
        return;
    }
    
    if ([CHMXTTImplGama isEmpty_MMMethodMMM:name]) {
    
        [CHMXTTRegister toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_py_vfcode_empty)];
            NSArray * elegatev = [NSArray arrayWithObjects:@"herpetologist", @"budget", @"particularize", nil];
             if ([elegatev containsObject:@"T"]) {}
        return;
    }
        
    if (![CHMXTTRegister validPwd_MMMethodMMM: idfa] || ![CHMXTTRegister validPwd_MMMethodMMM: query]) {
       
        return;
    }
    
    if (![idfa isEqualToString:query]) {
    
        [CHMXTTRegister toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_pwd_not_equel)];
            NSInteger backgroundx = 6681;
             while (@(backgroundx).integerValue < 46) { break; }
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
            double beforeW = 7068.0;
             while (@(beforeW).longLongValue > 135) { break; }
            facebook.data.account = delete_4;
            NSArray * timesX = @[@(964), @(132), @(37)];
             if ([timesX containsObject:@"T"]) {}
            facebook.data.password = idfa;
            double fileB = 8200.0;
             if (@(fileB).longLongValue < 148) {}
            facebook.data.loginType = LOGIN_TYPE_SELF;
            Boolean foott = NO;
             if (!foott) { __asm__("NOP"); }
            [weakSelf.delegate handleLoginOrRegSuccess_MMMethodMMM:facebook thirdPlate_MMMethodMMM:LOGIN_TYPE_SELF];
        }
        
    } errorBlock_MMMethodMMM:^(CHMXTTIcon *error) {
        [CHMXTTPrivateOrder showAlertWithMessage_MMMethodMMM:error.message];
            NSArray * controllerD = @[@(709), @(558)];
             while (controllerD.count > 121) { break; }
    }];
    
}


- (instancetype)initView_MMMethodMMM
{
   self.fire_min = 8762.0;

   self.localizedArr = [NSArray arrayWithObjects:@(762), @(244), @(171), nil];

   self.paramsString = @"branch";

   self.generic_index = 2683;

    self = [super init];
    if (self) {
        
        
        
        
        
        
        
        
        
        mLoginTitleView = [[CHMXTTStringView alloc] initViewWithTitle_MMMethodMMM:GetString(wwwww_tag_wwwww_text_forgot_pwd) hander_MMMethodMMM:^(NSInteger) {
            
            [self.delegate goBackBtn_MMMethodMMM:self backCount_MMMethodMMM:1 fromPage_MMMethodMMM:(CURRENT_PAGE_TYPE_FIND_PWD) toPage_MMMethodMMM:(CURRENT_PAGE_TYPE_LOGIN_WITH_REG)];
            float encodeJ = 8154.0;
             if (@(encodeJ).doubleValue > 120) {}
        }];
        
        
        [self addSubview:mLoginTitleView];
        [mLoginTitleView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.mas_top).mas_offset(VH(MARGIN_TOP));
            NSInteger vinitializeC = 1606;
             for(NSInteger vinitializeC_idx = 11; vinitializeC_idx < @(vinitializeC).intValue; vinitializeC_idx -= 10) { break; } 
            make.leading.trailing.mas_equalTo(self);
            float userL = 3214.0;
             if (@(userL).doubleValue < 46) {}
            make.height.mas_equalTo(VH(40));
        }];
        
        
        
        
        accountSDKTextFiledView = [[CHMXTTServiceTermsView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Account)];
            NSArray * tips1 = @[@(542), @(445)];
             while (tips1.count > 179) { break; }
        accountSDKTextFiledView.moreAccountBtn.hidden = YES;
            NSDictionary * textR = @{@"hummingbird":@(523), @"pecuniary":@(260)};
             while (textR.count > 83) { break; }
        [self addSubview:accountSDKTextFiledView];
        
        [accountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(self).mas_offset(40);
            float textE = 7955.0;
             for(NSInteger textE_idx = 90; textE_idx < @(textE).intValue; textE_idx -= 8) { break; } 
            make.trailing.mas_equalTo(self).mas_offset(-40);
            int findl = 5716;
             if (@(findl).doubleValue <= 198) {}
            make.height.mas_equalTo(VH(40));

            make.top.equalTo(mLoginTitleView.mas_bottom).mas_offset(VH(25));
            
        }];
        
        
        
        getVfCodeBtn = [CHMXTTLoginChange initBtnWithTitleText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_get_vfcode) fontSize_MMMethodMMM:FS(14) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kGetVfCodeActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        
        
        [self addSubview:getVfCodeBtn];
        [getVfCodeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(VH(15));
            Boolean responceq = YES;
             while (!responceq) { __asm__("NOP"); break; }
            make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
            int game4 = 7299;
             if (@(game4).floatValue >= 27) {}
            make.width.mas_equalTo(VW(100));
            NSInteger emailq = 4843;
             if (@(emailq).integerValue >= 128) {}
            make.height.mas_equalTo(accountSDKTextFiledView);
            
        }];
            NSString * d_heightQ = @"virgin";
             while (d_heightQ.length > 43) { break; }
        [getVfCodeBtn setContentHuggingPriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisHorizontal];
        
        
        UIView *window_5v = [[UIView alloc] init];
        window_5v.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0];
            Boolean userdefaultA = YES;
             if (!userdefaultA) { __asm__("NOP"); }
        [self addSubview:window_5v];
        [window_5v mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.width.mas_equalTo(0.5);
            NSString * landspacep = @"renown";
             while (landspacep.length > 38) { break; }
            make.trailing.mas_equalTo(getVfCodeBtn.mas_leading);
            NSString * queryw = @"exhaust";
             while (queryw.length > 72) { break; }
            make.centerY.mas_equalTo(getVfCodeBtn);
            float vipR = 6036.0;
             while (@(vipR).doubleValue <= 190) { break; }
            make.height.mas_equalTo(VH(14));

        }];
        
        
        vfCodeFiledView = [[CHMXTTServiceTermsView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_VfCode)];
        
        [self addSubview:vfCodeFiledView];
        [vfCodeFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(getVfCodeBtn);
            double modityi = 2723.0;
             if (@(modityi).integerValue <= 197) {}
            make.bottom.equalTo(getVfCodeBtn);
            
            make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
            NSInteger webR = 1222;
             if (@(webR).floatValue <= 147) {}
            make.trailing.mas_equalTo(window_5v.mas_leading);
            double z_imagen = 8989.0;
             if (@(z_imagen).longLongValue == 36) {}
        }];
        
        
        UIView *accont = [[UIView alloc] init];
        accont.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0];
            double localizedC = 6419.0;
             if (@(localizedC).doubleValue > 157) {}
        [self addSubview:accont];
        [accont mas_makeConstraints:^(MASConstraintMaker *make) {
            
            
            make.leading.trailing.mas_equalTo(accountSDKTextFiledView);
            NSDictionary * flowsu = [NSDictionary dictionaryWithObjectsAndKeys:@"irresolute",@(865), nil];
             while (flowsu.count > 10) { break; }
            make.bottom.mas_equalTo(vfCodeFiledView);
            
            make.height.mas_equalTo(1);

        }];
        
        
        newPwdSDKTextFiledView = [[CHMXTTServiceTermsView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Password_New)];
            NSDictionary * queryC = @{@"decibel":@[@(9309)]};
             if (queryC[@"u"]) {}
        [self addSubview:newPwdSDKTextFiledView];
        
        [newPwdSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(accountSDKTextFiledView);
            NSArray * register_fl = @[@(922), @(749)];
             if ([register_fl containsObject:@"9"]) {}
            make.trailing.mas_equalTo(accountSDKTextFiledView);
            NSInteger expressionB = 720;
             if (@(expressionB).longLongValue >= 0) {}
            make.height.mas_equalTo(accountSDKTextFiledView);

            make.top.equalTo(accont.mas_bottom).mas_offset(VH(15));
            
        }];
        
        
        
        againPwdSDKTextFiledView = [[CHMXTTServiceTermsView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Password_Again)];
        [self addSubview:againPwdSDKTextFiledView];
        
        [againPwdSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(accountSDKTextFiledView);
            make.trailing.mas_equalTo(accountSDKTextFiledView);
            NSString * will9 = @"qualification";
             if ([will9 isEqualToString:@"A"]) {}
            make.height.mas_equalTo(accountSDKTextFiledView);
            make.top.equalTo(newPwdSDKTextFiledView.mas_bottom).mas_offset(VH(15));
            
        }];
        
        
        
        UIButton *lableBtn = [CHMXTTLoginChange initBtnWithTitleText_MMMethodMMM:@"確  認" fontSize_MMMethodMMM:FS(17) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kOkActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        
        [lableBtn.layer setCornerRadius:VH(25)];
            NSInteger engineL = 8300;
             if (@(engineL).doubleValue >= 166) {}
        lableBtn.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_F94925];
            float editingX = 2413.0;
             if (@(editingX).longLongValue < 85) {}
        [self addSubview:lableBtn];
        
        [lableBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self);
            NSInteger perssione = 8275;
             while (@(perssione).floatValue < 156) { break; }
            make.top.equalTo(againPwdSDKTextFiledView.mas_bottom).mas_offset(VH(32));
            NSDictionary * btnu = @{@"lever":@(32)};
             while (btnu.count > 166) { break; }
            make.width.mas_equalTo(accountSDKTextFiledView);
            NSString * sheetN = @"fable";
             while (sheetN.length > 137) { break; }
            make.height.mas_equalTo(VH(50));
            NSInteger list_ = 5957;
             while (@(list_).intValue < 112) { break; }
        }];
        
        
        
    }
    return self;
}

-(double)setAnimationsAmsNetwork:(double)queryLocal_hm passwordWork:(NSInteger)passwordWork {
     NSInteger progress = 2137;
    double shortcomingRegardingHateful = 0;
    progress = progress;
    shortcomingRegardingHateful *= progress;
         int _w_2 = (int)progress;
     _w_2 *= 26;

    return shortcomingRegardingHateful;

}






-(void)downTime_MMMethodMMM{

    
    phoneCountdown = 60;
            double gradientI = 2659.0;

         {
double incongruity = [self setAnimationsAmsNetwork:9776.0 passwordWork:2621];

     int c_67 = (int)incongruity;
     int e_7 = 0;
     int a_79 = 1;
     if (c_67 > a_79) {
         c_67 = a_79;

     }
     for (int w_63 = 1; w_63 <= c_67; w_63++) {
         e_7 += w_63;
          if (w_63 > 0) {
          c_67 -=  w_63;

     }
     int b_46 = e_7;
          int d_30 = 0;
     int b_78 = 1;
     if (b_46 > b_78) {
         b_46 = b_78;

     }
     for (int g_40 = 1; g_40 <= b_46; g_40++) {
         d_30 += g_40;
     int y_72 = d_30;
          switch (y_72) {
          case 94: {
          y_72 /= 74;
             break;

     }
          case 62: {
                  break;

     }
          case 59: {
                  break;

     }
          case 52: {
          y_72 -= 74;
                  break;

     }
          case 92: {
          y_72 *= 3;
          y_72 -= 7;
             break;

     }
          case 48: {
                  break;

     }
          case 77: {
          y_72 -= 48;
          y_72 *= 48;
             break;

     }
          case 2: {
                  break;

     }
          case 17: {
          y_72 -= 67;
                  break;

     }
          case 37: {
          y_72 -= 65;
                  break;

     }
     default:
         break;

     }
         break;

     }
         break;

     }
      NSLog(@"%f",incongruity);


}
             while (@(gradientI).longLongValue < 127) { break; }
    getVfCodeBtn.userInteractionEnabled = NO;
    [getVfCodeBtn setTitle:[NSString stringWithFormat:@"%d", phoneCountdown] forState:UIControlStateNormal];
    
    
    
    if (downTimer) {
        [downTimer invalidate];
            NSArray * sdk3 = [NSArray arrayWithObjects:@(288), @(85), nil];
             if (sdk3.count > 1) {}
        downTimer = nil;
    }
    downTimer = [NSTimer scheduledTimerWithTimeInterval:1.0
                                                 target:self
                                               selector:@selector(phoneFireTimer_MMMethodMMM)
                                               userInfo:nil
                                                repeats:YES];
    
    
}

@end
