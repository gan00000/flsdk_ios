//
//  FloatBindAccountViewController.m
//  MW_SDK
//
//  Created by Gan Yuanrong on 2024/3/8.
//  Copyright © 2024 Gama. All rights reserved.
//

#import "FloatChangePwdViewController.h"

@interface FloatChangePwdViewController ()

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@property (weak, nonatomic) IBOutlet UIImageView *backImageView;
@property (weak, nonatomic) IBOutlet UIView *accountContentView;
@property (weak, nonatomic) IBOutlet UIImageView *accountIconImageView;
@property (weak, nonatomic) IBOutlet UITextField *accountTF;
@property (weak, nonatomic) IBOutlet UIView *pwdContentView;

@property (weak, nonatomic) IBOutlet UIImageView *pwdIconImageView;
@property (weak, nonatomic) IBOutlet UITextField *pwdTF;

@property (weak, nonatomic) IBOutlet UIButton *confirmBtn;

@property (weak, nonatomic) IBOutlet UIView *againPwdContentView;
@property (weak, nonatomic) IBOutlet UIImageView *againPwdIconImageView;
@property (weak, nonatomic) IBOutlet UITextField *againPwdTF;

@end

@implementation FloatChangePwdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.backImageView.userInteractionEnabled = YES;
    self.backImageView.image = GetImage(icon_float_return);
    [self.backImageView addTapActionWithBlock_MMMethodMMM:^(UIGestureRecognizer *gestureRecoginzer) {
        [self.view removeFromSuperview];
    }];
    
    self.accountContentView.layer.cornerRadius = 16;
    self.accountContentView.layer.borderWidth = 0.5;
    self.accountContentView.layer.borderColor = [UIColor colorWithHexString_MMMethodMMM:@"#BABABA"].CGColor;
    self.accountIconImageView.image = GetImage(float_icon_user);
    
    self.pwdContentView.layer.cornerRadius = 16;
    self.pwdContentView.layer.borderWidth = 0.5;
    self.pwdContentView.layer.borderColor = [UIColor colorWithHexString_MMMethodMMM:@"#BABABA"].CGColor;
    self.pwdIconImageView.image = GetImage(float_icon_password);
    
    self.againPwdContentView.layer.cornerRadius = 16;
    self.againPwdContentView.layer.borderWidth = 0.5;
    self.againPwdContentView.layer.borderColor = [UIColor colorWithHexString_MMMethodMMM:@"#BABABA"].CGColor;
    self.againPwdIconImageView.image = GetImage(float_icon_again_pwd);
    
    self.titleLabel.text = wwwww_tag_wwwww_py_login_page_change_pwd.localx;
    self.accountTF.placeholder = wwwww_tag_wwwww_py_input_old_password.localx;
    self.pwdTF.placeholder = wwwww_tag_wwwww_text_input_new_pwd.localx;
    self.againPwdTF.placeholder = wwwww_tag_wwwww_text_input_new_pwd_confire.localx;
    [self.confirmBtn setTitle:wwwww_tag_wwwww_text_confire_change.localx forState:UIControlStateNormal];
}


- (IBAction)confirmAction:(id)sender {
    
    NSString *userName = SDK_DATA.mLoginResponse.data.loginId;
    
    NSString *oldPwd = self.accountTF.text;
    
    NSString *newPwd = self.pwdTF.text;
    NSString *againPwd = self.againPwdTF.text;
    
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
//        if (weakSelf.delegate) {
//            LoginResponse *cc = (LoginResponse *)responseData;
//            cc.data.account = mAccountModel.account;
//            cc.data.password = newPwd;
//            cc.data.loginType = LOGIN_TYPE_SELF;
//            [weakSelf.delegate handleLoginOrRegSuccess_MMMethodMMM:cc thirdPlate_MMMethodMMM:LOGIN_TYPE_SELF];
//        }
        
        LoginResponse *cc = (LoginResponse *)responseData;
        cc.data.account = userName;
        cc.data.password = newPwd;
        cc.data.loginType = LOGIN_TYPE_SELF;
        SDK_DATA.mLoginResponse = cc;
        
        [[ConfigCoreUtil share] saveAccountModel_MMMethodMMM:cc.data];
        
        if (self.mMWBlock) {
            self.mMWBlock(YES, cc);
        }
        
        [self.view removeFromSuperview];
        
    } errorBlock_MMMethodMMM:^(BJError *error) {
        
        [AlertUtil showAlertWithMessage_MMMethodMMM:error.message];
        
    }];
    
}

@end
