//
//  FindPasswordView.m
//  R2DSDK
//
//  Created by ganyuanrong on 2020/7/14.
//  Copyright © 2020 ganyuanrong. All rights reserved.
//

#import "ChangePasswordView.h"
#import "SdkHeader.h"
#import "SDKTextFiledView.h"
#import "LoginTitleView.h"
#import "PhoneView.h"
#import "LoginButton.h"
#import "SDKRequest.h"
#import "SdkUtil.h"

@implementation ChangePasswordView

{
    SDKTextFiledView *oldPwdSDKTextFiledView;
    SDKTextFiledView *newPwdSDKTextFiledView;
    SDKTextFiledView *againPwdSDKTextFiledView;
    
//    SDKTextFiledView *vfCodeFiledView;
    //    PhoneView *mPhoneView;
    
    LoginTitleView   *mLoginTitleView;
    UIButton *getVfCodeBtn;
    
    
//    int phoneCountdown;
//    NSTimer *downTimer;
}

- (instancetype)initView_MMMethodMMM
{
    self = [super init];
    if (self) {
        
        //        UIColor *color = [UIColor colorWithHexString_MMMethodMMM:ContentViewBgColor];
        //        self.backgroundColor = color;// 底图透明，控件不透明
        //        self.layer.cornerRadius = 10; //设置圆角
        //        self.layer.backgroundColor = [UIColor blackColor].CGColor;
        //        self.layer.borderWidth = 2;
        //        self.layer.masksToBounds = YES; //不设置这里会不生成圆角，原因查找中
        
        //title
        mLoginTitleView = [[LoginTitleView alloc] initViewWithTitle_MMMethodMMM:GetString(wwwww_tag_wwwww_text_change_pwd) hander_MMMethodMMM:^(NSInteger) {
            
            [self.delegate goBackBtn_MMMethodMMM:self backCount_MMMethodMMM:1 fromPage_MMMethodMMM:(CURRENT_PAGE_TYPE_CHANGE_PWD) toPage_MMMethodMMM:(CURRENT_PAGE_TYPE_WELCOME_BACK)];
        }];
        //          mLoginTitleView.delegate = self.delegate;//此处不起作用
        
        [self addSubview:mLoginTitleView];
        [mLoginTitleView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.mas_top).mas_offset(VH(MARGIN_TOP));
            make.leading.trailing.mas_equalTo(self);
//            make.width.mas_equalTo(self);
            make.height.mas_equalTo(VH(40));
        }];
        
        
        
        //旧密码
        oldPwdSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Password_Old)];
        oldPwdSDKTextFiledView.moreAccountBtn.hidden = YES;
        [self addSubview:oldPwdSDKTextFiledView];
        
        [oldPwdSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(self).mas_offset(40);
            make.trailing.mas_equalTo(self).mas_offset(-40);
            make.height.mas_equalTo(VH(40));

            make.top.equalTo(mLoginTitleView.mas_bottom).mas_offset(VH(25));
            
        }];
        
        
        //新密码
        newPwdSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Password_New)];
        [self addSubview:newPwdSDKTextFiledView];
        
        [newPwdSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(oldPwdSDKTextFiledView);
            make.trailing.mas_equalTo(oldPwdSDKTextFiledView);
            make.height.mas_equalTo(oldPwdSDKTextFiledView);

            make.top.equalTo(oldPwdSDKTextFiledView.mas_bottom).mas_offset(VH(15));
            
        }];
        
        
        //确认密码
        againPwdSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Password_Again)];
        [self addSubview:againPwdSDKTextFiledView];
        
        [againPwdSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(oldPwdSDKTextFiledView);
            make.trailing.mas_equalTo(oldPwdSDKTextFiledView);
            make.height.mas_equalTo(oldPwdSDKTextFiledView);
            make.top.equalTo(newPwdSDKTextFiledView.mas_bottom).mas_offset(VH(15));
            
        }];
        
        
        //確認
        UIButton *okBtn = [UIUtil initBtnWithTitleText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_confire_change) fontSize_MMMethodMMM:FS(17) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kOkActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        
//        [okBtn setTitleColor:[UIColor whiteColor] forState:0];
        [okBtn.layer setCornerRadius:VH(25)];
//        okBtn.titleLabel.font = [UIFont systemFontOfSize:FS(17)];
        okBtn.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_F94925];
        [self addSubview:okBtn];
        
        [okBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self);
            make.top.equalTo(againPwdSDKTextFiledView.mas_bottom).mas_offset(VH(32));
            make.width.mas_equalTo(oldPwdSDKTextFiledView);
            make.height.mas_equalTo(VH(50));
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
            
     
        case kOkActTag:
        {
            SDK_LOG(wwwww_tag_wwwww_kOkActTag);
            [self changePassword_MMMethodMMM];
        }
            
            
            break;
            
            
        default:
            break;
    }
}

-(void)changePassword_MMMethodMMM
{
    
    if (!self.fromPageParam) {
        [SdkUtil toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_select_account)];
        return;
    }
    
    AccountModel * mAccountModel = (AccountModel *)self.fromPageParam;
    NSString *userName = mAccountModel.account;
    
    NSString *oldPwd = oldPwdSDKTextFiledView.inputUITextField.text;
    
    NSString *newPwd = newPwdSDKTextFiledView.inputUITextField.text;
    NSString *againPwd = againPwdSDKTextFiledView.inputUITextField.text;
    
    if (![SdkUtil validUserName_MMMethodMMM:userName]) {
        return;
    }
    
    if ([StringUtil isEmpty_MMMethodMMM:oldPwd]) {
        [SdkUtil toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_py_password_empty)];
        return;
    }
 
    if (![SdkUtil validPwd_MMMethodMMM:newPwd]) {
        return;
    }
    
    if (![SdkUtil validPwd_MMMethodMMM:againPwd]) {
        return;
    }
    
    if (![newPwd isEqualToString:againPwd]) {
    
        [SdkUtil toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_pwd_not_equel)];
        return;
    }
   
    kWeakSelf
    [SDKRequest doChangePasswordWithUserName_MMMethodMMM:userName andOldPassword_MMMethodMMM:oldPwd andNewPassword_MMMethodMMM:newPwd otherParamsDic_MMMethodMMM:nil successBlock_MMMethodMMM:^(id responseData) {
        
        [SdkUtil toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_account_change_pwd_success)];
        if (weakSelf.delegate) {
            LoginResponse *cc = (LoginResponse *)responseData;
            cc.data.account = mAccountModel.account;
            cc.data.password = newPwd;
            cc.data.loginType = LOGIN_TYPE_SELF;
            [weakSelf.delegate handleLoginOrRegSuccess_MMMethodMMM:cc thirdPlate_MMMethodMMM:LOGIN_TYPE_SELF];
        }
        
    } errorBlock_MMMethodMMM:^(BJError *error) {
        
        [AlertUtil showAlertWithMessage_MMMethodMMM:error.message];
        
    }];
    
}

//- (void)requestVfCodeByPhone:(NSString *)phoneArea phoneNumber_MMMethodMMM:(NSString *)phoneN
//{
//
//
//    [SDKRequest requestVfCode_MMMethodMMM:phoneArea phoneNumber_MMMethodMMM:phoneN email_MMMethodMMM:@"" interfaces_MMMethodMMM:wwwww_tag_wwwww_4 otherDic_MMMethodMMM:nil successBlock_MMMethodMMM:^(id responseData) {
//        [self downTime_MMMethodMMM];
//        [SdkUtil toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_send_vf_code_success)];
//    } errorBlock_MMMethodMMM:^(BJError *error) {
//        [self resetVfCodeBtnStatue_MMMethodMMM];
//        [AlertUtil showAlertWithMessage_MMMethodMMM:error.message];
//    }];
//}
//
//- (void)requestVfCodeByEmail_MMMethodMMM:(NSString *)email
//{
//
//    [SDKRequest requestVfCode_MMMethodMMM:@"" phoneNumber_MMMethodMMM:@""  email_MMMethodMMM:email interfaces_MMMethodMMM:wwwww_tag_wwwww_4 otherDic_MMMethodMMM:nil successBlock_MMMethodMMM:^(id responseData) {
//        [self downTime_MMMethodMMM];
//    } errorBlock_MMMethodMMM:^(BJError *error) {
//        [self resetVfCodeBtnStatue_MMMethodMMM];
//        [AlertUtil showAlertWithMessage_MMMethodMMM:error.message];
//    }];
//}

//倒计时
//-(void)downTime_MMMethodMMM{
//
//    phoneCountdown = 60;
//    getVfCodeBtn.userInteractionEnabled = NO;
//    [getVfCodeBtn setTitle:[NSString stringWithFormat:@"%d", phoneCountdown] forState:UIControlStateNormal];
//    //getVfCodeBtn.backgroundColor  = RGB(211, 211, 211);
//    //getVfCodeBtn.layer.masksToBounds = YES;
//    //getVfCodeBtn.titleLabel.adjustsFontSizeToFitWidth = YES;
//    if (downTimer) {
//        [downTimer invalidate];
//        downTimer = nil;
//    }
//    downTimer = [NSTimer scheduledTimerWithTimeInterval:1.0
//                                                 target_MMMethodMMM:self
//                                               selector:@selector(phoneFireTimer)
//                                               userInfo:nil
//                                                repeats:YES];
//
//
//}
//
//- (void)phoneFireTimer_MMMethodMMM {
//    phoneCountdown--;
//    if (phoneCountdown < 0) {
//        [self resetVfCodeBtnStatue_MMMethodMMM];
//    }else{
//        [getVfCodeBtn setTitle:[NSString stringWithFormat:@"%d", phoneCountdown] forState:UIControlStateNormal];
//    }
//
//}
//
//-(void)resetVfCodeBtnStatue_MMMethodMMM
//{
//    if (downTimer) {
//        [downTimer invalidate];
//        downTimer = nil;
//    }
//    getVfCodeBtn.userInteractionEnabled = YES;
//    [getVfCodeBtn setTitle:GetString(wwwww_tag_wwwww_text_get_vfcode) forState:UIControlStateNormal];
//}
//
//- (void)dealloc
//{
//
//    if (downTimer) {
//        [downTimer invalidate];
//        downTimer = nil;
//    }
//}

@end
