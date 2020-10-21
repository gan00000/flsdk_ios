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
#import "GamaUtils.h"
#import "GamaFacebookPort.h"
#import "GamaAppleLogin.h"

@implementation RegisterAccountView
{
    SDKTextFiledView *accountSDKTextFiledView;
    SDKTextFiledView *passwordSDKTextFiledView;
    SDKTextFiledView *passwordAgainSDKTextFiledView;
    SDKTextFiledView *vfCodeFiledView;
    UIButton *regAccountBtn; //確定按鈕
    LoginTitleView   *mLoginTitleView;
    int phoneCountdown;
    NSTimer *downTimer;
    UIButton *getVfCodeBtn;
    
    PhoneView *mPhoneView;
    
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
        
        UIColor *color = [UIColor colorWithHexString:ContentViewBgColor];
        self.backgroundColor = color;// 底图透明，控件不透明
        self.layer.cornerRadius = 10; //设置圆角
        //        self.layer.backgroundColor = [UIColor blackColor].CGColor;
        //        self.layer.borderWidth = 2;
        self.layer.masksToBounds = YES; //不设置这里会不生成圆角，原因查找中
        
        self.bindType = bindType;//綁定賬號
        //title
        mLoginTitleView = [[LoginTitleView alloc] initViewWithTitle:@"註冊會員"];
        mLoginTitleView.delegate = self.delegate;
        
        
        [self addSubview:mLoginTitleView];
        [mLoginTitleView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.mas_top).mas_offset(VH(32));
            make.centerX.mas_equalTo(self);
            make.width.mas_equalTo(self);
            make.height.mas_equalTo(VH(40));
        }];
       
        //账号
        accountSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType:(SDKTextFiledView_Type_Account)];
        
        [self addSubview:accountSDKTextFiledView];
        
        [accountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.mas_equalTo(self);
            //make.top.equalTo(mLoginTitleView.mas_bottom).mas_offset(kInputTextFiledTopMargin * 1.2);
            make.width.mas_equalTo(self).mas_offset(-VW(55));
            make.height.mas_equalTo(VH(56));
            if (self.bindType == 0) {
                make.top.equalTo(self);
            }else{
                make.top.equalTo(mLoginTitleView.mas_bottom).mas_offset(VH(24));
            }
        }];
        
        
        //密碼
        passwordSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType:(SDKTextFiledView_Type_Password)];
        
        [self addSubview:passwordSDKTextFiledView];
        
        [passwordSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(VH(10));
            make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
            make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
            make.height.mas_equalTo(accountSDKTextFiledView.mas_height);
        }];
        
        
        //再次輸入密碼
        passwordAgainSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType:(SDKTextFiledView_Type_Password_Again)];
        
        [self addSubview:passwordAgainSDKTextFiledView];
        
        [passwordAgainSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.equalTo(passwordSDKTextFiledView.mas_bottom).mas_offset(VH(10));
            make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
            make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
            make.height.mas_equalTo(accountSDKTextFiledView.mas_height);
        }];
        
        
        mPhoneView = [[PhoneView alloc] initView];
        
        [self addSubview:mPhoneView];
        [mPhoneView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(passwordAgainSDKTextFiledView.mas_bottom).mas_offset(VH(10));
            make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
            make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
            make.height.mas_equalTo(accountSDKTextFiledView.mas_height);
        }];
        
        //验证码
        vfCodeFiledView = [[SDKTextFiledView alloc] initViewWithType:(SDKTextFiledView_Type_VfCode)];
        
        [self addSubview:vfCodeFiledView];
        [vfCodeFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(mPhoneView.mas_bottom).mas_offset(VH(10));
            make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
            make.width.mas_equalTo(accountSDKTextFiledView.mas_width).multipliedBy(0.65);
            make.height.mas_equalTo(accountSDKTextFiledView.mas_height);
        }];
        
        getVfCodeBtn = [UIUtil initBtnWithTitle2:@"獲取驗證碼" tag:kGetVfCodeActTag selector:@selector(registerViewBtnAction:) target:self];
        
        getVfCodeBtn.layer.borderColor = [UIColor colorWithHexString:@"#ff3e37"].CGColor;
        getVfCodeBtn.layer.borderWidth = 1;
        getVfCodeBtn.layer.cornerRadius = 10;
        getVfCodeBtn.titleLabel.font = [UIFont systemFontOfSize:12];
        [getVfCodeBtn setTitleColor:[UIColor colorWithHexString:@"#ff3e37"] forState:0];
        [self addSubview:getVfCodeBtn];
        [getVfCodeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.bottom.equalTo(vfCodeFiledView);
            make.leading.mas_equalTo(vfCodeFiledView.mas_trailing).offset(6);
            make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing).offset(-4);
            
        }];
        [getVfCodeBtn setContentHuggingPriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisHorizontal];
        
        //注册
        regAccountBtn = [LoginButton initBtnWithType:(BUTTON_TYPE_ACCOUNT_REGISTER) tag:kRegisterAccountActTag selector:@selector(registerViewBtnAction:)  target:self];
        [self addSubview:regAccountBtn];
        
        [regAccountBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self);
            if (Device_Is_Landscape) {
                 make.top.equalTo(vfCodeFiledView.mas_bottom).mas_offset(VH(16));
            }else{
                 make.top.equalTo(vfCodeFiledView.mas_bottom).mas_offset(VH(20));
            }
           
            make.width.mas_equalTo(accountSDKTextFiledView.mas_width);
            make.height.mas_equalTo(VH(64));
        }];
        
        UILabel *loginTipsLable = [[UILabel alloc] init];
        loginTipsLable.text = @"同一手機當日不得收取驗證碼超過五次";
        loginTipsLable.font = [UIFont systemFontOfSize:10];
        loginTipsLable.textAlignment = NSTextAlignmentCenter;
        loginTipsLable.backgroundColor = [UIColor clearColor];
        loginTipsLable.numberOfLines = 1;
        loginTipsLable.textColor = [UIColor colorWithHexString:@"#FF3E37"];
        loginTipsLable.adjustsFontSizeToFitWidth = YES;
        
        [self addSubview:loginTipsLable];
        [loginTipsLable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.mas_equalTo(self);
            make.top.mas_equalTo(regAccountBtn.mas_bottom).mas_offset(VH(10));
            make.height.mas_equalTo(VH(20));
            make.width.mas_equalTo(self).mas_offset(-VW(10));
            
        }];
        
        if ( self.bindType == 0) {
            mLoginTitleView.hidden = YES;
        }else{
            mLoginTitleView.titleLable.text = SDKConReaderGetLocalizedString(@"BTN_TITLE_BIND_ACCOUNT");
            //    [registorAccountBtn setImage:GetImage(@"btn_bind_account.png") forState:UIControlStateNormal];
            //    [registorAccountBtn setImage:GetImage(@"btn_bind_account.png") forState:UIControlStateHighlighted];
            
            [regAccountBtn setTitle:SDKConReaderGetLocalizedString(@"GAMA_REGISTER_BIND_CONFIRM_TEXT") forState:(UIControlStateNormal)];
        }
    }
    return self;
}


- (void)drawRect:(CGRect)rect{
    [super drawRect:rect];
    mLoginTitleView.delegate = self.delegate;
    accountSDKTextFiledView.inputUITextField.delegate = self.mUITextFieldDelegate;
    passwordSDKTextFiledView.inputUITextField.delegate = self.mUITextFieldDelegate;
    passwordAgainSDKTextFiledView.inputUITextField.delegate = self.mUITextFieldDelegate;
    mPhoneView.mUITextField.delegate = self.mUITextFieldDelegate;
    vfCodeFiledView.inputUITextField.delegate = self.mUITextFieldDelegate;
    
}



- (void)registerViewBtnAction:(UIButton *)sender
{
    switch (sender.tag) {
            
        case kGetVfCodeActTag:
            
        {
            SDK_LOG(@"kGetVfCodeActTag");
            NSString *areaCode = [mPhoneView getPhoneAreaCode];
            NSString *phoneNum = [mPhoneView getPhoneNumber];
            if (!phoneNum || [@"" isEqualToString:phoneNum]) {
                [GamaUtils gamaToastWithMsg:@"請輸入電話號碼"];
                return;
            }
            [self requestPhoneVerficationWithPhoneArea:areaCode phoneNumber:phoneNum];
        }
            break;
            
        case kRegisterAccountActTag:
        {
            SDK_LOG(@"kRegisterAccountActTag");
            NSString *name = accountSDKTextFiledView.inputUITextField.text;
            NSString *password = passwordSDKTextFiledView.inputUITextField.text;
            NSString *areaCode = [mPhoneView getPhoneAreaCode];
            NSString *phoneNum = [mPhoneView getPhoneNumber];
            NSString *vfCode = vfCodeFiledView.inputUITextField.text;
            
            NSString *newPassword = passwordAgainSDKTextFiledView.inputUITextField.text;
            
            if (!name || [name isEqualToString:@""]) {
                [GamaUtils gamaToastWithMsg:SDKConReaderGetLocalizedString(@"TXT_PH_ACCOUNT_INPUT_ACCOUNT")];
                return;
            }
            
            
            if (!password || [password isEqualToString:@""]) {
                [GamaUtils gamaToastWithMsg:SDKConReaderGetLocalizedString(@"TXT_PH_ACCOUNT_INPUT_PWD")];
                return;
            }
            
            if (![GamaUtils validUserName:name]) {
                [GamaUtils gamaToastWithMsg:SDKConReaderGetLocalizedString(@"ALERT_MSG_ACCOUNT_RULE")];
                return;
            }
            if (![GamaUtils validPwd:password]) {
                [GamaUtils gamaToastWithMsg:SDKConReaderGetLocalizedString(@"TXT_ACCOUNT_AND_PWD_PROMT_RULE")];
                return;
            }
            
            if (![password isEqualToString:newPassword]) {
                [GamaUtils gamaToastWithMsg:@"兩次輸入的密碼不一致"];
                return;
            }
            if ([password isEqualToString:name]) {
                [GamaUtils gamaToastWithMsg:SDKConReaderGetLocalizedString(@"ALERT_MSG_ACCOUNT_AND_PWD_RULE")];
                return;
            }
            
            if ([@"" isEqualToString:vfCode]) {
                
                [GamaUtils gamaToastWithMsg:SDKConReaderGetLocalizedString(@"TXT_VERTIFY_CODE_IS_NULL")];
                return;
            }
            
            if (self.bindType == 0) {
                [self requestRegister:areaCode name:name password:password phoneNum:phoneNum vfCode:vfCode];
            }else if (self.bindType == kBindFBActTag){
                
                [self requestBindFb:areaCode name:name password:password phoneNum:phoneNum vfCode:vfCode];
                
            }else if (self.bindType == kBindAppleActTag){
                
                [self requestBindApple:areaCode name:name password:password phoneNum:phoneNum vfCode:vfCode];
                
            }else if (self.bindType == kBindGuestActTag){
                [self requestBindMac:areaCode name:name password:password phoneNum:phoneNum vfCode:vfCode];
            }
            
            
        }
            break;
            
        default:
            break;
    }
}

-(void)requestBindMac:(NSString *)areaCode name:(NSString *)name password:(NSString *)password phoneNum:(NSString *)phoneNum vfCode:(NSString *)vfCode
{
    NSString *loginId = ([[GamaFunction getSystemVersion] intValue]) >= 7 ? [GamaFunction getGamaUUID] : [GamaFunction getMacaddress];
    [SDKRequest doAccountBindingWithUserName:name
                                    password:password
                               phoneAreaCode:areaCode
                                 phoneNumber:phoneNum
                                      vfCode:vfCode
                                       email:@""
                                     thirdId:loginId
                                  thirdPlate:_SDK_PLAT_MAC
                              otherParamsDic:nil
                                successBlock:^(id responseData) {
        CCSDKResponse *cc = (CCSDKResponse *)responseData;
         [[ConfigCoreUtil share] saveAccount:name password:password updateTime:YES];
        [GamaAlertView showAlertWithMessage:cc.message];
        
        
    }
                                  errorBlock:^(BJError *error) {
        if (error && error.message) {
            [GamaAlertView showAlertWithMessage:error.message];
        }
    }];
}
-(void)requestBindApple:(NSString *)areaCode name:(NSString *)name password:(NSString *)password phoneNum:(NSString *)phoneNum vfCode:(NSString *)vfCode
{
    
    kWeakSelf
    GamaAppleLogin *gamaAppleLogin = [[GamaAppleLogin alloc] init];
    NSDictionary *tempDic = [gamaAppleLogin fetchAppleLoginInfo];
    NSMutableDictionary *tempMutableDic = [NSMutableDictionary dictionaryWithDictionary:tempDic];
    NSString *appleID = [tempMutableDic[@"appleThirdID"] copy];
    [tempMutableDic removeObjectForKey:@"appleThirdID"];
    
    [SDKRequest doAccountBindingWithUserName:name
                                    password:password
                               phoneAreaCode:areaCode
                                 phoneNumber:phoneNum
                                      vfCode:vfCode
                                       email:@""
                                     thirdId:appleID
                                  thirdPlate:_SDK_PLAT_APPLE
                              otherParamsDic:tempMutableDic
                                successBlock:^(id responseData) {
        CCSDKResponse *cc = (CCSDKResponse *)responseData;
         [[ConfigCoreUtil share] saveAccount:name password:password updateTime:YES];
        [GamaAlertView showAlertWithMessage:cc.message];
        
    }
                                  errorBlock:^(BJError *error) {
        if (error && error.message) {
            [GamaAlertView showAlertWithMessage:error.message];
        }
    }];
    
}
-(void)requestBindFb:(NSString *)areaCode name:(NSString *)name password:(NSString *)password phoneNum:(NSString *)phoneNum vfCode:(NSString *)vfCode
{
    [GamaUtils gamaStarLoadingAtView:self];
    [GamaFacebookPort loginWithFacebook:^(NSError *loginError, NSString *facebookID, NSString *facebookTokenStr) {
        [GamaUtils gamaStopLoadingAtView:self];
        if (!loginError)
        {
            NSString *appsStr = [NSString stringWithFormat:@"%@_%@",facebookID, [SDKConReader getFacebookAppId]];
            NSDictionary *additionDic = @{
                @"apps":appsStr,
                @"tokenBusiness":@"",
                @"fb_oauthToken":facebookTokenStr,
            };
            
            [SDKRequest doAccountBindingWithUserName:name
                                            password:password
                                       phoneAreaCode:areaCode
                                         phoneNumber:phoneNum
                                              vfCode:vfCode
                                               email:@""
                                             thirdId:facebookID
                                          thirdPlate:_SDK_PLAT_FB
                                      otherParamsDic:additionDic
                                        successBlock:^(id responseData) {
                
                CCSDKResponse *cc = (CCSDKResponse *)responseData;
                [[ConfigCoreUtil share] saveAccount:name password:password updateTime:YES];
                [GamaAlertView showAlertWithMessage:cc.message];
                
            }
                                          errorBlock:^(BJError *error) {
                if (error && error.message) {
                    [GamaAlertView showAlertWithMessage:error.message];
                }
            }];
            
            
        }else{
            //[GamaAlertView showAlertWithMessage:@"error.message"];
        }
        
    }];
    
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
            CCSDKResponse *cc = (CCSDKResponse *)responseData;
            cc.account = name;
            cc.password = password;
            
            [self.delegate handleLoginOrRegSuccess:responseData thirdPlate:_SDK_PLAT_SELF];
        }
    }
                                   errorBlock:^(BJError *error) {
        [GamaAlertView showAlertWithMessage:error.message];
    }];
}

- (void)requestPhoneVerficationWithPhoneArea:(NSString *)phoneArea phoneNumber:(NSString *)phoneN
{
    NSString *interfaces = @"1"; //註冊1 綁定2  找回密碼4
    if (self.bindType == 0) {
        interfaces = @"1";;
    }else{
        interfaces = @"2";
    }
    [SDKRequest requestPhoneVerficationWithPhoneArea:phoneArea phoneNumber:phoneN  interfaces:interfaces otherDic:nil successBlock:^(id responseData) {
        [self downTime];
    } errorBlock:^(BJError *error) {
        [self resetVfCodeBtnStatue];
        [GamaAlertView showAlertWithMessage:error.message];
    }];
}

-(void)downTime{
    
    phoneCountdown = 60;
    getVfCodeBtn.userInteractionEnabled = NO;
    [getVfCodeBtn setTitle:[NSString stringWithFormat:@"%d", phoneCountdown] forState:UIControlStateNormal];
    //getVfCodeBtn.backgroundColor  = RGB(211, 211, 211);
    //getVfCodeBtn.layer.masksToBounds = YES;
    //getVfCodeBtn.titleLabel.adjustsFontSizeToFitWidth = YES;
    if (downTimer) {
        [downTimer invalidate];
        downTimer = nil;
    }
    downTimer = [NSTimer scheduledTimerWithTimeInterval:1.0
                                                 target:self
                                               selector:@selector(phoneFireTimer)
                                               userInfo:nil
                                                repeats:YES];
    
    
}

- (void)phoneFireTimer {
    phoneCountdown--;
    if (phoneCountdown < 0) {
        [self resetVfCodeBtnStatue];
    }else{
        [getVfCodeBtn setTitle:[NSString stringWithFormat:@"%d", phoneCountdown] forState:UIControlStateNormal];
    }
    
}

-(void) resetVfCodeBtnStatue
{
    if (downTimer) {
        [downTimer invalidate];
        downTimer = nil;
    }
    getVfCodeBtn.userInteractionEnabled = YES;
    [getVfCodeBtn setTitle: @"獲取驗證碼" forState:UIControlStateNormal];
}

- (void)dealloc
{
    
    if (downTimer) {
        [downTimer invalidate];
        downTimer = nil;
    }
}
@end
