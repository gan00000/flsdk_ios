

#import "StegLentsiveView.h"
#import "TaurstuffelVasetteView.h"
#import "ExoSingleitorButton.h"
#import "PhantarianZofoldCell.h"
#import "DecimfyWhom.h"
#import "YYModel.h"
#import "AccountModel.h"
#import "QuartaciousForwardization.h"
#import "UIColor+RemainorHes.h"
#import "UrbeousTript.h"
#import "MedicalistWallainButton.h"
#import <AuthenticationServices/AuthenticationServices.h>
#import "BagOftenair.h"
#import "AvoidizationRotView.h"
#import "OmasageFastotView.h"
#import "UIView+HusbandizeRecognizeular.h"
#import "UnciinternationalsureRetainData.h"
#import "CidainBrevoriumView.h"

@interface StegLentsiveView()


@end

@implementation StegLentsiveView
{
    PassformHappysionView *passwordSDKTextFiledView;
    PassformHappysionView *accountSDKTextFiledView;
    
    UIButton *accountLoginBtn;
    UIButton *backBtn;
    
    NSMutableArray<AccountModel *>  *accountDataList;
    
    UIButton *checkBoxTermsBtn;
    
    BagOftenair *gamaAppleLogin;
    
    BOOL isAgree;
    
    AccountModel *currentAccountModel;
    
    OmasageFastotView *accountListView;
    CidainBrevoriumView *accountMaskView;
}


- (void)dealloc{
    if (accountMaskView) {
        [accountMaskView removeFromSuperview];
    }
}

- (instancetype)initView_MMMethodMMM
{
    self = [super init];
    if (self) {
        
        
        
        
        
        
        
        
        
        accountSDKTextFiledView = [[PassformHappysionView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Account)];
        accountSDKTextFiledView.inputUITextField.placeholder = GetString(wwwww_tag_wwwww_text_input_account);
        [self addSubview:accountSDKTextFiledView];
        
        [accountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.equalTo(self);
            make.leading.mas_equalTo(self).mas_offset(VW(40));
            make.trailing.mas_equalTo(self).mas_offset(-VW(40));
            make.height.mas_equalTo(VH(40));
        }];
        
        
        
        passwordSDKTextFiledView = [[PassformHappysionView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Password)];
        passwordSDKTextFiledView.inputUITextField.placeholder = GetString(wwwww_tag_wwwww_text_input_pwd);
        [self addSubview:passwordSDKTextFiledView];
        
        [passwordSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(VH(22));
            make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
            make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
            make.height.mas_equalTo(accountSDKTextFiledView.mas_height);
        }];
        
        
        
        
        UIButton *findPasswordBtn = [AndryColdooret initBtnWithTitleText_MMMethodMMM:GetString(wwwww_tag_wwwww_py_findpwd) fontSize_MMMethodMMM:FS(12) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0] tag_MMMethodMMM:kFindPwdActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        
        [self addSubview:findPasswordBtn];
        [findPasswordBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
            make.top.mas_equalTo(passwordSDKTextFiledView.mas_bottom).mas_offset(VH(7));
            
            
        }];
        
        
        UIView *termAgreeView = [[UIView alloc] init];
        [self addSubview:termAgreeView];
        [termAgreeView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.mas_equalTo(findPasswordBtn);
            make.leading.mas_equalTo(accountSDKTextFiledView);
        }];
        
        checkBoxTermsBtn = [AndryColdooret initBtnWithNormalImage_MMMethodMMM:mw_cb_uncheck highlightedImage_MMMethodMMM:nil selectedImageName_MMMethodMMM:mw_cb_check tag_MMMethodMMM:kAgreeTermsCheckBoxBtnTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        checkBoxTermsBtn.selected = YES;
        [termAgreeView addSubview:checkBoxTermsBtn];
        [checkBoxTermsBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(termAgreeView);
            make.centerY.mas_equalTo(termAgreeView);
            make.width.height.mas_equalTo(VW(15));
            
        }];
        
        NSString *xtext = GetString(wwwww_tag_wwwww_sdk_terms_title);
        UILabel *rememberTermsLable = [AndryColdooret initLabelWithText_MMMethodMMM:xtext fontSize_MMMethodMMM:FS(12) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0]];
        
        
        rememberTermsLable.numberOfLines = 1;
        
        
        
        
        
        
        
        
        [termAgreeView addSubview:rememberTermsLable];
        [rememberTermsLable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.bottom.mas_equalTo(termAgreeView);
            make.leading.mas_equalTo(checkBoxTermsBtn.mas_trailing).mas_offset(4);
            make.trailing.mas_equalTo(termAgreeView.mas_trailing);
        }];
        rememberTermsLable.userInteractionEnabled=YES;
        [rememberTermsLable addTapActionWithBlock_MMMethodMMM:^(UIGestureRecognizer *gestureRecoginzer) {
            SDK_LOG(wwwww_tag_wwwww_rememberTermsLableTapped);
            if (self.delegate) {
                [self.delegate goPageView_MMMethodMMM:CURRENT_PAGE_TYPE_TEARMS from_MMMethodMMM:(CURRENT_PAGE_TYPE_LOGIN_WITH_REG) param_MMMethodMMM:0];
            }
            
        }];
        ConfigModel *mConfigModel = SDK_DATA.mConfigModel;
        termAgreeView.hidden = !mConfigModel.showContract;
        
        
        
        
        
        accountLoginBtn = [AndryColdooret initBtnWithTitleText_MMMethodMMM:wwwww_tag_wwwww_vigenast_claimistic fontSize_MMMethodMMM:FS(17) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kAccountLoginActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        
        [accountLoginBtn.layer setCornerRadius:VH(20)];
        accountLoginBtn.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_F94925];
        [self addSubview:accountLoginBtn];
        
        [accountLoginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self);
            make.top.equalTo(findPasswordBtn.mas_bottom).mas_offset(VH(30));
            make.width.mas_equalTo(accountSDKTextFiledView);
            make.height.mas_equalTo(VH(40));
        }];
        
        
        UIView *loginTypeView = [[UIView alloc] init];
        [self addSubview:loginTypeView];
        [loginTypeView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.mas_equalTo(accountSDKTextFiledView);
            
            make.top.mas_equalTo(accountLoginBtn.mas_bottom).mas_offset(VH(30));
            
        }];
        
       
        UILabel *otherLabelTips = [[UILabel alloc] init];
        otherLabelTips.font = [UIFont systemFontOfSize:FS(11)];
        otherLabelTips.text = wwwww_tag_wwwww_mostery_tricesimreachory;
        otherLabelTips.numberOfLines = 1; 
        otherLabelTips.textColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0];
        
        [loginTypeView addSubview:otherLabelTips];
        [otherLabelTips mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(loginTypeView.mas_leading);
            make.centerY.mas_equalTo(loginTypeView);
            
        }];
        
        CGFloat btn_w = VW(28);
        CGFloat btn_h = btn_w;
        CGFloat margin_leading = VW(24);
        
        NSMutableArray *loginBtnDatas = [QuartaciousForwardization getShowBtnDatas_MMMethodMMM:SDK_DATA.mConfigModel appleBtn_MMMethodMMM:YES guestBtn_MMMethodMMM:YES];
        UIView *leadingView = otherLabelTips;
       
        for (int i = 0; i < loginBtnDatas.count; i++) {
            
            UnciinternationalsureRetainData *lbd = loginBtnDatas[i];
            UIView *btnView;
            
            if ([lbd.btnType isEqualToString:LOGIN_TYPE_APPLE]) {
                
                if (@available(iOS 13.0, *)) {
                    
                    ASAuthorizationAppleIDButton *appleLoginBtn = [[ASAuthorizationAppleIDButton alloc]initWithAuthorizationButtonType:ASAuthorizationAppleIDButtonTypeSignIn
                                                                                                              authorizationButtonStyle:ASAuthorizationAppleIDButtonStyleWhite];
                    [appleLoginBtn addTarget:self action:@selector(registerViewBtnAction_MMMethodMMM:) forControlEvents:(UIControlEventTouchUpInside)];
                    appleLoginBtn.tag = lbd.tag;
                    appleLoginBtn.cornerRadius = btn_w / 2.0;
                    btnView = appleLoginBtn;
                }
                
            }else{
                
                MedicalistWallainButton *mBtn = [[MedicalistWallainButton alloc] initWithType_MMMethodMMM:lbd.tag title_MMMethodMMM:@"" image_MMMethodMMM:lbd.image selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
                
                btnView = mBtn;
            }
            
            if (btnView) {
                
                [loginTypeView addSubview:btnView];
                [btnView mas_makeConstraints:^(MASConstraintMaker *make) {
                    make.width.mas_equalTo(btn_w);
                    make.height.mas_equalTo(btn_h);
                    make.top.mas_equalTo(loginTypeView);
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

        
        accountDataList = [NSMutableArray array];
        
        NSArray<AccountModel *> *mAccountArray = [[AatorTrusular share] getAccountModels_MMMethodMMM];
        if (mAccountArray.count > 0){
            
            currentAccountModel = mAccountArray[0];
            [accountDataList addObjectsFromArray:mAccountArray];
            
            [StegLentsiveView makeAccountFiledViewStatus_MMMethodMMM:currentAccountModel accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM:passwordSDKTextFiledView];
        }
        
        
        
        kWeakSelf
        accountSDKTextFiledView.clickAccountListItem = ^(NSInteger tag) {
            
            if (accountMaskView && accountListView) {
                
                
                
                if (accountMaskView.isHidden) {
                    
                    accountSDKTextFiledView.moreAccountBtn.selected = YES;
                    accountMaskView.hidden = NO;
                    NSArray *mAccountArray = [[AatorTrusular share] getAccountModels_MMMethodMMM];
                    [accountDataList removeAllObjects];
                    [accountDataList addObjectsFromArray:mAccountArray];
                    accountListView.accountDataList = accountDataList;
                    [accountListView.accountListTableView reloadData];
                    
                }else{
                    
                    accountSDKTextFiledView.moreAccountBtn.selected = NO;
                    accountMaskView.hidden = YES;
                    
                }
                
            }else{
                accountSDKTextFiledView.moreAccountBtn.selected = YES;
                [self addAccountListView_MMMethodMMM];
                NSArray *mAccountArray = [[AatorTrusular share] getAccountModels_MMMethodMMM];
                [accountDataList removeAllObjects];
                [accountDataList addObjectsFromArray:mAccountArray];
                accountListView.accountDataList = accountDataList;
                [accountListView.accountListTableView reloadData];
            }
            
        };
        
        accountSDKTextFiledView.inputTextFieldChange = ^(NSString *msg, NSInteger m, NSDictionary *dic) {
            
            if (currentAccountModel && ![currentAccountModel.loginType isEqualToString:LOGIN_TYPE_SELF]) {
                
                if (![msg isEqualToString:currentAccountModel.userId]) {
                    AccountModel *tempAccountModel = [[AccountModel alloc] init];
                    tempAccountModel.loginType = LOGIN_TYPE_SELF;
                    tempAccountModel.account = msg;
                    tempAccountModel.password = @"";
                    [passwordSDKTextFiledView setPwdFiledView_MMMethodMMM:YES];
                    [StegLentsiveView makeAccountFiledViewStatus_MMMethodMMM:tempAccountModel accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM:passwordSDKTextFiledView];
                    currentAccountModel = tempAccountModel;
                }
            }
            
            
        };
    }
    return self;
}

-(void)addAccountListView_MMMethodMMM{
    
    accountMaskView = [[CidainBrevoriumView alloc] init];
    accountMaskView.touchesBeganCallback = ^(NSString *msg, NSInteger m, NSDictionary *dic) {
        if (!accountMaskView.isHidden) {
            
            accountSDKTextFiledView.moreAccountBtn.selected = NO;
            accountMaskView.hidden = YES;
        }
        
    };
    UIView * topView = self.superview.superview.superview;
    
    [topView addSubview:accountMaskView];
    [accountMaskView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(topView);
    }];
    
    accountListView = [[OmasageFastotView alloc] init];
    accountListView.layer.cornerRadius = 2.5f;
    accountListView.layer.masksToBounds = YES;
    [accountMaskView addSubview:accountListView];
    [accountListView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
        make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
        make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(4);
        make.height.mas_equalTo(VH(200));
        
        
    }];
    kWeakSelf
    kBlockSelf
    accountListView.mAccountModelClickHander = ^(BOOL isDelete, AccountModel * _Nullable aModel, NSMutableArray<AccountModel *> *accountDataList) {
        
        if (isDelete) {
            
            if (accountDataList.count > 0) {
                currentAccountModel = accountDataList[0];
                
    
    
                
                [StegLentsiveView makeAccountFiledViewStatus_MMMethodMMM:blockSelf->currentAccountModel accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM: passwordSDKTextFiledView];
            }else{
                AccountModel *resetAm = [[AccountModel alloc] init];
                resetAm.loginType = LOGIN_TYPE_SELF;
                resetAm.account = @"";
                resetAm.password = @"";
                currentAccountModel = resetAm;
                [StegLentsiveView makeAccountFiledViewStatus_MMMethodMMM:blockSelf->currentAccountModel accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM: passwordSDKTextFiledView];
                accountSDKTextFiledView.moreAccountBtn.selected = NO;
                accountMaskView.hidden = YES;
            }
            
        }else{
            currentAccountModel = aModel;
            [StegLentsiveView makeAccountFiledViewStatus_MMMethodMMM:currentAccountModel accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM:passwordSDKTextFiledView];
            accountSDKTextFiledView.moreAccountBtn.selected = NO;
            accountMaskView.hidden = YES;
            
        }
        
    };
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
            break;
            
            
        case fbLoginActTag:
        {
            if (![self checkAgreeTerm_MMMethodMMM]) {
                return;
            }
            [UrbeousTript fbLoginAndThirdRequest_MMMethodMMM:self.delegate];
        }
            break;
        case appleLoginActTag:
        {
            if (![self checkAgreeTerm_MMMethodMMM]) {
                return;
            }
            [UrbeousTript appleLoginAndThirdRequest_MMMethodMMM:self.delegate view_MMMethodMMM:self];
        }
            break;
            
        case guestLoginActTag:
        {
            [self endEditing:YES];
            if (![self checkAgreeTerm_MMMethodMMM]) {
                return;
            }
            [UrbeousTript guestLoginAndThirdRequest_MMMethodMMM:self.delegate];
        }
            break;
        case googleLoginActTag:
        {
            if (![self checkAgreeTerm_MMMethodMMM]) {
                return;
            }
            [UrbeousTript googleLoginAndThirdRequest_MMMethodMMM:self.delegate];
        }
            break;
        case lineLoginActTag:
        {
            if (![self checkAgreeTerm_MMMethodMMM]) {
                return;
            }
            [UrbeousTript lineLoginAndThirdRequest_MMMethodMMM:self.delegate];
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


-(BOOL)checkAgreeTerm_MMMethodMMM
{
    if (checkBoxTermsBtn.selected) {
        return YES;
    }
    [QuartaciousForwardization toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_term_not_read)];
    
    return NO;
}

-(void)goGame_MMMethodMMM
{
    if (!currentAccountModel) {
        [self requestAccountLogin_MMMethodMMM];
        return;
    }
    if ([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_SELF]) {
       
        [self requestAccountLogin_MMMethodMMM];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_FB]) {
        
        [UrbeousTript fbLoginAndThirdRequest_MMMethodMMM:self.delegate];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_APPLE]) {
        
        [UrbeousTript appleLoginAndThirdRequest_MMMethodMMM:self.delegate view_MMMethodMMM:self];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_GUEST]) {
        
        [UrbeousTript guestLoginAndThirdRequest_MMMethodMMM:self.delegate];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_GOOGLE]) {
        
        [UrbeousTript googleLoginAndThirdRequest_MMMethodMMM:self.delegate];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_LINE]) {
        [UrbeousTript lineLoginAndThirdRequest_MMMethodMMM:self.delegate];
    }
}

-(void)requestAccountLogin_MMMethodMMM
{
    
    NSString *accountName = [QuartaciousForwardization triString_MMMethodMMM:accountSDKTextFiledView.inputUITextField.text];
    NSString *pwd = [QuartaciousForwardization triString_MMMethodMMM:passwordSDKTextFiledView.inputUITextField.text];
    
    
    if (!accountName || [accountName isEqualToString:@""]) {
        [QuartaciousForwardization toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_py_account_empty)];
        return;
    }
    
    if (![QuartaciousForwardization validUserName_MMMethodMMM:accountName]) {
        [QuartaciousForwardization toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_account_format)];
        return;
    }
    
    if (!pwd || [pwd isEqualToString:@""]) {
        [QuartaciousForwardization toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_py_password_empty)];
        return;
    }
    [UrbeousTript selfLoginAndRequest_MMMethodMMM:self.delegate account_MMMethodMMM:accountName pwd_MMMethodMMM:pwd];
}


+(void)makeAccountFiledViewStatus_MMMethodMMM:(AccountModel *)mAccountModel accountView_MMMethodMMM:(PassformHappysionView *)accountFiledView pwdView_MMMethodMMM:(PassformHappysionView *)pwdFiledView{
    
    
    
    
    NSString *account = mAccountModel.userId;
    NSString *iconName = mw_smail_icon;
    NSString *pwdText = GetString(wwwww_tag_wwwww_text_free_register);
    
    BOOL pwdEnable = YES;
    
    if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_SELF]) {
        
        account = mAccountModel.account;
        iconName = mw_smail_icon;
        pwdText = mAccountModel.password;
        pwdEnable = YES;
        
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_FB]){
        iconName = fb_smail_icon;
        pwdEnable = NO;
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_GOOGLE]){
        iconName = google_smail_icon;
        pwdEnable = NO;
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_GUEST]){
        iconName = guest_smail_icon;
        pwdEnable = NO;
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_APPLE]){
        iconName = apple_smail_icon;
        pwdEnable = NO;
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_LINE]){
        iconName = line_smail_icon;
        pwdEnable = NO;
    }
    
    accountFiledView.inputUITextField.text = account;
    accountFiledView.lableIconImageView.image = [UIImage res_imageNamed_MMMethodMMM:iconName];
    
    if (pwdFiledView) {
        [pwdFiledView setPwdFiledView_MMMethodMMM:pwdEnable];
        pwdFiledView.inputUITextField.text = pwdText;
    }
    
}


@end
