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
//    SDKTextFiledView *passwordAgainSDKTextFiledView;
    SDKTextFiledView *vfCodeFiledView;
    UIButton *regAccountBtn; //確定按鈕
//    LoginTitleView   *mLoginTitleView;
    int phoneCountdown;
    NSTimer *downTimer;
    UIButton *getVfCodeBtn;
    
    PhoneView *mPhoneView;
    UIButton *backBtn;
    UIButton *checkBoxBtn;
    BOOL isSaveAccountInfo;
    
}

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
        
        self.bindType = bindType;//綁定賬號
        
        self.layer.contents = (id)[UIImage gama_imageNamed:@"h_bg"].CGImage;
        
        //===============+标题
        UILabel *titleLabel = [[UILabel alloc] init];
        titleLabel.text = SDKConReaderGetLocalizedString(@"text_register_up");
        titleLabel.textColor = [UIColor whiteColor];
        titleLabel.font = [UIFont boldSystemFontOfSize:VH(38)];
        
        [self addSubview:titleLabel];
        [titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.mas_top).mas_offset(VH(100));
            make.leading.mas_equalTo(self).mas_offset(VW(40));
            make.trailing.mas_equalTo(self);
            make.height.mas_equalTo(VH(40));
        }];
        
        //===============返回按钮
        backBtn = [UIUtil initBtnWithNormalImage:@"sdk_btn_back.png" highlightedImage:nil tag:kBackBtnActTag selector:@selector(registerViewBtnAction:) target:self];
        backBtn.imageView.contentMode = UIViewContentModeScaleAspectFit;
        [self addSubview:backBtn];
        [backBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(self).mas_offset(VW(16));
            make.top.equalTo(self).mas_offset(VH(55));
            make.height.mas_equalTo(VH(22));
            make.width.mas_equalTo(backBtn.mas_height);
        }];
        
        //===============内容
        UIView * contentView = [[UIView alloc] init];
        contentView.layer.cornerRadius = VW(30);
        contentView.backgroundColor = [UIColor whiteColor];
        [self addSubview:contentView];
        [contentView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.bottom.right.mas_equalTo(self);
            make.top.mas_equalTo(self).mas_offset(VH(267));
        }];
        
        //logo
        UIImageView *logoImageView = [[UIImageView alloc] initWithImage:[UIImage gama_imageNamed:@"h_icon_en"]];
        logoImageView.contentMode = UIViewContentModeScaleAspectFit;
        [self addSubview:logoImageView];
        [logoImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.mas_top).mas_offset(VH(211));
            make.leading.mas_equalTo(self).mas_offset(VW(32.5));
            make.width.mas_equalTo(VH(90));
            make.height.mas_equalTo(VH(90));
        }];
        
       
        //账号
        accountSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType:(SDKTextFiledView_Type_Account)];
    
        [contentView addSubview:accountSDKTextFiledView];
        
        [accountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
    
            make.top.equalTo(contentView).mas_offset(VH(44));
            make.leading.mas_equalTo(contentView).mas_offset(VW(30));
            make.trailing.mas_equalTo(contentView).mas_offset(-VW(48));
            make.height.mas_equalTo(VH(40));
        }];
        
        UIView *line1 = [[UIView alloc] init];
        line1.backgroundColor = [UIColor colorWithHexString:@"#DDDDDD"];
        [contentView addSubview:line1];
        [line1 mas_makeConstraints:^(MASConstraintMaker *make) {
    
            make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(VH(8));
            make.leading.mas_equalTo(accountSDKTextFiledView).mas_offset(VW(24));
            make.trailing.mas_equalTo(accountSDKTextFiledView).mas_offset(-VW(24));
            make.height.mas_equalTo(1);
        }];
        
        //密碼
        passwordSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType:(SDKTextFiledView_Type_Password)];
        
        [contentView addSubview:passwordSDKTextFiledView];
        
        [passwordSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(VH(24));
            make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
            make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
            make.height.mas_equalTo(accountSDKTextFiledView.mas_height);
        }];
        
        UIView *line2 = [[UIView alloc] init];
        line2.backgroundColor = [UIColor colorWithHexString:@"#DDDDDD"];
        [contentView addSubview:line2];
        [line2 mas_makeConstraints:^(MASConstraintMaker *make) {
    
            make.top.equalTo(passwordSDKTextFiledView.mas_bottom).mas_offset(VH(8));
            make.leading.mas_equalTo(accountSDKTextFiledView).mas_offset(VW(24));
            make.trailing.mas_equalTo(accountSDKTextFiledView).mas_offset(-VW(24));
            make.height.mas_equalTo(1);
        }];
        
        
        //電話號碼
        mPhoneView = [[PhoneView alloc] initView];
           
       [contentView addSubview:mPhoneView];
       [mPhoneView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(passwordSDKTextFiledView.mas_bottom).mas_offset(VH(24));
             make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
             make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
             make.height.mas_equalTo(accountSDKTextFiledView.mas_height);
       }];
        
        UIView *line3 = [[UIView alloc] init];
        line3.backgroundColor = [UIColor colorWithHexString:@"#DDDDDD"];
        [contentView addSubview:line3];
        [line3 mas_makeConstraints:^(MASConstraintMaker *make) {
    
            make.top.equalTo(mPhoneView.mas_bottom).mas_offset(VH(8));
            make.leading.mas_equalTo(accountSDKTextFiledView).mas_offset(VW(24));
            make.trailing.mas_equalTo(accountSDKTextFiledView).mas_offset(-VW(24));
            make.height.mas_equalTo(1);
        }];
        
        
        //验证码
        vfCodeFiledView = [[SDKTextFiledView alloc] initViewWithType:(SDKTextFiledView_Type_VfCode)];

        [contentView addSubview:vfCodeFiledView];
        [vfCodeFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(mPhoneView.mas_bottom).mas_offset(VH(24));
            make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
            make.width.mas_equalTo(accountSDKTextFiledView.mas_width);
            make.height.mas_equalTo(accountSDKTextFiledView.mas_height);
        }];

        getVfCodeBtn = [UIUtil initBtnWithTitle2:SDKConReaderGetLocalizedString(@"text_send_out") tag:kGetVfCodeActTag selector:@selector(registerViewBtnAction:) target:self];

        getVfCodeBtn.layer.borderColor = [UIColor colorWithHexString:@"#E32CBC"].CGColor;
        getVfCodeBtn.layer.borderWidth = 1;
        getVfCodeBtn.layer.cornerRadius = VH(27/2);
        getVfCodeBtn.titleLabel.font = [UIFont systemFontOfSize:VH(12)];
        [getVfCodeBtn setTitleColor:[UIColor colorWithHexString:@"#E32CBC"] forState:0];
        [contentView addSubview:getVfCodeBtn];
        [getVfCodeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(vfCodeFiledView);
            make.trailing.mas_equalTo(vfCodeFiledView.mas_trailing).offset(-VW(4));
            make.width.mas_equalTo(VW(80));
            make.height.mas_equalTo(VH(27));

        }];
        [getVfCodeBtn setContentHuggingPriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisHorizontal];
        
        UIView *line4 = [[UIView alloc] init];
        line4.backgroundColor = [UIColor colorWithHexString:@"#DDDDDD"];
        [contentView addSubview:line4];
        [line4 mas_makeConstraints:^(MASConstraintMaker *make) {
    
            make.top.equalTo(vfCodeFiledView.mas_bottom).mas_offset(VH(8));
            make.leading.mas_equalTo(accountSDKTextFiledView).mas_offset(VW(24));
            make.trailing.mas_equalTo(accountSDKTextFiledView).mas_offset(-VW(24));
            make.height.mas_equalTo(1);
        }];
        
       
        UIImageView *tipImage = [[UIImageView alloc] initWithImage:[UIImage gama_imageNamed:@"vf_code_warming_icon"]];
        tipImage.contentMode = UIViewContentModeScaleAspectFit;
        [contentView addSubview:tipImage];
        [tipImage mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(vfCodeFiledView.mas_bottom).mas_offset(VH(16 + 8));
            make.leading.mas_equalTo(accountSDKTextFiledView).mas_offset(VW(10 + 4));
            make.width.mas_equalTo(VH(14));
            make.height.mas_equalTo(VH(14));
        }];
        
        UILabel *loginTipsLable = [[UILabel alloc] init];
        loginTipsLable.text = SDKConReaderGetLocalizedString(@"text_reg_tips");
        loginTipsLable.font = [UIFont systemFontOfSize:VH(14)];
        loginTipsLable.textAlignment = NSTextAlignmentLeft;
        loginTipsLable.backgroundColor = [UIColor clearColor];
        loginTipsLable.numberOfLines = 0;
        loginTipsLable.textColor = [UIColor colorWithHexString:@"#999999"];
        loginTipsLable.adjustsFontSizeToFitWidth = YES;
        
        [self addSubview:loginTipsLable];
        [loginTipsLable mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.top.mas_equalTo(vfCodeFiledView.mas_bottom).mas_offset(VH(12 + 8));
            make.height.mas_equalTo(VH(26));
            make.leading.mas_equalTo(tipImage.mas_trailing).mas_offset(VW(6));
            make.trailing.mas_equalTo(accountSDKTextFiledView).mas_offset(-VW(24));
            
        }];
        
        
        checkBoxBtn = [UIUtil initBtnWithNormalImage:@"btn_checkbox_checked.png" highlightedImage:nil tag:kCheckBoxBtnTag selector:@selector(registerViewBtnAction:) target:self];
        
        [contentView addSubview:checkBoxBtn];
        [checkBoxBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(loginTipsLable.mas_bottom).mas_offset(VH(24));
            make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading).mas_offset(VW(20));
            make.width.mas_equalTo(20);
            make.height.mas_equalTo(20);
        }];
        isSaveAccountInfo = YES;
        
        //服务条款
        NSString *xtext = SDKConReaderGetLocalizedString(@"text_privacy_policy");
        NSString *aatext = SDKConReaderGetLocalizedString(@"text_privacy_policy_Terms_Conditions");
        UILabel *policyLable = [[UILabel alloc] init];
        //policyLable.text =  SDKConReaderGetLocalizedString(@"text_privacy_policy");
        policyLable.font = [UIFont systemFontOfSize:VH(12)];
        policyLable.textAlignment = NSTextAlignmentLeft;
        policyLable.backgroundColor = [UIColor clearColor];
        policyLable.numberOfLines = 0;
        policyLable.textColor = [UIColor colorWithHexString:@"#969696"];
        policyLable.adjustsFontSizeToFitWidth = YES;
        
        // 特殊属性
         NSDictionary *attribtDic = @{NSForegroundColorAttributeName: [UIColor colorWithHexString:@"#E32CBC"]
         };
         NSMutableAttributedString *attribtStr = [[NSMutableAttributedString alloc]initWithString:xtext];
        [attribtStr addAttributes:attribtDic range: [xtext rangeOfString:aatext]];
         //赋值
        policyLable.attributedText = attribtStr;
        
        [contentView addSubview:policyLable];
        [policyLable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.mas_equalTo(passwordSDKTextFiledView.mas_trailing);
            make.leading.mas_equalTo(checkBoxBtn.mas_trailing).mas_offset(10);
            make.height.mas_equalTo(VH(26));
            make.top.equalTo(checkBoxBtn);
        }];
        
        //注册
        regAccountBtn = [LoginButton initBtnWithType:(BUTTON_TYPE_ACCOUNT_REGISTER) tag:kRegisterAccountActTag selector:@selector(registerViewBtnAction:)  target:self];
        [self addSubview:regAccountBtn];
        
        [regAccountBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self);
            make.top.equalTo(policyLable.mas_bottom).mas_offset(VH(30));
            make.width.mas_equalTo(VW(305));
            make.height.mas_equalTo(VH(50));
        }];
        
       
        
        if ( self.bindType == 0) {
//            mLoginTitleView.hidden = YES;
        }else{
//            mLoginTitleView.titleLable.text = SDKConReaderGetLocalizedString(@"BTN_TITLE_BIND_ACCOUNT");
            //    [registorAccountBtn setImage:GetImage(@"btn_bind_account.png") forState:UIControlStateNormal];
            //    [registorAccountBtn setImage:GetImage(@"btn_bind_account.png") forState:UIControlStateHighlighted];
            
            [regAccountBtn setTitle:SDKConReaderGetLocalizedString(@"GAMA_REGISTER_BIND_CONFIRM_TEXT") forState:(UIControlStateNormal)];
        }
    }
    return self;
}


- (void)drawRect:(CGRect)rect{
    [super drawRect:rect];
    accountSDKTextFiledView.inputUITextField.delegate = self.mUITextFieldDelegate;
    passwordSDKTextFiledView.inputUITextField.delegate = self.mUITextFieldDelegate;
    mPhoneView.mUITextField.delegate = self.mUITextFieldDelegate;
    vfCodeFiledView.inputUITextField.delegate = self.mUITextFieldDelegate;
    
}



- (void)registerViewBtnAction:(UIButton *)sender
{
    switch (sender.tag) {
            
        
        case kCheckBoxBtnTag:
            SDK_LOG(@"kCheckBoxBtnTag");
            isSaveAccountInfo = !isSaveAccountInfo;
//            [ConfigCoreUtil share].isSaveAccountInfo = isSaveAccountInfo;
            if (isSaveAccountInfo) {
                [checkBoxBtn setImage:GetImage(@"btn_checkbox_checked.png") forState:UIControlStateNormal];
            }else{
                [checkBoxBtn setImage:GetImage(@"btn_checkbox_uncheck.png") forState:UIControlStateNormal];
            }
            break;
            
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
            
//            if (![password isEqualToString:newPassword]) {
//                [GamaUtils gamaToastWithMsg:@"兩次輸入的密碼不一致"];
//                return;
//            }
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
        case kBackBtnActTag:
        {
            SDK_LOG(@"kBackBtnActTag");
            if (self.delegate) {
                [self.delegate goBackBtn:backBtn backCount:1];
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
        
        if (self.delegate) {
            [self.delegate goPageView:CURRENT_PAGE_TYPE_LOGIN_ACCOUNT];
        }
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
    if (@available(iOS 13, *)) {
                  
    }else{
       [GamaAlertView showAlertWithMessage:SDKConReaderGetLocalizedString(@"GAMA_APPLE_SYSTEM_OLD_WARNING")];
        return;
    }
    
    GamaAppleLogin *gamaAppleLogin = [GamaAppleLogin makeAppleCallbackSuccessBlock:^(NSDictionary * _Nullable result) {
        NSMutableDictionary *tempMutableDic = [NSMutableDictionary dictionaryWithDictionary:result];
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
            
            if (self.delegate) {
                [self.delegate goPageView:CURRENT_PAGE_TYPE_LOGIN_ACCOUNT];
            }
            
        }
                                      errorBlock:^(BJError *error) {
            if (error && error.message) {
                [GamaAlertView showAlertWithMessage:error.message];
            }
        }];
        
    } andErrorBlock:^(NSError * _Nullable error) {
        //           [GamaUtils gamaStopLoadingAtView:self.view];
        //        [GamaAlertView showAlertWithMessage:SDKConReaderGetLocalizedString(error?GAMA_TEXT_NO_NET:GAMA_TEXT_SERVER_RETURN_NULL)];
    }];
    [gamaAppleLogin handleAuthrization:nil];
    
    
//    GamaAppleLogin *gamaAppleLogin = [[GamaAppleLogin alloc] init];
//    NSDictionary *tempDic = [gamaAppleLogin fetchAppleLoginInfo];
//    NSMutableDictionary *tempMutableDic = [NSMutableDictionary dictionaryWithDictionary:tempDic];
//    NSString *appleID = [tempMutableDic[@"appleThirdID"] copy];
//    [tempMutableDic removeObjectForKey:@"appleThirdID"];
    
    
    
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
                
                if (self.delegate) {
                    [self.delegate goPageView:CURRENT_PAGE_TYPE_LOGIN_ACCOUNT];
                }
                
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
