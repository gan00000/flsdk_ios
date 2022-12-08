
#import "CHMXTTNewsView.h"
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
#import "CHMXTTHeaderLoggerView.h"

@interface CHMXTTNewsView()



@property(nonatomic, assign)NSInteger  bindIdx;
@property(nonatomic, assign)int  accont_sum;
@property(nonatomic, assign)Boolean  hasToday;


@end

@implementation CHMXTTNewsView
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
}



- (void)dealloc{
    if (accountMaskView) {
        [accountMaskView removeFromSuperview];
    }
}

-(long)whiteFlagsCalDeferred{
     NSInteger addressSharer = 2124;
     long dictionary = 3230;
    long scatheConvalescent = 0;
    addressSharer = 6569;
    scatheConvalescent /= MAX(addressSharer, 1);
         int temp_m_46 = (int)addressSharer;
     int d_17 = 1;
     int g_83 = 0;
     if (temp_m_46 > g_83) {
         temp_m_46 = g_83;
     }
     while (d_17 < temp_m_46) {
         d_17 += 1;
          temp_m_46 += d_17;
         break;
     }
    dictionary = dictionary;
    scatheConvalescent += dictionary;
         int tmp_j_78 = (int)dictionary;
     int r_65 = 1;
     int t_13 = 1;
     if (tmp_j_78 > t_13) {
         tmp_j_78 = t_13;
     }
     while (r_65 < tmp_j_78) {
         r_65 += 1;
          tmp_j_78 /= r_65;
     int q_5 = r_65;
          int z_60 = 0;
     int p_23 = 1;
     if (q_5 > p_23) {
         q_5 = p_23;

     }
     for (int m_75 = 1; m_75 < q_5; m_75++) {
         z_60 += m_75;
          q_5 -= m_75;
         break;

     }
         break;
     }

    return scatheConvalescent;

}






-(void)addAccountListView_MMMethodMMM{

    
    accountMaskView = [[CHMXTTHeaderLoggerView alloc] init];
    accountMaskView.touchesBeganCallback = ^(NSString *msg, NSInteger m, NSDictionary *dic) {
        if (!accountMaskView.isHidden) {
            
            accountSDKTextFiledView.moreAccountBtn.selected = NO;

         {
long reluctantExpressly = [self whiteFlagsCalDeferred];

     int x_88 = (int)reluctantExpressly;
     int d_54 = 1;
     int a_42 = 0;
     if (x_88 > a_42) {
         x_88 = a_42;
     }
     while (d_54 < x_88) {
         d_54 += 1;
          x_88 -= d_54;
     int t_89 = d_54;
          int w_3 = 0;
     for (int q_9 = t_89; q_9 >= t_89 - 1; q_9--) {
         w_3 += q_9;
          t_89 -= q_9;
         break;

     }
         break;
     }
      NSLog(@"%ld",reluctantExpressly);


}
            double uinitializeh = 2282.0;
             while (@(uinitializeh).doubleValue == 176) { break; }
            accountMaskView.hidden = YES;
        }
        
    };
            float idfaQ = 3951.0;
             if (@(idfaQ).longValue < 116) {}
    UIView * orientationsView = self.superview.superview.superview;
    
    [orientationsView addSubview:accountMaskView];
    [accountMaskView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(orientationsView);
            NSArray * scriptX = @[@"endue", @"ballerina", @"esteem"];
             if ([scriptX containsObject:@"v"]) {}
    }];
    
    accountListView = [[CHMXTTModeUtilView alloc] init];
            NSString * orientationp = @"engaging";
             while (orientationp.length > 95) { break; }
    accountListView.layer.cornerRadius = 2.5f;
            double todayU = 8960.0;
             if (@(todayU).longValue <= 138) {}
    accountListView.layer.masksToBounds = YES;
            float show_ = 3755.0;
             if (@(show_).longLongValue >= 187) {}
    [accountMaskView addSubview:accountListView];
    [accountListView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
            NSString * guestj = @"equally";
             while (guestj.length > 48) { break; }
        make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
        make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(4);
            NSDictionary * rrorI = @{@"literal":@(220)};
             if (rrorI[@"H"]) {}
        make.height.mas_equalTo(VH(200));
        
        
    }];
    kWeakSelf
    kBlockSelf
    accountListView.mAccountModelClickHander = ^(BOOL isDelete, AccountModel * _Nullable aModel, NSMutableArray<AccountModel *> *accountDataList) {
        
        if (isDelete) {
            
            if (accountDataList.count > 0) {
                currentAccountModel = accountDataList[0];
                
    
    
                
                [CHMXTTNewsView makeAccountFiledViewStatus_MMMethodMMM:blockSelf->currentAccountModel accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM: passwordSDKTextFiledView];
            }else{
                AccountModel *series = [[AccountModel alloc] init];
            NSDictionary * sdk2 = @{@"g":@"B"};
             if (sdk2.count > 35) {}
                series.loginType = LOGIN_TYPE_SELF;
            NSArray * identifierP = @[@(5660)];
                series.account = @"";
            NSInteger labelJ = 2314;
             while (@(labelJ).floatValue >= 13) { break; }
                series.password = @"";
            NSString * game0 = @"ballpointpen";
             while (game0.length > 137) { break; }
                currentAccountModel = series;
                [CHMXTTNewsView makeAccountFiledViewStatus_MMMethodMMM:blockSelf->currentAccountModel accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM: passwordSDKTextFiledView];
            NSArray * userr = [NSArray arrayWithObjects:@(585), @(178), @(524), nil];
             if ([userr containsObject:@"G"]) {}
                accountSDKTextFiledView.moreAccountBtn.selected = NO;
            NSString * encode7 = @"acquaintance";
                accountMaskView.hidden = YES;
            }
            
        }else{
            currentAccountModel = aModel;
            NSDictionary * beforem = [NSDictionary dictionaryWithObjectsAndKeys:@"peeve",@(267), @"specific",@(497), @"era",@(947), nil];
             if (beforem.count > 88) {}
            [CHMXTTNewsView makeAccountFiledViewStatus_MMMethodMMM:currentAccountModel accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM:passwordSDKTextFiledView];
            double thirdf = 7064.0;
             if (@(thirdf).longLongValue == 5) {}
            accountSDKTextFiledView.moreAccountBtn.selected = NO;
            NSString * levelF = @"cynicism";
            accountMaskView.hidden = YES;
            
        }
        
    };
}


- (instancetype)initView_MMMethodMMM
{
    self = [super init];
    if (self) {
        
        
        
        
        
        
         
        
        
        accountSDKTextFiledView = [[CHMXTTServiceTermsView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Account)];
            NSArray * resetF = @[@(522), @(98)];
             while (resetF.count > 16) { break; }
        accountSDKTextFiledView.inputUITextField.placeholder = GetString(wwwww_tag_wwwww_text_input_account);
            float logoutb = 248.0;
             while (@(logoutb).longLongValue == 58) { break; }
        [self addSubview:accountSDKTextFiledView];
        
        [accountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.equalTo(self);
            NSArray * window_ohS = [NSArray arrayWithObjects:@(127), @(969), nil];
             if ([window_ohS containsObject:@"t"]) {}
            make.leading.mas_equalTo(self).mas_offset(VW(40));
            NSDictionary * ppleP = @{@"fantastic":@(998)};
             while (ppleP.count > 182) { break; }
            make.trailing.mas_equalTo(self).mas_offset(-VW(40));
            NSInteger array4 = 6542;
             if (@(array4).floatValue == 12) {}
            make.height.mas_equalTo(VH(40));
            int hourt = 3953;
             if (@(hourt).intValue <= 142) {}
        }];
        
        
        
        passwordSDKTextFiledView = [[CHMXTTServiceTermsView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Password)];
            NSArray * tableZ = @[@(599), @(247), @(113)];
             while (tableZ.count > 107) { break; }
        passwordSDKTextFiledView.inputUITextField.placeholder = GetString(wwwww_tag_wwwww_text_input_pwd);
            Boolean btnu = NO;
             while (!btnu) { __asm__("NOP"); break; }
        [self addSubview:passwordSDKTextFiledView];
        
        [passwordSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(VH(22));
            double l_productsN = 3457.0;
             while (@(l_productsN).longLongValue == 162) { break; }
            make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
            double paramt = 4906.0;
             while (@(paramt).longLongValue <= 152) { break; }
            make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
            NSString * userx = @"unprovoked";
             if ([userx isEqualToString:@"U"]) {}
            make.height.mas_equalTo(accountSDKTextFiledView.mas_height);
            double localized1 = 9352.0;
             while (@(localized1).floatValue < 164) { break; }
        }];
        
        
        
        
        UIButton *encodingBtn = [CHMXTTLoginChange initBtnWithTitleText_MMMethodMMM:GetString(wwwww_tag_wwwww_py_findpwd) fontSize_MMMethodMMM:FS(12) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0] tag_MMMethodMMM:kFindPwdActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        
        [self addSubview:encodingBtn];
        [encodingBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
            NSArray * dealloc_40d = @[@(6116)];
             while (dealloc_40d.count > 71) { break; }
            make.top.mas_equalTo(passwordSDKTextFiledView.mas_bottom).mas_offset(VH(7));
            
            
        }];
        
        
        UIView *postView = [[UIView alloc] init];
            NSArray * pay_7J = @[@(515), @(818), @(862)];
        [self addSubview:postView];
        [postView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.mas_equalTo(encodingBtn);
            NSString * infoU = @"emphasis";
             while (infoU.length > 61) { break; }
            make.leading.mas_equalTo(accountSDKTextFiledView);
            NSArray * makeV = @[@(165), @(618), @(927)];
             if (makeV.count > 194) {}
        }];
        
        checkBoxTermsBtn = [CHMXTTLoginChange initBtnWithNormalImage_MMMethodMMM:mw_cb_uncheck highlightedImage_MMMethodMMM:nil selectedImageName_MMMethodMMM:mw_cb_check tag_MMMethodMMM:kAgreeTermsCheckBoxBtnTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
            double findl = 1013.0;
             while (@(findl).longLongValue >= 133) { break; }
        checkBoxTermsBtn.selected = YES;
            double service9 = 7234.0;
             if (@(service9).floatValue >= 35) {}
        [postView addSubview:checkBoxTermsBtn];
        [checkBoxTermsBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(postView);
            NSArray * purchaseJ = @[@(673), @(302), @(938)];
             if (purchaseJ.count > 179) {}
            make.centerY.mas_equalTo(postView);
            NSDictionary * presentationB = [NSDictionary dictionaryWithObjectsAndKeys:@"s",@"J", nil];
             if (presentationB.count > 38) {}
            make.width.height.mas_equalTo(VW(15));
            
        }];
        
        NSString *progress = GetString(wwwww_tag_wwwww_sdk_terms_title);
            NSInteger select4 = 3543;
             while (@(select4).longValue < 52) { break; }
        UILabel *parse = [CHMXTTLoginChange initLabelWithText_MMMethodMMM:progress fontSize_MMMethodMMM:FS(12) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0]];
        
        
        parse.numberOfLines = 1;
        
        
        
        
        
        
        
        
        [postView addSubview:parse];
        [parse mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.bottom.mas_equalTo(postView);
            NSArray * textn = [NSArray arrayWithObjects:@(963), @(519), @(855), nil];
             if (textn.count > 164) {}
            make.leading.mas_equalTo(checkBoxTermsBtn.mas_trailing).mas_offset(4);
            NSString * auto_940 = @"extensively";
             if ([auto_940 isEqualToString:@"o"]) {}
            make.trailing.mas_equalTo(postView.mas_trailing);
            float l_heightc = 250.0;
             if (@(l_heightc).longLongValue >= 148) {}
        }];
            double emptyw = 9746.0;
             while (@(emptyw).intValue <= 21) { break; }
        parse.userInteractionEnabled=YES;
        [parse addTapActionWithBlock_MMMethodMMM:^(UIGestureRecognizer *gestureRecoginzer) {
            SDK_LOG(wwwww_tag_wwwww_rememberTermsLableTapped);
            if (self.delegate) {
                [self.delegate goPageView_MMMethodMMM:CURRENT_PAGE_TYPE_TEARMS from_MMMethodMMM:(CURRENT_PAGE_TYPE_LOGIN_WITH_REG) param_MMMethodMMM:0];
            }
            
        }];
            int keychainF = 4157;
             for(NSInteger keychainF_idx = 0; keychainF_idx < @(keychainF).intValue; keychainF_idx++) { break; } 
        ConfigModel *http = SDK_DATA.mConfigModel;
            NSArray * fire4 = @[@"associated", @"occidental"];
        postView.hidden = !http.showContract;
        
        
        
        
        
        accountLoginBtn = [CHMXTTLoginChange initBtnWithTitleText_MMMethodMMM:wwwww_tag_wwwww_vigenast_claimistic fontSize_MMMethodMMM:FS(17) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kAccountLoginActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        
        [accountLoginBtn.layer setCornerRadius:VH(20)];
            Boolean window_0iq = NO;
             while (window_0iq) { __asm__("NOP"); break; }
        accountLoginBtn.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_F94925];
            NSString * colorR = @"ancestor";
             if (colorR.length > 79) {}
        [self addSubview:accountLoginBtn];
        
        [accountLoginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self);
            double core7 = 7434.0;
             if (@(core7).intValue == 76) {}
            make.top.equalTo(encodingBtn.mas_bottom).mas_offset(VH(30));
            NSArray * readerZ = @[@(84), @(742)];
            make.width.mas_equalTo(accountSDKTextFiledView);
            NSString * uploadP = @"revision";
             if (uploadP.length > 139) {}
            make.height.mas_equalTo(VH(40));
            Boolean efault5 = YES;
             while (!efault5) { __asm__("NOP"); break; }
        }];
        
        
        UIView *homeView = [[UIView alloc] init];
            NSArray * close9 = [NSArray arrayWithObjects:@(139), @(30), nil];
             if ([close9 containsObject:@"i"]) {}
        [self addSubview:homeView];
        [homeView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.mas_equalTo(accountSDKTextFiledView);
            
            make.top.mas_equalTo(accountLoginBtn.mas_bottom).mas_offset(VH(30));
            
        }];
        
       
        UILabel *input2 = [[UILabel alloc] init];
        input2.font = [UIFont systemFontOfSize:FS(11)];
            double logouto = 7659.0;
             while (@(logouto).longValue >= 31) { break; }
        input2.text = wwwww_tag_wwwww_mostery_tricesimreachory;
            NSInteger errorH = 9101;
             while (@(errorH).floatValue <= 15) { break; }
        input2.numberOfLines = 1; 
        input2.textColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0];
        
        [homeView addSubview:input2];
        [input2 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(homeView.mas_leading);
            Boolean codesE = NO;
             while (codesE) { __asm__("NOP"); break; }
            make.centerY.mas_equalTo(homeView);
            
        }];
        
        CGFloat rate = VW(28);
            float configurator9 = 7784.0;
             if (@(configurator9).longValue <= 115) {}
        CGFloat landscape = rate;
            NSString * containp = @"nonporous";
             if (containp.length > 156) {}
        CGFloat mask = VW(24);
        
        NSMutableArray *idfaQE = [CHMXTTRegister getShowBtnDatas_MMMethodMMM:SDK_DATA.mConfigModel appleBtn_MMMethodMMM:YES guestBtn_MMMethodMMM:YES];
            NSString * datal = @"divergent";
        UIView *with_7View = input2;
       
        for (int i = 0; i < idfaQE.count; i++) {
            
            LoginButtonData *removeL = idfaQE[i];
            NSString * engine_ = @"superimpose";
             if (engine_.length > 123) {}
            UIView *seedView;
            
            if ([removeL.btnType isEqualToString:LOGIN_TYPE_APPLE]) {
                
                if (@available(iOS 13.0, *)) {
                    
                    ASAuthorizationAppleIDButton *x_titleBtn = [[ASAuthorizationAppleIDButton alloc]initWithAuthorizationButtonType:ASAuthorizationAppleIDButtonTypeSignIn
                                                                                                              authorizationButtonStyle:ASAuthorizationAppleIDButtonStyleWhite];
                    [x_titleBtn addTarget:self action:@selector(registerViewBtnAction_MMMethodMMM:) forControlEvents:(UIControlEventTouchUpInside)];
            float gestureg = 5481.0;
             if (@(gestureg).doubleValue <= 165) {}
                    x_titleBtn.tag = removeL.tag;
            NSDictionary * hour1 = @{@"C":@"5", @"K":@"4"};
             if (hour1.count > 107) {}
                    x_titleBtn.cornerRadius = rate / 2.0;
            NSArray * welcomeh = @[@"confound", @"crutch", @"torque"];
             if (welcomeh.count > 32) {}
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
            NSInteger authticationX = 6668;
             while (@(authticationX).longLongValue > 76) { break; }
                    make.height.mas_equalTo(landscape);
            NSInteger saveN = 6976;
             while (@(saveN).longLongValue <= 80) { break; }
                    make.top.mas_equalTo(homeView);
            Boolean z_centerP = NO;
             while (z_centerP) { __asm__("NOP"); break; }
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

        
        accountDataList = [NSMutableArray array];
        
        NSArray<AccountModel *> *mAccountArray = [[CHMXTTEfault share] getAccountModels_MMMethodMMM];
        if (mAccountArray.count > 0){
            
            currentAccountModel = mAccountArray[0];
            Boolean urlsI = YES;
             if (!urlsI) { __asm__("NOP"); }
            [accountDataList addObjectsFromArray:mAccountArray];
            
            [CHMXTTNewsView makeAccountFiledViewStatus_MMMethodMMM:currentAccountModel accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM:passwordSDKTextFiledView];
        }
        
        
        
        kWeakSelf
        accountSDKTextFiledView.clickAccountListItem = ^(NSInteger tag) {
            
            if (accountMaskView && accountListView) {
                
                
                
                if (accountMaskView.isHidden) {
                    
                    accountSDKTextFiledView.moreAccountBtn.selected = YES;
            NSInteger linex = 9867;
             while (@(linex).intValue >= 32) { break; }
                    accountMaskView.hidden = NO;
            float scripta = 6463.0;
             for(NSInteger scripta_idx = 0; scripta_idx < @(scripta).intValue; scripta_idx += 1) { break; } 
                    NSArray *game = [[CHMXTTEfault share] getAccountModels_MMMethodMMM];
            NSDictionary * rrorg = [NSDictionary dictionaryWithObjectsAndKeys:@"room",@(783), @"hilt",@(810), @"chapel",@(340), nil];
                    [accountDataList removeAllObjects];
            Boolean lablef = NO;
             while (!lablef) { __asm__("NOP"); break; }
                    [accountDataList addObjectsFromArray:game];
            NSDictionary * urlsq = [NSDictionary dictionaryWithObjectsAndKeys:@"chef",@(380), nil];
             while (urlsq.count > 187) { break; }
                    accountListView.accountDataList = accountDataList;
            NSArray * down8 = [NSArray arrayWithObjects:@(NO), nil];
             while (down8.count > 67) { break; }
                    [accountListView.accountListTableView reloadData];
                    
                }else{
                    
                    accountSDKTextFiledView.moreAccountBtn.selected = NO;
            double confy = 6216.0;
             if (@(confy).floatValue <= 120) {}
                    accountMaskView.hidden = YES;
                    
                }
                
            }else{
                accountSDKTextFiledView.moreAccountBtn.selected = YES;
            NSArray * securityL = @[@(925), @(707)];
                [self addAccountListView_MMMethodMMM];
            NSDictionary * normalt = @{@"b":@"f"};
             if (normalt.count > 110) {}
                NSArray *game = [[CHMXTTEfault share] getAccountModels_MMMethodMMM];
            NSArray * commr = @[@(5487.0)];
             if ([commr containsObject:@"z"]) {}
                [accountDataList removeAllObjects];
            NSInteger alertj = 3162;
             if (@(alertj).floatValue > 44) {}
                [accountDataList addObjectsFromArray:game];
            Boolean interrupty = NO;
                accountListView.accountDataList = accountDataList;
            NSArray * s_centerS = [NSArray arrayWithObjects:@(5882), nil];
                [accountListView.accountListTableView reloadData];
            }
            
        };
        
        accountSDKTextFiledView.inputTextFieldChange = ^(NSString *msg, NSInteger m, NSDictionary *dic) {
            
            if (currentAccountModel && ![currentAccountModel.loginType isEqualToString:LOGIN_TYPE_SELF]) {
                
                if (![msg isEqualToString:currentAccountModel.userId]) {
                    AccountModel *notification = [[AccountModel alloc] init];
            NSDictionary * edit9 = [NSDictionary dictionaryWithObjectsAndKeys:@"tendency",@(933), @"lefthanded",@(612), nil];
                    notification.loginType = LOGIN_TYPE_SELF;
            NSDictionary * serviceA = @{@"obdurate":@(924)};
             if (serviceA[@"m"]) {}
                    notification.account = msg;
            NSString * adaptr = @"reputed";
             if (adaptr.length > 178) {}
                    notification.password = @"";
            NSDictionary * levely = [NSDictionary dictionaryWithObjectsAndKeys:@"contextual",@(312), @"marvel",@(127), @"conversion",@(680), nil];
             if (levely.count > 104) {}
                    [passwordSDKTextFiledView setPwdFiledView_MMMethodMMM:YES];
            int shouldM = 4633;
             while (@(shouldM).longValue > 37) { break; }
                    [CHMXTTNewsView makeAccountFiledViewStatus_MMMethodMMM:notification accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM:passwordSDKTextFiledView];
                    currentAccountModel = notification;
                }
            }
            
            
        };
    }
    return self;
}

+(NSString *)guestTrailingGetsdkActInsets:(double)operationKeyboard sdkReset:(NSString *)sdkReset {
    NSString *retinue = [[NSString alloc] init];

    return retinue;

}







+(void)makeAccountFiledViewStatus_MMMethodMMM:(AccountModel *)mAccountModel accountView_MMMethodMMM:(CHMXTTServiceTermsView *)accountFiledView pwdView_MMMethodMMM:(CHMXTTServiceTermsView *)pwdFiledView{

    
    
    
    
    NSString *helper = mAccountModel.userId;
            NSString * rameworkn = @"input";
    NSString *time_yo = mw_smail_icon;
    NSString *btn = GetString(wwwww_tag_wwwww_text_free_register);
    
    BOOL localx = YES;
    
    if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_SELF]) {
        
        helper = mAccountModel.account;
            NSDictionary * pay_6K = [NSDictionary dictionaryWithObjectsAndKeys:@"episode",@(870), @"torpid",@(676), @"modest",@(375), nil];
        time_yo = mw_smail_icon;

         {
    [self guestTrailingGetsdkActInsets:7472.0 sdkReset:@"completely"];

}
            NSString * controllerC = @"haggle";
             if ([controllerC isEqualToString:@"o"]) {}
        btn = mAccountModel.password;
            NSDictionary * urlsO = [NSDictionary dictionaryWithObjectsAndKeys:@"redound",@(401), @"extinct",@(985), @"celibate",@(461), nil];
             if (urlsO.count > 74) {}
        localx = YES;
        
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_FB]){
        time_yo = fb_smail_icon;
            NSInteger localxm = 3742;
             if (@(localxm).longLongValue == 173) {}
        localx = NO;
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_GOOGLE]){
        time_yo = google_smail_icon;
            double failS = 1225.0;
             if (@(failS).integerValue < 26) {}
        localx = NO;
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_GUEST]){
        time_yo = guest_smail_icon;
            NSString * listS = @"sister";
             while (listS.length > 131) { break; }
        localx = NO;
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_APPLE]){
        time_yo = apple_smail_icon;
            Boolean callbacki = YES;
             if (!callbacki) { __asm__("NOP"); }
        localx = NO;
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_LINE]){
        time_yo = line_smail_icon;
            NSDictionary * sdk3 = [NSDictionary dictionaryWithObjectsAndKeys:@"J",@"M", @"v",@"5", nil];
             if (sdk3[@"v"]) {}
        localx = NO;
    }
    
    accountFiledView.inputUITextField.text = helper;
            NSString * e_centerE = @"weed";
             if (e_centerE.length > 28) {}
    accountFiledView.lableIconImageView.image = [UIImage res_imageNamed_MMMethodMMM:time_yo];
    
    if (pwdFiledView) {
        [pwdFiledView setPwdFiledView_MMMethodMMM:localx];
        pwdFiledView.inputUITextField.text = btn;
    }
    
}

-(UITableView *)permittedTitleTimestampTableView{
     NSString * presentation = @"alternation";
     NSInteger cellGame = 5017;
    UITableView * consultation = [[UITableView alloc] initWithFrame:CGRectMake(188, 317, 0, 0)];
         int temp_r_90 = (int)cellGame;
     temp_r_90 -= 94;
    consultation.frame = CGRectMake(6, 81, 0, 0);
    consultation.alpha = 0.1;
    consultation.backgroundColor = [UIColor colorWithRed:216 / 255.0 green:132 / 255.0 blue:32 / 255.0 alpha:0.7];
    consultation.dataSource = nil;
    consultation.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha: 0];
    consultation.delegate = nil;

    
    CGRect consultationFrame = consultation.frame;
    consultationFrame.size = CGSizeMake(223, 181);
    consultation.frame = consultationFrame;
    if (consultation.alpha > 0.0) {
         consultation.alpha = 0.0;
    }
    if (consultation.isHidden) {
         consultation.hidden = false;
    }
    if (!consultation.isUserInteractionEnabled) {
         consultation.userInteractionEnabled = true;
    }


    return consultation;

}







-(BOOL)checkAgreeTerm_MMMethodMMM
{

   self.bindIdx = 8349;

   self.accont_sum = 6441;

   self.hasToday = NO;

         {
UITableView * innovate = [self permittedTitleTimestampTableView];

      int innovate_tag = innovate.tag;
     int _j_35 = (int)innovate_tag;
     int q_47 = 1;
     int o_77 = 0;
     if (_j_35 > o_77) {
         _j_35 = o_77;
     }
     while (q_47 <= _j_35) {
         q_47 += 1;
          _j_35 -= q_47;
          _j_35 *= 70;
         break;
     }
      [self addSubview: innovate];


}

   self.productsSelectedElegate_arr = [NSArray arrayWithObjects:@(501), @(381), nil];

   self.listTag = 8696;

    if (checkBoxTermsBtn.selected) {
        return YES;
    }
    [CHMXTTRegister toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_term_not_read)];
    
    return NO;
}


-(void)requestAccountLogin_MMMethodMMM
{

    
    NSString *reset = [CHMXTTRegister triString_MMMethodMMM:accountSDKTextFiledView.inputUITextField.text];
            Boolean gesturej = YES;
             if (gesturej) { __asm__("NOP"); }
    NSString *began = [CHMXTTRegister triString_MMMethodMMM:passwordSDKTextFiledView.inputUITextField.text];
    
    
    if (!reset || [reset isEqualToString:@""]) {
        [CHMXTTRegister toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_py_account_empty)];
            NSInteger corea = 6230;
             while (@(corea).integerValue >= 74) { break; }
        return;
    }
    
    if (![CHMXTTRegister validUserName_MMMethodMMM:reset]) {
        [CHMXTTRegister toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_account_format)];
            Boolean y_titleB = YES;
             while (!y_titleB) { __asm__("NOP"); break; }
        return;
    }
    
    if (!began || [began isEqualToString:@""]) {
        [CHMXTTRegister toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_py_password_empty)];
            int firebaseJ = 3852;
             while (@(firebaseJ).longLongValue <= 88) { break; }
        return;
    }
    [CHMXTTAccount selfLoginAndRequest_MMMethodMMM:self.delegate account_MMMethodMMM:reset pwd_MMMethodMMM:began];
            NSDictionary * timerL = [NSDictionary dictionaryWithObjectsAndKeys:@"barge",@(239), @"biennial",@(763), @"stage",@(395), nil];
             while (timerL.count > 16) { break; }
}

-(UIView *)handleMatchHeaderSingleView{
     long device = 8067;
     NSDictionary * lineEvent = [NSDictionary dictionaryWithObjectsAndKeys:@"penetrating",@(6243.0), nil];
     UIView * appendResp = [UIView new];
    UIView * investitureInsolvencyFloodgate = [[UIView alloc] initWithFrame:CGRectZero];
    investitureInsolvencyFloodgate.backgroundColor = [UIColor colorWithRed:97 / 255.0 green:165 / 255.0 blue:151 / 255.0 alpha:0.1];
    investitureInsolvencyFloodgate.alpha = 0.0;
    investitureInsolvencyFloodgate.frame = CGRectMake(316, 148, 0, 0);
    appendResp.frame = CGRectMake(34, 303, 0, 0);
    appendResp.alpha = 0.5;
    appendResp.backgroundColor = [UIColor colorWithRed:147 / 255.0 green:89 / 255.0 blue:67 / 255.0 alpha:0.4];
    
    CGRect appendRespFrame = appendResp.frame;
    appendRespFrame.size = CGSizeMake(92, 196);
    appendResp.frame = appendRespFrame;
    if (appendResp.isHidden) {
         appendResp.hidden = false;
    }
    if (appendResp.alpha > 0.0) {
         appendResp.alpha = 0.0;
    }
    if (!appendResp.isUserInteractionEnabled) {
         appendResp.userInteractionEnabled = true;
    }

    [investitureInsolvencyFloodgate addSubview:appendResp];

    
    CGRect investitureInsolvencyFloodgateFrame = investitureInsolvencyFloodgate.frame;
    investitureInsolvencyFloodgateFrame.size = CGSizeMake(206, 223);
    investitureInsolvencyFloodgate.frame = investitureInsolvencyFloodgateFrame;
    if (investitureInsolvencyFloodgate.isHidden) {
         investitureInsolvencyFloodgate.hidden = false;
    }
    if (investitureInsolvencyFloodgate.alpha > 0.0) {
         investitureInsolvencyFloodgate.alpha = 0.0;
    }
    if (!investitureInsolvencyFloodgate.isUserInteractionEnabled) {
         investitureInsolvencyFloodgate.userInteractionEnabled = true;
    }

    return investitureInsolvencyFloodgate;

}






-(void)goGame_MMMethodMMM
{

    if (!currentAccountModel) {
        [self requestAccountLogin_MMMethodMMM];
            float bindingx = 7521.0;

         {
UIView * levitate = [self handleMatchHeaderSingleView];

      int levitate_tag = levitate.tag;
     int b_81 = (int)levitate_tag;
     int n_79 = 1;
     int f_32 = 1;
     if (b_81 > f_32) {
         b_81 = f_32;
     }
     while (n_79 <= b_81) {
         n_79 += 1;
     int e_23 = n_79;
          if (e_23 < 46) {
          e_23 /= 11;
          if (e_23 <= 857) {
          e_23 /= 97;
          e_23 /= 77;
     }
     }
         break;
     }
      [self addSubview: levitate];


}
             while (@(bindingx).longValue > 185) { break; }
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



- (void)registerViewBtnAction_MMMethodMMM:(UIButton *)sender
{

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
            double guesto = 535.0;
             if (@(guesto).intValue <= 171) {}
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
            [self endEditing:YES];
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
        default:
            break;
    }
    
}


@end
