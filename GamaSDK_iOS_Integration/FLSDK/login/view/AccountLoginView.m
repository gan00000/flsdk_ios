//
//  AccountLoginView.m
//  R2DSDK
//
//  Created by ganyuanrong on 2020/7/9.
//  Copyright © 2020 ganyuanrong. All rights reserved.
//

#import "AccountLoginView.h"
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
#import "UIView+BlockGesture.h"

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
        
        UIButton *findPasswordBtn = [UIUtil initBtnWithTitleText:GetString(@"py_findpwd") fontSize:FS(12) textColor:[UIColor colorWithHexString:@"#C0C0C0"] tag:kFindPwdActTag selector:@selector(registerViewBtnAction:) target:self];
        
        [self addSubview:findPasswordBtn];
        [findPasswordBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
            make.top.mas_equalTo(passwordSDKTextFiledView.mas_bottom).mas_offset(VH(7));
            //            make.height.mas_equalTo(accountSDKTextFiledView.mas_height);
            //            make.width.mas_equalTo(VW(140));
        }];
        
        //条款
        UIView *termAgreeView = [[UIView alloc] init];
        [self addSubview:termAgreeView];
        [termAgreeView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.mas_equalTo(findPasswordBtn);
            make.leading.mas_equalTo(accountSDKTextFiledView);
        }];
        
        checkBoxTermsBtn = [UIUtil initBtnWithNormalImage:@"mw_cb_uncheck" highlightedImage:nil selectedImageName:@"mw_cb_check" tag:kAgreeTermsCheckBoxBtnTag selector:@selector(registerViewBtnAction:) target:self];
        checkBoxTermsBtn.selected = YES;
        [termAgreeView addSubview:checkBoxTermsBtn];
        [checkBoxTermsBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(termAgreeView);
            make.centerY.mas_equalTo(termAgreeView);
            make.width.height.mas_equalTo(VH(10));
            
        }];
        
        NSString *xtext = GetString(@"sdk_terms_title");
        UILabel *rememberTermsLable = [UIUtil initLabelWithText:xtext fontSize:FS(12) textColor:[UIColor colorWithHexString:@"#C0C0C0"]];
        //            rememberTermsLable.textAlignment = NSTextAlignmentLeft;
        //            rememberTermsLable.backgroundColor = [UIColor clearColor];
        rememberTermsLable.numberOfLines = 1;
        
        
        //             NSDictionary *attribtDic = @{NSForegroundColorAttributeName: [UIColor whiteColor]};
        //             NSMutableAttributedString *attribtStr = [[NSMutableAttributedString alloc]initWithString:xtext];
        //            [attribtStr addAttributes:attribtDic range: NSMakeRange(0,xtext.length-1)];
        //             //赋值
        //            rememberTermsLable.attributedText = attribtStr;
        
        [termAgreeView addSubview:rememberTermsLable];
        [rememberTermsLable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.bottom.mas_equalTo(termAgreeView);
            make.leading.mas_equalTo(checkBoxTermsBtn.mas_trailing).mas_offset(4);
            make.trailing.mas_equalTo(termAgreeView.mas_trailing);
        }];
        rememberTermsLable.userInteractionEnabled=YES;
        [rememberTermsLable addTapActionWithBlock:^(UIGestureRecognizer *gestureRecoginzer) {
            SDK_LOG(@"rememberTermsLableTapped");
            if (self.delegate) {
                [self.delegate goPageView:CURRENT_PAGE_TYPE_TEARMS from:(CURRENT_PAGE_TYPE_LOGIN_WITH_REG) param:0];
            }

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
        
        
        accountDataList = [NSMutableArray array];//账号列表数据
        
        NSArray<AccountModel *> *mAccountArray = [[ConfigCoreUtil share] getAccountModels];//获取保存的数据
        if (mAccountArray.count > 0){//设置默认显示第一个，即按照时间排序最后登录的一个账号
            
            currentAccountModel = mAccountArray[0];
            [accountDataList addObjectsFromArray:mAccountArray];
            
            [AccountLoginView makeAccountFiledViewStatus:currentAccountModel accountView:accountSDKTextFiledView pwdView:passwordSDKTextFiledView];
        }
        
        
        //添加账号显示列表
        kWeakSelf
        accountSDKTextFiledView.clickAccountListItem = ^(NSInteger tag) {
            
            if (accountListView) {
                //设置点击显示、隐藏
                
                
                if (accountListView.isHidden) {
                    
                    accountSDKTextFiledView.moreAccountBtn.selected = YES;
                    accountListView.hidden = NO;
                    NSArray *mAccountArray = [[ConfigCoreUtil share] getAccountModels];//获取保存的数据
                    [accountDataList removeAllObjects];
                    [accountDataList addObjectsFromArray:mAccountArray];
                    accountListView.accountDataList = accountDataList;
                    [accountListView.accountListTableView reloadData];
                    
                }else{
                    
                    accountSDKTextFiledView.moreAccountBtn.selected = NO;
                    accountListView.hidden = YES;
                    
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
        
        accountSDKTextFiledView.inputTextFieldChange = ^(NSString *msg, NSInteger m, NSDictionary *dic) {
            
            if (currentAccountModel && ![currentAccountModel.loginType isEqualToString:LOGIN_TYPE_SELF]) {
                
                if (![msg isEqualToString:currentAccountModel.userId]) {//修改则变为平台用户登录方式
                    AccountModel *tempAccountModel = [[AccountModel alloc] init];
                    tempAccountModel.loginType = LOGIN_TYPE_SELF;
                    tempAccountModel.account = msg;
                    tempAccountModel.password = @"";
                    [passwordSDKTextFiledView setPwdFiledView:YES];
                    [AccountLoginView makeAccountFiledViewStatus:tempAccountModel accountView:accountSDKTextFiledView pwdView:passwordSDKTextFiledView];
                }
            }
            
            
        };
    }
    return self;
}

-(void)addAccountListView{
    accountListView = [[AccountListView alloc] init];
    accountListView.layer.cornerRadius = 2.5f;
    accountListView.layer.masksToBounds = YES;
    [self addSubview:accountListView];
    [accountListView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
        make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
        make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(4);
        make.height.mas_equalTo(VH(200));
        //        make.edges.mas_equalTo(self);
        
    }];
    kWeakSelf
    accountListView.mAccountModelClickHander = ^(BOOL isDelete, AccountModel * _Nullable aModel, NSMutableArray<AccountModel *> *accountDataList) {
        
        if (isDelete) {
            
        }else{//选择
            currentAccountModel = aModel;
            [AccountLoginView makeAccountFiledViewStatus:currentAccountModel accountView:accountSDKTextFiledView pwdView:passwordSDKTextFiledView];
            accountSDKTextFiledView.moreAccountBtn.selected = NO;
            
        }
        
    };
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
            
        case kFindPwdActTag:
            SDK_LOG(@"kFindPwdActTag");
            if (self.delegate) {
                [self.delegate goPageView:CURRENT_PAGE_TYPE_FIND_PWD];
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
            if (![self checkAgreeTerm]) {
                return;
            }
            [self requestAccountLogin];
            break;
            
            //新加
        case fbLoginActTag:
        {
            
            [SdkUtil showLoadingAtView:self];
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
            //                    [SDKRequest thirdLoginOrReg:facebookID andThirdPlate:LOGIN_TYPE_FB addOtherParams:additionDic successBlock:^(id responseData) {
            //
            //                        if (self.delegate) {
            //                            [self.delegate handleLoginOrRegSuccess:responseData thirdPlate:LOGIN_TYPE_FB];
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
            if (![self checkAgreeTerm]) {
                return;
            }
            [self doAppleLogin];
        }
            break;
            
        case guestLoginActTag:
        {
            if (![self checkAgreeTerm]) {
                return;
            }
            [SDKRequest freeLoginOrRegisterWithSuccessBlock:^(id responseData) {
                
                if (self.delegate) {
                    [self.delegate handleLoginOrRegSuccess:responseData thirdPlate:LOGIN_TYPE_GUEST];
                }
                
            } errorBlock:^(BJError *error) {
                if (error && error.message) {
                    [AlertUtil showAlertWithMessage:error.message];
                }
                
            }];
        }
            
        case kAgreeTermsCheckBoxBtnTag:
        {
            if (checkBoxTermsBtn.isSelected) {
                checkBoxTermsBtn.selected = NO;
            }else{
                checkBoxTermsBtn.selected = YES;
            }
            
        }
            
        default:
            break;
    }
    
}


-(BOOL)checkAgreeTerm
{
    if (checkBoxTermsBtn.selected) {
        return YES;
    }
    [SdkUtil toastMsg:GetString(@"text_term_not_read")];
    //    [AlertUtil showAlertWithMessage:];
    return NO;
}

-(void) doAppleLogin
{
    if (@available(iOS 13, *)) {
        
    }else{
        
        return;
    }
    
    gamaAppleLogin = [AppleLogin makeAppleCallbackSuccessBlock:^(NSDictionary * _Nullable result) {
        NSMutableDictionary *tempMutableDic = [NSMutableDictionary dictionaryWithDictionary:result];
        NSString *appleID = [tempMutableDic[@"appleThirdID"] copy];
        [tempMutableDic removeObjectForKey:@"appleThirdID"];
        
        [SDKRequest thirdLoginOrReg:appleID andThirdPlate:LOGIN_TYPE_APPLE addOtherParams:tempMutableDic successBlock:^(id responseData) {
            
            if (self.delegate) {
                [self.delegate handleLoginOrRegSuccess:responseData thirdPlate:LOGIN_TYPE_APPLE];
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
            LoginResponse *cc = (LoginResponse *)responseData;
            cc.data.account = accountName;
            cc.data.password = pwd;
            cc.data.loginType = LOGIN_TYPE_SELF;
            [weakSelf.delegate handleLoginOrRegSuccess:cc thirdPlate:LOGIN_TYPE_SELF];
        }
        
    } errorBlock:^(BJError *error) {
        [AlertUtil showAlertWithMessage:error.message];
    }];
}


+(void)makeAccountFiledViewStatus:(AccountModel *)mAccountModel accountView:(SDKTextFiledView *)accountFiledView pwdView:(SDKTextFiledView *)pwdFiledView{
    
    
    //    passwordSDKTextFiledView.inputUITextField.text = mAccountModel.password;
    
    NSString *account = mAccountModel.userId;
    NSString *iconName = @"mw_smail_icon";
    NSString *pwdText = GetString(@"text_free_register");
    
    BOOL pwdEnable = YES;
    
    if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_SELF]) {
        
        account = mAccountModel.account;
        iconName = @"mw_smail_icon";
        pwdText = mAccountModel.password;
        pwdEnable = YES;
        
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_FB]){
        iconName = @"fb_smail_icon";
        pwdEnable = NO;
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_GOOGLE]){
        iconName = @"google_smail_icon";
        pwdEnable = NO;
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_GUEST]){
        iconName = @"guest_smail_icon";
        pwdEnable = NO;
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_APPLE]){
        iconName = @"mw_smail_icon";
        pwdEnable = NO;
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_LINE]){
        iconName = @"line_smail_icon";
        pwdEnable = NO;
    }
    
    accountFiledView.inputUITextField.text = account;
    accountFiledView.lableIconImageView.image = [UIImage gama_imageNamed:iconName];
    
    if (pwdFiledView) {
        [pwdFiledView setPwdFiledView:pwdEnable];
        pwdFiledView.inputUITextField.text = pwdText;
    }
    
}


@end
