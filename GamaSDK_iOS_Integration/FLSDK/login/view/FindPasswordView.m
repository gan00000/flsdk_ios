//
//  FindPasswordView.m
//  R2DSDK
//
//  Created by ganyuanrong on 2020/7/14.
//  Copyright © 2020 ganyuanrong. All rights reserved.
//

#import "FindPasswordView.h"
#import "SdkHeader.h"
#import "SDKTextFiledView.h"
#import "LoginTitleView.h"
#import "PhoneView.h"
#import "LoginButton.h"
#import "SDKRequest.h"
#import "SdkUtil.h"

@implementation FindPasswordView

{
    SDKTextFiledView *accountSDKTextFiledView;
    SDKTextFiledView *newPwdSDKTextFiledView;
    SDKTextFiledView *againPwdSDKTextFiledView;
    
    SDKTextFiledView *vfCodeFiledView;
    //    PhoneView *mPhoneView;
    
    LoginTitleView   *mLoginTitleView;
    UIButton *getVfCodeBtn;
    
    
    int phoneCountdown;
    NSTimer *downTimer;
}

- (instancetype)initView
{
    self = [super init];
    if (self) {
        
        //        UIColor *color = [UIColor colorWithHexString:ContentViewBgColor];
        //        self.backgroundColor = color;// 底图透明，控件不透明
        //        self.layer.cornerRadius = 10; //设置圆角
        //        self.layer.backgroundColor = [UIColor blackColor].CGColor;
        //        self.layer.borderWidth = 2;
        //        self.layer.masksToBounds = YES; //不设置这里会不生成圆角，原因查找中
        
        //title
        mLoginTitleView = [[LoginTitleView alloc] initViewWithTitle:GetString(@"text_forgot_pwd") hander:^(NSInteger) {
            
            [self.delegate goBackBtn:self backCount:1 fromPage:(CURRENT_PAGE_TYPE_FIND_PWD) toPage:(CURRENT_PAGE_TYPE_LOGIN_WITH_REG)];
        }];
        //          mLoginTitleView.delegate = self.delegate;//此处不起作用
        
        [self addSubview:mLoginTitleView];
        [mLoginTitleView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.mas_top).mas_offset(VH(MARGIN_TOP));
            make.leading.trailing.mas_equalTo(self);
//            make.width.mas_equalTo(self);
            make.height.mas_equalTo(VH(40));
        }];
        
        
        
        //账号
        accountSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType:(SDKTextFiledView_Type_Account)];
        accountSDKTextFiledView.moreAccountBtn.hidden = YES;
        [self addSubview:accountSDKTextFiledView];
        
        [accountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(self).mas_offset(40);
            make.trailing.mas_equalTo(self).mas_offset(-40);
            make.height.mas_equalTo(VH(40));

            make.top.equalTo(mLoginTitleView.mas_bottom).mas_offset(VH(25));
            
        }];
        
        
        //獲取驗證碼
        getVfCodeBtn = [UIUtil initBtnWithTitleText:GetString(@"text_get_vfcode") fontSize:FS(14) textColor:[UIColor whiteColor] tag:kGetVfCodeActTag selector:@selector(registerViewBtnAction:) target:self];
        
        
//        getVfCodeBtn.layer.borderColor = [UIColor colorWithHexString:@"#ff3e37"].CGColor;
//        getVfCodeBtn.layer.borderWidth = 1;
//        getVfCodeBtn.layer.cornerRadius = 10;
//        getVfCodeBtn.titleLabel.font = [UIFont systemFontOfSize:FS(14)];
//        [getVfCodeBtn setTitleColor:UIColor.whiteColor forState:0];
        [self addSubview:getVfCodeBtn];
        [getVfCodeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(VH(15));
            make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
            make.width.mas_equalTo(VW(100));
            make.height.mas_equalTo(accountSDKTextFiledView);
            
        }];
        [getVfCodeBtn setContentHuggingPriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisHorizontal];
        
        
        UIView *lineView1 = [[UIView alloc] init];
        lineView1.backgroundColor = [UIColor colorWithHexString:@"#C0C0C0"];
        [self addSubview:lineView1];
        [lineView1 mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.width.mas_equalTo(0.5);
            make.trailing.mas_equalTo(getVfCodeBtn.mas_leading);
            make.centerY.mas_equalTo(getVfCodeBtn);
            make.height.mas_equalTo(VH(14));

        }];
        
        //驗證碼输入框
        vfCodeFiledView = [[SDKTextFiledView alloc] initViewWithType:(SDKTextFiledView_Type_VfCode)];
        
        [self addSubview:vfCodeFiledView];
        [vfCodeFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(getVfCodeBtn);
            make.bottom.equalTo(getVfCodeBtn);
            
            make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
//            make.width.mas_equalTo(accountSDKTextFiledView.mas_width).multipliedBy(0.65);
            make.trailing.mas_equalTo(lineView1.mas_leading);
        }];
        
        //下划线
        UIView *vfCodeFiledView_bottom_line = [[UIView alloc] init];
        vfCodeFiledView_bottom_line.backgroundColor = [UIColor colorWithHexString:@"#C0C0C0"];
        [self addSubview:vfCodeFiledView_bottom_line];
        [vfCodeFiledView_bottom_line mas_makeConstraints:^(MASConstraintMaker *make) {
            
            //make.width.mas_equalTo(0.5);
            make.leading.trailing.mas_equalTo(accountSDKTextFiledView);
            make.bottom.mas_equalTo(vfCodeFiledView);
            
            make.height.mas_equalTo(1);

        }];
        
        //新密码
        newPwdSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType:(SDKTextFiledView_Type_Password_New)];
        [self addSubview:newPwdSDKTextFiledView];
        
        [newPwdSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(accountSDKTextFiledView);
            make.trailing.mas_equalTo(accountSDKTextFiledView);
            make.height.mas_equalTo(accountSDKTextFiledView);

            make.top.equalTo(vfCodeFiledView_bottom_line.mas_bottom).mas_offset(VH(15));
            
        }];
        
        
        //确认密码
        againPwdSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType:(SDKTextFiledView_Type_Password_Again)];
        [self addSubview:againPwdSDKTextFiledView];
        
        [againPwdSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(accountSDKTextFiledView);
            make.trailing.mas_equalTo(accountSDKTextFiledView);
            make.height.mas_equalTo(accountSDKTextFiledView);
            make.top.equalTo(newPwdSDKTextFiledView.mas_bottom).mas_offset(VH(15));
            
        }];
        
        
        //確認
        UIButton *okBtn = [UIUtil initBtnWithTitleText:@"確  認" fontSize:FS(17) textColor:[UIColor whiteColor] tag:kOkActTag selector:@selector(registerViewBtnAction:) target:self];
        
//        [okBtn setTitleColor:[UIColor whiteColor] forState:0];
        [okBtn.layer setCornerRadius:VH(25)];
//        okBtn.titleLabel.font = [UIFont systemFontOfSize:FS(17)];
        okBtn.backgroundColor = [UIColor colorWithHexString:BaseColor];
        [self addSubview:okBtn];
        
        [okBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self);
            make.top.equalTo(againPwdSDKTextFiledView.mas_bottom).mas_offset(VH(32));
            make.width.mas_equalTo(accountSDKTextFiledView);
            make.height.mas_equalTo(VH(50));
        }];
        
        
//        UIButton *okBtn = [LoginButton initBtnWithType:(BUTTON_TYPE_OK) tag:kOkActTag selector:@selector(registerViewBtnAction:)  target:self];
//        [self addSubview:okBtn];
//
//        [okBtn mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.centerX.equalTo(self);
//            make.top.equalTo(vfCodeFiledView.mas_bottom).mas_offset(VH(60));
//            make.width.mas_equalTo(accountSDKTextFiledView);
//            make.height.mas_equalTo(VH(70));
//        }];
        
    }
    return self;
}


- (void)registerViewBtnAction:(UIButton *)sender
{
    switch (sender.tag) {
            
        case kGetVfCodeActTag:
        {
            SDK_LOG(@"kGetVfCodeActTag");
            NSString *account = accountSDKTextFiledView.inputUITextField.text;
            if (![SdkUtil validUserName:account]) {
                return;
            }
            [self requestVfCodeByEmail:account];
        }
            break;
            
        case kOkActTag:
        {
            SDK_LOG(@"kOkActTag");
            [self findPassword];
        }
            
            
            break;
            
            
        default:
            break;
    }
}

-(void)findPassword
{
    NSString *userName = accountSDKTextFiledView.inputUITextField.text;
    
    NSString *areaCode = @"";//[mPhoneView getPhoneAreaCode];
    NSString *phoneNum = @"";//[mPhoneView getPhoneNumber];
    NSString *vfCode = vfCodeFiledView.inputUITextField.text;
    
    NSString *newPwd = newPwdSDKTextFiledView.inputUITextField.text;
    NSString *againPwd = againPwdSDKTextFiledView.inputUITextField.text;
    
    if (![SdkUtil validUserName:userName]) {
        return;
    }
    
    if ([StringUtil isEmpty:vfCode]) {
    
        [SdkUtil toastMsg:GetString(@"py_vfcode_empty")];
        return;
    }
        
    if (![SdkUtil validPwd: newPwd] || ![SdkUtil validPwd: againPwd]) {
       
        return;
    }
    
    if (![newPwd isEqualToString:againPwd]) {
    
        [SdkUtil toastMsg:GetString(@"text_pwd_not_equel")];
        return;
    }
    
    NSDictionary *otherParamsDic = nil;
    @try {
        otherParamsDic = @{
            @"newPwd"        :[SUtil getMD5StrFromString:newPwd],
        };
        
    } @catch (NSException *exception) {
        
    }
    
    kWeakSelf
    [SDKRequest doForgotPasswordWithUserName:userName phoneAreaCode:areaCode phoneNumber:phoneNum email:userName vfCode:vfCode interfaces:@"4" otherParamsDic:otherParamsDic successBlock:^(id responseData) {
        
        [SdkUtil toastMsg:GetString(@"text_account_change_pwd_success")];

        if (weakSelf.delegate) {
            LoginResponse *cc = (LoginResponse *)responseData;
            cc.data.account = userName;
            cc.data.password = newPwd;
            cc.data.loginType = LOGIN_TYPE_SELF;
            [weakSelf.delegate handleLoginOrRegSuccess:cc thirdPlate:LOGIN_TYPE_SELF];
        }
//        [self removeFromSuperview];//返回登录界面
        
    } errorBlock:^(BJError *error) {
        [AlertUtil showAlertWithMessage:error.message];
    }];
    
}

//- (void)requestVfCodeByPhone:(NSString *)phoneArea phoneNumber:(NSString *)phoneN
//{
//
//
//    [SDKRequest requestVfCode:phoneArea phoneNumber:phoneN email:@"" interfaces:@"4" otherDic:nil successBlock:^(id responseData) {
//
//        [SdkUtil toastMsg:GetString(@"text_send_vf_code_success")];
//
//        [self downTime];
//
//    } errorBlock:^(BJError *error) {
//        [self resetVfCodeBtnStatue];
//        [AlertUtil showAlertWithMessage:error.message];
//    }];
//}

- (void)requestVfCodeByEmail:(NSString *)email
{
    
    [SDKRequest requestVfCode:@"" phoneNumber:@""  email:email interfaces:@"4" otherDic:nil successBlock:^(id responseData) {
        [SdkUtil toastMsg:GetString(@"text_send_vf_code_success")];
        [self downTime];
    } errorBlock:^(BJError *error) {
        [self resetVfCodeBtnStatue];
        [AlertUtil showAlertWithMessage:error.message];
    }];
}

//倒计时
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
    [getVfCodeBtn setTitle:GetString(@"text_get_vfcode") forState:UIControlStateNormal];
}

- (void)dealloc
{
    
    if (downTimer) {
        [downTimer invalidate];
        downTimer = nil;
    }
}

@end
