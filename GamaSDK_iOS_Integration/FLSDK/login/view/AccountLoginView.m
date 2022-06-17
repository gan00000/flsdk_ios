//
//  AccountLoginView.m
//  R2DSDK
//
//  Created by ganyuanrong on 2020/7/9.
//  Copyright © 2020 ganyuanrong. All rights reserved.
//

#import "AccountLoginView.h"
#import "SDKTextFiledView.h"
#import "SdkHeader.h"
#import "LoginTitleView.h"
#import "LoginButton.h"
#import "AccountListViewCell.h"
#import "HttpServiceEngineLogin.h"
#import "YYModel.h"
#import "AccountModel.h"
#import "SdkUtil.h"
#import "UIColor+HexStringToColorTW.h"
#import "SDKRequest.h"
#import "LoginTypeButton.h"
#import <AuthenticationServices/AuthenticationServices.h>
#import "AppleLogin.h"
#import "TermsView.h"
#import "AccountListView.h"


@interface AccountLoginView()
    


@end

//会员登入view
@implementation AccountLoginView
{
    SDKTextFiledView *passwordSDKTextFiledView;
    SDKTextFiledView *accountSDKTextFiledView;
//    UIButton *checkBoxBtn;
    UIButton *accountLoginBtn;
    UIButton *backBtn;
   
    NSMutableArray<AccountModel *>  *accountDataList;//账号列表数据
    
    UIButton *checkBoxTermsBtn;
    
    AppleLogin *gamaAppleLogin;
    
    BOOL isAgree;
    
    AccountModel *currentAccountModel;
    
    AccountListView *accountListView;
}

/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect {
 // Drawing code
 }
 */

- (instancetype)initView
{
    self = [super init];
    if (self) {
        
//        UIColor *color = [UIColor colorWithHexString:ContentViewBgColor];
//        self.backgroundColor = color;//UIColor.lightGrayColor;// 底图透明，控件不透明
//        self.layer.cornerRadius = 10; //设置圆角
//        self.layer.masksToBounds = YES;
        
        /**
        //登入頁logo
        UIImageView *logoImageView = [[UIImageView alloc] initWithImage:[UIImage gama_imageNamed:@"fl_sdk_logo"]];
        logoImageView.contentMode = UIViewContentModeScaleAspectFit;
        [self addSubview:logoImageView];
        [logoImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.mas_top).mas_offset(12);
            make.centerX.mas_equalTo(self);
            make.width.mas_equalTo(self).mas_offset(-30);
            make.height.mas_equalTo(kPageTitleHeight * 1.2);
        }];
        logoImageView.hidden = YES;
        
        backBtn = [UIUtil initBtnWithNormalImage:@"sdk_btn_back.png" highlightedImage:nil tag:kBackBtnActTag selector:@selector(registerViewBtnAction:) target:self];
        backBtn.imageView.contentMode = UIViewContentModeScaleAspectFit;
        [self addSubview:backBtn];
        [backBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(self).mas_offset(20);
            make.width.mas_equalTo(kInputTextFiledHeight * 0.6);
            make.top.equalTo(self).mas_offset(20);
            make.height.mas_equalTo(kInputTextFiledHeight * 0.6);
        }];
        backBtn.hidden = YES
         
         */
        
        //账号
        accountSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType:(SDKTextFiledView_Type_Account)];
    
        [self addSubview:accountSDKTextFiledView];
        
        [accountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
           // make.centerX.mas_equalTo(self);
            make.top.equalTo(self);
            make.leading.mas_equalTo(self).mas_offset(VW(42));
            make.trailing.mas_equalTo(self).mas_offset(-VW(40));
            make.height.mas_equalTo(VH(40));
        }];
        
        
        //密码
        passwordSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType:(SDKTextFiledView_Type_Password)];
        [self addSubview:passwordSDKTextFiledView];
        
        [passwordSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(VH(22));
            make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
            make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
            make.height.mas_equalTo(accountSDKTextFiledView.mas_height);
        }];
        
        
        //找回密碼
        
        UIButton *findPasswordBtn = [UIUtil initBtnWithTitleText:@"忘記密碼?" fontSize:FS(12) textColor:[UIColor colorWithHexString:@"#C0C0C0"] tag:kFindPwdActTag selector:@selector(registerViewBtnAction:) target:self];
        
        [self addSubview:findPasswordBtn];
        [findPasswordBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
            make.top.mas_equalTo(passwordSDKTextFiledView.mas_bottom).mas_offset(VH(7));
//            make.height.mas_equalTo(accountSDKTextFiledView.mas_height);
//            make.width.mas_equalTo(VW(140));
        }];
        
       
        //账号登入
//        accountLoginBtn = [LoginButton initBtnWithType:(BUTTON_TYPE_ACCOUNT_LOGIN) tag:kAccountLoginActTag selector:@selector(registerViewBtnAction:)  target:self];
        
        accountLoginBtn = [UIUtil initBtnWithTitleText:@"登入" fontSize:FS(17) textColor:[UIColor whiteColor] tag:kAccountLoginActTag selector:@selector(registerViewBtnAction:) target:self];
        
        [accountLoginBtn.layer setCornerRadius:VH(20)];
        accountLoginBtn.backgroundColor = [UIColor colorWithHexString:@"#F94925"];
        [self addSubview:accountLoginBtn];
        
        [accountLoginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self);
            make.top.equalTo(findPasswordBtn.mas_bottom).mas_offset(VH(30));
            make.width.mas_equalTo(accountSDKTextFiledView);
            make.height.mas_equalTo(VH(40));
        }];
        
    
        
        CGFloat btn_w = VW(28);
        CGFloat btn_h = btn_w;
        CGFloat margin_leading = VW(24);
        
        UIView *loginTypeView = [[UIView alloc] init];
        [self addSubview:loginTypeView];
        [loginTypeView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.mas_equalTo(accountSDKTextFiledView);
//            make.bottom.mas_equalTo(self).mas_offset(VH(-10));
            make.top.mas_equalTo(accountLoginBtn.mas_bottom).mas_offset(VH(30));
//            make.centerX.mas_equalTo(self);
            make.height.mas_equalTo(btn_h);
        }];
        
        UILabel *otherLabelTips = [[UILabel alloc] init];
        otherLabelTips.font = [UIFont systemFontOfSize:FS(11)];
        otherLabelTips.text = @"其他登入";
        otherLabelTips.numberOfLines = 1; //0为多行
        otherLabelTips.textColor = [UIColor colorWithHexString:@"#C0C0C0"];
        
        [loginTypeView addSubview:otherLabelTips];
        [otherLabelTips mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(loginTypeView.mas_leading);
            make.centerY.mas_equalTo(loginTypeView);
           
        }];
        
        UIView *leadingView = otherLabelTips;
       
        LoginTypeButton *guestBtn = [[LoginTypeButton alloc] initWithType:guestLoginActTag title:@"遊客登入" image:@"mw_guest_icon" selector:@selector(registerViewBtnAction:) target:self];
        [loginTypeView addSubview:guestBtn];
        [guestBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.mas_equalTo(btn_w);
            make.height.mas_equalTo(btn_h);
            make.top.mas_equalTo(loginTypeView);
            make.leading.mas_equalTo(leadingView.mas_trailing).mas_offset(VW(8));
        }];
        leadingView = guestBtn;
        
        if (@available(iOS 13.0, *)) {
            ASAuthorizationAppleIDButton *appleLoginBtn = [[ASAuthorizationAppleIDButton alloc]initWithAuthorizationButtonType:ASAuthorizationAppleIDButtonTypeSignIn
                                                                                                      authorizationButtonStyle:ASAuthorizationAppleIDButtonStyleBlack];
            [appleLoginBtn addTarget:self action:@selector(registerViewBtnAction:) forControlEvents:(UIControlEventTouchUpInside)];
            appleLoginBtn.tag = appleLoginActTag;
            appleLoginBtn.cornerRadius = btn_w / 2;
            [loginTypeView addSubview:appleLoginBtn];
            
            [appleLoginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
                make.width.mas_equalTo(btn_w);
                make.height.mas_equalTo(btn_h);
                make.top.mas_equalTo(loginTypeView);
                make.leading.mas_equalTo(leadingView.mas_trailing).mas_offset(margin_leading);
            }];
            
            leadingView = appleLoginBtn;
            
        }
        
        LoginTypeButton *fbBtn = [[LoginTypeButton alloc] initWithType:fbLoginActTag title:@"FB登入" image:@"mw_fb_icon" selector:@selector(registerViewBtnAction:) target:self];
        [loginTypeView addSubview:fbBtn];
        [fbBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.mas_equalTo(btn_w);
            make.height.mas_equalTo(btn_h);
            make.top.mas_equalTo(loginTypeView);
            make.leading.mas_equalTo(leadingView.mas_trailing).mas_offset(margin_leading);
        }];
        leadingView = fbBtn;
        
        LoginTypeButton *googleBtn = [[LoginTypeButton alloc] initWithType:googleLoginActTag title:@"" image:@"mw_gp_icon" selector:@selector(registerViewBtnAction:) target:self];
        [loginTypeView addSubview:googleBtn];
        [googleBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.mas_equalTo(btn_w);
            make.height.mas_equalTo(btn_h);
            make.top.mas_equalTo(loginTypeView);
            make.leading.mas_equalTo(leadingView.mas_trailing).mas_offset(margin_leading);
        }];
        leadingView = googleBtn;
        
        
        LoginTypeButton *lineBtn = [[LoginTypeButton alloc] initWithType:lineLoginActTag title:@"" image:@"mw_line_icon" selector:@selector(registerViewBtnAction:) target:self];
        [loginTypeView addSubview:lineBtn];
        [lineBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.mas_equalTo(btn_w);
            make.height.mas_equalTo(btn_h);
            make.top.mas_equalTo(loginTypeView);
            make.leading.mas_equalTo(leadingView.mas_trailing).mas_offset(margin_leading);
            make.trailing.mas_equalTo(loginTypeView);
        }];
        leadingView = lineBtn;
        
     
        [ConfigCoreUtil share].isSaveAccountInfo = YES;
        
        accountDataList = [NSMutableArray array];//账号列表数据
        
        NSArray<AccountModel *> *mAccountArray = [[ConfigCoreUtil share] getAccountModels];//获取保存的数据
        if (mAccountArray.count > 0){//设置默认显示第一个，即按照时间排序最后登录的一个账号
            
            currentAccountModel = mAccountArray[0];
            [accountDataList addObjectsFromArray:mAccountArray];
            
            
        }
        
        
        //添加账号显示列表
        kWeakSelf
        accountSDKTextFiledView.clickAccountListItem = ^(NSInteger tag) {
            
            if (accountListView) {
                //设置点击显示、隐藏
                
                if (accountSDKTextFiledView.moreAccountBtn.isSelected) {
                    accountSDKTextFiledView.moreAccountBtn.selected = NO;
                    accountListView.hidden = YES;
                }else{
                    
                    accountSDKTextFiledView.moreAccountBtn.selected = YES;
                    accountListView.hidden = NO;
                    NSArray *mAccountArray = [[ConfigCoreUtil share] getAccountModels];//获取保存的数据
                   [accountDataList removeAllObjects];
                   [accountDataList addObjectsFromArray:mAccountArray];
                    accountListView.accountDataList = accountDataList;
                   [accountListView.accountListTableView reloadData];
                }
    
            }else{//第一次点击显示
                accountSDKTextFiledView.moreAccountBtn.selected = YES;
                [self addAccountListView];
                NSArray *mAccountArray = [[ConfigCoreUtil share] getAccountModels];//获取保存的数据
               [accountDataList removeAllObjects];
               [accountDataList addObjectsFromArray:mAccountArray];
                accountListView.accountDataList = accountDataList;
                [accountListView.accountListTableView reloadData];
            }
            
        };
    }
    return self;
}

-(void)addAccountListView{
    accountListView = [[AccountListView alloc] init];
    [self addSubview:accountListView];
    [accountListView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
        make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
        make.top.equalTo(accountSDKTextFiledView.mas_bottom);
        make.height.mas_equalTo(VH(200));
//        make.edges.mas_equalTo(self);
        
    }];
    kWeakSelf
    accountListView.mAccountModelClickHander = ^(BOOL isDelete, AccountModel * _Nullable aModel, NSMutableArray<AccountModel *> *accountDataList) {
                
        if (isDelete) {
            
        }else{
//            [SdkUtil makeAccountFiledViewStatus:aModel accountView:accountSDKTextFiledView pwdView:passwordSDKTextFiledView];
        }
        
    };
}



-(void)rememberTermsLableTapped:(UITapGestureRecognizer*)tapGr
{
    SDK_LOG(@"rememberTermsLableTapped");
    if (self.delegate) {
        [self.delegate goPageView:CURRENT_PAGE_TYPE_TEARMS];
    }
}

-(void) updatePasswordData{
    
   NSArray<AccountModel *> *mAccountArray = [[ConfigCoreUtil share] getAccountModels];//获取保存的数据
    if (mAccountArray.count > 0){//设置默认显示第一个，即按照时间排序最后登录的一个账号
        accountSDKTextFiledView.inputUITextField.text = mAccountArray[0].account;
        passwordSDKTextFiledView.inputUITextField.text = mAccountArray[0].password;
    }
    [accountDataList removeAllObjects];
    [accountDataList addObjectsFromArray:mAccountArray];
//    if (accountListTableView) {
//        [accountListTableView reloadData];
//    }
    
}

- (void)updateTermsStatus
{
    isAgree = [TermsView isAgreenProvision];
    if (isAgree) {
        [checkBoxTermsBtn setImage:GetImage(@"btn_checkbox_checked.png") forState:(UIControlStateNormal)];
    }else{
        [checkBoxTermsBtn setImage:GetImage(@"btn_checkbox_uncheck.png") forState:(UIControlStateNormal)];
    }
}

- (void)drawRect:(CGRect)rect
{
    [super drawRect:rect];
    accountSDKTextFiledView.inputUITextField.delegate = self.mUITextFieldDelegate;
    passwordSDKTextFiledView.inputUITextField.delegate = self.mUITextFieldDelegate;
}

- (void)registerViewBtnAction:(UIButton *)sender
{
    switch (sender.tag) {
        case kCheckBoxBtnTag:
            SDK_LOG(@"kCheckBoxBtnTag");
//            isSaveAccountInfo = !isSaveAccountInfo;
//            [ConfigCoreUtil share].isSaveAccountInfo = isSaveAccountInfo;
//            if (isSaveAccountInfo) {
//                //checkBoxBtn = [UIUtil initBtnWithNormalImage:@"btn_checkbox_checked.png" highlightedImage:nil tag:kCheckBoxBtnTag selector:@selector(registerViewBtnAction:) target:self];
//                [checkBoxBtn setImage:GetImage(@"btn_checkbox_checked.png") forState:UIControlStateNormal];
//            }else{
//                [checkBoxBtn setImage:GetImage(@"btn_checkbox_uncheck.png") forState:UIControlStateNormal];
//            }
            break;
            
        case kFindPwdActTag:
            SDK_LOG(@"kFindPwdActTag");
            if (self.delegate) {
                [self.delegate goPageView:CURRENT_PAGE_TYPE_FIND_PWD];
            }
            break;
            
        case kBindAccountActTag:
            SDK_LOG(@"kBindAccountActTag");
            if (self.delegate) {
                [self.delegate goPageView:CURRENT_PAGE_TYPE_SELECT_BIND_TYPE];
            }
            break;
            
        case kRegisterAccountActTag:
            SDK_LOG(@"kRegisterAccountActTag");
            if (self.delegate) {
                [self.delegate goPageView:CURRENT_PAGE_TYPE_REG_ACCOUNT];
            }
            break;
            
        case kChangePwdActTag:
            SDK_LOG(@"kChangePwdActTag");
            if (self.delegate) {
                [self.delegate goPageView:CURRENT_PAGE_TYPE_CHANGE_PWD];
            }
            break;
            
        case kBackBtnActTag:
            SDK_LOG(@"kBackBtnActTag");
            if (self.delegate) {
                [self.delegate goBackBtn:backBtn backCount:1 fromPage:(CURRENT_PAGE_TYPE_LOGIN_WITH_REG) toPage:(CURRENT_PAGE_TYPE_MAIN_HOME)];
            }
            break;
            
        case kAccountLoginActTag:
            SDK_LOG(@"kAccountLoginActTag");
        
            [self requestAccountLogin];
            break;
            
        //新加
        case fbLoginActTag:
        {
            
            [SdkUtil gamaStarLoadingAtView:self];
//            [GamaFacebookPort loginWithFacebook:^(NSError *loginError, NSString *facebookID, NSString *facebookTokenStr) {
//                [SdkUtil gamaStopLoadingAtView:self];
//                if (!loginError)
//                {
//                    
//                    NSString *appsStr = [NSString stringWithFormat:@"%@_%@",facebookID, [SDKConReader getFacebookAppId]];
//                    NSDictionary *additionDic = @{
//                        @"apps":appsStr,
//                        @"tokenBusiness":@"",
//                        @"fb_oauthToken":facebookTokenStr,
//                    };
//                    
//                    [SDKRequest thirdLoginOrReg:facebookID andThirdPlate:_SDK_PLAT_FB addOtherParams:additionDic successBlock:^(id responseData) {
//                        
//                        if (self.delegate) {
//                            [self.delegate handleLoginOrRegSuccess:responseData thirdPlate:_SDK_PLAT_FB];
//                        }
//                        
//                    } errorBlock:^(BJError *error) {
//                        if (error && error.message) {
//                            [GamaAlertView showAlertWithMessage:error.message];
//                        }
//                    }];
//                    
//                    
//                }else{
//                    //[GamaAlertView showAlertWithMessage:@"error.message"];
//                }
//                
//            }];
            
        }
            break;
        case appleLoginActTag:
        {
            [self doAppleLogin];
        }
            break;
            
        case guestLoginActTag:
        {
            
            [SDKRequest freeLoginOrRegisterWithSuccessBlock:^(id responseData) {
                
                if (self.delegate) {
                    [self.delegate handleLoginOrRegSuccess:responseData thirdPlate:_SDK_PLAT_MAC];
                }
                
            } errorBlock:^(BJError *error) {
                if (error && error.message) {
                    [AlertUtil showAlertWithMessage:error.message];
                }
                
            }];
        }
        
        case kAgreeTermsCheckBoxBtnTag:
        {
            isAgree = !isAgree;
            if (isAgree) {
                [checkBoxTermsBtn setImage:GetImage(@"btn_checkbox_checked.png") forState:(UIControlStateNormal)];
            }else{
                [checkBoxTermsBtn setImage:GetImage(@"btn_checkbox_uncheck.png") forState:(UIControlStateNormal)];
            }
            
        }
            
        default:
            break;
    }
    
}

-(void) doAppleLogin
{
    if (@available(iOS 13, *)) {
                  
    }else{
       [AlertUtil showAlertWithMessage:GetString(@"GAMA_APPLE_SYSTEM_OLD_WARNING")];
        return;
    }
    
    gamaAppleLogin = [AppleLogin makeAppleCallbackSuccessBlock:^(NSDictionary * _Nullable result) {
        NSMutableDictionary *tempMutableDic = [NSMutableDictionary dictionaryWithDictionary:result];
        NSString *appleID = [tempMutableDic[@"appleThirdID"] copy];
        [tempMutableDic removeObjectForKey:@"appleThirdID"];

        [SDKRequest thirdLoginOrReg:appleID andThirdPlate:_SDK_PLAT_APPLE addOtherParams:tempMutableDic successBlock:^(id responseData) {
            
            if (self.delegate) {
                [self.delegate handleLoginOrRegSuccess:responseData thirdPlate:_SDK_PLAT_APPLE];
            }
            
        } errorBlock:^(BJError *error) {
            if (error && error.message) {
                [AlertUtil showAlertWithMessage:error.message];
            }
        }];
        
    } andErrorBlock:^(NSError * _Nullable error) {
        //           [GamaUtils gamaStopLoadingAtView:self.view];
        //        [GamaAlertView showAlertWithMessage:GetString(error?GAMA_TEXT_NO_NET:GAMA_TEXT_SERVER_RETURN_NULL)];
    }];
    [gamaAppleLogin handleAuthrization:nil];
}

-(void) requestAccountLogin
{
    
    NSString *accountName = [SdkUtil triString:accountSDKTextFiledView.inputUITextField.text];
    NSString *pwd = [SdkUtil triString:passwordSDKTextFiledView.inputUITextField.text];
    
        
    if (!accountName || [accountName isEqualToString:@""]) {
        [SdkUtil toastMsg:GetString(@"py_account_empty")];
        return;
    }
    
    if (![SdkUtil validUserName:accountName]) {
        [SdkUtil toastMsg:GetString(@"text_account_format")];
        return;
    }
    
    if (!pwd || [pwd isEqualToString:@""]) {
        [SdkUtil toastMsg:GetString(@"py_password_empty")];
        return;
    }
//    if (GamaLoginViewModel.model.vfConfig == YES){
//        if(vfTF.text.length<1){
//            [GamaUtils gamaToastWithMsg:GetString(@"GAMA_LOGIN_CAPTCH_PLACEHOLDER")];
//            return;
//        }
//    }
    kWeakSelf
    [SDKRequest doLoginWithAccount:accountName andPassword:pwd otherDic:nil successBlock:^(id responseData) {
        
        if (weakSelf.delegate) {
            CCSDKResponse *cc = (CCSDKResponse *)responseData;
            cc.data.account = accountName;
            cc.data.password = pwd;
            cc.data.loginType = _SDK_PLAT_SELF;
            [weakSelf.delegate handleLoginOrRegSuccess:cc thirdPlate:_SDK_PLAT_SELF];
        }
        
    } errorBlock:^(BJError *error) {
        [AlertUtil showAlertWithMessage:error.message];
    }];
}


@end
