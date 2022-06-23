//
//  RegisterAccountView.m
//  R2DSDK
//
//  Created by ganyuanrong on 2020/7/12.
//  Copyright © 2020 ganyuanrong. All rights reserved.
//

#import "RegisterAccountView.h"
#import "SdkHeader.h"
#import "LoginTitleView.h"
#import "SDKTextFiledView.h"
#import "PhoneView.h"
#import "LoginButton.h"
#import "SDKRequest.h"
#import "SdkUtil.h"
#import "SAppleLogin.h"

@implementation RegisterAccountView
{
    SDKTextFiledView *accountSDKTextFiledView;
    SDKTextFiledView *passwordSDKTextFiledView;
    SDKTextFiledView *passwordAgainSDKTextFiledView;
//    SDKTextFiledView *vfCodeFiledView;
    UIButton *regAccountBtn; //確定按鈕
    LoginTitleView   *mLoginTitleView;
    int phoneCountdown;
//    NSTimer *downTimer;
//    UIButton *getVfCodeBtn;
    
//    PhoneView *mPhoneView;
    
}


//- (instancetype)initViewWithBindType:(NSInteger) bindType
- (instancetype)initView
{
    self = [self initViewWithBindType:0];
    if (!self) {
        return nil;
    }
    return self;
}
//- (instancetype)initView
- (instancetype)initViewWithBindType:(NSInteger) bindType
{
    self = [super init];
    if (self) {
        
//        UIColor *color = [UIColor colorWithHexString:ContentViewBgColor];
//        self.backgroundColor = color;// 底图透明，控件不透明
//        self.layer.cornerRadius = 10; //设置圆角
        //        self.layer.backgroundColor = [UIColor blackColor].CGColor;
        //        self.layer.borderWidth = 2;
//        self.layer.masksToBounds = YES; //不设置这里会不生成圆角，原因查找中
        
        self.bindType = bindType;//綁定賬號
        //title
//        mLoginTitleView = [[LoginTitleView alloc] initViewWithTitle:@"註冊會員"];
//        mLoginTitleView.delegate = self.delegate;
//
//
//        [self addSubview:mLoginTitleView];
//        [mLoginTitleView mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.top.mas_equalTo(self.mas_top).mas_offset(VH(32));
//            make.centerX.mas_equalTo(self);
//            make.width.mas_equalTo(self).mas_offset(-VW(55));;
//            make.height.mas_equalTo(VH(56));
//        }];
       
        //账号
        accountSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType:(SDKTextFiledView_Type_Account)];
        accountSDKTextFiledView.moreAccountBtn.hidden = YES;
        [self addSubview:accountSDKTextFiledView];
        
        [accountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
           // make.centerX.mas_equalTo(self);
            make.top.equalTo(self);
            make.leading.mas_equalTo(self).mas_offset(VW(40));
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
        
        UILabel *tipsUILabel = [[UILabel alloc] init];
        tipsUILabel.font = [UIFont systemFontOfSize:FS(10)];
        tipsUILabel.text = @"*帳號信箱將會作為您找回密碼的驗證信箱，請謹慎輸入";
        tipsUILabel.textAlignment = NSTextAlignmentLeft;
//        tipsUILabel.backgroundColor = [UIColor colorWithHexString:@"#C0C0C0"];
        tipsUILabel.numberOfLines = 1; //0为多行
        tipsUILabel.textColor = [UIColor colorWithHexString:@"#C0C0C0"];
    
        [self addSubview:tipsUILabel];
        [tipsUILabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.trailing.equalTo(accountSDKTextFiledView);
            make.top.mas_equalTo(passwordSDKTextFiledView.mas_bottom).offset(8);
    
        }];
        
//        //账号
//        accountSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType:(SDKTextFiledView_Type_Account)];
//
//        [self addSubview:accountSDKTextFiledView];
//
//        [accountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.centerX.mas_equalTo(self);
//            //make.top.equalTo(mLoginTitleView.mas_bottom).mas_offset(kInputTextFiledTopMargin * 1.2);
//            make.width.mas_equalTo(self).mas_offset(-VW(55));
//            make.height.mas_equalTo(VH(56));
//            if (self.bindType == 0) {
//                make.top.equalTo(self);
//            }else{
//                make.top.equalTo(mLoginTitleView.mas_bottom).mas_offset(VH(24));
//            }
//        }];
//
//
//        //密碼
//        passwordSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType:(SDKTextFiledView_Type_Password)];
//
//        [self addSubview:passwordSDKTextFiledView];
//
//        [passwordSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
//
//            make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(VH(10));
//            make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
//            make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
//            make.height.mas_equalTo(accountSDKTextFiledView.mas_height);
//        }];
//
//
//        //再次輸入密碼
//        passwordAgainSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType:(SDKTextFiledView_Type_Password_Again)];
//
//        [self addSubview:passwordAgainSDKTextFiledView];
//
//        [passwordAgainSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
//
//            make.top.equalTo(passwordSDKTextFiledView.mas_bottom).mas_offset(VH(10));
//            make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
//            make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
//            make.height.mas_equalTo(accountSDKTextFiledView.mas_height);
//        }];
//
//
//        mPhoneView = [[PhoneView alloc] initView];
//
//        [self addSubview:mPhoneView];
//        [mPhoneView mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.top.equalTo(passwordAgainSDKTextFiledView.mas_bottom).mas_offset(VH(10));
//            make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
//            make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
//            make.height.mas_equalTo(accountSDKTextFiledView.mas_height);
//        }];
//
//        //验证码
//        vfCodeFiledView = [[SDKTextFiledView alloc] initViewWithType:(SDKTextFiledView_Type_VfCode)];
//
//        [self addSubview:vfCodeFiledView];
//        [vfCodeFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.top.equalTo(mPhoneView.mas_bottom).mas_offset(VH(10));
//            make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
//            make.width.mas_equalTo(accountSDKTextFiledView.mas_width).multipliedBy(0.65);
//            make.height.mas_equalTo(accountSDKTextFiledView.mas_height);
//        }];
//
//        getVfCodeBtn = [UIUtil initBtnWithTitle2:@"獲取驗證碼" tag:kGetVfCodeActTag selector:@selector(registerViewBtnAction:) target:self];
//
//        getVfCodeBtn.layer.borderColor = [UIColor colorWithHexString:@"#ff3e37"].CGColor;
//        getVfCodeBtn.layer.borderWidth = 1;
//        getVfCodeBtn.layer.cornerRadius = 10;
//        getVfCodeBtn.titleLabel.font = [UIFont systemFontOfSize:12];
//        [getVfCodeBtn setTitleColor:[UIColor colorWithHexString:@"#ff3e37"] forState:0];
//        [self addSubview:getVfCodeBtn];
//        [getVfCodeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.top.bottom.equalTo(vfCodeFiledView);
//            make.leading.mas_equalTo(vfCodeFiledView.mas_trailing).offset(6);
//            make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing).offset(-4);
//
//        }];
//        [getVfCodeBtn setContentHuggingPriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisHorizontal];
        
        regAccountBtn = [UIUtil initBtnWithTitleText:@"確認註冊" fontSize:FS(17) textColor:[UIColor whiteColor] tag:kRegisterAccountActTag selector:@selector(registerViewBtnAction:) target:self];
        [regAccountBtn.layer setCornerRadius:VH(25)];
        regAccountBtn.backgroundColor = [UIColor colorWithHexString:@"#F94925"];
        [self addSubview:regAccountBtn];
        
        [regAccountBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.trailing.equalTo(accountSDKTextFiledView);
            make.top.equalTo(tipsUILabel.mas_bottom).mas_offset(VH(34));
            make.height.mas_equalTo(VH(50));
        }];
        
        
//        UILabel *loginTipsLable = [[UILabel alloc] init];
//        loginTipsLable.text = @"同一手機當日不得收取驗證碼超過五次";
//        loginTipsLable.font = [UIFont systemFontOfSize:10];
//        loginTipsLable.textAlignment = NSTextAlignmentCenter;
//        loginTipsLable.backgroundColor = [UIColor clearColor];
//        loginTipsLable.numberOfLines = 1;
//        loginTipsLable.textColor = [UIColor colorWithHexString:@"#FF3E37"];
//        loginTipsLable.adjustsFontSizeToFitWidth = YES;
//
//        [self addSubview:loginTipsLable];
//        [loginTipsLable mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.centerX.mas_equalTo(self);
//            make.top.mas_equalTo(regAccountBtn.mas_bottom).mas_offset(VH(10));
//            make.height.mas_equalTo(VH(20));
//            make.width.mas_equalTo(self).mas_offset(-VW(10));
//
//        }];
//
//        if ( self.bindType == 0) {
//            mLoginTitleView.hidden = YES;
//        }else{
//            mLoginTitleView.titleLable.text = GetString(@"BTN_TITLE_BIND_ACCOUNT");
//            //    [registorAccountBtn setImage:GetImage(@"btn_bind_account.png") forState:UIControlStateNormal];
//            //    [registorAccountBtn setImage:GetImage(@"btn_bind_account.png") forState:UIControlStateHighlighted];
//
//            [regAccountBtn setTitle:GetString(@"GAMA_REGISTER_BIND_CONFIRM_TEXT") forState:(UIControlStateNormal)];
//        }
    }
    return self;
}


- (void)drawRect:(CGRect)rect{
    [super drawRect:rect];
    mLoginTitleView.delegate = self.delegate;
    accountSDKTextFiledView.inputUITextField.delegate = self.mUITextFieldDelegate;
    passwordSDKTextFiledView.inputUITextField.delegate = self.mUITextFieldDelegate;
//    passwordAgainSDKTextFiledView.inputUITextField.delegate = self.mUITextFieldDelegate;
//    mPhoneView.mUITextField.delegate = self.mUITextFieldDelegate;
//    vfCodeFiledView.inputUITextField.delegate = self.mUITextFieldDelegate;
    
}



- (void)registerViewBtnAction:(UIButton *)sender
{
    switch (sender.tag) {
            
        case kGetVfCodeActTag:
            
        {
//            SDK_LOG(@"kGetVfCodeActTag");
//            NSString *areaCode = [mPhoneView getPhoneAreaCode];
//            NSString *phoneNum = [mPhoneView getPhoneNumber];
//            if (!phoneNum || [@"" isEqualToString:phoneNum]) {
//                [SdkUtil toastMsg:@"請輸入電話號碼"];
//                return;
//            }
//            [self requestPhoneVerficationWithPhoneArea:areaCode phoneNumber:phoneNum];
        }
            break;
            
        case kRegisterAccountActTag:
        {
            SDK_LOG(@"kRegisterAccountActTag");
            NSString *accountName = accountSDKTextFiledView.inputUITextField.text;
            NSString *pwd = passwordSDKTextFiledView.inputUITextField.text;
//            NSString *areaCode = [mPhoneView getPhoneAreaCode];
//            NSString *phoneNum = [mPhoneView getPhoneNumber];
//            NSString *vfCode = vfCodeFiledView.inputUITextField.text;
            
//            NSString *newPassword = passwordAgainSDKTextFiledView.inputUITextField.text;
            
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
            
//            if ([@"" isEqualToString:vfCode]) {
//                
//                [SdkUtil toastMsg:GetString(@"TXT_VERTIFY_CODE_IS_NULL")];
//                return;
//            }
            
            [self requestRegister:@"" name:accountName password:pwd phoneNum:@"" vfCode:@""];
            
//            if (self.bindType == 0) {
//                [self requestRegister:areaCode name:name password:password phoneNum:phoneNum vfCode:vfCode];
//            }else if (self.bindType == kBindFBActTag){
//
//                [self requestBindFb:areaCode name:name password:password phoneNum:phoneNum vfCode:vfCode];
//
//            }else if (self.bindType == kBindAppleActTag){
//
//                [self requestBindApple:areaCode name:name password:password phoneNum:phoneNum vfCode:vfCode];
//
//            }else if (self.bindType == kBindGuestActTag){
//                [self requestBindMac:areaCode name:name password:password phoneNum:phoneNum vfCode:vfCode];
//            }
            
            
        }
            break;
            
        default:
            break;
    }
}

-(void)requestBindMac:(NSString *)areaCode name:(NSString *)name password:(NSString *)password phoneNum:(NSString *)phoneNum vfCode:(NSString *)vfCode
{
    NSString *loginId = [SUtil getGamaUUID];
    [SDKRequest doAccountBindingWithUserName:name
                                    password:password
                               phoneAreaCode:areaCode
                                 phoneNumber:phoneNum
                                      vfCode:vfCode
                                       email:@""
                                     thirdId:loginId
                                  thirdPlate:LOGIN_TYPE_GUEST
                              otherParamsDic:nil
                                successBlock:^(id responseData) {
        LoginResponse *cc = (LoginResponse *)responseData;
         [[ConfigCoreUtil share] saveAccount:name password:password updateTime:YES];
        [AlertUtil showAlertWithMessage:cc.message];
        
        if (self.delegate) {
            [self.delegate goPageView:CURRENT_PAGE_TYPE_LOGIN_ACCOUNT];
        }
    }
                                  errorBlock:^(BJError *error) {
        if (error && error.message) {
            [AlertUtil showAlertWithMessage:error.message];
        }
    }];
}
-(void)requestBindApple:(NSString *)areaCode name:(NSString *)name password:(NSString *)password phoneNum:(NSString *)phoneNum vfCode:(NSString *)vfCode
{
    
    kWeakSelf
    if (@available(iOS 13, *)) {
                  
    }else{
       [AlertUtil showAlertWithMessage:GetString(@"GAMA_APPLE_SYSTEM_OLD_WARNING")];
        return;
    }
    
//    SAppleLogin *gamaAppleLogin = [SAppleLogin makeAppleCallbackSuccessBlock:^(NSDictionary * _Nullable result) {
//        NSMutableDictionary *tempMutableDic = [NSMutableDictionary dictionaryWithDictionary:result];
//        NSString *appleID = [tempMutableDic[@"appleThirdID"] copy];
//        [tempMutableDic removeObjectForKey:@"appleThirdID"];
//
//        [SDKRequest doAccountBindingWithUserName:name
//                                        password:password
//                                   phoneAreaCode:areaCode
//                                     phoneNumber:phoneNum
//                                          vfCode:vfCode
//                                           email:@""
//                                         thirdId:appleID
//                                      thirdPlate:LOGIN_TYPE_APPLE
//                                  otherParamsDic:tempMutableDic
//                                    successBlock:^(id responseData) {
//            LoginResponse *cc = (LoginResponse *)responseData;
//             [[ConfigCoreUtil share] saveAccount:name password:password updateTime:YES];
//            [AlertUtil showAlertWithMessage:cc.message];
//
//            if (self.delegate) {
//                [self.delegate goPageView:CURRENT_PAGE_TYPE_LOGIN_ACCOUNT];
//            }
//
//        }
//                                      errorBlock:^(BJError *error) {
//            if (error && error.message) {
//                [AlertUtil showAlertWithMessage:error.message];
//            }
//        }];
//
//    } andErrorBlock:^(NSError * _Nullable error) {
//        //           [GamaUtils gamaStopLoadingAtView:self.view];
//        //        [GamaAlertView showAlertWithMessage:GetString(error?GAMA_TEXT_NO_NET:GAMA_TEXT_SERVER_RETURN_NULL)];
//    }];
//    [gamaAppleLogin handleAuthrization:nil];
    
    
//    GamaAppleLogin *gamaAppleLogin = [[GamaAppleLogin alloc] init];
//    NSDictionary *tempDic = [gamaAppleLogin fetchAppleLoginInfo];
//    NSMutableDictionary *tempMutableDic = [NSMutableDictionary dictionaryWithDictionary:tempDic];
//    NSString *appleID = [tempMutableDic[@"appleThirdID"] copy];
//    [tempMutableDic removeObjectForKey:@"appleThirdID"];
    
    
    
}


-(void)requestBindFb:(NSString *)areaCode name:(NSString *)name password:(NSString *)password phoneNum:(NSString *)phoneNum vfCode:(NSString *)vfCode
{
    [SdkUtil showLoadingAtView:self];
//    [GamaFacebookPort loginWithFacebook:^(NSError *loginError, NSString *facebookID, NSString *facebookTokenStr) {
//        [SdkUtil gamaStopLoadingAtView:self];
//        if (!loginError)
//        {
//            NSString *appsStr = [NSString stringWithFormat:@"%@_%@",facebookID, [SDKConReader getFacebookAppId]];
//            NSDictionary *additionDic = @{
//                @"apps":appsStr,
//                @"tokenBusiness":@"",
//                @"fb_oauthToken":facebookTokenStr,
//            };
//            
//            [SDKRequest doAccountBindingWithUserName:name
//                                            password:password
//                                       phoneAreaCode:areaCode
//                                         phoneNumber:phoneNum
//                                              vfCode:vfCode
//                                               email:@""
//                                             thirdId:facebookID
//                                          thirdPlate:LOGIN_TYPE_FB
//                                      otherParamsDic:additionDic
//                                        successBlock:^(id responseData) {
//                
//                CCSDKResponse *cc = (CCSDKResponse *)responseData;
//                [[ConfigCoreUtil share] saveAccount:name password:password updateTime:YES];
//                [GamaAlertView showAlertWithMessage:cc.message];
//                
//                if (self.delegate) {
//                    [self.delegate goPageView:CURRENT_PAGE_TYPE_LOGIN_ACCOUNT];
//                }
//                
//            }
//                                          errorBlock:^(BJError *error) {
//                if (error && error.message) {
//                    [GamaAlertView showAlertWithMessage:error.message];
//                }
//            }];
//            
//            
//        }else{
//            //[GamaAlertView showAlertWithMessage:@"error.message"];
//        }
//        
//    }];
//    
}

- (void)requestRegister:(NSString *)areaCode name:(NSString *)name password:(NSString *)password phoneNum:(NSString *)phoneNum vfCode:(NSString *)vfCode {
    [SDKRequest doRegisterAccountWithUserName:name
                                  andPassword:password
                                phoneAreaCode:areaCode
                                  phoneNumber:phoneNum
                                       vfCode:vfCode
                                   interfaces:@"1"
                               otherParamsDic:nil
                                 successBlock:^(id responseData) {
        
        if (self.delegate) {
            LoginResponse *cc = (LoginResponse *)responseData;
            cc.data.account = name;
            cc.data.password = password;
            
            [self.delegate handleLoginOrRegSuccess:responseData thirdPlate:LOGIN_TYPE_SELF];
        }
    }
                                   errorBlock:^(BJError *error) {
        [AlertUtil showAlertWithMessage:error.message];
    }];
}

- (void)requestPhoneVerficationWithPhoneArea:(NSString *)phoneArea phoneNumber:(NSString *)phoneN
{
//    NSString *interfaces = @"1"; //註冊1 綁定2  找回密碼4
//    if (self.bindType == 0) {
//        interfaces = @"1";;
//    }else{
//        interfaces = @"2";
//    }
//    [SDKRequest requestPhoneVerficationWithPhoneArea:phoneArea phoneNumber:phoneN  interfaces:interfaces otherDic:nil successBlock:^(id responseData) {
//        [self downTime];
//    } errorBlock:^(BJError *error) {
//        [self resetVfCodeBtnStatue];
//        [AlertUtil showAlertWithMessage:error.message];
//    }];
}

-(void)downTime{
    
//    phoneCountdown = 60;
//    getVfCodeBtn.userInteractionEnabled = NO;
//    [getVfCodeBtn setTitle:[NSString stringWithFormat:@"%d", phoneCountdown] forState:UIControlStateNormal];
//
//    if (downTimer) {
//        [downTimer invalidate];
//        downTimer = nil;
//    }
//    downTimer = [NSTimer scheduledTimerWithTimeInterval:1.0
//                                                 target:self
//                                               selector:@selector(phoneFireTimer)
//                                               userInfo:nil
//                                                repeats:YES];
    
    
}

- (void)phoneFireTimer {
//    phoneCountdown--;
//    if (phoneCountdown < 0) {
//        [self resetVfCodeBtnStatue];
//    }else{
//        [getVfCodeBtn setTitle:[NSString stringWithFormat:@"%d", phoneCountdown] forState:UIControlStateNormal];
//    }
    
}

-(void) resetVfCodeBtnStatue
{
//    if (downTimer) {
//        [downTimer invalidate];
//        downTimer = nil;
//    }
//    getVfCodeBtn.userInteractionEnabled = YES;
//    [getVfCodeBtn setTitle: @"獲取驗證碼" forState:UIControlStateNormal];
}

- (void)dealloc
{
    
//    if (downTimer) {
//        [downTimer invalidate];
//        downTimer = nil;
//    }
}
@end
