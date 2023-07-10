//
//  FindPasswordView.m
//  R2DSDK
//
//  Created by ganyuanrong on 2020/7/14.
//  Copyright © 2020 ganyuanrong. All rights reserved.
//

#import "FindPasswordViewV2.h"
#import "SdkHeader.h"
#import "SDKTextFiledView.h"
#import "LoginTitleView.h"
#import "PhoneView.h"
#import "LoginButton.h"
#import "SDKRequest.h"
#import "SdkUtil.h"
#import "ViewUtil.h"

@implementation FindPasswordViewV2

{
    SDKTextFiledView *accountSDKTextFiledView;
    SDKTextFiledView *newPwdSDKTextFiledView;
//    SDKTextFiledView *againPwdSDKTextFiledView;
    
    SDKTextFiledView *vfCodeFiledView;
    //    PhoneView *mPhoneView;
    
    LoginTitleView   *mLoginTitleView;
    UIButton *getVfCodeBtn;
    
    
    int phoneCountdown;
    NSTimer *downTimer;
}

- (instancetype)initView_MMMethodMMM
{
    self = [super init];
    if (self) {
        
        UIView *myView = [[UIView alloc] init];
        [self addSubview:myView];
        [myView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.center.mas_equalTo(self);
            make.width.mas_equalTo(VW(374));
            make.height.mas_equalTo(VH(375));
        }];
        
        //title
        mLoginTitleView = [[LoginTitleView alloc] initViewWithTitle_MMMethodMMM:GetString(wwwww_tag_wwwww_text_forgot_pwd) hander_MMMethodMMM:^(NSInteger) {
            
            [self.delegate goBackBtn_MMMethodMMM:self backCount_MMMethodMMM:1 fromPage_MMMethodMMM:(CURRENT_PAGE_TYPE_FIND_PWD) toPage_MMMethodMMM:(CURRENT_PAGE_TYPE_LOGIN_WITH_REG)];
        }];
        //          mLoginTitleView.delegate = self.delegate;//此处不起作用
        
        [myView addSubview:mLoginTitleView];
        [mLoginTitleView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(myView.mas_top).mas_offset(VH(20));
            make.leading.trailing.mas_equalTo(myView);
//            make.width.mas_equalTo(self);
            make.height.mas_equalTo(VH(40));
        }];
        
        
        
        //账号
        accountSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Account)];
        accountSDKTextFiledView.moreAccountBtn.hidden = YES;
        [myView addSubview:accountSDKTextFiledView];
        
        [accountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(myView).mas_offset(VW(34));
            make.trailing.mas_equalTo(myView).mas_offset(VW(-34));
            make.height.mas_equalTo(VH(40));

            make.top.equalTo(mLoginTitleView.mas_bottom).mas_offset(VH(30));
            
        }];
        
        //新密码
        newPwdSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Password_New)];
        [myView addSubview:newPwdSDKTextFiledView];
        
        [newPwdSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(accountSDKTextFiledView);
            make.trailing.mas_equalTo(accountSDKTextFiledView);
            make.height.mas_equalTo(accountSDKTextFiledView);

            make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(VH(15));
            
        }];
        
        
        //獲取驗證碼
        getVfCodeBtn = [UIUtil initBtnWithTitleText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_get_vfcode) fontSize_MMMethodMMM:FS(14) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:BaseColor] tag_MMMethodMMM:kGetVfCodeActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        
        
        getVfCodeBtn.layer.borderColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor].CGColor;
        getVfCodeBtn.layer.borderWidth = 1;
        getVfCodeBtn.layer.cornerRadius = VH(20);
//        getVfCodeBtn.titleLabel.font = [UIFont systemFontOfSize:FS(14)];
//        [getVfCodeBtn setTitleColor:UIColor.whiteColor forState:0];
        [myView addSubview:getVfCodeBtn];
        [getVfCodeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(newPwdSDKTextFiledView.mas_bottom).mas_offset(VH(15));
            make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
            make.width.mas_equalTo(VW(100));
            make.height.mas_equalTo(accountSDKTextFiledView);
            
        }];
        [getVfCodeBtn setContentHuggingPriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisHorizontal];
        
        
//        UIView *lineView1 = [[UIView alloc] init];
//        lineView1.hidden = YES;
//        lineView1.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0];
//        [self addSubview:lineView1];
//        [lineView1 mas_makeConstraints:^(MASConstraintMaker *make) {
//
//            make.width.mas_equalTo(0.5);
//            make.trailing.mas_equalTo(getVfCodeBtn.mas_leading);
//            make.centerY.mas_equalTo(getVfCodeBtn);
//            make.height.mas_equalTo(VH(14));
//
//        }];
        
        //驗證碼输入框
        vfCodeFiledView = [[SDKTextFiledView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_VfCode)];
        
        [myView addSubview:vfCodeFiledView];
        [vfCodeFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(getVfCodeBtn);
            make.bottom.equalTo(getVfCodeBtn);
            
            make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
//            make.width.mas_equalTo(accountSDKTextFiledView.mas_width).multipliedBy(0.65);
            make.trailing.mas_equalTo(getVfCodeBtn.mas_leading).mas_offset(VW(-16));
        }];
        
        //下划线
        UIView *vfCodeFiledView_bottom_line = [[UIView alloc] init];
        vfCodeFiledView_bottom_line.hidden = YES;
        vfCodeFiledView_bottom_line.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0];
        [myView addSubview:vfCodeFiledView_bottom_line];
        [vfCodeFiledView_bottom_line mas_makeConstraints:^(MASConstraintMaker *make) {
            
            //make.width.mas_equalTo(0.5);
            make.leading.trailing.mas_equalTo(accountSDKTextFiledView);
            make.bottom.mas_equalTo(vfCodeFiledView);
            
            make.height.mas_equalTo(1);

        }];
        

        //确认密码
//        againPwdSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Password_Again)];
//        [self addSubview:againPwdSDKTextFiledView];
//
//        [againPwdSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.leading.mas_equalTo(accountSDKTextFiledView);
//            make.trailing.mas_equalTo(accountSDKTextFiledView);
//            make.height.mas_equalTo(accountSDKTextFiledView);
//            make.top.equalTo(newPwdSDKTextFiledView.mas_bottom).mas_offset(VH(15));
//
//        }];
        
        
        //確認
        UIButton *okBtn = [UIUtil initBtnWithTitleText_MMMethodMMM:wwwww_tag_wwwww_py_confire.localx fontSize_MMMethodMMM:FS(17) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kOkActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        
//        [okBtn setTitleColor:[UIColor whiteColor] forState:0];
        [okBtn.layer setCornerRadius:VH(20)];
//        okBtn.titleLabel.font = [UIFont systemFontOfSize:FS(17)];
        okBtn.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor];
        [myView addSubview:okBtn];
        
        [okBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self);
            make.top.equalTo(getVfCodeBtn.mas_bottom).mas_offset(VH(30));
            make.width.mas_equalTo(accountSDKTextFiledView);
            make.height.mas_equalTo(VH(40));
        }];
        
        
        [self addDrawRectBolck:^(NSString *msg, NSInteger m, NSDictionary *dic) {
            CAGradientLayer *glLayer = [ViewUtil createGradientLayerWithRadius_MMMethodMMM:VH(25)];
            glLayer.frame = okBtn.bounds;
            [okBtn.layer addSublayer:glLayer];
            
        }];

        
//        UIButton *okBtn = [LoginButton initBtnWithType_MMMethodMMM:(BUTTON_TYPE_OK) tag_MMMethodMMM:kOkActTag selector:@selector(registerViewBtnAction_MMMethodMMM:)  target_MMMethodMMM:self];
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


- (void)registerViewBtnAction_MMMethodMMM:(UIButton *)sender
{
    switch (sender.tag) {
            
        case kGetVfCodeActTag:
        {
            SDK_LOG(wwwww_tag_wwwww_kGetVfCodeActTag);
            NSString *account = [accountSDKTextFiledView.inputUITextField.text trim_MMMethodMMM];
            if (![SdkUtil validUserName_MMMethodMMM:account]) {
                return;
            }
            [self requestVfCodeByEmail_MMMethodMMM:account];
        }
            break;
            
        case kOkActTag:
        {
            SDK_LOG(wwwww_tag_wwwww_kOkActTag);
            [self findPassword_MMMethodMMM];
        }
            
            
            break;
            
            
        default:
            break;
    }
}

-(void)findPassword_MMMethodMMM
{
    NSString *userName = [accountSDKTextFiledView.inputUITextField.text trim_MMMethodMMM];
    
    NSString *areaCode = @"";//[mPhoneView getPhoneAreaCode_MMMethodMMM];
    NSString *phoneNum = @"";//[mPhoneView getPhoneNumber_MMMethodMMM];
    NSString *vfCode = [vfCodeFiledView.inputUITextField.text trim_MMMethodMMM];
    
    NSString *newPwd = [newPwdSDKTextFiledView.inputUITextField.text trim_MMMethodMMM];
//    NSString *againPwd = againPwdSDKTextFiledView.inputUITextField.text;
    
    if (![SdkUtil validUserName_MMMethodMMM:userName]) {
        return;
    }
    
    if ([StringUtil isEmpty_MMMethodMMM:vfCode]) {
    
        [SdkUtil toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_py_vfcode_empty)];
        return;
    }
        
    if (![SdkUtil validPwd_MMMethodMMM: newPwd]) {
       
        return;
    }
    
//    if (![newPwd isEqualToString:againPwd]) {
//
//        [SdkUtil toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_pwd_not_equel)];
//        return;
//    }
    
    NSDictionary *otherParamsDic = nil;
    @try {
        otherParamsDic = @{
            wwwww_tag_wwwww_newPwd        :[SUtil getMD5StrFromString_MMMethodMMM:newPwd],
        };
        
    } @catch (NSException *exception) {
        
    }
    
    kWeakSelf
    [SDKRequest doForgotPasswordWithUserName_MMMethodMMM:userName phoneAreaCode_MMMethodMMM:areaCode phoneNumber_MMMethodMMM:phoneNum email_MMMethodMMM:userName vfCode_MMMethodMMM:vfCode interfaces_MMMethodMMM:wwwww_tag_wwwww_4 otherParamsDic_MMMethodMMM:otherParamsDic successBlock_MMMethodMMM:^(id responseData) {
        
        [SdkUtil toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_account_change_pwd_success)];

        if (weakSelf.delegate) {
            LoginResponse *cc = (LoginResponse *)responseData;
            cc.data.account = userName;
            cc.data.password = newPwd;
            cc.data.loginType = LOGIN_TYPE_SELF;
            [weakSelf.delegate handleLoginOrRegSuccess_MMMethodMMM:cc thirdPlate_MMMethodMMM:LOGIN_TYPE_SELF];
        }
//        [self removeFromSuperview];//返回登录界面
        
    } errorBlock_MMMethodMMM:^(BJError *error) {
        [AlertUtil showAlertWithMessage_MMMethodMMM:error.message];
    }];
    
}

//- (void)requestVfCodeByPhone:(NSString *)phoneArea phoneNumber_MMMethodMMM:(NSString *)phoneN
//{
//
//
//    [SDKRequest requestVfCode_MMMethodMMM:phoneArea phoneNumber_MMMethodMMM:phoneN email_MMMethodMMM:@"" interfaces_MMMethodMMM:wwwww_tag_wwwww_4 otherDic_MMMethodMMM:nil successBlock_MMMethodMMM:^(id responseData) {
//
//        [SdkUtil toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_send_vf_code_success)];
//
//        [self downTime_MMMethodMMM];
//
//    } errorBlock_MMMethodMMM:^(BJError *error) {
//        [self resetVfCodeBtnStatue_MMMethodMMM];
//        [AlertUtil showAlertWithMessage_MMMethodMMM:error.message];
//    }];
//}

- (void)requestVfCodeByEmail_MMMethodMMM:(NSString *)email
{
    
    [SDKRequest requestVfCode_MMMethodMMM:@"" phoneNumber_MMMethodMMM:@""  email_MMMethodMMM:email interfaces_MMMethodMMM:wwwww_tag_wwwww_4 otherDic_MMMethodMMM:nil successBlock_MMMethodMMM:^(id responseData) {
        [SdkUtil toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_send_vf_code_success)];
        [self downTime_MMMethodMMM];
    } errorBlock_MMMethodMMM:^(BJError *error) {
        [self resetVfCodeBtnStatue_MMMethodMMM];
        [AlertUtil showAlertWithMessage_MMMethodMMM:error.message];
    }];
}

//倒计时
-(void)downTime_MMMethodMMM{
    
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
                                               selector:@selector(phoneFireTimer_MMMethodMMM)
                                               userInfo:nil
                                                repeats:YES];
    
    
}

- (void)phoneFireTimer_MMMethodMMM {
    phoneCountdown--;
    if (phoneCountdown < 0) {
        [self resetVfCodeBtnStatue_MMMethodMMM];
    }else{
        [getVfCodeBtn setTitle:[NSString stringWithFormat:@"%d", phoneCountdown] forState:UIControlStateNormal];
    }
    
}

-(void)resetVfCodeBtnStatue_MMMethodMMM
{
    if (downTimer) {
        [downTimer invalidate];
        downTimer = nil;
    }
    getVfCodeBtn.userInteractionEnabled = YES;
    [getVfCodeBtn setTitle:GetString(wwwww_tag_wwwww_text_get_vfcode) forState:UIControlStateNormal];
}

- (void)dealloc
{
    
    if (downTimer) {
        [downTimer invalidate];
        downTimer = nil;
    }
}

@end
