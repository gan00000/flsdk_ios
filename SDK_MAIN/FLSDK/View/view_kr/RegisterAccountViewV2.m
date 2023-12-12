//
//  RegisterAccountView.m
//  R2DSDK
//
//  Created by ganyuanrong on 2020/7/12.
//  Copyright © 2020 ganyuanrong. All rights reserved.
//

#import "RegisterAccountViewV2.h"
#import "SdkHeader.h"
#import "LoginTitleView.h"
#import "SDKTextFiledView.h"
#import "PhoneView.h"
#import "LoginButton.h"
#import "SDKRequest.h"
#import "SdkUtil.h"
#import "SAppleLogin.h"
#import "LoginHelper.h"
#import "ViewUtil.h"

@implementation RegisterAccountViewV2
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


//- (instancetype)initViewWithBindType_MMMethodMMM:(NSInteger) bindType
- (instancetype)initView_MMMethodMMM
{
    self = [self initViewWithBindType_MMMethodMMM:0];
    if (!self) {
        return nil;
    }
    return self;
}
//- (instancetype)initView_MMMethodMMM
- (instancetype)initViewWithBindType_MMMethodMMM:(NSInteger) bindType
{
    self = [super init];
    if (self) {
        
//        UIColor *color = [UIColor colorWithHexString_MMMethodMMM:ContentViewBgColor];
//        self.backgroundColor = color;// 底图透明，控件不透明
//        self.layer.cornerRadius = 10; //设置圆角
        //        self.layer.backgroundColor = [UIColor blackColor].CGColor;
        //        self.layer.borderWidth = 2;
//        self.layer.masksToBounds = YES; //不设置这里会不生成圆角，原因查找中
        
        self.bindType = bindType;//綁定賬號
        //title
//        mLoginTitleView = [[LoginTitleView alloc] initViewWithTitle_MMMethodMMM:wwwww_tag_wwwww_nattion_pecc];
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
        accountSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Account)];
        accountSDKTextFiledView.moreAccountBtn.hidden = YES;
        [self addSubview:accountSDKTextFiledView];
        
        [accountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
           // make.centerX.mas_equalTo(self);
            make.top.equalTo(self);
            make.leading.mas_equalTo(self).mas_offset(VW(34));
            make.trailing.mas_equalTo(self).mas_offset(-VW(34));
            make.height.mas_equalTo(VH(40));
        }];
        
        
        //密码
        passwordSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Password)];
        [self addSubview:passwordSDKTextFiledView];
        
        [passwordSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(VH(22));
            make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
            make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
            make.height.mas_equalTo(accountSDKTextFiledView.mas_height);
        }];
        
        UILabel *tipsUILabel = [[UILabel alloc] init];
        tipsUILabel.font = [UIFont systemFontOfSize:FS(10)];
        tipsUILabel.text = wwwww_tag_wwwww_text_reg_tips.localx;
        tipsUILabel.textAlignment = NSTextAlignmentLeft;
//        tipsUILabel.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0];
        tipsUILabel.numberOfLines = 0; //0为多行
        tipsUILabel.textColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0];
    
        [self addSubview:tipsUILabel];
        [tipsUILabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.trailing.equalTo(accountSDKTextFiledView);
            make.top.mas_equalTo(passwordSDKTextFiledView.mas_bottom).offset(8);
    
        }];
        
//        //账号
//        accountSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Account)];
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
//        passwordSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Password)];
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
//        passwordAgainSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Password_Again)];
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
//        mPhoneView = [[PhoneView alloc] initView_MMMethodMMM];
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
//        vfCodeFiledView = [[SDKTextFiledView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_VfCode)];
//
//        [self addSubview:vfCodeFiledView];
//        [vfCodeFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.top.equalTo(mPhoneView.mas_bottom).mas_offset(VH(10));
//            make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
//            make.width.mas_equalTo(accountSDKTextFiledView.mas_width).multipliedBy(0.65);
//            make.height.mas_equalTo(accountSDKTextFiledView.mas_height);
//        }];
//
//        getVfCodeBtn = [UIUtil initBtnWithTitle2:wwwww_tag_wwwww_cipitite_stateain tag_MMMethodMMM:kGetVfCodeActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
//
//        getVfCodeBtn.layer.borderColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_ff3e37].CGColor;
//        getVfCodeBtn.layer.borderWidth = 1;
//        getVfCodeBtn.layer.cornerRadius = 10;
//        getVfCodeBtn.titleLabel.font = [UIFont systemFontOfSize:12];
//        [getVfCodeBtn setTitleColor:[UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_ff3e37] forState:0];
//        [self addSubview:getVfCodeBtn];
//        [getVfCodeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.top.bottom.equalTo(vfCodeFiledView);
//            make.leading.mas_equalTo(vfCodeFiledView.mas_trailing).offset(6);
//            make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing).offset(-4);
//
//        }];
//        [getVfCodeBtn setContentHuggingPriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisHorizontal];
        
        regAccountBtn = [UIUtil initBtnWithTitleText_MMMethodMMM:wwwww_tag_wwwww_text_confire_reg.localx fontSize_MMMethodMMM:FS(17) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kRegisterAccountActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        [regAccountBtn.layer setCornerRadius:VH(25)];
        regAccountBtn.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor];
        [self addSubview:regAccountBtn];
        
        [regAccountBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.trailing.equalTo(accountSDKTextFiledView);
            make.top.equalTo(tipsUILabel.mas_bottom).mas_offset(VH(40));
            make.height.mas_equalTo(VH(50));
        }];
        
        CAGradientLayer *gl = [ViewUtil createGradientLayerWithRadius_MMMethodMMM:VH(25)];
        [regAccountBtn.layer addSublayer:gl];
        [self addDrawRectBolck:^(NSString *msg, NSInteger m, NSDictionary *dic) {
            gl.frame = regAccountBtn.bounds;
        }];

        
        
//        UILabel *loginTipsLable = [[UILabel alloc] init];
//        loginTipsLable.text = wwwww_tag_wwwww_quintial_determineie;
//        loginTipsLable.font = [UIFont systemFontOfSize:10];
//        loginTipsLable.textAlignment = NSTextAlignmentCenter;
//        loginTipsLable.backgroundColor = [UIColor clearColor];
//        loginTipsLable.numberOfLines = 1;
//        loginTipsLable.textColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_FF3E37];
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
//            mLoginTitleView.titleLable.text = GetString(wwwww_tag_wwwww_BTN_TITLE_BIND_ACCOUNT);
//            //    [registorAccountBtn setImage:GetImage(wwwww_tag_wwwww_btn_bind_account_png) forState:UIControlStateNormal];
//            //    [registorAccountBtn setImage:GetImage(wwwww_tag_wwwww_btn_bind_account_png) forState:UIControlStateHighlighted];
//
//            [regAccountBtn setTitle:GetString(wwwww_tag_wwwww_GAMA_REGISTER_BIND_CONFIRM_TEXT) forState:(UIControlStateNormal)];
//        }
    }
    return self;
}


- (void)registerViewBtnAction_MMMethodMMM:(UIButton *)sender
{
    switch (sender.tag) {
            
            
        case kRegisterAccountActTag:
        {
            SDK_LOG(wwwww_tag_wwwww_kRegisterAccountActTag);
            NSString *accountName = [accountSDKTextFiledView.inputUITextField.text trim_MMMethodMMM];
            NSString *pwd = [passwordSDKTextFiledView.inputUITextField.text trim_MMMethodMMM];
//            NSString *areaCode = [mPhoneView getPhoneAreaCode_MMMethodMMM];
//            NSString *phoneNum = [mPhoneView getPhoneNumber_MMMethodMMM];
//            NSString *vfCode = vfCodeFiledView.inputUITextField.text;
            
//            NSString *newPassword = passwordAgainSDKTextFiledView.inputUITextField.text;
            
            if (![SdkUtil validUserName_MMMethodMMM:accountName]) {
                
                return;
            }
            
            if (![SdkUtil validPwd_MMMethodMMM:pwd]) {
                return;
            }
          
            [LoginHelper accountRegister_MMMethodMMM:self.delegate view_MMMethodMMM:self areaCode_MMMethodMMM:@"" name:accountName password_MMMethodMMM:pwd phoneNum_MMMethodMMM:@"" vfCode_MMMethodMMM:@""];
            
        }
            break;
            
        default:
            break;
    }
}

@end
