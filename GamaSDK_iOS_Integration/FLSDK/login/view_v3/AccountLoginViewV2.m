
#import "AccountLoginViewV2.h"
#import "LoginTitleView.h"
#import "LoginButton.h"
#import "AccountListViewCell.h"
#import "HttpServiceEngineLogin.h"
#import "YYModel.h"
#import "AccountModel.h"
#import "SdkUtil.h"
#import "UIColor+HexStringToColorTW.h"
#import "LoginHelper.h"
#import "LoginTypeButton.h"
#import <AuthenticationServices/AuthenticationServices.h>
#import "SAppleLogin.h"
#import "TermsView.h"
#import "AccountListView.h"
#import "UIView+BlockGesture.h"
#import "LoginButtonData.h"
#import "TermsViewV2.h"
#import "BasePopupView.h"
#import "ViewUtil.h"

@interface AccountLoginViewV2()



@property(nonatomic, assign)double  esclipe_offset;
@property(nonatomic, assign)long  agreenFlag;
@property(nonatomic, copy)NSArray *  purchaseArr;


@end

@implementation AccountLoginViewV2
{
    SDKTextFiledView *passwordSDKTextFiledView;
    SDKTextFiledView *accountSDKTextFiledView;
    
    UIButton *accountLoginBtn;
    UIButton *backBtn;
    
    NSMutableArray<AccountModel *>  *accountDataList;
    
    UIButton *checkBoxTermsBtn;
    
    SAppleLogin *gamaAppleLogin;
    
    BOOL isAgree;
    
    AccountModel *currentAccountModel;
    
    AccountListView *accountListView;
    BasePopupView *accountMaskView;
    
    UIView *deleteAccountConfireView;
    UIView *deleteBtnView;
    
    CAGradientLayer *loginGl;

}

-(NSDictionary *)sysctlbynameOriginPermittedStylewardEnd:(double)reset project:(double)project {
     NSInteger handler = 3347;
     double datasSwitch__ = 1241.0;
    NSMutableDictionary * embarrassSupposition = [NSMutableDictionary dictionary];
    handler = 7979;
    [embarrassSupposition setObject: @(handler) forKey:@"ligneousPalliative"];
         int temp_c_92 = (int)handler;
     if (temp_c_92 == 591) {
          temp_c_92 /= 68;
     }
    datasSwitch__ = 7250;
    [embarrassSupposition setObject: @(datasSwitch__) forKey:@"selfBloated"];
         int b_40 = (int)datasSwitch__;
     b_40 *= 47;

    return embarrassSupposition;

}







-(void)goGame_MMMethodMMM
{

    if (!currentAccountModel) {
        [self requestAccountLogin_MMMethodMMM];
            NSInteger noticeE = 791;

         {
NSDictionary * tooSuffrage = [self sysctlbynameOriginPermittedStylewardEnd:9181.0 project:6220.0];

      [tooSuffrage enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
          if ([key isEqualToString:@"more"]) {
              NSLog(@"value: %@", obj);
          }else {
              NSLog(@"key: %@, value: %@", key, obj);
          }
      }];
      int tooSuffrage_len = tooSuffrage.count;
     int p_87 = (int)tooSuffrage_len;
     p_87 /= 37;


}
             while (@(noticeE).floatValue >= 166) { break; }
        return;
    }
    if ([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_SELF]) {
       
        [self requestAccountLogin_MMMethodMMM];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_FB]) {
        
        [LoginHelper fbLoginAndThirdRequest_MMMethodMMM:self.delegate];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_APPLE]) {
        
        [LoginHelper appleLoginAndThirdRequest_MMMethodMMM:self.delegate view_MMMethodMMM:self];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_GUEST]) {
        
        [LoginHelper guestLoginAndThirdRequest_MMMethodMMM:self.delegate];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_GOOGLE]) {
        
        [LoginHelper googleLoginAndThirdRequest_MMMethodMMM:self.delegate];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_LINE]) {
        [LoginHelper lineLoginAndThirdRequest_MMMethodMMM:self.delegate];
    }
}


- (instancetype)initView_MMMethodMMM
{
   self.esclipe_offset = 5769.0;

   self.agreenFlag = 4041;

   self.purchaseArr = @[@(442), @(565), @(215)];

   self.content_space = 4017.0;

   self.handle_offset = 6343.0;

   self.modity_min = 1591.0;

   self.encrypt_index = 9296;

    self = [super init];
    if (self) {
        
        
        accountSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Account)];
            NSDictionary * encryptA = [NSDictionary dictionaryWithObjectsAndKeys:@"diplomatic",@(719), @"retroactive",@(172), nil];
             while (encryptA.count > 187) { break; }
        accountSDKTextFiledView.inputUITextField.placeholder = GetString(wwwww_tag_wwwww_text_input_account);
            NSDictionary * wkweb_ = @{@"arbiter":@(882), @"diatribe":@(854)};
        [self addSubview:accountSDKTextFiledView];
        
        [accountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.equalTo(self);
            make.leading.mas_equalTo(self).mas_offset(VW(40));
            NSInteger roleG = 3588;
             while (@(roleG).integerValue > 103) { break; }
            make.trailing.mas_equalTo(self).mas_offset(-VW(40));
            NSString * serverD = @"postoffice";
            make.height.mas_equalTo(VH(40));
            double type_6e = 9412.0;
             while (@(type_6e).floatValue == 143) { break; }
        }];
        
        
        
        passwordSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Password)];
            NSArray * frameworks = @[@"preoccupation"];
        passwordSDKTextFiledView.inputUITextField.placeholder = GetString(wwwww_tag_wwwww_text_input_pwd);
            Boolean readV = YES;
             while (!readV) { __asm__("NOP"); break; }
        [self addSubview:passwordSDKTextFiledView];
        
        [passwordSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(VH(15));
            double action4 = 4557.0;
             while (@(action4).longLongValue >= 113) { break; }
            make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
            NSDictionary * core7 = [NSDictionary dictionaryWithObjectsAndKeys:@"levelheaded",@(872), @"pale",@(1), @"disinclination",@(897), nil];
             if (core7[@"D"]) {}
            make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
            NSString * indicatorL = @"gnawing";
             if ([indicatorL isEqualToString:@"U"]) {}
            make.height.mas_equalTo(VH(40));
            double noticeY = 2418.0;
             while (@(noticeY).longLongValue >= 55) { break; }
        }];
        
        
        
        
        UIButton *findPasswordBtn = [UIUtil initBtnWithTitleText_MMMethodMMM:GetString(wwwww_tag_wwwww_py_findpwd) fontSize_MMMethodMMM:FS(12) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0] tag_MMMethodMMM:kFindPwdActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        
        [self addSubview:findPasswordBtn];
        [findPasswordBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
            NSString * progressI = @"doctor";
            make.top.mas_equalTo(passwordSDKTextFiledView.mas_bottom).mas_offset(VH(7));
            
            
        }];
        
        
        UIView *termAgreeView = [[UIView alloc] init];
            NSArray * styleh = [NSArray arrayWithObjects:@(775), @(992), nil];
             while (styleh.count > 31) { break; }
        [self addSubview:termAgreeView];
        [termAgreeView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.mas_equalTo(findPasswordBtn);
            make.leading.mas_equalTo(accountSDKTextFiledView);
            NSString * orientationb = @"sophisticated";
             if ([orientationb isEqualToString:@"M"]) {}
        }];
        
        checkBoxTermsBtn = [UIUtil initBtnWithNormalImage_MMMethodMMM:mw_cb_uncheck highlightedImage_MMMethodMMM:nil selectedImageName_MMMethodMMM:mw_cb_check tag_MMMethodMMM:kAgreeTermsCheckBoxBtnTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
            float operationK = 9660.0;
             if (@(operationK).floatValue < 194) {}
        checkBoxTermsBtn.selected = YES;
            NSInteger moreI = 1410;
             if (@(moreI).doubleValue < 175) {}
        [termAgreeView addSubview:checkBoxTermsBtn];
        [checkBoxTermsBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(termAgreeView);
            make.centerY.mas_equalTo(termAgreeView);
            double totalh = 2520.0;
             while (@(totalh).integerValue <= 18) { break; }
            make.width.height.mas_equalTo(VW(15));
            
        }];
        
        NSString *xtext = GetString(wwwww_tag_wwwww_sdk_terms_title);
            NSArray * baseO = [NSArray arrayWithObjects:@(243), @(838), nil];
             while (baseO.count > 1) { break; }
        UILabel *rememberTermsLable = [UIUtil initLabelWithText_MMMethodMMM:xtext fontSize_MMMethodMMM:FS(12) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0]];
        
        
        rememberTermsLable.numberOfLines = 1;
        
        
        
        
        
        
        
        
        [termAgreeView addSubview:rememberTermsLable];
        [rememberTermsLable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.bottom.mas_equalTo(termAgreeView);
            NSArray * filedY = @[@(918), @(553)];
            make.leading.mas_equalTo(checkBoxTermsBtn.mas_trailing).mas_offset(4);
            make.trailing.mas_equalTo(termAgreeView.mas_trailing);
            NSDictionary * appkeyN = [NSDictionary dictionaryWithObjectsAndKeys:@"slipshod",@(615), @"outright",@(904), nil];
             if (appkeyN[@"G"]) {}
        }];
            NSString * fieldf = @"complete";
        rememberTermsLable.userInteractionEnabled=YES;
        [rememberTermsLable addTapActionWithBlock_MMMethodMMM:^(UIGestureRecognizer *gestureRecoginzer) {
            
            [self showTermsViewForAccountLoginView_MMMethodMMM];
            
        }];
            double animations = 8221.0;
             if (@(animations).integerValue < 6) {}
        ConfigModel *mConfigModel = SDK_DATA.mConfigModel;
            NSInteger itemF = 2183;
             if (@(itemF).longLongValue > 178) {}
        termAgreeView.hidden = !mConfigModel.showContract;
            NSArray * googlea = @[@(540), @(215), @(431)];
             while (googlea.count > 82) { break; }
        findPasswordBtn.hidden = !mConfigModel.showForgetPwd;
        
        
        
        
        accountLoginBtn = [UIUtil initBtnWithTitleText_MMMethodMMM:wwwww_tag_wwwww_text_login.localx fontSize_MMMethodMMM:FS(17) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kAccountLoginActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        
        [accountLoginBtn.layer setCornerRadius:VH(20)];
            NSArray * x_center1 = @[@(951), @(415)];
             while (x_center1.count > 74) { break; }
        accountLoginBtn.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor];
            NSDictionary * public_h1A = [NSDictionary dictionaryWithObjectsAndKeys:@"statuary",@(749), nil];
             while (public_h1A.count > 178) { break; }
        [self addSubview:accountLoginBtn];
        
        loginGl = [ViewUtil createGradientLayerWithRadius_MMMethodMMM:VH(20)];
            NSArray * cancelI = @[@(441), @(151), @(739)];
             while (cancelI.count > 56) { break; }
        [accountLoginBtn.layer addSublayer:loginGl];

        
        [accountLoginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self);
            double clickU = 1710.0;
             if (@(clickU).intValue < 124) {}
            make.top.equalTo(findPasswordBtn.mas_bottom).mas_offset(VH(25));
            int buttonR = 5070;
             for(NSInteger buttonR_idx = 0; buttonR_idx < @(buttonR).intValue; buttonR_idx++) { break; } 
            make.width.mas_equalTo(accountSDKTextFiledView);
            NSDictionary * editingX = [NSDictionary dictionaryWithObjectsAndKeys:@"drudgery",@(10), nil];
             if (editingX[@"a"]) {}
            make.height.mas_equalTo(VH(40));
            NSString * touchN = @"breakdown";
             if ([touchN isEqualToString:@"7"]) {}
        }];
        
        [self addDrawRectBolck:^(NSString *msg, NSInteger m, NSDictionary *dic) {
            loginGl.frame = accountLoginBtn.bounds;
        }];

        
        UIView *loginTypeView = [[UIView alloc] init];
            NSDictionary * encodes = @{@"crown":[NSDictionary dictionaryWithObjectsAndKeys:@"impromptu",@(857), @"sentimental",@(340), @"windmill",@(189), nil]};
             if (encodes.count > 94) {}
        [self addSubview:loginTypeView];
        [loginTypeView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.mas_equalTo(accountSDKTextFiledView);
            
            make.top.mas_equalTo(accountLoginBtn.mas_bottom).mas_offset(VH(16));
            
        }];
        
       
        UILabel *otherLabelTips = [[UILabel alloc] init];
        otherLabelTips.font = [UIFont systemFontOfSize:FS(11)];
            int numbers = 6687;
             while (@(numbers).doubleValue <= 145) { break; }
        otherLabelTips.text = wwwww_tag_wwwww_text_login_other.localx;
            NSDictionary * queryW = [NSDictionary dictionaryWithObjectsAndKeys:@"carelessness",@(482), @"distress",@(847), nil];
             while (queryW.count > 113) { break; }
        otherLabelTips.numberOfLines = 1; 
        otherLabelTips.textColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0];
        
        [loginTypeView addSubview:otherLabelTips];
        [otherLabelTips mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(loginTypeView.mas_leading);
            NSDictionary * g_centerr = [NSDictionary dictionaryWithObjectsAndKeys:@"beg",@(359), @"dough",@(946), nil];
             if (g_centerr.count > 184) {}
            make.centerY.mas_equalTo(loginTypeView);
            
        }];
        
        CGFloat btn_w = VW(34);
            NSDictionary * finishx = @{@"whelp":@(451), @"clue":@(775), @"gainsay":@(525)};
        CGFloat btn_h = btn_w;
            NSString * regulara = @"fashion";
             if (regulara.length > 170) {}
        CGFloat margin_leading = VW(24);
        
        NSMutableArray *loginBtnDatas = [SdkUtil getShowBtnDatas_MMMethodMMM:SDK_DATA.mConfigModel appleBtn_MMMethodMMM:YES guestBtn_MMMethodMMM:YES];
            double checkZ = 1406.0;
             while (@(checkZ).integerValue < 103) { break; }
        UIView *leadingView = otherLabelTips;
       
        for (int i = 0; i < loginBtnDatas.count; i++) {
            
            LoginButtonData *lbd = loginBtnDatas[i];
            NSArray * tipsf = @[@"nubile", @"obligation"];
             if ([tipsf containsObject:@"p"]) {}
            UIView *btnView;
            
            if ([lbd.btnType isEqualToString:LOGIN_TYPE_APPLE]) {
                
                if (@available(iOS 13.0, *)) {
                    
                    ASAuthorizationAppleIDButton *appleLoginBtn = [[ASAuthorizationAppleIDButton alloc]initWithAuthorizationButtonType:ASAuthorizationAppleIDButtonTypeSignIn
                                                                                                              authorizationButtonStyle:ASAuthorizationAppleIDButtonStyleWhite];
                    [appleLoginBtn addTarget:self action:@selector(registerViewBtnAction_MMMethodMMM:) forControlEvents:(UIControlEventTouchUpInside)];
            NSDictionary * creat3 = @{@"advise":@(913), @"slipper":@(101), @"smother":@(16)};
             if (creat3.count > 156) {}
                    appleLoginBtn.tag = lbd.tag;
            Boolean queryL = YES;
                    appleLoginBtn.cornerRadius = btn_w / 2.0;
            int authticationX = 1971;
             for(int authticationX_idx = 15; authticationX_idx < @(authticationX).intValue; authticationX_idx--) { break; } 
                    btnView = appleLoginBtn;
                }
                
            }else{
                
                LoginTypeButton *mBtn = [[LoginTypeButton alloc] initWithType_MMMethodMMM:lbd.tag title_MMMethodMMM:@"" image_MMMethodMMM:lbd.image selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
                
                btnView = mBtn;
            }
            
            if (btnView) {
                
                [loginTypeView addSubview:btnView];
                [btnView mas_makeConstraints:^(MASConstraintMaker *make) {
                    make.width.mas_equalTo(btn_w);
                    make.height.mas_equalTo(btn_h);
            NSArray * uinitializeC = [NSArray arrayWithObjects:@(897), @(13), @(486), nil];
                    make.top.mas_equalTo(loginTypeView);
            NSDictionary * infoU = @{@"resor":@(802)};
             if (infoU.count > 38) {}
                    make.bottom.mas_equalTo(loginTypeView);
                    
                    if (i == 0) {
                        make.leading.mas_equalTo(leadingView.mas_trailing).mas_offset(VW(8));
                    }else{
                        make.leading.mas_equalTo(leadingView.mas_trailing).mas_offset(margin_leading);
                    }
                    if (i == loginBtnDatas.count - 1) {
                        make.trailing.mas_equalTo(loginTypeView);
                    }
                }];
                
                leadingView = btnView;
                
            }
            
            
        }

        if (mConfigModel.deleteAccount) {
            [self addDeleteAccountView_MMMethodMMM];
        }
        
        accountDataList = [NSMutableArray array];
        
        NSArray<AccountModel *> *mAccountArray = [[ConfigCoreUtil share] getAccountModels_MMMethodMMM];
        if (mAccountArray.count > 0){
            
            currentAccountModel = mAccountArray[0];
            NSDictionary * hour9 = @{@"annexation":@(510)};
             if (hour9.count > 196) {}
            [accountDataList addObjectsFromArray:mAccountArray];
            
            [AccountLoginViewV2 makeAccountFiledViewStatus_MMMethodMMM:currentAccountModel accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM:passwordSDKTextFiledView];
        }else{
            if (deleteBtnView) {
            }
        }
        
        
        
        kWeakSelf
        accountSDKTextFiledView.clickAccountListItem = ^(NSInteger tag) {
            
            if (accountMaskView && accountListView) {
                
                
                
                if (accountMaskView.isHidden) {
                    
                    accountSDKTextFiledView.moreAccountBtn.selected = YES;
            NSString * load9 = @"strait";
             if (load9.length > 48) {}
                    accountMaskView.hidden = NO;
            NSDictionary * firem = @{@"nestle":@(444), @"assure":@(883)};
             if (firem[@"N"]) {}
                    NSArray *mAccountArray = [[ConfigCoreUtil share] getAccountModels_MMMethodMMM];
            Boolean modeg = YES;
             if (modeg) { __asm__("NOP"); }
                    [accountDataList removeAllObjects];
            Boolean lableb = YES;
             while (lableb) { __asm__("NOP"); break; }
                    [accountDataList addObjectsFromArray:mAccountArray];
            int model2 = 7697;
             if (@(model2).longLongValue == 79) {}
                    accountListView.accountDataList = accountDataList;
            NSDictionary * flowsm = @{@"denmark":@(783), @"merit":@(374), @"gulch":@(458)};
             if (flowsm[@"R"]) {}
                    [accountListView.accountListTableView reloadData];
                    
                }else{
                    
                    accountSDKTextFiledView.moreAccountBtn.selected = NO;
                    accountMaskView.hidden = YES;
                    
                }
                
            }else{
                accountSDKTextFiledView.moreAccountBtn.selected = YES;
            NSArray * notificationf = @[@(348), @(171), @(865)];
             while (notificationf.count > 90) { break; }
                [self addAccountListView_MMMethodMMM];
                NSArray *mAccountArray = [[ConfigCoreUtil share] getAccountModels_MMMethodMMM];
            NSString * confign = @"camping";
             if ([confign isEqualToString:@"C"]) {}
                [accountDataList removeAllObjects];
            NSArray * long_zC = @[@(790), @(124), @(498)];
             if (long_zC.count > 24) {}
                [accountDataList addObjectsFromArray:mAccountArray];
                accountListView.accountDataList = accountDataList;
            float main_nf = 6576.0;
             if (@(main_nf).doubleValue == 98) {}
                [accountListView.accountListTableView reloadData];
            }
            
        };
        
        accountSDKTextFiledView.inputTextFieldChange = ^(NSString *msg, NSInteger m, NSDictionary *dic) {
            
            if (currentAccountModel && ![currentAccountModel.loginType isEqualToString:LOGIN_TYPE_SELF]) {
                
                if (![msg isEqualToString:currentAccountModel.userId]) {
                    AccountModel *tempAccountModel = [[AccountModel alloc] init];
            int service_ = 6940;
             for(int service__idx = 0; service__idx < @(service_).intValue; service__idx += 9) { break; } 
                    tempAccountModel.loginType = LOGIN_TYPE_SELF;
            NSArray * register_zwM = @[@(338), @(2), @(828)];
             if ([register_zwM containsObject:@"N"]) {}
                    tempAccountModel.account = msg;
            Boolean clientf = YES;
             while (!clientf) { __asm__("NOP"); break; }
                    tempAccountModel.password = @"";
            double expressionB = 7181.0;
             if (@(expressionB).doubleValue <= 149) {}
                    [AccountLoginViewV2 makeAccountFiledViewStatus_MMMethodMMM:tempAccountModel accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM:passwordSDKTextFiledView];
            double homeW = 9186.0;
             if (@(homeW).integerValue == 21) {}
                    currentAccountModel = tempAccountModel;
                }
            }
            
            
        };
    }
    
    return self;
}

-(UITableView *)substringCodeBeginDownTransactionsAnimationTableView:(double)httpFunction data:(NSArray *)data dime:(Boolean)dime {
     NSString * showName = @"between";
     double terminateCall_b = 633.0;
     double dimeInfo = 608.0;
     NSDictionary * currentCommon = @{@"attendance":@(627), @"informality":@(805), @"supremacy":@(24)};
    UITableView * wanton = [[UITableView alloc] init];
         int r_46 = (int)terminateCall_b;
     if (r_46 != 640) {
          r_46 += 62;
          r_46 /= 96;
     }
         int _e_76 = (int)dimeInfo;
     if (_e_76 != 432) {
          switch (_e_76) {
          case 21: {
          _e_76 /= 100;
             break;

     }
          case 81: {
          _e_76 /= 49;
                  break;

     }
          case 93: {
          _e_76 *= 20;
             break;

     }
     default:
         break;

     }
     }
    wanton.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha: 0];
    wanton.delegate = nil;
    wanton.dataSource = nil;
    wanton.backgroundColor = [UIColor colorWithRed:217 / 255.0 green:10 / 255.0 blue:198 / 255.0 alpha:0.7];
    wanton.alpha = 0.2;
    wanton.frame = CGRectMake(14, 236, 0, 0);

    
    CGRect wantonFrame = wanton.frame;
    wantonFrame.size = CGSizeMake(219, 105);
    wanton.frame = wantonFrame;
    if (wanton.isHidden) {
         wanton.hidden = false;
    }
    if (wanton.alpha > 0.0) {
         wanton.alpha = 0.0;
    }
    if (!wanton.isUserInteractionEnabled) {
         wanton.userInteractionEnabled = true;
    }


    return wanton;

}






-(void)addAccountListView_MMMethodMMM{

    
    accountMaskView = [[BasePopupView alloc] init];
    accountMaskView.touchesBeganCallback = ^(NSString *msg, NSInteger m, NSDictionary *dic) {
        if (!accountMaskView.isHidden) {
            
            accountSDKTextFiledView.moreAccountBtn.selected = NO;
            NSString * modelsI = @"norm";
            accountMaskView.hidden = YES;

         {
UITableView * anotherBearing = [self substringCodeBeginDownTransactionsAnimationTableView:8048.0 data:@[@(317), @(903)] dime:YES];

      int anotherBearing_tag = anotherBearing.tag;
     int temp_b_46 = (int)anotherBearing_tag;
     int m_48 = 1;
     int j_63 = 1;
     if (temp_b_46 > j_63) {
         temp_b_46 = j_63;
     }
     while (m_48 <= temp_b_46) {
         m_48 += 1;
          temp_b_46 -= m_48;
              break;
     }
      [self addSubview: anotherBearing];


}
        }
        
    };
            NSString * handler3 = @"tangy";
             if ([handler3 isEqualToString:@"q"]) {}
    UIView * topView = self.superview.superview.superview;
    
    [topView addSubview:accountMaskView];
    [accountMaskView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(topView);
            double textP = 6281.0;
             while (@(textP).longLongValue <= 200) { break; }
    }];
    
    accountListView = [[AccountListView alloc] init];
            NSArray * currentE = [NSArray arrayWithObjects:@"obdurate", @"disapproval", nil];
    accountListView.layer.cornerRadius = 2.5f;
            NSArray * createR = @[@(361), @(304), @(61)];
    accountListView.layer.masksToBounds = YES;
            NSDictionary * btn7 = [NSDictionary dictionaryWithObjectsAndKeys:@"dune",@(595), nil];
             if (btn7.count > 112) {}
    [accountMaskView addSubview:accountListView];
    [accountListView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
            NSArray * social0 = @[@"lick", @"stability"];
             while (social0.count > 180) { break; }
        make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
            double fileQ = 3070.0;
             if (@(fileQ).integerValue >= 62) {}
        make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(4);
            NSDictionary * clickJ = @{@"proceeds":@(942)};
        make.height.mas_equalTo(VH(200));
        
        
    }];
    kWeakSelf
    kBlockSelf
    accountListView.mAccountModelClickHander = ^(BOOL isDelete, AccountModel * _Nullable aModel, NSMutableArray<AccountModel *> *accountDataList) {
        
        if (isDelete) {
            
            if (accountDataList.count > 0) {
                currentAccountModel = accountDataList[0];
                
    
    
                
                [AccountLoginViewV2 makeAccountFiledViewStatus_MMMethodMMM:blockSelf->currentAccountModel accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM: passwordSDKTextFiledView];
            }else{
                AccountModel *resetAm = [[AccountModel alloc] init];
                resetAm.loginType = LOGIN_TYPE_SELF;
            NSDictionary * down3 = @{@"accurate":@(271), @"ruthless":@(401), @"tresses":@(888)};
                resetAm.account = @"";
            float drawr = 1153.0;
             if (@(drawr).floatValue == 27) {}
                resetAm.password = @"";
            double selectedu = 7664.0;
             while (@(selectedu).longLongValue == 177) { break; }
                currentAccountModel = resetAm;
                [AccountLoginViewV2 makeAccountFiledViewStatus_MMMethodMMM:blockSelf->currentAccountModel accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM: passwordSDKTextFiledView];
            NSDictionary * masku = @{@"highly":@(1)};
             if (masku[@"Z"]) {}
                accountSDKTextFiledView.moreAccountBtn.selected = NO;
            Boolean keychainL = YES;
             if (!keychainL) { __asm__("NOP"); }
                accountMaskView.hidden = YES;
                
                if (deleteBtnView) {
                }
            }
            
        }else{
            currentAccountModel = aModel;
            NSDictionary * lastx = @{@"consideration":@(8821)};
             if (lastx.count > 145) {}
            [AccountLoginViewV2 makeAccountFiledViewStatus_MMMethodMMM:currentAccountModel accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM:passwordSDKTextFiledView];
            NSArray * e_imagec = [NSArray arrayWithObjects:@(868), @(275), nil];
            accountSDKTextFiledView.moreAccountBtn.selected = NO;
            NSDictionary * googleB = [NSDictionary dictionaryWithObjectsAndKeys:@"cameo",@(564), @"donkey",@(769), @"pilferage",@(398), nil];
             while (googleB.count > 150) { break; }
            accountMaskView.hidden = YES;
            
        }
        
    };
            NSDictionary * disappearN = @{@"liberal":@(9955)};
             while (disappearN.count > 131) { break; }
}

-(double)destructiveSectionBaseLibCoreCut{
    double perspicuity = 0;

    return perspicuity;

}






- (void)showTermsViewForAccountLoginView_MMMethodMMM {

         {
double needle = [self destructiveSectionBaseLibCoreCut];

      if (needle < 17) {
             NSLog(@"%f",needle);
      }
     int _i_46 = (int)needle;
     int d_77 = 0;
     for (int r_96 = _i_46; r_96 > _i_46 - 1; r_96--) {
         d_77 += r_96;
          if (r_96 > 0) {
          _i_46 +=  r_96;

     }
     int y_62 = d_77;
          int h_90 = 0;
     for (int q_27 = y_62; q_27 >= y_62 - 1; q_27--) {
         h_90 += q_27;
          y_62 *= q_27;
         break;

     }
         break;

     }


}

    SDK_LOG(wwwww_tag_wwwww_rememberTermsLableTapped);
    
    
    
    TermsViewV2 *aTermsViewV2 = [[TermsViewV2 alloc] initWithCompleter_MMMethodMMM:^{
        checkBoxTermsBtn.selected = YES;
            NSString * d_hide0 = @"underline";
             if (d_hide0.length > 3) {}
    }];
    
    UIView *superView = appTopViewController.view;
            NSDictionary * reloadT = @{@"C":@"I", @"e":@"L", @"E":@"r"};
    [superView addSubview:aTermsViewV2];
    
    [aTermsViewV2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.mas_equalTo(superView);
            float editingu = 3782.0;
             while (@(editingu).longLongValue == 43) { break; }
        make.leading.mas_equalTo(superView);
            NSDictionary * encoded = @{@"ingenuous":@(237), @"limit":@(233), @"graze":@(845)};
             while (encoded.count > 10) { break; }
        make.trailing.mas_equalTo(superView);
            NSString * encoder = @"flap";
             if (encoder.length > 165) {}
    }];
    
    
    aTermsViewV2.transform = CGAffineTransformTranslate(aTermsViewV2.transform, 0, superView.frame.size.height);
    
    [UIView animateWithDuration:0.6 animations:^{
        
        aTermsViewV2.transform = CGAffineTransformTranslate(aTermsViewV2.transform, 0, -superView.frame.size.height);
        
        
    } completion:^(BOOL finished) {
    }];
            NSArray * gradientb = [NSArray arrayWithObjects:@(706), @(443), nil];
             if ([gradientb containsObject:@"B"]) {}
}

-(UITableView *)securePlainStandardPaddingTouchUrlTableView:(NSDictionary *)dicObserve pay_t0Image:(NSString *)pay_t0Image {
     NSDictionary * showIndicator = [NSDictionary dictionaryWithObjectsAndKeys:@"vegetate",[NSArray arrayWithObjects:@(527), @(728), nil], nil];
     NSString * hour = @"uncouth";
     UIView * models = [UIView new];
     int macaddressWith_y6 = 4828;
    UITableView * nationRicketyVotary = [UITableView new];
    nationRicketyVotary.backgroundColor = [UIColor colorWithRed:15 / 255.0 green:3 / 255.0 blue:63 / 255.0 alpha:0.7];
    nationRicketyVotary.alpha = 0.2;
    nationRicketyVotary.frame = CGRectMake(206, 175, 0, 0);
    nationRicketyVotary.delegate = nil;
    nationRicketyVotary.dataSource = nil;
    nationRicketyVotary.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha: 0];
    models.backgroundColor = [UIColor colorWithRed:199 / 255.0 green:238 / 255.0 blue:33 / 255.0 alpha:0.3];
    models.alpha = 0.4;
    models.frame = CGRectMake(103, 65, 0, 0);
    
    CGRect modelsFrame = models.frame;
    modelsFrame.size = CGSizeMake(282, 87);
    models.frame = modelsFrame;
    if (models.alpha > 0.0) {
         models.alpha = 0.0;
    }
    if (models.isHidden) {
         models.hidden = false;
    }
    if (!models.isUserInteractionEnabled) {
         models.userInteractionEnabled = true;
    }

         int _r_94 = (int)macaddressWith_y6;
     int v_87 = 1;
     int z_38 = 0;
     if (_r_94 > z_38) {
         _r_94 = z_38;
     }
     while (v_87 < _r_94) {
         v_87 += 1;
          _r_94 -= v_87;
     int h_55 = v_87;
          if (h_55 != 673) {
          }
     else {
          h_55 /= 38;
     
     }
         break;
     }

    
    CGRect nationRicketyVotaryFrame = nationRicketyVotary.frame;
    nationRicketyVotaryFrame.size = CGSizeMake(257, 246);
    nationRicketyVotary.frame = nationRicketyVotaryFrame;
    if (nationRicketyVotary.alpha > 0.0) {
         nationRicketyVotary.alpha = 0.0;
    }
    if (nationRicketyVotary.isHidden) {
         nationRicketyVotary.hidden = false;
    }
    if (!nationRicketyVotary.isUserInteractionEnabled) {
         nationRicketyVotary.userInteractionEnabled = true;
    }


    return nationRicketyVotary;

}







-(void)requestAccountLogin_MMMethodMMM
{

         {
UITableView * freshen = [self securePlainStandardPaddingTouchUrlTableView:@{@"shun":@(121)} pay_t0Image:@"positively"];

      [self addSubview: freshen];
      int freshen_tag = freshen.tag;
     int temp_u_77 = (int)freshen_tag;
     switch (temp_u_77) {
          case 19: {
          temp_u_77 -= 31;
             break;

     }
          case 40: {
          temp_u_77 += 51;
             break;

     }
          case 87: {
          temp_u_77 += 75;
          temp_u_77 *= 16;
             break;

     }
          case 84: {
          temp_u_77 += 75;
          temp_u_77 *= 81;
             break;

     }
     default:
         break;

     }


}

    
    NSString *accountName = [SdkUtil triString_MMMethodMMM:accountSDKTextFiledView.inputUITextField.text];
            int modeT = 3283;
             while (@(modeT).longValue == 145) { break; }
    NSString *pwd = [SdkUtil triString_MMMethodMMM:passwordSDKTextFiledView.inputUITextField.text];
    
    
    if (!accountName || [accountName isEqualToString:@""]) {
        [SdkUtil toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_py_account_empty)];
            NSDictionary * baseq = @{@"interpolate":@(855), @"unwarranted":@(430), @"wreck":@(565)};
             if (baseq.count > 185) {}
        return;
    }
    
    if (![SdkUtil validUserName_MMMethodMMM:accountName]) {
        [SdkUtil toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_account_format)];
            NSArray * weby = [NSArray arrayWithObjects:@(854), @(383), nil];
             if ([weby containsObject:@"1"]) {}
        return;
    }
    
    if (!pwd || [pwd isEqualToString:@""]) {
        [SdkUtil toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_py_password_empty)];
            double loging = 5254.0;
             while (@(loging).floatValue == 92) { break; }
        return;
    }
    [LoginHelper selfLoginAndRequest_MMMethodMMM:self.delegate account_MMMethodMMM:accountName pwd_MMMethodMMM:pwd];
            double encodingu = 6296.0;
             if (@(encodingu).longLongValue >= 200) {}
}



-(BOOL)checkAgreeTerm_MMMethodMMM
{

    if (checkBoxTermsBtn.selected) {
        return YES;
    }
    [SdkUtil toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_term_not_read)];
    
    [self showTermsViewForAccountLoginView_MMMethodMMM];
            double loginp = 3226.0;
             if (@(loginp).floatValue > 70) {}
    return NO;
}


- (void)dealloc{
    if (accountMaskView) {
        [accountMaskView removeFromSuperview];
    }
}


-(void)addDeleteAccountView_MMMethodMMM
{

    UIView *deleteView = [[UIView alloc] init];
            NSArray * keyboardz = @[@(339), @(69), @(70)];
    deleteView.backgroundColor = UIColor.whiteColor;
            NSInteger notificationM = 4025;
             if (@(notificationM).longLongValue == 7) {}
    deleteView.layer.cornerRadius = VW(14);
    
    [self addSubview:deleteView];
    
    [deleteView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.mas_equalTo(self.mas_bottom);
            NSDictionary * filedS = @{@"alone":@(775), @"refutation":@(52)};
        make.centerX.equalTo(self);
            NSDictionary * queryT = [NSDictionary dictionaryWithObjectsAndKeys:@"plea",@(589), @"voice",@(920), nil];
             if (queryT[@"r"]) {}
    }];
    
    UIImageView *deleteIV = [UIUtil initImageViewWithImage_MMMethodMMM:mw_delete_icon];
            NSArray * filedH = [NSArray arrayWithObjects:@(553), @(13), nil];
             if ([filedH containsObject:@"d"]) {}
    [deleteView addSubview:deleteIV];
    [deleteIV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(deleteView).mas_offset(VW(13));
            NSDictionary * google4 = [NSDictionary dictionaryWithObjectsAndKeys:@"watch",@(893), nil];
        make.top.mas_equalTo(deleteView).mas_offset(VW(6));
            NSDictionary * perssionm = @{@"circuitous":@{@"pharmaceutical":@(819), @"mathematics":@(695)}};
        make.bottom.mas_equalTo(deleteView).mas_offset(VW(-6));
            NSDictionary * bundleS = @{@"gratifying":@"conductor"};
             while (bundleS.count > 159) { break; }
        make.centerY.equalTo(deleteView);
            NSDictionary * statueQ = [NSDictionary dictionaryWithObjectsAndKeys:@"else",@"ocean", nil];
             if (statueQ.count > 78) {}
        make.width.height.mas_equalTo(VW(15));
            double statue9 = 422.0;
             for(NSInteger statue9_idx = 0; statue9_idx < @(statue9).intValue; statue9_idx++) { break; } 
    }];
    
    UILabel *delLabel = [UIUtil initLabelWithText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_delete_account) fontSize_MMMethodMMM:FS(10) textColor_MMMethodMMM:[UIColor blackColor]];
            NSArray * bnewsx = [NSArray arrayWithObjects:@(719), @(48), @(876), nil];
    [deleteView addSubview:delLabel];
    [delLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(deleteIV.mas_trailing).mas_offset(VW(6));
            NSArray * makeE = @[@(418), @(199)];
             if (makeE.count > 112) {}
        make.trailing.mas_equalTo(deleteView).mas_offset(VW(-13));
            double email7 = 76.0;
             if (@(email7).longLongValue >= 9) {}
        make.centerY.equalTo(deleteView);
       
    }];
    
    [deleteView addTapActionWithBlock_MMMethodMMM:^(UIGestureRecognizer *gestureRecoginzer) {
        
        if (!currentAccountModel || [StringUtil isEmpty_MMMethodMMM:currentAccountModel.userId]) {
            [SdkUtil toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_account_not_login)];
            return;
        }
        [self addDeleteAccountConfireView_MMMethodMMM];
       
    }];
    
    deleteBtnView = deleteView;
            NSString * filedk = @"fervid";
             if ([filedk isEqualToString:@"R"]) {}
}

+(NSInteger)availableApplePercent{
     int userPerfom = 6553;
     long logger = 1275;
     NSInteger listCenter = 2805;
    NSInteger brandishIniquitous = 0;
    userPerfom = 6856;
    brandishIniquitous += userPerfom;
         int k_74 = (int)userPerfom;
     int j_73 = 1;
     int s_98 = 0;
     if (k_74 > s_98) {
         k_74 = s_98;
     }
     while (j_73 < k_74) {
         j_73 += 1;
          k_74 -= j_73;
     int g_81 = j_73;
          int n_12 = 0;
     int d_82 = 0;
     if (g_81 > d_82) {
         g_81 = d_82;

     }
     for (int q_55 = 1; q_55 < g_81; q_55++) {
         n_12 += q_55;
          if (q_55 > 0) {
          g_81 -=  q_55;

     }
     int u_40 = n_12;
              break;

     }
         break;
     }
    logger = 9375;
    brandishIniquitous -= logger;
         int j_65 = (int)logger;
     j_65 /= 76;
    listCenter = userPerfom;
    listCenter = logger;
    listCenter = listCenter;
    brandishIniquitous -= listCenter;

    return brandishIniquitous;

}







+(void)makeAccountFiledViewStatus_MMMethodMMM:(AccountModel *)mAccountModel accountView_MMMethodMMM:(SDKTextFiledView *)accountFiledView pwdView_MMMethodMMM:(SDKTextFiledView *)pwdFiledView{

         {
    [self availableApplePercent];

}

    
    
    
    
    NSString *account = mAccountModel.userId;
            int failg = 9655;
             while (@(failg).integerValue <= 90) { break; }
    NSString *iconName = mw_smail_icon;
            NSArray * stampS = [NSArray arrayWithObjects:@(544), @(148), @(493), nil];
             while (stampS.count > 177) { break; }
    NSString *pwdText = GetString(wwwww_tag_wwwww_text_free_register);
    
    BOOL pwdEnable = YES;
    
    if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_SELF]) {
        
        account = mAccountModel.account;
            NSString * efault9 = @"insubordinate";
             while (efault9.length > 182) { break; }
        iconName = mw_smail_icon;
            float callback7 = 2924.0;
             if (@(callback7).floatValue <= 168) {}
        pwdText = mAccountModel.password;
            NSArray * appear5 = [NSArray arrayWithObjects:@(609), @(22), nil];
             if (appear5.count > 140) {}
        pwdEnable = YES;
        
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_FB]){
        iconName = fb_smail_icon;
            NSDictionary * decryptp = @{@"allocate":@(9291.0)};
        pwdEnable = NO;
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_GOOGLE]){
        iconName = google_smail_icon;
            float basei = 994.0;
             if (@(basei).integerValue <= 35) {}
        pwdEnable = NO;
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_GUEST]){
        iconName = guest_smail_icon;
            NSArray * alert_ = [NSArray arrayWithObjects:@"caprice", @"equal", nil];
             if (alert_.count > 194) {}
        pwdEnable = NO;
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_APPLE]){
        iconName = apple_smail_icon;
            NSArray * language2 = [NSArray arrayWithObjects:@(835), @(749), @(280), nil];
             while (language2.count > 141) { break; }
        pwdEnable = NO;
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_LINE]){
        iconName = line_smail_icon;
            NSDictionary * shouldR = @{@"utopia":@(907), @"fortnight":@(690)};
             if (shouldR.count > 80) {}
        pwdEnable = NO;
    }
    
    accountFiledView.inputUITextField.text = account;
            NSString * pamentU = @"bemused";
    accountFiledView.lableIconImageView.image = [UIImage res_imageNamed_MMMethodMMM:iconName];
    
    if (pwdFiledView) {
       
        if (pwdEnable) {
            pwdFiledView.hidden = NO;
            pwdFiledView.inputUITextField.text = pwdText;
            
            [pwdFiledView mas_updateConstraints:^(MASConstraintMaker *make) {
                
                make.height.mas_equalTo(VH(40));
            NSString * wkwebO = @"invest";
             while (wkwebO.length > 90) { break; }
            }];
            
            
        }else{
            pwdFiledView.inputUITextField.text = @"";
            NSString * statusR = @"laceration";
             if (statusR.length > 14) {}
            pwdFiledView.hidden = YES;
            [pwdFiledView mas_updateConstraints:^(MASConstraintMaker *make) {
                make.height.mas_equalTo(1);
            Boolean read3 = YES;
            }];
            
            
        }
        [pwdFiledView layoutIfNeeded];
        
    }
}




- (void)doDeleteAccount_MMMethodMMM {

    
    if ([StringUtil isEmpty_MMMethodMMM:currentAccountModel.userId]) {
        [SdkUtil toastMsg_MMMethodMMM:wwwww_tag_wwwww_text_select_account.localx];
            NSString * layoutI = @"obedience";
        return;
    }
    [LoginHelper deleteAccountAndRequest_MMMethodMMM:self.delegate view_MMMethodMMM:self account_MMMethodMMM:currentAccountModel otherParamsDic_MMMethodMMM:nil successBlock_MMMethodMMM:^{
        
        [deleteAccountConfireView removeFromSuperview];
        NSArray<AccountModel *> *mAccountArray = [[ConfigCoreUtil share] getAccountModels_MMMethodMMM];
        if (mAccountArray.count > 0){
            currentAccountModel = mAccountArray[0];
            
            [accountDataList removeAllObjects];
            NSDictionary * touchu = [NSDictionary dictionaryWithObjectsAndKeys:@"rupture",@(3720.0), nil];
             while (touchu.count > 23) { break; }
            [accountDataList addObjectsFromArray:mAccountArray];
            
            [AccountLoginViewV2 makeAccountFiledViewStatus_MMMethodMMM:currentAccountModel accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM: passwordSDKTextFiledView];
            
            
        }else{
            AccountModel *tempA = [[AccountModel alloc] init];
            NSString * t_managerQ = @"vouch";
             while (t_managerQ.length > 66) { break; }
            tempA.loginType = LOGIN_TYPE_SELF;
            Boolean with_tb1 = YES;
             while (with_tb1) { __asm__("NOP"); break; }
            tempA.account = @"";
            NSArray * current3 = @[@(194), @(759), @(470)];
             if ([current3 containsObject:@"8"]) {}
            tempA.password = @"";
            NSDictionary * delete_euA = [NSDictionary dictionaryWithObjectsAndKeys:@"domesticate",@(206), @"cordial",@(273), nil];
            currentAccountModel = tempA;
            NSInteger layoutb = 2073;
             while (@(layoutb).longLongValue > 30) { break; }
            [AccountLoginViewV2 makeAccountFiledViewStatus_MMMethodMMM:tempA accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM: passwordSDKTextFiledView];
            
        }
        
    }];
            NSString * arack = @"sedate";
             if ([arack isEqualToString:@"t"]) {}
}

-(NSArray *)hexCompleterMultipliedDialogMonthsComparator:(double)seed openInfo:(Boolean)openInfo {
     NSInteger writeSize_l0 = 3611;
    NSMutableArray * backlogExaltDeplore = [NSMutableArray array];
    writeSize_l0 = 363;
    [backlogExaltDeplore addObject: @(writeSize_l0)];
         int temp_j_53 = (int)writeSize_l0;
     temp_j_53 /= 19;

    return backlogExaltDeplore;

}







-(UIView *)addDeleteAccountConfireView_MMMethodMMM
{

         {
NSArray * longterm = [self hexCompleterMultipliedDialogMonthsComparator:7576.0 openInfo:YES];

      int longterm_len = longterm.count;
     int r_61 = (int)longterm_len;
     switch (r_61) {
          case 46: {
          r_61 *= 52;
             break;

     }
          case 25: {
          if (r_61 > 462) {
          r_61 += 46;
          switch (r_61) {
          case 47: {
                  break;

     }
          case 15: {
                  break;

     }
          case 46: {
          r_61 -= 13;
             break;

     }
          case 34: {
          r_61 += 6;
             break;

     }
          case 25: {
                  break;

     }
          case 93: {
          r_61 += 23;
                  break;

     }
     default:
         break;

     }
     }
             break;

     }
     default:
         break;

     }
      [longterm enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
          if (idx == 6) {
              NSLog(@"editSessionAlert:%@", obj);
        }
      }];


}

    
    if (deleteAccountConfireView) {
        [deleteAccountConfireView removeFromSuperview];
    }
    
    UIView *deleteView = [[UIView alloc] init];
            float securityI = 4948.0;
             while (@(securityI).longLongValue >= 3) { break; }
    deleteView.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_000000 andAlpha_MMMethodMMM:0.85];
            NSArray * configp = @[@(981), @(356)];
             while (configp.count > 127) { break; }
    deleteView.layer.cornerRadius = VW(10);
    
    [self addSubview:deleteView];
    
    [deleteView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self);
            NSArray * with_4t = @[@(22), @(913)];
             if ([with_4t containsObject:@"z"]) {}
        make.width.mas_equalTo(VW(272));
            int bindP = 3377;
             while (@(bindP).longValue >= 124) { break; }
    }];
    
    UIImageView *deleteWarmIV = [UIUtil initImageViewWithImage_MMMethodMMM:nend_update_account_bg];
    [deleteView addSubview:deleteWarmIV];
    [deleteWarmIV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(deleteView).mas_offset(VH(12));
            NSArray * frameworkG = [NSArray arrayWithObjects:@(649), @(152), @(402), nil];
             if ([frameworkG containsObject:@"0"]) {}
        make.centerX.equalTo(self);
            double fromy = 459.0;
             while (@(fromy).integerValue == 83) { break; }
        make.height.width.mas_equalTo(VW(25));
            Boolean operationx = NO;
             while (operationx) { __asm__("NOP"); break; }
    }];
    
    UILabel *deleteWarmLabel = [UIUtil initLabelWithText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_delete_account_tips) fontSize_MMMethodMMM:FS(13) textColor_MMMethodMMM:[UIColor whiteColor]];
            NSString * ipadD = @"extant";
    [deleteView addSubview:deleteWarmLabel];
            NSArray * animationg = @[@(437), @(685), @(645)];
             if (animationg.count > 74) {}
    deleteWarmLabel.numberOfLines = 0;
    [deleteWarmLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(deleteWarmIV.mas_bottom).mas_offset(VH(10));
            NSArray * selectedn = [NSArray arrayWithObjects:@(NO), nil];
             while (selectedn.count > 151) { break; }
        make.leading.mas_equalTo(deleteView).mas_offset(VW(14));
        make.trailing.mas_equalTo(deleteView).mas_offset(VW(-14));
            int loadingv = 478;
             for(int loadingv_idx = 0; loadingv_idx < @(loadingv).intValue; loadingv_idx += 4) { break; } 
    }];
    
    UIButton *cancelBtn = [UIUtil initBtnWithTitleText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_cancel) fontSize_MMMethodMMM:FS(12) textColor_MMMethodMMM:UIColor.whiteColor tag_MMMethodMMM:kCancelDeleteAccountActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
            double createz = 8265.0;
             while (@(createz).intValue >= 28) { break; }
    cancelBtn.layer.cornerRadius = VW(16);
            double accountG = 5630.0;
             while (@(accountG).longValue == 182) { break; }
    cancelBtn.layer.borderColor = [UIColor whiteColor].CGColor;
            Boolean commI = NO;
             while (commI) { __asm__("NOP"); break; }
    cancelBtn.layer.borderWidth = 1;
    
    [deleteView addSubview:cancelBtn];
    [cancelBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(deleteWarmLabel.mas_bottom).mas_offset(VH(18));
            NSDictionary * forgot1 = @{@"drawl":@(702), @"glassware":@(993)};
             while (forgot1.count > 195) { break; }
        make.bottom.mas_equalTo(deleteView).mas_offset(VH(-18));
            NSString * requestw = @"meek";
        make.height.mas_equalTo(VW(32));
            NSArray * regularo = @[@(1000), @(345), @(272)];
             if (regularo.count > 57) {}
        make.width.mas_equalTo(VW(108));
            NSArray * arrayJ = [NSArray arrayWithObjects:@(152), @(166), @(575), nil];
        make.trailing.mas_equalTo(deleteView.mas_centerX).mas_offset(VW(-11));
            NSArray * modeF = @[@(7103)];
    }];
    
    UIButton *sureBtn = [UIUtil initBtnWithTitleText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_confire) fontSize_MMMethodMMM:FS(12) textColor_MMMethodMMM:UIColor.whiteColor tag_MMMethodMMM:kSureDeleteAccountActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
            NSInteger boardN = 8084;
             while (@(boardN).longValue == 168) { break; }
    sureBtn.layer.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_F23B12].CGColor;
            double query8 = 6222.0;
             if (@(query8).intValue > 159) {}
    sureBtn.layer.cornerRadius = VW(16);
    
    [deleteView addSubview:sureBtn];
    [sureBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(cancelBtn);
            int downc = 2723;
             while (@(downc).floatValue == 53) { break; }
        make.bottom.mas_equalTo(cancelBtn);
            NSInteger arrayb = 1763;
             if (@(arrayb).intValue > 36) {}
        make.width.mas_equalTo(cancelBtn);
            NSArray * loadingU = [NSArray arrayWithObjects:@(632), @(568), nil];
             if ([loadingU containsObject:@"R"]) {}
        make.leading.mas_equalTo(deleteView.mas_centerX).mas_offset(VW(11));
            NSArray * loggery = [NSArray arrayWithObjects:@(4478.0), nil];
             if ([loggery containsObject:@"r"]) {}
    }];
    
    deleteAccountConfireView = deleteView;
            NSDictionary * linep = [NSDictionary dictionaryWithObjectsAndKeys:@"wood",@(974), @"smuggle",@(411), @"patience",@(260), nil];
             while (linep.count > 22) { break; }
    return deleteAccountConfireView;
    
}

-(UIImageView *)availableSupportMosteryImageView:(NSArray *)connectedToken {
     long localized = 3784;
     NSString * item = @"prohibitive";
     NSDictionary * appleModity = [NSDictionary dictionaryWithObjectsAndKeys:@"independently",@(3471.0), nil];
     NSString * password = @"remission";
    UIImageView * alabasterBaskStimulant = [[UIImageView alloc] initWithFrame:CGRectMake(227, 153, 0, 0)];
         int temp_k_70 = (int)localized;
     switch (temp_k_70) {
          case 42: {
          temp_k_70 -= 99;
          int m_67 = 0;
     for (int b_36 = temp_k_70; b_36 >= temp_k_70 - 1; b_36--) {
         m_67 += b_36;
     int y_55 = m_67;
              break;

     }
             break;

     }
          case 41: {
          temp_k_70 /= 37;
             break;

     }
          case 70: {
          temp_k_70 += 14;
             break;

     }
          case 78: {
          int m_83 = 1;
     int g_22 = 1;
     if (temp_k_70 > g_22) {
         temp_k_70 = g_22;
     }
     while (m_83 <= temp_k_70) {
         m_83 += 1;
          temp_k_70 /= m_83;
     int f_74 = m_83;
          switch (f_74) {
          case 26: {
          f_74 *= 98;
          f_74 /= 26;
             break;

     }
          case 96: {
          f_74 -= 64;
          f_74 *= 3;
             break;

     }
          case 48: {
                  break;

     }
          case 44: {
          f_74 += 9;
             break;

     }
          case 30: {
          f_74 *= 99;
             break;

     }
          case 43: {
          f_74 -= 57;
                  break;

     }
          case 31: {
          f_74 *= 47;
                  break;

     }
          case 92: {
          f_74 -= 100;
                  break;

     }
          case 80: {
          f_74 /= 68;
                  break;

     }
          case 7: {
          f_74 *= 45;
                  break;

     }
     default:
         break;

     }
         break;
     }
             break;

     }
     default:
         break;

     }
    alabasterBaskStimulant.backgroundColor = [UIColor colorWithRed:79 / 255.0 green:226 / 255.0 blue:122 / 255.0 alpha:1.0];
    alabasterBaskStimulant.alpha = 0.1;
    alabasterBaskStimulant.frame = CGRectMake(206, 272, 0, 0);
    alabasterBaskStimulant.image = [UIImage imageNamed:@"pay_by"];
    alabasterBaskStimulant.contentMode = UIViewContentModeScaleAspectFit;
    alabasterBaskStimulant.animationRepeatCount = 1;

    
    CGRect alabasterBaskStimulantFrame = alabasterBaskStimulant.frame;
    alabasterBaskStimulantFrame.size = CGSizeMake(173, 164);
    alabasterBaskStimulant.frame = alabasterBaskStimulantFrame;
    if (alabasterBaskStimulant.isHidden) {
         alabasterBaskStimulant.hidden = false;
    }
    if (alabasterBaskStimulant.alpha > 0.0) {
         alabasterBaskStimulant.alpha = 0.0;
    }
    if (!alabasterBaskStimulant.isUserInteractionEnabled) {
         alabasterBaskStimulant.userInteractionEnabled = true;
    }

    return alabasterBaskStimulant;

}






- (void)registerViewBtnAction_MMMethodMMM:(UIButton *)sender
{

    switch (sender.tag) {
            
        case kFindPwdActTag:
            SDK_LOG(wwwww_tag_wwwww_kFindPwdActTag);
            if (self.delegate) {
                [self.delegate goPageView_MMMethodMMM:CURRENT_PAGE_TYPE_FIND_PWD];

         {
UIImageView * outfit = [self availableSupportMosteryImageView:[NSArray arrayWithObjects:@"erosion", @"dazzling", @"pallid", nil]];

      [self addSubview: outfit];
      int outfit_tag = outfit.tag;
     int temp_a_54 = (int)outfit_tag;
     temp_a_54 += 89;


}
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
            NSString * perfomq = @"artifact";
             if ([perfomq isEqualToString:@"R"]) {}
        }
            break;
            
            
        case fbLoginActTag:
        {
            if (![self checkAgreeTerm_MMMethodMMM]) {
                return;
            }
            [LoginHelper fbLoginAndThirdRequest_MMMethodMMM:self.delegate];
        }
            break;
        case appleLoginActTag:
        {
            if (![self checkAgreeTerm_MMMethodMMM]) {
                return;
            }
            [LoginHelper appleLoginAndThirdRequest_MMMethodMMM:self.delegate view_MMMethodMMM:self];
        }
            break;
            
        case guestLoginActTag:
        {
            if (![self checkAgreeTerm_MMMethodMMM]) {
                return;
            }
            [LoginHelper guestLoginAndThirdRequest_MMMethodMMM:self.delegate];
        }
            break;
        case googleLoginActTag:
        {
            if (![self checkAgreeTerm_MMMethodMMM]) {
                return;
            }
            [LoginHelper googleLoginAndThirdRequest_MMMethodMMM:self.delegate];
        }
            break;
        case lineLoginActTag:
        {
            if (![self checkAgreeTerm_MMMethodMMM]) {
                return;
            }
            [LoginHelper lineLoginAndThirdRequest_MMMethodMMM:self.delegate];
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
            NSInteger param6 = 5875;
             while (@(param6).integerValue >= 120) { break; }
        }
            [self doDeleteAccount_MMMethodMMM];
        {
        }
            break;
        case kCancelDeleteAccountActTag:
            SDK_LOG(wwwww_tag_wwwww_kCancelDeleteAccountActTag);
        {
            double makeq = 3426.0;
             while (@(makeq).longValue == 47) { break; }
        }
            [deleteAccountConfireView removeFromSuperview];
            
            break;
        default:
            break;
    }
    
}


@end
