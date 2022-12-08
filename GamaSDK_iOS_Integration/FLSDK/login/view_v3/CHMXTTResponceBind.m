
#import "CHMXTTResponceBind.h"
#import "CHMXTTStringView.h"
#import "CHMXTTRameworkUserButton.h"
#import "CHMXTTHourCell.h"
#import "CHMXTTCore.h"
#import "YYModel.h"
#import "AccountModel.h"
#import "CHMXTTRegister.h"
#import "CHMXTTLocal.h"
#import "CHMXTTAccount.h"
#import "CHMXTTHelperButton.h"
#import <AuthenticationServices/AuthenticationServices.h>
#import "CHMXTTErvice.h"
#import "CHMXTTEncodingLineView.h"
#import "CHMXTTModeUtilView.h"
#import "CHMXTTGamaCore.h"
#import "LoginButtonData.h"
#import "CHMXTTConfig.h"
#import "CHMXTTHeaderLoggerView.h"
#import "CHMXTTInfo.h"

@interface CHMXTTResponceBind()



@property(nonatomic, assign)NSInteger  loginedTag;
@property(nonatomic, assign)double  plist_padding;
@property(nonatomic, assign)double  selected_offset;


@end

@implementation CHMXTTResponceBind
{
    CHMXTTServiceTermsView *passwordSDKTextFiledView;
    CHMXTTServiceTermsView *accountSDKTextFiledView;
    
    UIButton *accountLoginBtn;
    UIButton *backBtn;
    
    NSMutableArray<AccountModel *>  *accountDataList;
    
    UIButton *checkBoxTermsBtn;
    
    CHMXTTErvice *gamaAppleLogin;
    
    BOOL isAgree;
    
    AccountModel *currentAccountModel;
    
    CHMXTTModeUtilView *accountListView;
    CHMXTTHeaderLoggerView *accountMaskView;
    
    UIView *deleteAccountConfireView;
    UIView *deleteBtnView;
    
    CAGradientLayer *loginGl;

}

-(long)whitespaceHibaticInitiatedConnectionLayer:(int)down {
     int pay_m = 3709;
     double customHandle = 894.0;
    long slimBowl = 0;
    pay_m -= pay_m;
    slimBowl *= pay_m;
         int temp_g_94 = (int)pay_m;
     temp_g_94 -= 87;
    customHandle = pay_m;
    customHandle = customHandle;
    slimBowl /= MAX(customHandle, 1);
         int temp_z_67 = (int)customHandle;
     if (temp_z_67 < 871) {
          }
     else if (temp_z_67 >= 14) {
     
     }
     else {
          temp_z_67 -= 22;
          temp_z_67 /= 70;

     }

    return slimBowl;

}







-(void)requestAccountLogin_MMMethodMMM
{

         {
long indispensability = [self whitespaceHibaticInitiatedConnectionLayer:6328];

     int k_99 = (int)indispensability;
     k_99 /= 80;
      NSLog(@"%ld",indispensability);


}

    
    NSString *reset = [CHMXTTRegister triString_MMMethodMMM:accountSDKTextFiledView.inputUITextField.text];
            NSString * reseth = @"campus";
    NSString *began = [CHMXTTRegister triString_MMMethodMMM:passwordSDKTextFiledView.inputUITextField.text];
    
    
    if (!reset || [reset isEqualToString:@""]) {
        [CHMXTTRegister toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_py_account_empty)];
            NSDictionary * projectQ = [NSDictionary dictionaryWithObjectsAndKeys:@"politician",@(9785.0), nil];
             while (projectQ.count > 87) { break; }
        return;
    }
    
    if (![CHMXTTRegister validUserName_MMMethodMMM:reset]) {
        [CHMXTTRegister toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_account_format)];
            NSString * dateK = @"works";
             while (dateK.length > 66) { break; }
        return;
    }
    
    if (!began || [began isEqualToString:@""]) {
        [CHMXTTRegister toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_py_password_empty)];
            NSString * seedD = @"emulsify";
        return;
    }
    [CHMXTTAccount selfLoginAndRequest_MMMethodMMM:self.delegate account_MMMethodMMM:reset pwd_MMMethodMMM:began];
            double size_1hZ = 9196.0;
             if (@(size_1hZ).intValue > 148) {}
}


- (void)dealloc{
    if (accountMaskView) {
        [accountMaskView removeFromSuperview];
    }
}

-(NSArray *)languageMislessControllersSin{
    NSMutableArray * butMien = [NSMutableArray array];

    return butMien;

}






-(BOOL)checkAgreeTerm_MMMethodMMM
{

   self.loginedTag = 9974;

   self.plist_padding = 1852.0;

   self.selected_offset = 1765.0;

   self.bindCount = 5097;

   self.radius_str = @"withstand";

   self.local_8_ = 3842;

         {
NSArray * communication = [self languageMislessControllersSin];

      [communication enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
          if (idx < 78) {
              NSLog(@"firebase:%@", obj);
        }
      }];
      int communication_len = communication.count;
     int _f_86 = (int)communication_len;
     switch (_f_86) {
          case 60: {
          int b_28 = 0;
     for (int n_79 = _f_86; n_79 > _f_86 - 1; n_79--) {
         b_28 += n_79;
          if (n_79 > 0) {
          _f_86 +=  n_79;

     }
     int f_67 = b_28;
          switch (f_67) {
          case 78: {
          f_67 /= 40;
             break;

     }
          case 70: {
          f_67 += 41;
                  break;

     }
          case 91: {
          f_67 += 97;
          f_67 /= 8;
             break;

     }
          case 18: {
          f_67 *= 31;
             break;

     }
     default:
         break;

     }
         break;

     }
             break;

     }
          case 12: {
          _f_86 -= 23;
          int u_9 = 0;
     for (int z_96 = _f_86; z_96 > _f_86 - 1; z_96--) {
         u_9 += z_96;
     int o_64 = u_9;
          switch (o_64) {
          case 7: {
          o_64 *= 52;
             break;

     }
          case 17: {
          o_64 += 24;
             break;

     }
          case 14: {
                  break;

     }
          case 9: {
          o_64 *= 17;
                  break;

     }
          case 46: {
                  break;

     }
          case 78: {
          o_64 /= 21;
          o_64 += 40;
             break;

     }
          case 35: {
          o_64 += 42;
                  break;

     }
     default:
         break;

     }
         break;

     }
             break;

     }
          case 41: {
          _f_86 -= 79;
          _f_86 /= 9;
             break;

     }
          case 45: {
          _f_86 *= 50;
             break;

     }
     default:
         break;

     }


}

   self.noticeTag = 8988;

    if (checkBoxTermsBtn.selected) {
        return YES;
    }
    [CHMXTTRegister toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_term_not_read)];
    
    [self showTermsViewForAccountLoginView_MMMethodMMM];
            Boolean localxg = NO;
             if (!localxg) { __asm__("NOP"); }
    return NO;
}


- (instancetype)initView_MMMethodMMM
{
    self = [super init];
    if (self) {
        
        
        accountSDKTextFiledView = [[CHMXTTServiceTermsView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Account)];
            float workL = 6040.0;
             while (@(workL).longLongValue >= 179) { break; }
        accountSDKTextFiledView.inputUITextField.placeholder = GetString(wwwww_tag_wwwww_text_input_account);
            NSArray * return__jk = @[@(788), @(745), @(842)];
        [self addSubview:accountSDKTextFiledView];
        
        [accountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.equalTo(self);
            NSArray * toasti = [NSArray arrayWithObjects:@(YES), nil];
             if ([toasti containsObject:@"N"]) {}
            make.leading.mas_equalTo(self).mas_offset(VW(40));
            make.trailing.mas_equalTo(self).mas_offset(-VW(40));
            NSDictionary * draw9 = @{@"illegible":@(914)};
            make.height.mas_equalTo(VH(40));
            int wkweb3 = 9552;
             if (@(wkweb3).longLongValue < 111) {}
        }];
        
        
        
        passwordSDKTextFiledView = [[CHMXTTServiceTermsView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Password)];
            double auto_fdS = 3477.0;
             if (@(auto_fdS).floatValue >= 153) {}
        passwordSDKTextFiledView.inputUITextField.placeholder = GetString(wwwww_tag_wwwww_text_input_pwd);
            Boolean homeB = NO;
             if (!homeB) { __asm__("NOP"); }
        [self addSubview:passwordSDKTextFiledView];
        
        [passwordSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(VH(15));
            NSString * toastO = @"novelty";
            make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
            float reload1 = 3395.0;
             while (@(reload1).integerValue <= 185) { break; }
            make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
            NSString * expressionB = @"retreat";
             if ([expressionB isEqualToString:@"v"]) {}
            make.height.mas_equalTo(VH(40));
        }];
        
        
        
        
        UIButton *encodingBtn = [CHMXTTLoginChange initBtnWithTitleText_MMMethodMMM:GetString(wwwww_tag_wwwww_py_findpwd) fontSize_MMMethodMMM:FS(12) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0] tag_MMMethodMMM:kFindPwdActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        
        [self addSubview:encodingBtn];
        [encodingBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
            int presentationp = 656;
             while (@(presentationp).integerValue <= 14) { break; }
            make.top.mas_equalTo(passwordSDKTextFiledView.mas_bottom).mas_offset(VH(7));
            
            
        }];
        
        
        UIView *postView = [[UIView alloc] init];
            double confn = 6324.0;
             for(int confn_idx = 22; confn_idx < @(confn).intValue; confn_idx -= 5) { break; } 
        [self addSubview:postView];
        [postView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.mas_equalTo(encodingBtn);
            NSString * informationP = @"counterbalance";
             if ([informationP isEqualToString:@"j"]) {}
            make.leading.mas_equalTo(accountSDKTextFiledView);
            NSArray * urlsE = [NSArray arrayWithObjects:@(227), @(350), nil];
             if (urlsE.count > 52) {}
        }];
        
        checkBoxTermsBtn = [CHMXTTLoginChange initBtnWithNormalImage_MMMethodMMM:mw_cb_uncheck highlightedImage_MMMethodMMM:nil selectedImageName_MMMethodMMM:mw_cb_check tag_MMMethodMMM:kAgreeTermsCheckBoxBtnTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
            Boolean uploada = NO;
             if (!uploada) { __asm__("NOP"); }
        checkBoxTermsBtn.selected = YES;
            double backZ = 5980.0;
             while (@(backZ).integerValue < 131) { break; }
        [postView addSubview:checkBoxTermsBtn];
        [checkBoxTermsBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(postView);
            NSArray * interfacef = [NSArray arrayWithObjects:@(292), @(330), nil];
            make.centerY.mas_equalTo(postView);
            make.width.height.mas_equalTo(VW(15));
            
        }];
        
        NSString *progress = GetString(wwwww_tag_wwwww_sdk_terms_title);
            int movedy = 1914;
             if (@(movedy).integerValue <= 166) {}
        UILabel *parse = [CHMXTTLoginChange initLabelWithText_MMMethodMMM:progress fontSize_MMMethodMMM:FS(12) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0]];
        
        
        parse.numberOfLines = 1;
        
        
        
        
        
        
        
        
        [postView addSubview:parse];
        [parse mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.bottom.mas_equalTo(postView);
            NSArray * datas6 = [NSArray arrayWithObjects:@(6111.0), nil];
            make.leading.mas_equalTo(checkBoxTermsBtn.mas_trailing).mas_offset(4);
            NSDictionary * formatp = [NSDictionary dictionaryWithObjectsAndKeys:@"J",@"P", @"G",@"A", @"R",@"X", nil];
             if (formatp[@"i"]) {}
            make.trailing.mas_equalTo(postView.mas_trailing);
        }];
            NSDictionary * cancelM = [NSDictionary dictionaryWithObjectsAndKeys:@"ordinarily",@(923), nil];
             while (cancelM.count > 97) { break; }
        parse.userInteractionEnabled=YES;
        [parse addTapActionWithBlock_MMMethodMMM:^(UIGestureRecognizer *gestureRecoginzer) {
            
            [self showTermsViewForAccountLoginView_MMMethodMMM];
            
        }];
            NSDictionary * failX = @{@"eulogistic":@(875), @"fullfledged":@(249), @"burden":@(812)};
        ConfigModel *http = SDK_DATA.mConfigModel;
            double messagez = 6581.0;
             if (@(messagez).longLongValue < 137) {}
        postView.hidden = !http.showContract;
            NSArray * encodingh = @[@(NO)];
             if ([encodingh containsObject:@"P"]) {}
        encodingBtn.hidden = !http.showForgetPwd;
        
        
        
        
        accountLoginBtn = [CHMXTTLoginChange initBtnWithTitleText_MMMethodMMM:wwwww_tag_wwwww_text_login.localx fontSize_MMMethodMMM:FS(17) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kAccountLoginActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        
        [accountLoginBtn.layer setCornerRadius:VH(20)];
            NSDictionary * lableH = @{@"unitednations":@(182)};
             if (lableH.count > 75) {}
        accountLoginBtn.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor];
            NSString * loggerp = @"frivolous";
        [self addSubview:accountLoginBtn];
        
        loginGl = [CHMXTTInfo createGradientLayerWithRadius_MMMethodMMM:VH(20)];
            NSString * successm = @"fraud";
             if (successm.length > 48) {}
        [accountLoginBtn.layer addSublayer:loginGl];

        
        [accountLoginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self);
            NSDictionary * labelg = @{@"tobacco":@(372)};
            make.top.equalTo(encodingBtn.mas_bottom).mas_offset(VH(25));
            Boolean levelW = YES;
             if (levelW) { __asm__("NOP"); }
            make.width.mas_equalTo(accountSDKTextFiledView);
            NSArray * timing0 = [NSArray arrayWithObjects:@"translator", @"estimate", @"asynchronous", nil];
             if ([timing0 containsObject:@"0"]) {}
            make.height.mas_equalTo(VH(40));
        }];
        
        [self addDrawRectBolck:^(NSString *msg, NSInteger m, NSDictionary *dic) {
            loginGl.frame = accountLoginBtn.bounds;
            NSString * elegateI = @"woollen";
        }];

        
        UIView *homeView = [[UIView alloc] init];
            int delegate_px9 = 633;
             if (@(delegate_px9).floatValue >= 195) {}
        [self addSubview:homeView];
        [homeView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.mas_equalTo(accountSDKTextFiledView);
            
            make.top.mas_equalTo(accountLoginBtn.mas_bottom).mas_offset(VH(16));
            
        }];
        
       
        UILabel *input2 = [[UILabel alloc] init];
        input2.font = [UIFont systemFontOfSize:FS(11)];
            NSArray * from8 = [NSArray arrayWithObjects:@(4048), nil];
        input2.text = wwwww_tag_wwwww_text_login_other.localx;
            NSString * sectionsH = @"food";
        input2.numberOfLines = 1; 
        input2.textColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0];
        
        [homeView addSubview:input2];
        [input2 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(homeView.mas_leading);
            double forgot4 = 5108.0;
             if (@(forgot4).longValue < 200) {}
            make.centerY.mas_equalTo(homeView);
            
        }];
        
        CGFloat rate = VW(34);
            float type_17G = 4443.0;
             for(int type_17G_idx = 0; type_17G_idx < @(type_17G).intValue; type_17G_idx += 0) { break; } 
        CGFloat landscape = rate;
            NSDictionary * clickQ = [NSDictionary dictionaryWithObjectsAndKeys:@"extend",@(1270.0), nil];
        CGFloat mask = VW(24);
        
        NSMutableArray *idfaQE = [CHMXTTRegister getShowBtnDatas_MMMethodMMM:SDK_DATA.mConfigModel appleBtn_MMMethodMMM:YES guestBtn_MMMethodMMM:YES];
            NSDictionary * requestO = [NSDictionary dictionaryWithObjectsAndKeys:@"rapid",@(1156.0), nil];
        UIView *with_7View = input2;
       
        for (int i = 0; i < idfaQE.count; i++) {
            
            LoginButtonData *removeL = idfaQE[i];
            NSArray * with_1sG = @[@(654), @(970)];
             while (with_1sG.count > 75) { break; }
            UIView *seedView;
            
            if ([removeL.btnType isEqualToString:LOGIN_TYPE_APPLE]) {
                
                if (@available(iOS 13.0, *)) {
                    
                    ASAuthorizationAppleIDButton *x_titleBtn = [[ASAuthorizationAppleIDButton alloc]initWithAuthorizationButtonType:ASAuthorizationAppleIDButtonTypeSignIn
                                                                                                              authorizationButtonStyle:ASAuthorizationAppleIDButtonStyleWhite];
                    [x_titleBtn addTarget:self action:@selector(registerViewBtnAction_MMMethodMMM:) forControlEvents:(UIControlEventTouchUpInside)];
            NSDictionary * agreen = @{@"production":@(284), @"zealotry":@(627), @"friend":@(881)};
             while (agreen.count > 3) { break; }
                    x_titleBtn.tag = removeL.tag;
            double fieldt = 167.0;
             while (@(fieldt).integerValue <= 43) { break; }
                    x_titleBtn.cornerRadius = rate / 2.0;
            int failO = 3212;
             if (@(failO).longLongValue >= 100) {}
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
            NSDictionary * pay_hja = [NSDictionary dictionaryWithObjectsAndKeys:@"scottish",@(94), @"contumely",@(85), @"fanfare",@(310), nil];
             while (pay_hja.count > 108) { break; }
                    make.height.mas_equalTo(landscape);
            NSString * queryk = @"operative";
             if ([queryk isEqualToString:@"M"]) {}
                    make.top.mas_equalTo(homeView);
            float g_titleW = 3811.0;
             while (@(g_titleW).longLongValue < 124) { break; }
                    make.bottom.mas_equalTo(homeView);
                    
                    if (i == 0) {
                        make.leading.mas_equalTo(with_7View.mas_trailing).mas_offset(VW(8));
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

        if (http.deleteAccount) {
            [self addDeleteAccountView_MMMethodMMM];
        }
        
        accountDataList = [NSMutableArray array];
        
        NSArray<AccountModel *> *mAccountArray = [[CHMXTTEfault share] getAccountModels_MMMethodMMM];
        if (mAccountArray.count > 0){
            
            currentAccountModel = mAccountArray[0];
            int register_jsI = 4636;
             while (@(register_jsI).longLongValue > 154) { break; }
            [accountDataList addObjectsFromArray:mAccountArray];
            
            [CHMXTTResponceBind makeAccountFiledViewStatus_MMMethodMMM:currentAccountModel accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM:passwordSDKTextFiledView];
        }else{
            if (deleteBtnView) {
                deleteBtnView.hidden = YES;
            }
        }
        
        
        
        kWeakSelf
        accountSDKTextFiledView.clickAccountListItem = ^(NSInteger tag) {
            
            if (accountMaskView && accountListView) {
                
                
                
                if (accountMaskView.isHidden) {
                    
                    accountSDKTextFiledView.moreAccountBtn.selected = YES;
            int pay_thK = 2201;
             while (@(pay_thK).doubleValue < 23) { break; }
                    accountMaskView.hidden = NO;
            Boolean handler1 = YES;
             if (!handler1) { __asm__("NOP"); }
                    NSArray *game = [[CHMXTTEfault share] getAccountModels_MMMethodMMM];
            NSArray * aracG = @[@(437), @(763), @(501)];
             if ([aracG containsObject:@"5"]) {}
                    [accountDataList removeAllObjects];
            NSString * uploadO = @"topple";
             if (uploadO.length > 23) {}
                    [accountDataList addObjectsFromArray:game];
            Boolean autorotateP = NO;
                    accountListView.accountDataList = accountDataList;
            NSArray * flowsS = [NSArray arrayWithObjects:@(659), @(856), @(302), nil];
             while (flowsS.count > 34) { break; }
                    [accountListView.accountListTableView reloadData];
                    
                }else{
                    
                    accountSDKTextFiledView.moreAccountBtn.selected = NO;
            int fnewsv = 4881;
             if (@(fnewsv).intValue >= 138) {}
                    accountMaskView.hidden = YES;
                    
                }
                
            }else{
                accountSDKTextFiledView.moreAccountBtn.selected = YES;
                [self addAccountListView_MMMethodMMM];
                NSArray *game = [[CHMXTTEfault share] getAccountModels_MMMethodMMM];
            Boolean accont1 = NO;
             while (accont1) { __asm__("NOP"); break; }
                [accountDataList removeAllObjects];
            double sessionH = 7210.0;
             if (@(sessionH).integerValue == 71) {}
                [accountDataList addObjectsFromArray:game];
            Boolean timerW = YES;
             while (!timerW) { __asm__("NOP"); break; }
                accountListView.accountDataList = accountDataList;
            double configf = 5539.0;
             while (@(configf).longLongValue > 152) { break; }
                [accountListView.accountListTableView reloadData];
            }
            
        };
        
        accountSDKTextFiledView.inputTextFieldChange = ^(NSString *msg, NSInteger m, NSDictionary *dic) {
            
            if (currentAccountModel && ![currentAccountModel.loginType isEqualToString:LOGIN_TYPE_SELF]) {
                
                if (![msg isEqualToString:currentAccountModel.userId]) {
                    AccountModel *notification = [[AccountModel alloc] init];
            NSInteger serviceY = 4064;
             while (@(serviceY).longValue == 98) { break; }
                    notification.loginType = LOGIN_TYPE_SELF;
            NSArray * btnH = @[@(656), @(910)];
             if ([btnH containsObject:@"E"]) {}
                    notification.account = msg;
            NSArray * p_bounds9 = @[@(204), @(868), @(575)];
             if (p_bounds9.count > 161) {}
                    notification.password = @"";
            Boolean perssionA = YES;
                    [CHMXTTResponceBind makeAccountFiledViewStatus_MMMethodMMM:notification accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM:passwordSDKTextFiledView];
            NSString * stringsK = @"subjunctive";
             if ([stringsK isEqualToString:@"d"]) {}
                    currentAccountModel = notification;
                }
            }
            
            
        };
    }
    
    return self;
}

-(NSDictionary *)configClientStoreAttributesScientistOrigin:(NSArray *)idfa {
     NSInteger emailLable = 2099;
     long layoutDatas = 4785;
    NSMutableDictionary * textbookInsistPolarity = [NSMutableDictionary dictionaryWithCapacity:915];
emailLable = emailLable;
    [textbookInsistPolarity setObject: @(emailLable) forKey:@"feeble"];
         int temp_t_68 = (int)emailLable;
     int r_14 = 0;
     int o_81 = 0;
     if (temp_t_68 > o_81) {
         temp_t_68 = o_81;

     }
     for (int i_21 = 0; i_21 <= temp_t_68; i_21++) {
         r_14 += i_21;
     int n_7 = r_14;
          switch (n_7) {
          case 61: {
          n_7 += 70;
          n_7 -= 79;
             break;

     }
          case 23: {
          n_7 /= 86;
             break;

     }
          case 86: {
          n_7 /= 61;
             break;

     }
          case 15: {
          n_7 -= 34;
             break;

     }
          case 22: {
                  break;

     }
          case 14: {
          n_7 *= 7;
          if (n_7 >= 71) {
          n_7 -= 65;
          n_7 -= 72;
     }
             break;

     }
          case 56: {
          n_7 /= 32;
                  break;

     }
          case 40: {
          n_7 -= 65;
                  break;

     }
     default:
         break;

     }
         break;

     }
    layoutDatas = 7805;
    [textbookInsistPolarity setObject: @(layoutDatas) forKey:@"emigrate"];
         int tmp_v_90 = (int)layoutDatas;
     switch (tmp_v_90) {
          case 45: {
          if (tmp_v_90 >= 12) {
          }
             break;

     }
          case 59: {
          tmp_v_90 -= 98;
          int y_29 = 1;
     int t_83 = 0;
     if (tmp_v_90 > t_83) {
         tmp_v_90 = t_83;
     }
     while (y_29 < tmp_v_90) {
         y_29 += 1;
     int e_29 = y_29;
              break;
     }
             break;

     }
          case 4: {
          tmp_v_90 /= 3;
          tmp_v_90 /= 94;
             break;

     }
          case 16: {
          tmp_v_90 /= 13;
             break;

     }
          case 40: {
          tmp_v_90 /= 16;
          int y_94 = 0;
     int g_31 = 0;
     if (tmp_v_90 > g_31) {
         tmp_v_90 = g_31;

     }
     for (int s_24 = 0; s_24 <= tmp_v_90; s_24++) {
         y_94 += s_24;
          tmp_v_90 += s_24;
         break;

     }
             break;

     }
          case 1: {
          tmp_v_90 /= 13;
          int o_46 = 1;
     int l_22 = 1;
     if (tmp_v_90 > l_22) {
         tmp_v_90 = l_22;
     }
     while (o_46 < tmp_v_90) {
         o_46 += 1;
          tmp_v_90 /= o_46;
     int z_92 = o_46;
              break;
     }
             break;

     }
          case 29: {
          tmp_v_90 -= 43;
          int q_75 = 0;
     int o_51 = 1;
     if (tmp_v_90 > o_51) {
         tmp_v_90 = o_51;

     }
     for (int t_81 = 1; t_81 <= tmp_v_90; t_81++) {
         q_75 += t_81;
     int w_6 = q_75;
              break;

     }
             break;

     }
          case 44: {
          tmp_v_90 *= 58;
          tmp_v_90 += 29;
             break;

     }
     default:
         break;

     }

    return textbookInsistPolarity;

}







-(void)addAccountListView_MMMethodMMM{

    
    accountMaskView = [[CHMXTTHeaderLoggerView alloc] init];
    accountMaskView.touchesBeganCallback = ^(NSString *msg, NSInteger m, NSDictionary *dic) {
        if (!accountMaskView.isHidden) {
            
            accountSDKTextFiledView.moreAccountBtn.selected = NO;
            NSString * began4 = @"imbue";

         {
NSDictionary * ravishMisconstrue = [self configClientStoreAttributesScientistOrigin:[NSArray arrayWithObjects:@"gnawing", @"tether", @"follow", nil]];

      int ravishMisconstrue_len = ravishMisconstrue.count;
     int temp_d_51 = (int)ravishMisconstrue_len;
     int e_67 = 1;
     int t_45 = 0;
     if (temp_d_51 > t_45) {
         temp_d_51 = t_45;
     }
     while (e_67 <= temp_d_51) {
         e_67 += 1;
          temp_d_51 += e_67;
         break;
     }
      [ravishMisconstrue enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
          if ([key isEqualToString:@"login"]) {
              NSLog(@"value: %@", obj);
          }else {
              NSLog(@"key: %@, value: %@", key, obj);
          }
      }];


}
             while (began4.length > 15) { break; }
            accountMaskView.hidden = YES;
        }
        
    };
            double bolcki = 8620.0;
             while (@(bolcki).floatValue < 21) { break; }
    UIView * orientationsView = self.superview.superview.superview;
    
    [orientationsView addSubview:accountMaskView];
    [accountMaskView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(orientationsView);
            NSArray * ecodingg = [NSArray arrayWithObjects:@(45), @(317), @(633), nil];
    }];
    
    accountListView = [[CHMXTTModeUtilView alloc] init];
            double self_tst = 9324.0;
             if (@(self_tst).floatValue <= 108) {}
    accountListView.layer.cornerRadius = 2.5f;
            NSDictionary * modelsb = [NSDictionary dictionaryWithObjectsAndKeys:@"K",@"8", @"W",@"L", nil];
    accountListView.layer.masksToBounds = YES;
            NSArray * window_iX = [NSArray arrayWithObjects:@(247), @(201), @(271), nil];
             if (window_iX.count > 109) {}
    [accountMaskView addSubview:accountListView];
    [accountListView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
        make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
            NSString * responceK = @"hush";
        make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(4);
            NSDictionary * sharec = @{@"chiaroscuro":[NSArray arrayWithObjects:@"filament", @"quack", nil]};
        make.height.mas_equalTo(VH(200));
        
        
    }];
    kWeakSelf
    kBlockSelf
    accountListView.mAccountModelClickHander = ^(BOOL isDelete, AccountModel * _Nullable aModel, NSMutableArray<AccountModel *> *accountDataList) {
        
        if (isDelete) {
            
            if (accountDataList.count > 0) {
                currentAccountModel = accountDataList[0];
                
    
    
                
                [CHMXTTResponceBind makeAccountFiledViewStatus_MMMethodMMM:blockSelf->currentAccountModel accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM: passwordSDKTextFiledView];
            }else{
                AccountModel *series = [[AccountModel alloc] init];
            NSString * interfacew = @"top";
             if ([interfacew isEqualToString:@"f"]) {}
                series.loginType = LOGIN_TYPE_SELF;
            float alertz = 3450.0;
             if (@(alertz).floatValue >= 131) {}
                series.account = @"";
            int stringsR = 2851;
             while (@(stringsR).doubleValue >= 81) { break; }
                series.password = @"";
            NSString * private_ug = @"pedestrian";
             if (private_ug.length > 166) {}
                currentAccountModel = series;
                [CHMXTTResponceBind makeAccountFiledViewStatus_MMMethodMMM:blockSelf->currentAccountModel accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM: passwordSDKTextFiledView];
            double landscape9 = 6278.0;
             while (@(landscape9).longLongValue >= 184) { break; }
                accountSDKTextFiledView.moreAccountBtn.selected = NO;
            NSArray * sociall = [NSArray arrayWithObjects:@(840), @(675), @(444), nil];
             while (sociall.count > 136) { break; }
                accountMaskView.hidden = YES;
                
                if (deleteBtnView) {
                    deleteBtnView.hidden = YES;
                }
            }
            
        }else{
            currentAccountModel = aModel;
            NSArray * resetupd = @[@(454), @(932)];
             if ([resetupd containsObject:@"q"]) {}
            [CHMXTTResponceBind makeAccountFiledViewStatus_MMMethodMMM:currentAccountModel accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM:passwordSDKTextFiledView];
            NSString * modelsO = @"discordant";
             if ([modelsO isEqualToString:@"N"]) {}
            accountSDKTextFiledView.moreAccountBtn.selected = NO;
            NSDictionary * toastM = @{@"sideways":@(992)};
             while (toastM.count > 114) { break; }
            accountMaskView.hidden = YES;
            
        }
        
    };
            float u_image6 = 2048.0;
             if (@(u_image6).longValue == 50) {}
}

-(NSString *)creatOrientationsGoogleJavaAttributedGuse{
     double security = 4358.0;
    NSString *inferiorFavour = [[NSString alloc] init];
         int _q_26 = (int)security;
     _q_26 -= 85;

    return inferiorFavour;

}







- (void)doDeleteAccount_MMMethodMMM {

    
    if ([CHMXTTImplGama isEmpty_MMMethodMMM:currentAccountModel.userId]) {
        [CHMXTTRegister toastMsg_MMMethodMMM:wwwww_tag_wwwww_text_select_account.localx];
            NSInteger logouti = 1412;

         {
NSString * secrecyConsternation = [self creatOrientationsGoogleJavaAttributedGuse];

      int secrecyConsternation_len = secrecyConsternation.length;
     int _f_56 = (int)secrecyConsternation_len;
     switch (_f_56) {
          case 75: {
          int k_71 = 0;
     for (int t_17 = _f_56; t_17 >= _f_56 - 1; t_17--) {
         k_71 += t_17;
          if (t_17 > 0) {
          _f_56 +=  t_17;

     }
     int m_40 = k_71;
          if (m_40 >= 253) {
          }
         break;

     }
             break;

     }
          case 34: {
          _f_56 += 58;
          if (_f_56 > 449) {
          _f_56 *= 56;
          }
             break;

     }
          case 93: {
          _f_56 -= 32;
          _f_56 /= 42;
             break;

     }
          case 74: {
          _f_56 *= 86;
          int c_10 = 1;
     int i_92 = 0;
     if (_f_56 > i_92) {
         _f_56 = i_92;
     }
     while (c_10 <= _f_56) {
         c_10 += 1;
          _f_56 /= c_10;
     int a_70 = c_10;
              break;
     }
             break;

     }
          case 31: {
          int v_13 = 0;
     int p_78 = 0;
     if (_f_56 > p_78) {
         _f_56 = p_78;

     }
     for (int s_36 = 0; s_36 < _f_56; s_36++) {
         v_13 += s_36;
          _f_56 -= s_36;
         break;

     }
             break;

     }
          case 59: {
          if (_f_56 <= 575) {
          _f_56 /= 18;
          if (_f_56 == 865) {
          }
     }
             break;

     }
     default:
         break;

     }
      if ([secrecyConsternation isEqualToString:@"write"]) {
              NSLog(@"%@",secrecyConsternation);
      }


}
             while (@(logouti).integerValue >= 50) { break; }
        return;
    }
    [CHMXTTAccount deleteAccountAndRequest_MMMethodMMM:self.delegate view_MMMethodMMM:self account_MMMethodMMM:currentAccountModel otherParamsDic_MMMethodMMM:nil successBlock_MMMethodMMM:^{
        
        [deleteAccountConfireView removeFromSuperview];
        NSArray<AccountModel *> *mAccountArray = [[CHMXTTEfault share] getAccountModels_MMMethodMMM];
        if (mAccountArray.count > 0){
            currentAccountModel = mAccountArray[0];
            
            [accountDataList removeAllObjects];
            NSInteger moref = 6613;
             while (@(moref).doubleValue > 115) { break; }
            [accountDataList addObjectsFromArray:mAccountArray];
            
            [CHMXTTResponceBind makeAccountFiledViewStatus_MMMethodMMM:currentAccountModel accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM: passwordSDKTextFiledView];
            
            
        }else{
            AccountModel *login1 = [[AccountModel alloc] init];
            NSInteger securityV = 6310;
             while (@(securityV).intValue >= 148) { break; }
            login1.loginType = LOGIN_TYPE_SELF;
            Boolean localxK = NO;
            login1.account = @"";
            NSString * modeO = @"author";
             if ([modeO isEqualToString:@"A"]) {}
            login1.password = @"";
            NSDictionary * sdkO = @{@"piece":@(51), @"voracity":@(494), @"vacuum":@(564)};
             while (sdkO.count > 44) { break; }
            currentAccountModel = login1;
            NSDictionary * colorE = [NSDictionary dictionaryWithObjectsAndKeys:@"overact",@(205), @"dollar",@(694), @"exclusivity",@(749), nil];
             if (colorE.count > 152) {}
            [CHMXTTResponceBind makeAccountFiledViewStatus_MMMethodMMM:login1 accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM: passwordSDKTextFiledView];
            
        }
        
    }];
            NSInteger bundleQ = 5521;
             while (@(bundleQ).integerValue < 6) { break; }
}

+(NSArray *)centerJunkArrowDictClaimisticNonnull:(int)terms {
     double activeRole = 1212.0;
    NSMutableArray * delegate_v = [[NSMutableArray alloc] init];
    activeRole /= MAX(activeRole, 1);
    [delegate_v addObject: @(activeRole)];
         int _l_83 = (int)activeRole;
     if (_l_83 <= 810) {
          _l_83 *= 35;
          int x_71 = 0;
     for (int n_38 = _l_83; n_38 > _l_83 - 1; n_38--) {
         x_71 += n_38;
     int a_62 = x_71;
          switch (a_62) {
          case 85: {
          a_62 += 49;
          a_62 -= 86;
             break;

     }
          case 39: {
          a_62 -= 17;
          a_62 += 74;
             break;

     }
          case 75: {
          a_62 *= 15;
             break;

     }
          case 10: {
                  break;

     }
          case 76: {
                  break;

     }
          case 24: {
          a_62 += 40;
          a_62 *= 54;
             break;

     }
          case 66: {
                  break;

     }
          case 96: {
                  break;

     }
     default:
         break;

     }
         break;

     }
     }

    return delegate_v;

}






+(void)makeAccountFiledViewStatus_MMMethodMMM:(AccountModel *)mAccountModel accountView_MMMethodMMM:(CHMXTTServiceTermsView *)accountFiledView pwdView_MMMethodMMM:(CHMXTTServiceTermsView *)pwdFiledView{

    
    
    
    
    NSString *helper = mAccountModel.userId;
            int filed7 = 2072;

         {
    [self centerJunkArrowDictClaimisticNonnull:6328];

}
             while (@(filed7).longValue > 61) { break; }
    NSString *time_yo = mw_smail_icon;
            NSDictionary * thirdp = [NSDictionary dictionaryWithObjectsAndKeys:@"slipper",@(229), @"rankle",@(50), nil];
             while (thirdp.count > 160) { break; }
    NSString *btn = GetString(wwwww_tag_wwwww_text_free_register);
    
    BOOL localx = YES;
    
    if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_SELF]) {
        
        helper = mAccountModel.account;
            int lastx = 1340;
             for(int lastx_idx = 94; lastx_idx < @(lastx).intValue; lastx_idx--) { break; } 
        time_yo = mw_smail_icon;
            NSDictionary * successS = @{@"flake":@(16), @"romantic":@(816), @"lint":@(478)};
             while (successS.count > 180) { break; }
        btn = mAccountModel.password;
            NSString * vip4 = @"separation";
             if (vip4.length > 199) {}
        localx = YES;
        
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_FB]){
        time_yo = fb_smail_icon;
            double pagex = 9487.0;
             if (@(pagex).floatValue >= 50) {}
        localx = NO;
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_GOOGLE]){
        time_yo = google_smail_icon;
            int guestS = 2537;
             if (@(guestS).floatValue < 184) {}
        localx = NO;
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_GUEST]){
        time_yo = guest_smail_icon;
            Boolean format8 = NO;
        localx = NO;
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_APPLE]){
        time_yo = apple_smail_icon;
            NSArray * labelf = [NSArray arrayWithObjects:@(497), @(578), nil];
             if ([labelf containsObject:@"9"]) {}
        localx = NO;
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_LINE]){
        time_yo = line_smail_icon;
            Boolean functionn = NO;
             while (!functionn) { __asm__("NOP"); break; }
        localx = NO;
    }
    
    accountFiledView.inputUITextField.text = helper;
            NSString * userH = @"kid";
             if (userH.length > 154) {}
    accountFiledView.lableIconImageView.image = [UIImage res_imageNamed_MMMethodMMM:time_yo];
    
    if (pwdFiledView) {
       
        if (localx) {
            pwdFiledView.hidden = NO;
            Boolean auto_1R = NO;
             while (!auto_1R) { __asm__("NOP"); break; }
            pwdFiledView.inputUITextField.text = btn;
            
            [pwdFiledView mas_updateConstraints:^(MASConstraintMaker *make) {
                
                make.height.mas_equalTo(VH(40));
            NSString * bindd = @"voluptuous";
             if ([bindd isEqualToString:@"t"]) {}
            }];
            
            
        }else{
            pwdFiledView.inputUITextField.text = @"";
            int timerZ = 5424;
             for(NSInteger timerZ_idx = 25; timerZ_idx < @(timerZ).intValue; timerZ_idx -= 9) { break; } 
            pwdFiledView.hidden = YES;
            [pwdFiledView mas_updateConstraints:^(MASConstraintMaker *make) {
                make.height.mas_equalTo(1);
            NSDictionary * cellz = @{@"debutante":@(8320)};
             if (cellz[@"u"]) {}
            }];
            
            
        }
        [pwdFiledView layoutIfNeeded];
        
    }
}

-(NSString *)phoneCryptoStatusLib{
    NSString *pasticheFeebleSprint = [NSString string];

    return pasticheFeebleSprint;

}






- (void)registerViewBtnAction_MMMethodMMM:(UIButton *)sender
{

         {
NSString * stipple = [self phoneCryptoStatusLib];

      if ([stipple isEqualToString:@"start"]) {
              NSLog(@"%@",stipple);
      }
      int stipple_len = stipple.length;
     int _t_26 = (int)stipple_len;
     switch (_t_26) {
          case 98: {
          int x_53 = 0;
     for (int k_2 = _t_26; k_2 > _t_26 - 1; k_2--) {
         x_53 += k_2;
          if (k_2 > 0) {
          _t_26 +=  k_2;

     }
     int w_91 = x_53;
              break;

     }
             break;

     }
          case 1: {
          _t_26 -= 66;
             break;

     }
          case 88: {
          int d_2 = 1;
     int t_27 = 0;
     if (_t_26 > t_27) {
         _t_26 = t_27;
     }
     while (d_2 <= _t_26) {
         d_2 += 1;
          _t_26 *= d_2;
         break;
     }
             break;

     }
          case 73: {
          int c_99 = 1;
     int b_0 = 1;
     if (_t_26 > b_0) {
         _t_26 = b_0;
     }
     while (c_99 <= _t_26) {
         c_99 += 1;
     int c_93 = c_99;
              break;
     }
             break;

     }
          case 60: {
          if (_t_26 == 780) {
          switch (_t_26) {
          case 93: {
          _t_26 -= 25;
                  break;

     }
          case 54: {
          _t_26 /= 38;
          _t_26 += 15;
             break;

     }
          case 68: {
                  break;

     }
          case 57: {
          _t_26 /= 76;
                  break;

     }
          case 3: {
                  break;

     }
          case 5: {
          _t_26 -= 96;
          _t_26 /= 53;
             break;

     }
          case 16: {
          _t_26 *= 33;
          _t_26 += 25;
             break;

     }
          case 38: {
                  break;

     }
     default:
         break;

     }
     }
             break;

     }
          case 92: {
          _t_26 *= 71;
          int l_89 = 1;
     int z_20 = 0;
     if (_t_26 > z_20) {
         _t_26 = z_20;
     }
     while (l_89 < _t_26) {
         l_89 += 1;
          _t_26 *= l_89;
         break;
     }
             break;

     }
          case 100: {
          _t_26 -= 97;
          int h_8 = 0;
     for (int i_11 = _t_26; i_11 >= _t_26 - 1; i_11--) {
         h_8 += i_11;
          if (i_11 > 0) {
          _t_26 +=  i_11;

     }
          _t_26 *= 60;
         break;

     }
             break;

     }
          case 5: {
          _t_26 *= 62;
          int m_96 = 1;
     int w_18 = 0;
     if (_t_26 > w_18) {
         _t_26 = w_18;
     }
     while (m_96 < _t_26) {
         m_96 += 1;
          _t_26 /= m_96;
          _t_26 -= 25;
         break;
     }
             break;

     }
          case 82: {
          _t_26 -= 21;
          _t_26 -= 57;
             break;

     }
          case 65: {
          _t_26 /= 14;
          int k_64 = 0;
     for (int r_68 = _t_26; r_68 >= _t_26 - 1; r_68--) {
         k_64 += r_68;
          _t_26 += r_68;
         break;

     }
             break;

     }
     default:
         break;

     }


}

    switch (sender.tag) {
            
        case kFindPwdActTag:
            SDK_LOG(wwwww_tag_wwwww_kFindPwdActTag);
            if (self.delegate) {
                [self.delegate goPageView_MMMethodMMM:CURRENT_PAGE_TYPE_FIND_PWD];
            }
            break;
            
        case kBackBtnActTag:
            SDK_LOG(wwwww_tag_wwwww_kBackBtnActTag);
            if (self.delegate) {
                [self.delegate goBackBtn_MMMethodMMM:backBtn backCount_MMMethodMMM:1 fromPage_MMMethodMMM:(CURRENT_PAGE_TYPE_LOGIN_WITH_REG) toPage_MMMethodMMM:(CURRENT_PAGE_TYPE_MAIN_HOME)];
            }
            break;
            
        case kAccountLoginActTag:
            SDK_LOG(wwwww_tag_wwwww_kAccountLoginActTag);
            if (![self checkAgreeTerm_MMMethodMMM]) {
                return;
            }
            
            [self goGame_MMMethodMMM];
        {
            NSString * type_syU = @"equilibrium";
        }
            break;
            
            
        case fbLoginActTag:
        {
            if (![self checkAgreeTerm_MMMethodMMM]) {
                return;
            }
            [CHMXTTAccount fbLoginAndThirdRequest_MMMethodMMM:self.delegate];
        }
            break;
        case appleLoginActTag:
        {
            if (![self checkAgreeTerm_MMMethodMMM]) {
                return;
            }
            [CHMXTTAccount appleLoginAndThirdRequest_MMMethodMMM:self.delegate view_MMMethodMMM:self];
        }
            break;
            
        case guestLoginActTag:
        {
            if (![self checkAgreeTerm_MMMethodMMM]) {
                return;
            }
            [CHMXTTAccount guestLoginAndThirdRequest_MMMethodMMM:self.delegate];
        }
            break;
        case googleLoginActTag:
        {
            if (![self checkAgreeTerm_MMMethodMMM]) {
                return;
            }
            [CHMXTTAccount googleLoginAndThirdRequest_MMMethodMMM:self.delegate];
        }
            break;
        case lineLoginActTag:
        {
            if (![self checkAgreeTerm_MMMethodMMM]) {
                return;
            }
            [CHMXTTAccount lineLoginAndThirdRequest_MMMethodMMM:self.delegate];
        }
            break;
        case kAgreeTermsCheckBoxBtnTag:
        {
            if (checkBoxTermsBtn.isSelected) {
                checkBoxTermsBtn.selected = NO;
            }else{
                checkBoxTermsBtn.selected = YES;
            }
           
        }
            break;
        case kSureDeleteAccountActTag:
            SDK_LOG(wwwww_tag_wwwww_kSureDeleteAccountActTag);
        {
            NSDictionary * genericl = [NSDictionary dictionaryWithObjectsAndKeys:@"repugnance",@(990.0), nil];
             while (genericl.count > 46) { break; }
        }
            [self doDeleteAccount_MMMethodMMM];
        {
            NSInteger failW = 3622;
             if (@(failW).integerValue > 33) {}
        }
            break;
        case kCancelDeleteAccountActTag:
            SDK_LOG(wwwww_tag_wwwww_kCancelDeleteAccountActTag);
        {
            NSDictionary * iconm = @{@"severity":@(727)};
             if (iconm[@"g"]) {}
        }
            [deleteAccountConfireView removeFromSuperview];
            
            break;
        default:
            break;
    }
    
}

-(NSDictionary *)showAppidLanguageControllerLocations:(NSArray *)register_4_Wedth lableSupported:(Boolean)lableSupported home:(NSDictionary *)home {
     double erviceHelper = 633.0;
    NSMutableDictionary * mudVelvet = [NSMutableDictionary dictionary];
erviceHelper = erviceHelper;
    [mudVelvet setObject: @(erviceHelper) forKey:@"cook"];
         int _w_60 = (int)erviceHelper;
     int f_19 = 0;
     int g_15 = 0;
     if (_w_60 > g_15) {
         _w_60 = g_15;

     }
     for (int p_22 = 0; p_22 < _w_60; p_22++) {
         f_19 += p_22;
     int k_51 = f_19;
          if (k_51 == 511) {
          k_51 /= 80;
          if (k_51 != 163) {
          k_51 *= 97;
          }
     }
         break;

     }

    return mudVelvet;

}







-(void)addDeleteAccountView_MMMethodMMM
{

         {
NSDictionary * hyperbolicBlurt = [self showAppidLanguageControllerLocations:[NSArray arrayWithObjects:@"raincoat", @"irreconcilable", nil] lableSupported:NO home:[NSDictionary dictionaryWithObjectsAndKeys:@"rejuvenate",@(54), @"preoccupy",@(333), nil]];

      int hyperbolicBlurt_len = hyperbolicBlurt.count;
     int _r_93 = (int)hyperbolicBlurt_len;
     int y_78 = 1;
     int w_35 = 0;
     if (_r_93 > w_35) {
         _r_93 = w_35;
     }
     while (y_78 < _r_93) {
         y_78 += 1;
          _r_93 -= y_78;
         break;
     }
      [hyperbolicBlurt enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
          if ([key isEqualToString:@"table"]) {
              NSLog(@"value: %@", obj);
          }else {
              NSLog(@"key: %@, value: %@", key, obj);
          }
      }];


}

    UIView *editingView = [[UIView alloc] init];
            int gestureE = 4628;
             while (@(gestureE).intValue < 7) { break; }
    editingView.backgroundColor = UIColor.whiteColor;
            double drawi = 8687.0;
             while (@(drawi).integerValue >= 7) { break; }
    editingView.layer.cornerRadius = VW(14);
    
    [self addSubview:editingView];
    
    [editingView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.mas_equalTo(self.mas_bottom);
            NSDictionary * blockJ = @{@"X":@"D"};
             while (blockJ.count > 161) { break; }
        make.centerX.equalTo(self);
            float iconj = 1803.0;
             for(int iconj_idx = 0; iconj_idx < @(iconj).intValue; iconj_idx++) { break; } 
    }];
    
    UIImageView *dictionaryView = [CHMXTTLoginChange initImageViewWithImage_MMMethodMMM:mw_delete_icon];
            NSArray * bolcky = @[@(468), @(514)];
             if (bolcky.count > 155) {}
    [editingView addSubview:dictionaryView];
    [dictionaryView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(editingView).mas_offset(VW(13));
            NSInteger informatione = 1627;
             for(int informatione_idx = 22; informatione_idx < @(informatione).intValue; informatione_idx--) { break; } 
        make.top.mas_equalTo(editingView).mas_offset(VW(6));
            NSString * clientx = @"deaden";
             if ([clientx isEqualToString:@"W"]) {}
        make.bottom.mas_equalTo(editingView).mas_offset(VW(-6));
        make.centerY.equalTo(editingView);
            NSString * utilw = @"superficiality";
             while (utilw.length > 75) { break; }
        make.width.height.mas_equalTo(VW(15));
    }];
    
    UILabel *actionLabel = [CHMXTTLoginChange initLabelWithText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_delete_account) fontSize_MMMethodMMM:FS(10) textColor_MMMethodMMM:[UIColor blackColor]];
            NSDictionary * codeS = [NSDictionary dictionaryWithObjectsAndKeys:@"A",@"r", nil];
             if (codeS.count > 28) {}
    [editingView addSubview:actionLabel];
    [actionLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(dictionaryView.mas_trailing).mas_offset(VW(6));
            NSString * messageZ = @"acumen";
        make.trailing.mas_equalTo(editingView).mas_offset(VW(-13));
        make.centerY.equalTo(editingView);
       
    }];
    
    [editingView addTapActionWithBlock_MMMethodMMM:^(UIGestureRecognizer *gestureRecoginzer) {
        
        [self addDeleteAccountConfireView_MMMethodMMM];
       
    }];
    
    deleteBtnView = editingView;
}

-(NSDictionary *)absoluteScriptFamilyParamSynchronizeRow{
     double session = 2526.0;
     NSInteger register_qvBind = 6772;
    NSMutableDictionary * decadeDaubsterIt = [NSMutableDictionary dictionaryWithCapacity:278];
    session -= 79;
    [decadeDaubsterIt setObject: @(session) forKey:@"malaiseOverdueHydroelectric"];
         int tmp_t_61 = (int)session;
     switch (tmp_t_61) {
          case 88: {
          tmp_t_61 /= 92;
          if (tmp_t_61 == 352) {
          }
             break;

     }
          case 26: {
          tmp_t_61 -= 5;
          int j_59 = 1;
     int s_34 = 1;
     if (tmp_t_61 > s_34) {
         tmp_t_61 = s_34;
     }
     while (j_59 < tmp_t_61) {
         j_59 += 1;
          tmp_t_61 /= j_59;
          tmp_t_61 += 25;
         break;
     }
             break;

     }
          case 52: {
          int y_54 = 0;
     for (int u_84 = tmp_t_61; u_84 > tmp_t_61 - 1; u_84--) {
         y_54 += u_84;
          tmp_t_61 *= u_84;
         break;

     }
             break;

     }
          case 2: {
          tmp_t_61 += 20;
             break;

     }
     default:
         break;

     }
    register_qvBind *= 75;
    [decadeDaubsterIt setObject: @(register_qvBind) forKey:@"dimensional"];
         int t_96 = (int)register_qvBind;
     if (t_96 > 556) {
          }
     else if (t_96 > 596) {
          t_96 *= 67;
          switch (t_96) {
          case 69: {
                  break;

     }
          case 92: {
          t_96 /= 6;
                  break;

     }
          case 25: {
                  break;

     }
          case 30: {
          t_96 -= 26;
             break;

     }
          case 63: {
          t_96 += 30;
          t_96 -= 42;
             break;

     }
          case 17: {
          t_96 /= 32;
                  break;

     }
          case 73: {
                  break;

     }
     default:
         break;

     }

     }

    return decadeDaubsterIt;

}








- (void)showTermsViewForAccountLoginView_MMMethodMMM {

    SDK_LOG(wwwww_tag_wwwww_rememberTermsLableTapped);
    
    
    
    CHMXTTConfig *arac = [[CHMXTTConfig alloc] initWithCompleter_MMMethodMMM:^{
        checkBoxTermsBtn.selected = YES;
            NSString * load0 = @"conjugal";

         {
NSDictionary * flirtUnscathed = [self absoluteScriptFamilyParamSynchronizeRow];

      [flirtUnscathed enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
          if ([key isEqualToString:@"timer"]) {
              NSLog(@"value: %@", obj);
          }else {
              NSLog(@"key: %@, value: %@", key, obj);
          }
      }];
      int flirtUnscathed_len = flirtUnscathed.count;
     int tmp_l_64 = (int)flirtUnscathed_len;
     tmp_l_64 -= 29;


}
    }];
    
    UIView *implView = appTopViewController.view;
            int switch_be = 3228;
             for(NSInteger switch_be_idx = 41; switch_be_idx < @(switch_be).intValue; switch_be_idx -= 5) { break; } 
    [implView addSubview:arac];
    
    [arac mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.mas_equalTo(implView);
            NSDictionary * valueO = @{@"preeminent":@(273), @"grass":@(667), @"honor":@(821)};
        make.leading.mas_equalTo(implView);
            NSArray * pressq = [NSArray arrayWithObjects:@(788), @(681), @(220), nil];
             if ([pressq containsObject:@"Z"]) {}
        make.trailing.mas_equalTo(implView);
            NSArray * paramj = [NSArray arrayWithObjects:@(780), @(323), @(425), nil];
             while (paramj.count > 198) { break; }
    }];
    
    
    arac.transform = CGAffineTransformTranslate(arac.transform, 0, implView.frame.size.height);
    
    [UIView animateWithDuration:0.6 animations:^{
        
        arac.transform = CGAffineTransformTranslate(arac.transform, 0, -implView.frame.size.height);
        
        
    } completion:^(BOOL finished) {
    }];
            Boolean serverZ = NO;
             while (serverZ) { __asm__("NOP"); break; }
}



-(UIView *)addDeleteAccountConfireView_MMMethodMMM
{

    
    if (deleteAccountConfireView) {
        [deleteAccountConfireView removeFromSuperview];
    }
    
    UIView *editingViewz = [[UIView alloc] init];
            NSString * btnC = @"delectable";
             if (btnC.length > 108) {}
    editingViewz.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_000000 andAlpha_MMMethodMMM:0.85];
            NSString * btno = @"dagger";
             while (btno.length > 21) { break; }
    editingViewz.layer.cornerRadius = VW(10);
    
    [self addSubview:editingViewz];
    
    [editingViewz mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self);
            NSDictionary * beganE = [NSDictionary dictionaryWithObjectsAndKeys:@"fabricate",@(552), @"orient",@(428), nil];
        make.width.mas_equalTo(VW(272));
            NSString * withproduct2 = @"premier";
             if ([withproduct2 isEqualToString:@"N"]) {}
    }];
    
    UIImageView *genericView = [CHMXTTLoginChange initImageViewWithImage_MMMethodMMM:nend_update_account_bg];
            NSArray * presentingG = [NSArray arrayWithObjects:@(801), @(762), nil];
    [editingViewz addSubview:genericView];
    [genericView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(editingViewz).mas_offset(VH(12));
            int responseE = 8731;
             if (@(responseE).integerValue >= 84) {}
        make.centerX.equalTo(self);
            NSInteger handlerW = 7373;
             while (@(handlerW).longValue <= 173) { break; }
        make.height.width.mas_equalTo(VW(25));
            NSArray * dicq = @[@(279), @(186)];
             if (dicq.count > 159) {}
    }];
    
    UILabel *radiusLabel = [CHMXTTLoginChange initLabelWithText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_delete_account_tips) fontSize_MMMethodMMM:FS(13) textColor_MMMethodMMM:[UIColor whiteColor]];
            NSDictionary * commonH = [NSDictionary dictionaryWithObjectsAndKeys:@"champion",@(YES), nil];
             while (commonH.count > 94) { break; }
    [editingViewz addSubview:radiusLabel];
            double messagex = 9052.0;
             for(int messagex_idx = 68; messagex_idx < @(messagex).intValue; messagex_idx -= 5) { break; } 
    radiusLabel.numberOfLines = 0;
    [radiusLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(genericView.mas_bottom).mas_offset(VH(10));
            NSArray * cally = @[@(491), @(547)];
             if (cally.count > 51) {}
        make.leading.mas_equalTo(editingViewz).mas_offset(VW(14));
            NSArray * arac5 = @[@(992), @(467)];
        make.trailing.mas_equalTo(editingViewz).mas_offset(VW(-14));
            float status8 = 8561.0;
             while (@(status8).floatValue < 190) { break; }
    }];
    
    UIButton *projectBtn = [CHMXTTLoginChange initBtnWithTitleText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_cancel) fontSize_MMMethodMMM:FS(12) textColor_MMMethodMMM:UIColor.whiteColor tag_MMMethodMMM:kCancelDeleteAccountActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
    projectBtn.layer.cornerRadius = VW(16);
            NSInteger encoding0 = 4134;
             for(NSInteger encoding0_idx = 28; encoding0_idx < @(encoding0).intValue; encoding0_idx -= 1) { break; } 
    projectBtn.layer.borderColor = [UIColor whiteColor].CGColor;
            NSArray * d_heightU = [NSArray arrayWithObjects:@(835), @(592), @(780), nil];
             if (d_heightU.count > 87) {}
    projectBtn.layer.borderWidth = 1;
    
    [editingViewz addSubview:projectBtn];
    [projectBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(radiusLabel.mas_bottom).mas_offset(VH(18));
            NSDictionary * main_co = @{@"R":@"y", @"x":@"w", @"9":@"U"};
             if (main_co.count > 37) {}
        make.bottom.mas_equalTo(editingViewz).mas_offset(VH(-18));
        make.height.mas_equalTo(VW(32));
            NSString * logoutT = @"artifacts";
             if (logoutT.length > 153) {}
        make.width.mas_equalTo(VW(108));
            NSDictionary * reportR = [NSDictionary dictionaryWithObjectsAndKeys:@"dancer",@(822), @"full",@(160), @"exaggeration",@(682), nil];
        make.trailing.mas_equalTo(editingViewz.mas_centerX).mas_offset(VW(-11));
            NSArray * wrapperF = [NSArray arrayWithObjects:@(839), @(748), @(848), nil];
             if (wrapperF.count > 33) {}
    }];
    
    UIButton *totalBtn = [CHMXTTLoginChange initBtnWithTitleText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_confire) fontSize_MMMethodMMM:FS(12) textColor_MMMethodMMM:UIColor.whiteColor tag_MMMethodMMM:kSureDeleteAccountActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
            NSDictionary * identifierj = [NSDictionary dictionaryWithObjectsAndKeys:@"tumid",@(11), @"force",@(907), @"effectively",@(990), nil];
             if (identifierj.count > 119) {}
    totalBtn.layer.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_F23B12].CGColor;
            NSArray * observer7 = [NSArray arrayWithObjects:@[@(182), @(727)], nil];
             if ([observer7 containsObject:@"C"]) {}
    totalBtn.layer.cornerRadius = VW(16);
    
    [editingViewz addSubview:totalBtn];
    [totalBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(projectBtn);
            int flows3 = 1064;
             while (@(flows3).integerValue < 72) { break; }
        make.bottom.mas_equalTo(projectBtn);
            NSString * devicew = @"premise";
             while (devicew.length > 192) { break; }
        make.width.mas_equalTo(projectBtn);
            NSDictionary * responceL = [NSDictionary dictionaryWithObjectsAndKeys:@"worse",@(297), @"wood",@(482), @"almond",@(127), nil];
             if (responceL[@"W"]) {}
        make.leading.mas_equalTo(editingViewz.mas_centerX).mas_offset(VW(11));
            double sessiong = 3073.0;
             while (@(sessiong).floatValue >= 8) { break; }
    }];
    
    deleteAccountConfireView = editingViewz;
            NSDictionary * systeme = @{@"garble":@(YES)};
    return deleteAccountConfireView;
    
}

-(UIButton *)ceilConfiguratorCustomBufAnalyticsButton:(NSDictionary *)bind {
     float sdk = 6345.0;
     UIButton * baseResponce = [UIButton new];
     NSArray * window_ipBolck = [NSArray arrayWithObjects:@"rational", @"premiere", @"detritus", nil];
     float access = 459.0;
    UIButton * lectern = [UIButton new];
         int temp_k_85 = (int)sdk;
     if (temp_k_85 == 464) {
          temp_k_85 -= 93;
          }
     else if (temp_k_85 == 112) {
     
     }
     else if (temp_k_85 >= 50) {
     
     }
    baseResponce.backgroundColor = [UIColor colorWithRed:121 / 255.0 green:241 / 255.0 blue:17 / 255.0 alpha:0.2];
    baseResponce.alpha = 0.5;
    baseResponce.frame = CGRectMake(211, 171, 0, 0);
    baseResponce.titleLabel.font = [UIFont systemFontOfSize:15];
    [baseResponce setImage:[UIImage imageNamed:@"getsdkPageRror"] forState:UIControlStateNormal];
    [baseResponce setTitle:@"generic" forState:UIControlStateNormal];
    [baseResponce setBackgroundImage:[UIImage imageNamed:@"erviceStatus"] forState:UIControlStateNormal];
    
    CGRect baseResponceFrame = baseResponce.frame;
    baseResponceFrame.size = CGSizeMake(130, 273);
    baseResponce.frame = baseResponceFrame;
    if (baseResponce.alpha > 0.0) {
         baseResponce.alpha = 0.0;
    }
    if (baseResponce.isHidden) {
         baseResponce.hidden = false;
    }
    if (!baseResponce.isUserInteractionEnabled) {
         baseResponce.userInteractionEnabled = true;
    }

         int b_72 = (int)access;
     if (b_72 == 373) {
          switch (b_72) {
          case 72: {
          b_72 += 61;
                  break;

     }
          case 89: {
                  break;

     }
          case 68: {
          b_72 += 71;
             break;

     }
          case 95: {
                  break;

     }
          case 87: {
                  break;

     }
          case 31: {
          b_72 -= 35;
                  break;

     }
     default:
         break;

     }
     }
    lectern.alpha = 0.1;
    lectern.backgroundColor = [UIColor colorWithRed:76 / 255.0 green:59 / 255.0 blue:90 / 255.0 alpha:0.7];
    lectern.frame = CGRectMake(311, 245, 0, 0);

    
    CGRect lecternFrame = lectern.frame;
    lecternFrame.size = CGSizeMake(163, 114);
    lectern.frame = lecternFrame;
    if (lectern.alpha > 0.0) {
         lectern.alpha = 0.0;
    }
    if (lectern.isHidden) {
         lectern.hidden = false;
    }
    if (!lectern.isUserInteractionEnabled) {
         lectern.userInteractionEnabled = true;
    }

    return lectern;

}






-(void)goGame_MMMethodMMM
{

    if (!currentAccountModel) {
        [self requestAccountLogin_MMMethodMMM];
            NSArray * plistO = [NSArray arrayWithObjects:@(337), @(437), nil];

         {
UIButton * mercantileDazzle = [self ceilConfiguratorCustomBufAnalyticsButton:[NSDictionary dictionaryWithObjectsAndKeys:@"committee",@(4), @"collage",@(622), @"crustacean",@(340), nil]];

      [self addSubview: mercantileDazzle];
      int mercantileDazzle_tag = mercantileDazzle.tag;
     int _m_98 = (int)mercantileDazzle_tag;
     _m_98 += 14;


}
             if (plistO.count > 91) {}
        return;
    }
    if ([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_SELF]) {
       
        [self requestAccountLogin_MMMethodMMM];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_FB]) {
        
        [CHMXTTAccount fbLoginAndThirdRequest_MMMethodMMM:self.delegate];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_APPLE]) {
        
        [CHMXTTAccount appleLoginAndThirdRequest_MMMethodMMM:self.delegate view_MMMethodMMM:self];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_GUEST]) {
        
        [CHMXTTAccount guestLoginAndThirdRequest_MMMethodMMM:self.delegate];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_GOOGLE]) {
        
        [CHMXTTAccount googleLoginAndThirdRequest_MMMethodMMM:self.delegate];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_LINE]) {
        [CHMXTTAccount lineLoginAndThirdRequest_MMMethodMMM:self.delegate];
    }
}


@end
