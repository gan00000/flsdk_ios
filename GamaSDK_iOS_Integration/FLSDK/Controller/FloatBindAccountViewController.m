//
//  FloatBindAccountViewController.m
//  MW_SDK
//
//  Created by Gan Yuanrong on 2024/3/8.
//  Copyright © 2024 Gama. All rights reserved.
//

#import "FloatBindAccountViewController.h"

@interface FloatBindAccountViewController ()

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@property (weak, nonatomic) IBOutlet UIImageView *backImageView;
@property (weak, nonatomic) IBOutlet UIView *accountContentView;
@property (weak, nonatomic) IBOutlet UIImageView *accountIconImageView;
@property (weak, nonatomic) IBOutlet UITextField *accountTF;
@property (weak, nonatomic) IBOutlet UIView *pwdContentView;

@property (weak, nonatomic) IBOutlet UIImageView *pwdIconImageView;
@property (weak, nonatomic) IBOutlet UITextField *pwdTF;

@property (weak, nonatomic) IBOutlet UIButton *confirmBtn;
@property (weak, nonatomic) IBOutlet UILabel *warmLabel;

@end

@implementation FloatBindAccountViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.backImageView.userInteractionEnabled = YES;
    self.backImageView.image = GetImage(@"icon_float_return");
    [self.backImageView addTapActionWithBlock_MMMethodMMM:^(UIGestureRecognizer *gestureRecoginzer) {
        [self.view removeFromSuperview];
    }];
    
    self.accountContentView.layer.cornerRadius = 16;
    self.accountContentView.layer.borderWidth = 0.5;
    self.accountContentView.layer.borderColor = [UIColor colorWithHexString_MMMethodMMM:@"#BABABA"].CGColor;
    self.accountIconImageView.image = GetImage(@"float_icon_user");
    
    self.pwdContentView.layer.cornerRadius = 16;
    self.pwdContentView.layer.borderWidth = 0.5;
    self.pwdContentView.layer.borderColor = [UIColor colorWithHexString_MMMethodMMM:@"#BABABA"].CGColor;
    self.pwdIconImageView.image = GetImage(@"float_icon_password");
    
    self.titleLabel.text = wwwww_tag_wwwww_text_update_account.localx;
    [self.confirmBtn setTitle:wwwww_tag_wwwww_py_confire.localx forState:UIControlStateNormal];
    self.accountTF.placeholder = wwwww_tag_wwwww_py_register_account_hit.localx;
    self.pwdTF.placeholder = wwwww_tag_wwwww_py_register_password_hit.localx;
    self.warmLabel.text = wwwww_tag_wwwww_text_bind_account_tips.localx;
    
}


- (IBAction)confirmAction:(id)sender {
    
    NSString *account = [self.accountTF.text trim_MMMethodMMM];
    NSString *password = [self.pwdTF.text trim_MMMethodMMM];
  
    if (![SdkUtil validUserName_MMMethodMMM:account]) {
        return;
    }
    
    
    if (![SdkUtil validPwd_MMMethodMMM:password]) {
        return;
    }
    
    AccountModel *currentAccountModel = SDK_DATA.mLoginResponse.data;
    if (!currentAccountModel) {
//        [SdkUtil toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_select_account)];
        SDK_LOG(@"用户登录信息不存在 currentAccountModel nil");
        return;
    }
  
    
    [SDKRequest doAccountBindingWithUserName_MMMethodMMM:account password_MMMethodMMM:password phoneAreaCode_MMMethodMMM:@"" phoneNumber_MMMethodMMM:@"" vfCode_MMMethodMMM:@"" email_MMMethodMMM:account thirdId_MMMethodMMM:currentAccountModel.thirdId thirdPlate_MMMethodMMM:currentAccountModel.loginType otherParamsDic_MMMethodMMM:nil successBlock_MMMethodMMM:^(id responseData) {
        [SdkUtil toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_account_bind_success2)];
        
        LoginResponse *cc = (LoginResponse *)responseData;
        cc.data.account = account;
        cc.data.password = password;
        cc.data.loginType = currentAccountModel.loginType;
        SDK_DATA.mLoginResponse = cc;
        
        [[ConfigCoreUtil share] saveAccountModel_MMMethodMMM:cc.data];
        
//        [delegate handleLoginOrRegSuccess_MMMethodMMM:cc thirdPlate_MMMethodMMM:LOGIN_TYPE_SELF];
        
        //记录升级事件
        [AdLogger logServerWithEventName_MMMethodMMM:AD_EVENT_UPGRADE_ACCOUNT];
        [AdLogger logWithEventName_MMMethodMMM:AD_EVENT_UPGRADE_ACCOUNT parameters_MMMethodMMM:nil];
        
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
        
        [self.view removeFromSuperview];
        
    } errorBlock_MMMethodMMM:^(BJError *error) {
        [AlertUtil showAlertWithMessage_MMMethodMMM:error.message];
//        if (self.mMWBlock) {
//            self.mMWBlock(NO, nil);
//        }
    }];
    
}

@end
