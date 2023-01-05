
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
   self.arrayAccount_Array = [NSArray arrayWithObjects:@(164), @(596), nil];

   self.util_mark = 4256;

    [super initData_MMMethodMMM];
            NSArray * appleo = [NSArray arrayWithObjects:@(975), @(449), @(259), nil];
             if (appleo.count > 78) {}
    AccountModel *tempAccountModel = (AccountModel *)self.fromPageParam;
            NSString * c_subviewsy = @"fixed";
             while (c_subviewsy.length > 105) { break; }
    [AccountLoginView makeAccountFiledViewStatus_MMMethodMMM:tempAccountModel accountView_MMMethodMMM:thirdAccountSDKTextFiledView pwdView_MMMethodMMM:nil];
            double totaln = 1590.0;
             if (@(totaln).integerValue == 74) {}
    thirdAccountSDKTextFiledView.inputUITextField.enabled = NO;
            NSString * pushs = @"base";
             if (pushs.length > 175) {}
}

-(float)postTappedArrowCalendarTypes:(NSInteger)gameAccont remove:(NSDictionary *)remove firebaseInstall:(NSArray *)firebaseInstall {
    float palaverHornInveigle = 0;

    return palaverHornInveigle;

}






-(void)bindAccount_MMMethodMMM
{

         {
float england = [self postTappedArrowCalendarTypes:8573 remove:@{@"documentary":@(402), @"administer":@(229), @"truncated":@(260)} firebaseInstall:[NSArray arrayWithObjects:@(698), @(496), nil]];

      if (england > 52) {
             NSLog(@"%f",england);
      }
     int f_11 = (int)england;
     switch (f_11) {
          case 28: {
          f_11 /= 53;
             break;

     }
          case 3: {
          f_11 /= 40;
          int p_71 = 0;
     int h_18 = 0;
     if (f_11 > h_18) {
         f_11 = h_18;

     }
     for (int v_0 = 0; v_0 <= f_11; v_0++) {
         p_71 += v_0;
     int l_57 = p_71;
              break;

     }
             break;

     }
          case 10: {
          if (f_11 != 315) {
          }
             break;

     }
          case 98: {
          f_11 -= 40;
          f_11 /= 77;
             break;

     }
          case 6: {
          f_11 += 57;
             break;

     }
          case 42: {
          int m_37 = 1;
     int u_24 = 0;
     if (f_11 > u_24) {
         f_11 = u_24;
     }
     while (m_37 < f_11) {
         m_37 += 1;
          f_11 /= m_37;
     int w_61 = m_37;
              break;
     }
             break;

     }
          case 16: {
          if (f_11 < 387) {
          f_11 /= 2;
          }
     else {
          f_11 *= 64;

     }
             break;

     }
          case 44: {
          f_11 *= 79;
          int x_66 = 0;
     for (int r_55 = f_11; r_55 >= f_11 - 1; r_55--) {
         x_66 += r_55;
          if (r_55 > 0) {
          f_11 +=  r_55;

     }
     int g_91 = x_66;
          if (g_91 > 928) {
          }
         break;

     }
             break;

     }
          case 26: {
          int b_3 = 0;
     int p_92 = 0;
     if (f_11 > p_92) {
         f_11 = p_92;

     }
     for (int j_85 = 1; j_85 < f_11; j_85++) {
         b_3 += j_85;
          if (j_85 > 0) {
          f_11 -=  j_85;

     }
     int y_62 = b_3;
              break;

     }
             break;

     }
     default:
         break;

     }


}

    
    
    NSString *account = accountSDKTextFiledView.inputUITextField.text;
            float arrayi = 6324.0;
             while (@(arrayi).floatValue > 9) { break; }
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
            NSString * alertt = @"mode";
             if ([alertt isEqualToString:@"A"]) {}
        return;
    }
  
    
    [SDKRequest doAccountBindingWithUserName_MMMethodMMM:account password_MMMethodMMM:password phoneAreaCode_MMMethodMMM:@"" phoneNumber_MMMethodMMM:@"" vfCode_MMMethodMMM:@"" email_MMMethodMMM:account thirdId_MMMethodMMM:currentAccountModel.thirdId thirdPlate_MMMethodMMM:currentAccountModel.loginType otherParamsDic_MMMethodMMM:nil successBlock_MMMethodMMM:^(id responseData) {
        [SdkUtil toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_account_bind_success2)];
        
        LoginResponse *cc = (LoginResponse *)responseData;
            int controllerS = 8679;
             while (@(controllerS).intValue == 200) { break; }
        cc.data.account = account;
            NSDictionary * return_et = @{@"seldom":@(965), @"emigrant":@(672), @"barrier":@(671)};
             if (return_et.count > 129) {}
        cc.data.password = password;
            NSDictionary * foot_ = @{@"cause":@(297)};
        cc.data.loginType = currentAccountModel.loginType;
            double sharedi = 5041.0;
             while (@(sharedi).integerValue >= 9) { break; }
        SDK_DATA.mLoginResponse = cc;
        
        [[ConfigCoreUtil share] saveAccountModel_MMMethodMMM:cc.data];
        
        
        AccountModel *rData = cc.data;
            NSString * logined6 = @"throes";
        LoginData *loginData = [[LoginData alloc] init];
            NSDictionary * guests = [NSDictionary dictionaryWithObjectsAndKeys:@"bucolic",@(600), @"unravel",@(753), nil];
        loginData.accessToken = rData.token;
            double handlerO = 529.0;
             while (@(handlerO).integerValue == 164) { break; }
        loginData.userId = rData.userId;
            NSString * informationd = @"wizardry";
             if (informationd.length > 147) {}
        loginData.timestamp = rData.timestamp;
        
        loginData.isBind = rData.isBind;
            float presenting2 = 7608.0;
             if (@(presenting2).longValue < 36) {}
        loginData.isBindPhone = rData.isBindPhone;
            Boolean bolckA = YES;
             while (!bolckA) { __asm__("NOP"); break; }
        loginData.loginType = rData.loginType;
        
        loginData.sign = rData.sign;
            float firebasem = 2404.0;
             if (@(firebasem).floatValue > 100) {}
        loginData.telephone = rData.telephone;
            NSString * normalJ = @"imaginative";
             while (normalJ.length > 131) { break; }
        loginData.loginId = rData.loginId;
        
        if (self.mMWBlock) {
            self.mMWBlock(YES, loginData);
        }
        
        [self removeFromGameView];
        
    } errorBlock_MMMethodMMM:^(BJError *error) {
        [AlertUtil showAlertWithMessage_MMMethodMMM:error.message];
            float file4 = 9269.0;
             if (@(file4).doubleValue >= 167) {}
    }];
    
}



- (instancetype)initView_MMMethodMMM
{
    self = [super init];
    if (self) {
        
        self.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_000000 andAlpha_MMMethodMMM:0.15];
        
        UIView *contentView = [[UIView alloc] init];
        
        UIColor *color = [UIColor whiteColor];
            double total4 = 2503.0;
             while (@(total4).doubleValue > 150) { break; }
        contentView.backgroundColor = color;
            NSInteger private_wh3 = 2683;
             for(NSInteger private_wh3_idx = 0; private_wh3_idx < @(private_wh3).intValue; private_wh3_idx += 5) { break; } 
        contentView.layer.cornerRadius = 10; 
        contentView.layer.masksToBounds = YES;
        
        [self addSubview:contentView];
        [contentView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.center.mas_equalTo(self);
            float register_viM = 7588.0;
             if (@(register_viM).floatValue <= 92) {}
            make.width.mas_equalTo(VW(330));
            NSArray * normald = [NSArray arrayWithObjects:@(351), @(384), @(623), nil];
             while (normald.count > 84) { break; }
            make.height.mas_equalTo(VH(265));
            NSArray * seedZ = [NSArray arrayWithObjects:@(714), @(233), nil];
        }];
        
        
        UIView *titleView = [[UIView alloc] init];
            NSString * m_managery = @"acrobatics";
             if (m_managery.length > 166) {}
        [contentView addSubview:titleView];
        [titleView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(contentView.mas_top).mas_offset(VH(15));
            NSDictionary * binitialize2 = @{@"A":@"r", @"B":@"f"};
             if (binitialize2[@"4"]) {}
            make.leading.mas_equalTo(contentView).mas_offset(VW(15));
            make.trailing.mas_equalTo(contentView).mas_offset(VW(-15));
            
            
        }];
        
        UIView *tagView = [[UIView alloc] init];
            int makek = 2960;
             for(int makek_idx = 0; makek_idx < @(makek).intValue; makek_idx++) { break; } 
        tagView.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor];
            double handlem = 5570.0;
             for(NSInteger handlem_idx = 0; handlem_idx < @(handlem).intValue; handlem_idx++) { break; } 
        [titleView addSubview:tagView];
        [tagView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.mas_equalTo(titleView);
            float z_titleK = 9482.0;
             while (@(z_titleK).longLongValue <= 60) { break; }
            make.leading.mas_equalTo(titleView);
            NSArray * call6 = @[@(211), @(278)];
            make.width.mas_equalTo(VW(4));
            NSDictionary * efaultQ = @{@"ultimate":@(3926)};
             if (efaultQ[@"N"]) {}
            make.height.mas_equalTo(VH(14));
            
            make.bottom.mas_equalTo(titleView);
            double moreT = 9151.0;
             if (@(moreT).floatValue <= 192) {}
        }];
        
        
        UILabel *titleLabel = [UIUtil initLabelWithText_MMMethodMMM:wwwww_tag_wwwww_text_update_account.localx fontSize_MMMethodMMM:FS(15) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_2A2A2A]];
        titleLabel.font = [UIFont boldSystemFontOfSize:FS(15)];
        
        [titleView addSubview:titleLabel];
        [titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.leading.mas_equalTo(titleView).mas_offset(6);
            NSArray * dataS = [NSArray arrayWithObjects:@(638), @(847), @(711), nil];
             if (dataS.count > 13) {}
            make.trailing.mas_equalTo(titleView);
            make.top.mas_equalTo(titleView);
            float begin1 = 9348.0;
             if (@(begin1).integerValue > 118) {}
            make.bottom.mas_equalTo(titleView);
            double authrization1 = 2132.0;
             if (@(authrization1).integerValue == 172) {}
        }];
        
        UIButton *closeBtn = [UIUtil initBtnWithNormalImage_MMMethodMMM:icon_close_3 highlightedImage_MMMethodMMM:icon_close_3 tag_MMMethodMMM:TAG_CLOSE selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        
        [titleView addSubview:closeBtn];
        [closeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.trailing.mas_equalTo(titleView);
            NSArray * versionz = [NSArray arrayWithObjects:@(244), @(284), @(919), nil];
            make.centerY.mas_equalTo(titleView);
            NSInteger messageH = 4713;
             if (@(messageH).longValue > 161) {}
            make.width.mas_equalTo(VH(22));
            NSInteger filedV = 6614;
             for(int filedV_idx = 71; filedV_idx < @(filedV).intValue; filedV_idx--) { break; } 
            make.height.mas_equalTo(VH(22));
            NSDictionary * stateX = [NSDictionary dictionaryWithObjectsAndKeys:@"dictum",@(198), @"aware",@(79), nil];
             if (stateX.count > 53) {}
        }];
    
        
        AccountModel *currentAccount = SDK_DATA.mLoginResponse.data;
        if (currentAccount.isBind) {
            
            thirdAccountSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Account)];
            double accountR = 6985.0;
             while (@(accountR).intValue <= 91) { break; }
            thirdAccountSDKTextFiledView.moreAccountBtn.hidden = YES;
            NSString * removeh = @"nerveless";
             while (removeh.length > 83) { break; }
            thirdAccountSDKTextFiledView.layer.borderColor = ColorHex(wwwww_tag_wwwww__CC_606060).CGColor;
            NSDictionary * f_hidef = @{@"R":@"U"};
             if (f_hidef[@"9"]) {}
            thirdAccountSDKTextFiledView.lableIconImageView.image = [UIImage res_imageNamed_MMMethodMMM:mw_smail_icon2];
            NSDictionary * sdkH = @{@"detail":@(489)};
             if (sdkH.count > 70) {}
            thirdAccountSDKTextFiledView.inputUITextField.textColor = UIColor.blackColor;
            NSInteger texte = 4525;
             for(int texte_idx = 0; texte_idx < @(texte).intValue; texte_idx += 0) { break; } 
            thirdAccountSDKTextFiledView.inputUITextField.enabled = NO;
            float startZ = 1083.0;
             for(int startZ_idx = 0; startZ_idx < @(startZ).intValue; startZ_idx++) { break; } 
            [contentView addSubview:thirdAccountSDKTextFiledView];
            
            [thirdAccountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
                make.leading.mas_equalTo(titleView);
            Boolean btnQ = NO;
             if (btnQ) { __asm__("NOP"); }
                make.trailing.mas_equalTo(titleView);
            double utile = 3420.0;
             while (@(utile).integerValue <= 45) { break; }
                make.height.mas_equalTo(VH(40));

                make.top.mas_equalTo(titleView.mas_bottom).mas_offset(VH(28));
                
            }];
            
            [self makeAccountFiledViewStatus_MMMethodMMM:currentAccount accountView_MMMethodMMM:thirdAccountSDKTextFiledView pwdView_MMMethodMMM:nil];
            
            hasBind_accountSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Account)];
            NSArray * termsZ = [NSArray arrayWithObjects:@"hortative", @"acquittal", nil];
             while (termsZ.count > 174) { break; }
            hasBind_accountSDKTextFiledView.layer.borderColor = ColorHex(wwwww_tag_wwwww__CC_606060).CGColor;
            NSArray * cancelx = @[@(157), @(96)];
             if (cancelx.count > 141) {}
            hasBind_accountSDKTextFiledView.lableIconImageView.image = [UIImage res_imageNamed_MMMethodMMM:mw_smail_icon2];
            NSString * gameO = @"revise";
            hasBind_accountSDKTextFiledView.moreAccountBtn.hidden = YES;
            hasBind_accountSDKTextFiledView.inputUITextField.textColor = UIColor.blackColor;
            double dics = 7460.0;
             while (@(dics).intValue <= 106) { break; }
            hasBind_accountSDKTextFiledView.inputUITextField.enabled = NO;
            
            [contentView addSubview:hasBind_accountSDKTextFiledView];
            
            [hasBind_accountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
                
                make.leading.mas_equalTo(titleView);
            NSInteger bindingF = 5551;
             while (@(bindingF).intValue > 42) { break; }
                make.trailing.mas_equalTo(titleView);
            double filed0 = 8546.0;
             while (@(filed0).longValue == 12) { break; }
                make.height.mas_equalTo(thirdAccountSDKTextFiledView);

                make.top.mas_equalTo(thirdAccountSDKTextFiledView.mas_bottom).mas_offset(VH(15));
                
            }];
            
            hasBind_accountSDKTextFiledView.inputUITextField.text = currentAccount.loginId;
            
        }else{
            
            accountSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Account)];
            NSString * agreenk = @"holy";
             while (agreenk.length > 23) { break; }
            accountSDKTextFiledView.moreAccountBtn.hidden = YES;
            NSDictionary * alertS = [NSDictionary dictionaryWithObjectsAndKeys:@"narrow",@(483), nil];
             while (alertS.count > 41) { break; }
            accountSDKTextFiledView.layer.borderColor = ColorHex(wwwww_tag_wwwww__CC_606060).CGColor;
            NSDictionary * from9 = @{@"prudish":@(646)};
             if (from9.count > 41) {}
            accountSDKTextFiledView.inputUITextField.textColor = UIColor.blackColor;
            NSArray * orderB = @[@(350), @(585)];
            accountSDKTextFiledView.lableIconImageView.image = [UIImage res_imageNamed_MMMethodMMM:mw_smail_icon2];
            [contentView addSubview:accountSDKTextFiledView];
            
            [accountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
                
                make.leading.mas_equalTo(titleView);
            NSString * readerS = @"injunction";
             if (readerS.length > 194) {}
                make.trailing.mas_equalTo(titleView);
            NSDictionary * backY = [NSDictionary dictionaryWithObjectsAndKeys:@"forwardness",@(756), @"pleat",@(6), @"commentator",@(830), nil];
                make.height.mas_equalTo(VH(40));

                make.top.mas_equalTo(titleView.mas_bottom).mas_offset(VH(28));
                
            }];
            
            
            
            pwdSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Password)];
            Boolean window_tN = NO;
             while (!window_tN) { __asm__("NOP"); break; }
            pwdSDKTextFiledView.lableIconImageView.image = [UIImage res_imageNamed_MMMethodMMM:mw_passowrd_icon2];
            NSArray * formatM = [NSArray arrayWithObjects:@(941), @(24), @(610), nil];
            pwdSDKTextFiledView.layer.borderColor = ColorHex(wwwww_tag_wwwww__CC_606060).CGColor;
            NSDictionary * userg = [NSDictionary dictionaryWithObjectsAndKeys:@"bravura",[NSDictionary dictionaryWithObjectsAndKeys:@"invader",@(639), @"forebode",@(25), nil], nil];
            pwdSDKTextFiledView.inputUITextField.textColor = UIColor.blackColor;
            Boolean role4 = NO;
             if (role4) { __asm__("NOP"); }
            [contentView addSubview:pwdSDKTextFiledView];
            
            [pwdSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
                make.leading.mas_equalTo(titleView);
            Boolean keyboard_ = NO;
             if (keyboard_) { __asm__("NOP"); }
                make.trailing.mas_equalTo(titleView);
            double impF = 9232.0;
             while (@(impF).longLongValue <= 179) { break; }
                make.height.mas_equalTo(accountSDKTextFiledView);

                make.top.mas_equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(VH(15));
                
            }];
            
            UILabel *bindTipLabel = [UIUtil initLabelWithText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_bind_account_tips) fontSize_MMMethodMMM:FS(10) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0]];
            Boolean sheetD = NO;
             while (!sheetD) { __asm__("NOP"); break; }
            bindTipLabel.numberOfLines = 0;
            NSArray * f_centerg = [NSArray arrayWithObjects:@(3707.0), nil];
             if (f_centerg.count > 161) {}
            [contentView addSubview:bindTipLabel];
            
            [bindTipLabel mas_makeConstraints:^(MASConstraintMaker *make) {
                make.leading.mas_equalTo(pwdSDKTextFiledView);
            NSString * levele = @"convinced";
                make.trailing.mas_equalTo(pwdSDKTextFiledView);
            NSInteger functionZ = 9404;
             if (@(functionZ).intValue == 143) {}
                make.top.equalTo(pwdSDKTextFiledView.mas_bottom).mas_offset(VH(6));
                
            }];
            
        }
        
        
        UIButton *okBtn = [UIUtil initBtnWithTitleText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_confire) fontSize_MMMethodMMM:FS(17) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kOkActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        
        [okBtn.layer setCornerRadius:VH(20)];
            NSString * type_duF = @"friendship";
             if (type_duF.length > 188) {}
        okBtn.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor];
            NSArray * userdefaultA = @[@(301), @(129), @(423)];
             if (userdefaultA.count > 199) {}
        [contentView addSubview:okBtn];
        
        [okBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.bottom.equalTo(contentView).mas_offset(VH(-25));
            double inewsF = 4403.0;
             if (@(inewsF).doubleValue >= 53) {}
            make.leading.trailing.mas_equalTo(titleView);
            NSDictionary * error2 = [NSDictionary dictionaryWithObjectsAndKeys:@"overhead",@(866), nil];
             if (error2[@"V"]) {}
            make.height.mas_equalTo(VH(40));
            NSDictionary * f_height8 = [NSDictionary dictionaryWithObjectsAndKeys:@"inefficacious",@(308), @"discover",@(336), @"dealer",@(322), nil];
             if (f_height8.count > 63) {}
        }];
        
      
    }
    return self;
}

-(NSString *)decisionStatueAutorelease:(int)esclipe btn:(double)btn event:(NSArray *)event {
     double arrayEsclipe = 6647.0;
     long reload = 4925;
    NSMutableString *collectAleProcession = [NSMutableString new];
         int t_18 = (int)arrayEsclipe;
     if (t_18 > 157) {
          t_18 *= 3;
          int a_63 = 1;
     int s_90 = 0;
     if (t_18 > s_90) {
         t_18 = s_90;
     }
     while (a_63 < t_18) {
         a_63 += 1;
          t_18 -= a_63;
          t_18 += 78;
         break;
     }
     }
         int _d_60 = (int)reload;
     _d_60 -= 13;

    return collectAleProcession;

}






- (void)registerViewBtnAction_MMMethodMMM:(UIButton *)sender
{

         {
NSString * folder = [self decisionStatueAutorelease:5409 btn:2121.0 event:[NSArray arrayWithObjects:@(762), @(470), nil]];

      if ([folder isEqualToString:@"conf"]) {
              NSLog(@"%@",folder);
      }
      int folder_len = folder.length;
     int e_88 = (int)folder_len;
     int w_97 = 1;
     int b_29 = 1;
     if (e_88 > b_29) {
         e_88 = b_29;
     }
     while (w_97 <= e_88) {
         w_97 += 1;
     int n_71 = w_97;
          int g_6 = 1;
     int f_35 = 1;
     if (n_71 > f_35) {
         n_71 = f_35;
     }
     while (g_6 <= n_71) {
         g_6 += 1;
     int c_92 = g_6;
          if (c_92 != 655) {
          c_92 -= 67;
          }
         break;
     }
         break;
     }


}

    switch (sender.tag) {
            
        case TAG_CLOSE:
            [self removeFromGameView];
        {
            int responcep = 9936;
             if (@(responcep).longLongValue <= 33) {}
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


-(void)makeAccountFiledViewStatus_MMMethodMMM:(AccountModel *)mAccountModel accountView_MMMethodMMM:(SDKTextFiledView *)accountFiledView pwdView_MMMethodMMM:(SDKTextFiledView *)pwdFiledView{

    
    
    
    NSString *account = wwwww_tag_wwwww_text_has_bind_tips_mw.localx;
            float enginev = 7838.0;
             while (@(enginev).longValue < 150) { break; }
    NSString *account_tips = wwwww_tag_wwwww_text_has_bind_tips_mw.localx;
            double order1 = 9850.0;
             while (@(order1).floatValue >= 155) { break; }
    NSString *iconName = mw_smail_icon2;
    NSString *pwdText = GetString(wwwww_tag_wwwww_text_free_register);
    
    BOOL pwdEnable = YES;
    
    if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_SELF]) {
        
        account = mAccountModel.account;
            int footx = 5249;
             for(int footx_idx = 11; footx_idx < @(footx).intValue; footx_idx -= 6) { break; } 
        iconName = mw_smail_icon2;
            NSString * rotateQ = @"crusade";
             if ([rotateQ isEqualToString:@"t"]) {}
        pwdText = mAccountModel.password;
            float button9 = 9830.0;
             if (@(button9).longLongValue == 45) {}
        pwdEnable = YES;
        account_tips = wwwww_tag_wwwww_text_has_bind_tips_mw.localx;
        
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_FB]){
        iconName = fb_smail_icon;
            int touchess = 8823;
             while (@(touchess).doubleValue < 168) { break; }
        pwdEnable = NO;
            NSArray * appkey1 = [NSArray arrayWithObjects:@"retentive", nil];
             if ([appkey1 containsObject:@"v"]) {}
        account_tips = wwwww_tag_wwwww_text_has_bind_tips_fb.localx;
        
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_GOOGLE]){
        iconName = google_smail_icon;
        pwdEnable = NO;
            NSString * timer3 = @"chorus";
             if (timer3.length > 176) {}
        account_tips = wwwww_tag_wwwww_text_has_bind_tips_google.localx;
        
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_GUEST]){
        iconName = guest_smail_icon;
            NSString * guestv = @"refectory";
        pwdEnable = NO;
            NSArray * t_title5 = @[@(9291.0)];
        account_tips = wwwww_tag_wwwww_text_has_bind_tips_guest.localx;
        
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_APPLE]){
        iconName = apple_smail_icon;
            int rameworkR = 3835;
             for(int rameworkR_idx = 91; rameworkR_idx < @(rameworkR).intValue; rameworkR_idx -= 4) { break; } 
        pwdEnable = NO;
            NSArray * event2 = @[@(733), @(367), @(322)];
             if ([event2 containsObject:@"I"]) {}
        account_tips = wwwww_tag_wwwww_text_has_bind_tips_apple.localx;
        
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_LINE]){
        iconName = line_smail_icon;
            NSString * nameb = @"juvenile";
        pwdEnable = NO;
            NSDictionary * conf_ = @{@"voyage":@(24)};
             while (conf_.count > 46) { break; }
        account_tips = wwwww_tag_wwwww_text_has_bind_tips_line.localx;
    }
    
    accountFiledView.lableIconImageView.image = [UIImage res_imageNamed_MMMethodMMM:iconName];
            float radiusJ = 1330.0;
             if (@(radiusJ).doubleValue == 44) {}
    accountFiledView.inputUITextField.text = account_tips;
    
    if (pwdFiledView) {
       
        if (pwdEnable) {
            pwdFiledView.hidden = NO;
            NSInteger termU = 8063;
             while (@(termU).floatValue < 122) { break; }
            pwdFiledView.inputUITextField.text = pwdText;
            
            [pwdFiledView mas_updateConstraints:^(MASConstraintMaker *make) {
                
                make.height.mas_equalTo(VH(40));
            double successr = 7189.0;
             while (@(successr).longValue > 87) { break; }
            }];
            
            
        }else{
            pwdFiledView.inputUITextField.text = @"";
            NSInteger firebasee = 1544;
             for(NSInteger firebasee_idx = 0; firebasee_idx < @(firebasee).intValue; firebasee_idx += 0) { break; } 
            pwdFiledView.hidden = YES;
            [pwdFiledView mas_updateConstraints:^(MASConstraintMaker *make) {
                make.height.mas_equalTo(1);
            double changef = 9040.0;
             if (@(changef).integerValue < 170) {}
            }];
            
            
        }
        [pwdFiledView layoutIfNeeded];
        
    }
}

@end
