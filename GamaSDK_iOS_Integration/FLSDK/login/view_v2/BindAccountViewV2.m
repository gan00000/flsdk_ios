//
//  FindPasswordView.m
//  R2DSDK
//
//  Created by ganyuanrong on 2020/7/14.
//  Copyright © 2020 ganyuanrong. All rights reserved.
//

#import "BindAccountViewV2.h"
#import "SdkHeader.h"
#import "SDKTextFiledView.h"
#import "LoginTitleView.h"
#import "PhoneView.h"
#import "LoginButton.h"
#import "LoginHelper.h"
#import "SdkUtil.h"
#import "AccountLoginView.h"
#import "SDKRequest.h"

@implementation BindAccountViewV2

{
    SDKTextFiledView *thirdAccountSDKTextFiledView;
    SDKTextFiledView *accountSDKTextFiledView;
    SDKTextFiledView *pwdSDKTextFiledView;
    
    SDKTextFiledView *hasBind_accountSDKTextFiledView;
    
//    SDKTextFiledView *vfCodeFiledView;
    //    PhoneView *mPhoneView;
    
    LoginTitleView   *mLoginTitleView;
//    UIButton *getVfCodeBtn;
    
    
//    int phoneCountdown;
//    NSTimer *downTimer;
}

- (instancetype)initView
{
    self = [super init];
    if (self) {
        
        self.backgroundColor = [UIColor colorWithHexString:@"#000000" andAlpha:0.15];
        
        UIView *contentView = [[UIView alloc] init];
        
        UIColor *color = [UIColor whiteColor];
        contentView.backgroundColor = color;//UIColor.lightGrayColor;// 底图透明，控件不透明
        contentView.layer.cornerRadius = 10; //设置圆角
        contentView.layer.masksToBounds = YES;
        
        [self addSubview:contentView];
        [contentView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.center.mas_equalTo(self);
            make.width.mas_equalTo(VW(330));
            make.height.mas_equalTo(VH(265));
        }];
        
        
        UIView *titleView = [[UIView alloc] init];
        [contentView addSubview:titleView];
        [titleView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(contentView.mas_top).mas_offset(VH(15));
            make.leading.mas_equalTo(contentView).mas_offset(VW(15));
            make.trailing.mas_equalTo(contentView).mas_offset(VW(-15));
            //        make.width.mas_equalTo(self);
            //        make.height.mas_equalTo(VH(40));
        }];
        
        UIView *tagView = [[UIView alloc] init];
        tagView.backgroundColor = [UIColor colorWithHexString:BaseColor];
        [titleView addSubview:tagView];
        [tagView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.mas_equalTo(titleView);
            make.leading.mas_equalTo(titleView);
            make.width.mas_equalTo(VW(4));
            make.height.mas_equalTo(VH(14));
            //        make.top.mas_equalTo(titleView);
            make.bottom.mas_equalTo(titleView);
        }];
        
        
        UILabel *titleLabel = [UIUtil initLabelWithText:@"text_update_account".localx fontSize:FS(15) textColor:[UIColor colorWithHexString:@"#2A2A2A"]];
        titleLabel.font = [UIFont boldSystemFontOfSize:FS(15)];
        
        [titleView addSubview:titleLabel];
        [titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            //        make.center.mas_equalTo(titleView);
            make.leading.mas_equalTo(titleView).mas_offset(6);
            make.trailing.mas_equalTo(titleView);
            make.top.mas_equalTo(titleView);
            make.bottom.mas_equalTo(titleView);
        }];
        
        UIButton *closeBtn = [UIUtil initBtnWithNormalImage:icon_close_3 highlightedImage:icon_close_3 tag:TAG_CLOSE selector:@selector(registerViewBtnAction:) target:self];
        
        [titleView addSubview:closeBtn];
        [closeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            //        make.center.mas_equalTo(titleView);
            make.trailing.mas_equalTo(titleView);
            make.centerY.mas_equalTo(titleView);
            make.width.mas_equalTo(VH(22));
            make.height.mas_equalTo(VH(22));
        }];
    
        
        AccountModel *currentAccount = SDK_DATA.mLoginResponse.data;
        if (currentAccount.isBind) {
            
            thirdAccountSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType:(SDKTextFiledView_Type_Account)];
            thirdAccountSDKTextFiledView.moreAccountBtn.hidden = YES;
            thirdAccountSDKTextFiledView.layer.borderColor = ColorHex(@"#606060").CGColor;
            thirdAccountSDKTextFiledView.lableIconImageView.image = [UIImage res_imageNamed:mw_smail_icon2];
            thirdAccountSDKTextFiledView.inputUITextField.textColor = UIColor.blackColor;
            thirdAccountSDKTextFiledView.inputUITextField.enabled = NO;
            [contentView addSubview:thirdAccountSDKTextFiledView];
            
            [thirdAccountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
                make.leading.mas_equalTo(titleView);
                make.trailing.mas_equalTo(titleView);
                make.height.mas_equalTo(VH(40));

                make.top.mas_equalTo(titleView.mas_bottom).mas_offset(VH(28));
                
            }];
            
            [self makeAccountFiledViewStatus:currentAccount accountView:thirdAccountSDKTextFiledView pwdView:nil];
            
            hasBind_accountSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType:(SDKTextFiledView_Type_Account)];
            hasBind_accountSDKTextFiledView.layer.borderColor = ColorHex(@"#606060").CGColor;
            hasBind_accountSDKTextFiledView.lableIconImageView.image = [UIImage res_imageNamed:mw_smail_icon2];
            hasBind_accountSDKTextFiledView.moreAccountBtn.hidden = YES;
            hasBind_accountSDKTextFiledView.inputUITextField.textColor = UIColor.blackColor;
            hasBind_accountSDKTextFiledView.inputUITextField.enabled = NO;
            
            [contentView addSubview:hasBind_accountSDKTextFiledView];
            
            [hasBind_accountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
                
                make.leading.mas_equalTo(titleView);
                make.trailing.mas_equalTo(titleView);
                make.height.mas_equalTo(thirdAccountSDKTextFiledView);

                make.top.mas_equalTo(thirdAccountSDKTextFiledView.mas_bottom).mas_offset(VH(15));
                
            }];
            
            hasBind_accountSDKTextFiledView.inputUITextField.text = currentAccount.loginId;
            
        }else{
            
            accountSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType:(SDKTextFiledView_Type_Account)];
            accountSDKTextFiledView.moreAccountBtn.hidden = YES;
            accountSDKTextFiledView.layer.borderColor = ColorHex(@"#606060").CGColor;
            accountSDKTextFiledView.inputUITextField.textColor = UIColor.blackColor;
            accountSDKTextFiledView.lableIconImageView.image = [UIImage res_imageNamed:mw_smail_icon2];
            [contentView addSubview:accountSDKTextFiledView];
            
            [accountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
                
                make.leading.mas_equalTo(titleView);
                make.trailing.mas_equalTo(titleView);
                make.height.mas_equalTo(VH(40));

                make.top.mas_equalTo(titleView.mas_bottom).mas_offset(VH(28));
                
            }];
            
            
            //密码
            pwdSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType:(SDKTextFiledView_Type_Password)];
            pwdSDKTextFiledView.lableIconImageView.image = [UIImage res_imageNamed:mw_passowrd_icon2];
            pwdSDKTextFiledView.layer.borderColor = ColorHex(@"#606060").CGColor;
            pwdSDKTextFiledView.inputUITextField.textColor = UIColor.blackColor;
            [contentView addSubview:pwdSDKTextFiledView];
            
            [pwdSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
                make.leading.mas_equalTo(titleView);
                make.trailing.mas_equalTo(titleView);
                make.height.mas_equalTo(accountSDKTextFiledView);

                make.top.mas_equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(VH(15));
                
            }];
            
            UILabel *bindTipLabel = [UIUtil initLabelWithText:GetString(@"text_bind_account_tips") fontSize:FS(10) textColor:[UIColor colorWithHexString:@"#C0C0C0"]];
            bindTipLabel.numberOfLines = 0;
            [contentView addSubview:bindTipLabel];
            
            [bindTipLabel mas_makeConstraints:^(MASConstraintMaker *make) {
                make.leading.mas_equalTo(pwdSDKTextFiledView);
                make.trailing.mas_equalTo(pwdSDKTextFiledView);
                make.top.equalTo(pwdSDKTextFiledView.mas_bottom).mas_offset(VH(6));
                
            }];
            
        }
        
//        NSString *btnString = GetString(@"text_confire_update");
//        if (currentAccount.isBind) {
//            btnString = GetString(@"text_confire");
//        }
        //確認
        UIButton *okBtn = [UIUtil initBtnWithTitleText:GetString(@"text_confire") fontSize:FS(17) textColor:[UIColor whiteColor] tag:kOkActTag selector:@selector(registerViewBtnAction:) target:self];
        
//        [okBtn setTitleColor:[UIColor whiteColor] forState:0];
        [okBtn.layer setCornerRadius:VH(20)];
//        okBtn.titleLabel.font = [UIFont systemFontOfSize:FS(17)];
        okBtn.backgroundColor = [UIColor colorWithHexString:BaseColor];
        [contentView addSubview:okBtn];
        
        [okBtn mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.centerX.equalTo(self);
            make.bottom.equalTo(contentView).mas_offset(VH(-25));
            make.leading.trailing.mas_equalTo(titleView);
            make.height.mas_equalTo(VH(40));
        }];
        
      
    }
    return self;
}

- (void)initData
{
    [super initData];
    AccountModel *tempAccountModel = (AccountModel *)self.fromPageParam;
    [AccountLoginView makeAccountFiledViewStatus:tempAccountModel accountView:thirdAccountSDKTextFiledView pwdView:nil];
    thirdAccountSDKTextFiledView.inputUITextField.enabled = NO;
}


- (void)registerViewBtnAction:(UIButton *)sender
{
    switch (sender.tag) {
            
        case TAG_CLOSE:
            [self removeFromSuperview];
//            if (self.mMWBlock) {
//                self.mMWBlock(NO, nil);
//            }
            break;
            
        case kOkActTag:
        {
            SDK_LOG(@"kOkActTag");
            if (accountSDKTextFiledView) {
                [self bindAccount];
            }else{
                [self removeFromSuperview];
//                if (self.mMWBlock) {
//                    self.mMWBlock(NO, nil);
//                }
            }
            
        }
            
            
            break;
            
            
        default:
            break;
    }
}

-(void)bindAccount
{
    
    
    NSString *account = accountSDKTextFiledView.inputUITextField.text;
    NSString *password = pwdSDKTextFiledView.inputUITextField.text;
  
    
//    if ([StringUtil isEmpty:]) {
//        [SdkUtil toastMsg:GetString(@"py_password_empty")];
//        return;
//    }
 
    if (![SdkUtil validUserName:account]) {
        return;
    }
    
    
    if (![SdkUtil validPwd:password]) {
        return;
    }
    
    AccountModel *currentAccountModel = SDK_DATA.mLoginResponse.data;
    if (!currentAccountModel) {
//        [SdkUtil toastMsg:GetString(@"text_select_account")];
        SDK_LOG(@"用户登录信息不存在 currentAccountModel nil");
        return;
    }
  
    
    [SDKRequest doAccountBindingWithUserName:account password:password phoneAreaCode:@"" phoneNumber:@"" vfCode:@"" email:account thirdId:currentAccountModel.thirdId thirdPlate:currentAccountModel.loginType otherParamsDic:nil successBlock:^(id responseData) {
        [SdkUtil toastMsg:GetString(@"text_account_bind_success2")];
        
        LoginResponse *cc = (LoginResponse *)responseData;
        cc.data.account = account;
        cc.data.password = password;
        cc.data.loginType = LOGIN_TYPE_SELF;
        SDK_DATA.mLoginResponse = cc;
        
        [[ConfigCoreUtil share] saveAccountModel:cc.data];
        
//        [delegate handleLoginOrRegSuccess:cc thirdPlate:LOGIN_TYPE_SELF];
        
        AccountModel *rData = cc.data;
        LoginData *loginData = [[LoginData alloc] init];
        loginData.accessToken = rData.token;
        loginData.userId = rData.userId;
        loginData.timestamp = rData.timestamp;
        
        loginData.isBind = rData.isBind;
        loginData.isBindPhone = rData.isBindPhone;
        loginData.loginType = rData.loginType;
        
        loginData.sign = rData.sign;
        loginData.telephone = rData.telephone;
        loginData.loginId = rData.loginId;
        
        if (self.mMWBlock) {
            self.mMWBlock(YES, loginData);
        }
        
        [self removeFromSuperview];
        
    } errorBlock:^(BJError *error) {
        [AlertUtil showAlertWithMessage:error.message];
        if (self.mMWBlock) {
            self.mMWBlock(NO, nil);
        }
    }];
    
}

-(void)makeAccountFiledViewStatus:(AccountModel *)mAccountModel accountView:(SDKTextFiledView *)accountFiledView pwdView:(SDKTextFiledView *)pwdFiledView{
    
    //    passwordSDKTextFiledView.inputUITextField.text = mAccountModel.password;
    
    NSString *account = @"text_has_bind_tips_mw".localx;
    NSString *account_tips = @"text_has_bind_tips_mw".localx;
    NSString *iconName = mw_smail_icon2;
    NSString *pwdText = GetString(@"text_free_register");
    
    BOOL pwdEnable = YES;
    
    if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_SELF]) {
        
        account = mAccountModel.account;
        iconName = mw_smail_icon2;
        pwdText = mAccountModel.password;
        pwdEnable = YES;
        account_tips = @"text_has_bind_tips_mw".localx;
        
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_FB]){
        iconName = fb_smail_icon;
        pwdEnable = NO;
        account_tips = @"text_has_bind_tips_fb".localx;
        
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_GOOGLE]){
        iconName = google_smail_icon;
        pwdEnable = NO;
        account_tips = @"text_has_bind_tips_google".localx;
        
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_GUEST]){
        iconName = guest_smail_icon;
        pwdEnable = NO;
        account_tips = @"text_has_bind_tips_guest".localx;
        
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_APPLE]){
        iconName = apple_smail_icon;
        pwdEnable = NO;
        account_tips = @"text_has_bind_tips_apple".localx;
        
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_LINE]){
        iconName = line_smail_icon;
        pwdEnable = NO;
        account_tips = @"text_has_bind_tips_line".localx;
    }
    
//    accountFiledView.inputUITextField.text = account;
    accountFiledView.lableIconImageView.image = [UIImage res_imageNamed:iconName];
    accountFiledView.inputUITextField.text = account_tips;
    
    if (pwdFiledView) {
//        [pwdFiledView setPwdFiledView:pwdEnable];
       
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

@end
