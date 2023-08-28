

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


- (void)dealloc{
    if (accountMaskView) {
        [accountMaskView removeFromSuperview];
    }
}

- (void)showTermsViewForAccountLoginView_MMMethodMMM {
    SDK_LOG(wwwww_tag_wwwww_rememberTermsLableTapped);
    
    
    
    TermsViewV2 *aTermsViewV2 = [[TermsViewV2 alloc] initWithCompleter_MMMethodMMM:^{
        checkBoxTermsBtn.selected = YES;
    }];
    
    UIView *superView = appTopViewController.view;
    [superView addSubview:aTermsViewV2];
    
    [aTermsViewV2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.mas_equalTo(superView);
        make.leading.mas_equalTo(superView);
        make.trailing.mas_equalTo(superView);
    }];
    
    
    aTermsViewV2.transform = CGAffineTransformTranslate(aTermsViewV2.transform, 0, superView.frame.size.height);
    
    [UIView animateWithDuration:0.6 animations:^{
        
        aTermsViewV2.transform = CGAffineTransformTranslate(aTermsViewV2.transform, 0, -superView.frame.size.height);
        
        
    } completion:^(BOOL finished) {
    }];
}

- (instancetype)initView_MMMethodMMM
{
    self = [super init];
    if (self) {
        
        
        accountSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Account)];
        accountSDKTextFiledView.inputUITextField.placeholder = GetString(wwwww_tag_wwwww_text_input_account);
        [self addSubview:accountSDKTextFiledView];
        
        [accountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.equalTo(self);
            make.leading.mas_equalTo(self).mas_offset(VW(34));
            make.trailing.mas_equalTo(self).mas_offset(-VW(34));
            make.height.mas_equalTo(VH(40));
        }];
        
        
        
        passwordSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Password)];
        passwordSDKTextFiledView.inputUITextField.placeholder = GetString(wwwww_tag_wwwww_text_input_pwd);
        [self addSubview:passwordSDKTextFiledView];
        
        [passwordSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(VH(15));
            make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
            make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
            make.height.mas_equalTo(VH(40));
        }];
        
        
        
        
        UIButton *findPasswordBtn = [UIUtil initBtnWithTitleText_MMMethodMMM:GetString(wwwww_tag_wwwww_py_findpwd) fontSize_MMMethodMMM:FS(12) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0] tag_MMMethodMMM:kFindPwdActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        
        [self addSubview:findPasswordBtn];
        [findPasswordBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
            make.top.mas_equalTo(passwordSDKTextFiledView.mas_bottom).mas_offset(VH(8));
            
            
        }];
        
        
        UIView *termAgreeView = [[UIView alloc] init];
        [self addSubview:termAgreeView];
        [termAgreeView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.mas_equalTo(findPasswordBtn);
            make.leading.mas_equalTo(accountSDKTextFiledView);
        }];
        
        checkBoxTermsBtn = [UIUtil initBtnWithNormalImage_MMMethodMMM:mw_cb_uncheck highlightedImage_MMMethodMMM:nil selectedImageName_MMMethodMMM:mw_cb_check tag_MMMethodMMM:kAgreeTermsCheckBoxBtnTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        checkBoxTermsBtn.selected = YES;
        [termAgreeView addSubview:checkBoxTermsBtn];
        [checkBoxTermsBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(termAgreeView);
            make.centerY.mas_equalTo(termAgreeView);
            make.width.height.mas_equalTo(VW(15));
            
        }];
        
        NSString *xtext = GetString(wwwww_tag_wwwww_text_personal_clause_and_privacy_policy);
        UILabel *rememberTermsLable = [UIUtil initLabelWithText_MMMethodMMM:xtext fontSize_MMMethodMMM:FS(12) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0]];
        
        
        rememberTermsLable.numberOfLines = 1;
        
        
        
        
        
        
        
        
        [termAgreeView addSubview:rememberTermsLable];
        [rememberTermsLable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.bottom.mas_equalTo(termAgreeView);
            make.leading.mas_equalTo(checkBoxTermsBtn.mas_trailing).mas_offset(4);
            make.trailing.mas_equalTo(termAgreeView.mas_trailing);
        }];
        rememberTermsLable.userInteractionEnabled=YES;
        [rememberTermsLable addTapActionWithBlock_MMMethodMMM:^(UIGestureRecognizer *gestureRecoginzer) {
            
            [self showTermsViewForAccountLoginView_MMMethodMMM];
            
        }];
        ConfigModel *mConfigModel = SDK_DATA.mConfigModel;
        termAgreeView.hidden = !mConfigModel.showContract;
        findPasswordBtn.hidden = !mConfigModel.showForgetPwd;
        
        
        
        
        accountLoginBtn = [UIUtil initBtnWithTitleText_MMMethodMMM:wwwww_tag_wwwww_text_login.localx fontSize_MMMethodMMM:FS(17) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kAccountLoginActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        
        [accountLoginBtn.layer setCornerRadius:VH(20)];
        accountLoginBtn.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor];
        [self addSubview:accountLoginBtn];
        
        loginGl = [ViewUtil createGradientLayerWithRadius_MMMethodMMM:VH(20)];
        [accountLoginBtn.layer addSublayer:loginGl];

        
        [accountLoginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self);
            make.top.equalTo(findPasswordBtn.mas_bottom).mas_offset(VH(25));
            make.width.mas_equalTo(accountSDKTextFiledView);
            make.height.mas_equalTo(VH(40));
        }];
        
        [self addDrawRectBolck:^(NSString *msg, NSInteger m, NSDictionary *dic) {
            loginGl.frame = accountLoginBtn.bounds;
        }];

        
        UIView *loginTypeView = [[UIView alloc] init];
        [self addSubview:loginTypeView];
        [loginTypeView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.mas_equalTo(accountSDKTextFiledView);
            
            make.top.mas_equalTo(accountLoginBtn.mas_bottom).mas_offset(VH(16));
            
        }];
        
       
        UILabel *otherLabelTips = [[UILabel alloc] init];
        otherLabelTips.font = [UIFont systemFontOfSize:FS(11)];
        otherLabelTips.text = wwwww_tag_wwwww_text_login_other.localx;
        otherLabelTips.numberOfLines = 1; 
        otherLabelTips.textColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0];
        
        [loginTypeView addSubview:otherLabelTips];
        [otherLabelTips mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(loginTypeView.mas_leading);
            make.centerY.mas_equalTo(loginTypeView);
            
        }];
        
        CGFloat btn_w = VW(34);
        CGFloat btn_h = btn_w;
        CGFloat margin_leading = VW(35);
        
        NSMutableArray *loginBtnDatas = [SdkUtil getShowBtnDatas_MMMethodMMM:SDK_DATA.mConfigModel appleBtn_MMMethodMMM:YES guestBtn_MMMethodMMM:YES];
        UIView *leadingView = otherLabelTips;
       
        for (int i = 0; i < loginBtnDatas.count; i++) {
            
            LoginButtonData *lbd = loginBtnDatas[i];
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
                
                LoginTypeButton *mBtn = [[LoginTypeButton alloc] initWithType_MMMethodMMM:lbd.tag title_MMMethodMMM:@"" image_MMMethodMMM:lbd.image selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
                
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
                        make.leading.mas_equalTo(leadingView.mas_trailing).mas_offset(VW(12));
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
        
        NSArray<AccountModel *> *mAccountArray = [[ConfigCoreUtil share] getAccountModels_MMMethodMMM];
        if (mAccountArray.count > 0){
            
            currentAccountModel = mAccountArray[0];
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
                    accountMaskView.hidden = NO;
                    NSArray *mAccountArray = [[ConfigCoreUtil share] getAccountModels_MMMethodMMM];
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
                NSArray *mAccountArray = [[ConfigCoreUtil share] getAccountModels_MMMethodMMM];
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
                    [AccountLoginViewV2 makeAccountFiledViewStatus_MMMethodMMM:tempAccountModel accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM:passwordSDKTextFiledView];
                    currentAccountModel = tempAccountModel;
                }
            }
            
            
        };
    }
    
    return self;
}

-(void)addAccountListView_MMMethodMMM{
    
    accountMaskView = [[BasePopupView alloc] init];
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
    
    accountListView = [[AccountListView alloc] init];
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
                
    
    
                
                [AccountLoginViewV2 makeAccountFiledViewStatus_MMMethodMMM:blockSelf->currentAccountModel accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM: passwordSDKTextFiledView];
            }else{
                AccountModel *resetAm = [[AccountModel alloc] init];
                resetAm.loginType = LOGIN_TYPE_SELF;
                resetAm.account = @"";
                resetAm.password = @"";
                currentAccountModel = resetAm;
                [AccountLoginViewV2 makeAccountFiledViewStatus_MMMethodMMM:blockSelf->currentAccountModel accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM: passwordSDKTextFiledView];
                accountSDKTextFiledView.moreAccountBtn.selected = NO;
                accountMaskView.hidden = YES;
                
                if (deleteBtnView) {
                }
            }
            
        }else{
            currentAccountModel = aModel;
            [AccountLoginViewV2 makeAccountFiledViewStatus_MMMethodMMM:currentAccountModel accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM:passwordSDKTextFiledView];
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
            
        case naverLoginActTag:
        {
            if (![self checkAgreeTerm_MMMethodMMM]) {
                return;
            }
            [LoginHelper naverLoginAndThirdRequest_MMMethodMMM:self.delegate];
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
            [self doDeleteAccount_MMMethodMMM];
            break;
        case kCancelDeleteAccountActTag:
            SDK_LOG(wwwww_tag_wwwww_kCancelDeleteAccountActTag);
            [deleteAccountConfireView removeFromSuperview];
            
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
    [SdkUtil toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_term_not_read)];
    
    [self showTermsViewForAccountLoginView_MMMethodMMM];
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
        
        [LoginHelper fbLoginAndThirdRequest_MMMethodMMM:self.delegate];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_APPLE]) {
        
        [LoginHelper appleLoginAndThirdRequest_MMMethodMMM:self.delegate view_MMMethodMMM:self];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_GUEST]) {
        
        [LoginHelper guestLoginAndThirdRequest_MMMethodMMM:self.delegate];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_GOOGLE]) {
        
        [LoginHelper googleLoginAndThirdRequest_MMMethodMMM:self.delegate];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_LINE]) {
        [LoginHelper lineLoginAndThirdRequest_MMMethodMMM:self.delegate];
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_NAVER]) {
        [LoginHelper naverLoginAndThirdRequest_MMMethodMMM:self.delegate];
    }
}

-(void)requestAccountLogin_MMMethodMMM
{
    
    NSString *accountName = [SdkUtil triString_MMMethodMMM:accountSDKTextFiledView.inputUITextField.text];
    NSString *pwd = [SdkUtil triString_MMMethodMMM:passwordSDKTextFiledView.inputUITextField.text];
    
    
    if (!accountName || [accountName isEqualToString:@""]) {
        [SdkUtil toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_py_account_empty)];
        return;
    }
    
    if (![SdkUtil validUserName_MMMethodMMM:accountName]) {
        [SdkUtil toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_account_format)];
        return;
    }
    
    if (!pwd || [pwd isEqualToString:@""]) {
        [SdkUtil toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_py_password_empty)];
        return;
    }
    [LoginHelper selfLoginAndRequest_MMMethodMMM:self.delegate account_MMMethodMMM:accountName pwd_MMMethodMMM:pwd];
}


+(void)makeAccountFiledViewStatus_MMMethodMMM:(AccountModel *)mAccountModel accountView_MMMethodMMM:(SDKTextFiledView *)accountFiledView pwdView_MMMethodMMM:(SDKTextFiledView *)pwdFiledView{
    
    
    
    
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
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_NAVER]){
        iconName = mw_naver_icon;
        pwdEnable = NO;
    }
    
    accountFiledView.inputUITextField.text = account;
    accountFiledView.lableIconImageView.image = [UIImage res_imageNamed_MMMethodMMM:iconName];
    
    if (pwdFiledView) {
       
        if (pwdEnable) {
            pwdFiledView.hidden = NO;
            pwdFiledView.inputUITextField.text = pwdText;
            
            [pwdFiledView mas_updateConstraints:^(MASConstraintMaker *make) {
                
                make.height.mas_equalTo(VH(40));
            }];
            
            
        }else{
            pwdFiledView.inputUITextField.text = @"";
            pwdFiledView.hidden = YES;
            [pwdFiledView mas_updateConstraints:^(MASConstraintMaker *make) {
                make.height.mas_equalTo(1);
            }];
            
            
        }
        [pwdFiledView layoutIfNeeded];
        
    }
}



-(UIView *)addDeleteAccountConfireView_MMMethodMMM
{
    
    if (deleteAccountConfireView) {
        [deleteAccountConfireView removeFromSuperview];
    }
    UIView *delBgView = [[UIView alloc] init];
    [self.superview addSubview:delBgView];
    [delBgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(self.superview);
    }];
    
    UIView *deleteView = [[UIView alloc] init];
    deleteView.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_000000 andAlpha_MMMethodMMM:0.85];
    deleteView.layer.cornerRadius = VW(10);
    
    [delBgView addSubview:deleteView];
    
    [deleteView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(delBgView);
        make.width.mas_equalTo(VW(272));
    }];
    
    UIImageView *deleteWarmIV = [UIUtil initImageViewWithImage_MMMethodMMM:nend_update_account_bg];
    [deleteView addSubview:deleteWarmIV];
    [deleteWarmIV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(deleteView).mas_offset(VH(12));
        make.centerX.equalTo(self);
        make.height.width.mas_equalTo(VW(25));
    }];
    
    UILabel *deleteWarmLabel = [UIUtil initLabelWithText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_delete_account_tips) fontSize_MMMethodMMM:FS(13) textColor_MMMethodMMM:[UIColor whiteColor]];
    [deleteView addSubview:deleteWarmLabel];
    deleteWarmLabel.numberOfLines = 0;
    [deleteWarmLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(deleteWarmIV.mas_bottom).mas_offset(VH(10));
        make.leading.mas_equalTo(deleteView).mas_offset(VW(14));
        make.trailing.mas_equalTo(deleteView).mas_offset(VW(-14));
    }];
    
    UIButton *cancelBtn = [UIUtil initBtnWithTitleText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_cancel) fontSize_MMMethodMMM:FS(12) textColor_MMMethodMMM:UIColor.whiteColor tag_MMMethodMMM:kCancelDeleteAccountActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
    cancelBtn.layer.cornerRadius = VW(16);
    cancelBtn.layer.borderColor = [UIColor whiteColor].CGColor;
    cancelBtn.layer.borderWidth = 1;
    
    [deleteView addSubview:cancelBtn];
    [cancelBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(deleteWarmLabel.mas_bottom).mas_offset(VH(18));
        make.bottom.mas_equalTo(deleteView).mas_offset(VH(-18));
        make.height.mas_equalTo(VW(32));
        make.width.mas_equalTo(VW(108));
        make.trailing.mas_equalTo(deleteView.mas_centerX).mas_offset(VW(-11));
    }];
    
    UIButton *sureBtn = [UIUtil initBtnWithTitleText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_confire) fontSize_MMMethodMMM:FS(12) textColor_MMMethodMMM:UIColor.whiteColor tag_MMMethodMMM:kSureDeleteAccountActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
    sureBtn.layer.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_F23B12].CGColor;
    sureBtn.layer.cornerRadius = VW(16);
    
    [deleteView addSubview:sureBtn];
    [sureBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(cancelBtn);
        make.bottom.mas_equalTo(cancelBtn);
        make.width.mas_equalTo(cancelBtn);
        make.leading.mas_equalTo(deleteView.mas_centerX).mas_offset(VW(11));
    }];
    
    deleteAccountConfireView = delBgView;
    return deleteAccountConfireView;
    
}



- (void)doDeleteAccount_MMMethodMMM {
    
    if (!currentAccountModel || [StringUtil isEmpty_MMMethodMMM:currentAccountModel.userId]) {
        [SdkUtil toastMsg_MMMethodMMM:wwwww_tag_wwwww_text_select_account.localx];
        return;
    }
    [LoginHelper deleteAccountAndRequest_MMMethodMMM:self.delegate view_MMMethodMMM:self account_MMMethodMMM:currentAccountModel otherParamsDic_MMMethodMMM:nil successBlock_MMMethodMMM:^{
        
        [deleteAccountConfireView removeFromSuperview];
        NSArray<AccountModel *> *mAccountArray = [[ConfigCoreUtil share] getAccountModels_MMMethodMMM];
        if (mAccountArray.count > 0){
            currentAccountModel = mAccountArray[0];
            
            [accountDataList removeAllObjects];
            [accountDataList addObjectsFromArray:mAccountArray];
            
            [AccountLoginViewV2 makeAccountFiledViewStatus_MMMethodMMM:currentAccountModel accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM: passwordSDKTextFiledView];
            
            
        }else{
            AccountModel *tempA = [[AccountModel alloc] init];
            tempA.loginType = LOGIN_TYPE_SELF;
            tempA.account = @"";
            tempA.password = @"";
            currentAccountModel = tempA;
            [AccountLoginViewV2 makeAccountFiledViewStatus_MMMethodMMM:tempA accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM: passwordSDKTextFiledView];
            
        }
        
    }];
}


@end
