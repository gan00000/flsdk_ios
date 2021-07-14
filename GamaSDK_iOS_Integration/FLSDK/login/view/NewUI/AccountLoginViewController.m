//
//  HomeViewController.m
//  GamaSDK_iOS
//
//  Created by ganyuanrong on 2021/7/9.
//  Copyright © 2021 Gama. All rights reserved.
//

#import "AccountLoginViewController.h"

#import "RegisterViewController.h"
#import "UIView+BlockGesture.h"
#import "ForgotPwdViewController.h"
#import "YYModel.h"
#import "AccountModel.h"
#import "GamaUtils.h"
#import "SdkHeader.h"
#import "SDKRequest.h"

@interface AccountLoginViewController ()

@property (weak, nonatomic) IBOutlet UILabel *loginTopTitleLabel;
@property (weak, nonatomic) IBOutlet UIImageView *sdkLogoImageView;

@property (weak, nonatomic) IBOutlet UITextField *loginAccountField;
@property (weak, nonatomic) IBOutlet UITextField *loginPwdField;
@property (weak, nonatomic) IBOutlet UIImageView *loginPwdEyesImageView;
@property (weak, nonatomic) IBOutlet UIButton *loginOkButton;
@property (weak, nonatomic) IBOutlet UILabel *forgotPwdLabel;
@property (weak, nonatomic) IBOutlet UILabel *registerAccountLabel;
@property (weak, nonatomic) IBOutlet UILabel *changePwdLabel;
@property (weak, nonatomic) IBOutlet UIImageView *rememberAccountImageView;

@property (weak, nonatomic) IBOutlet UILabel *addd;

@end

@implementation AccountLoginViewController


+(NSString *)storyboardName
{
    return @"HGameAccountLoginVC";
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.registerAccountLabel.userInteractionEnabled = YES;
    [self.registerAccountLabel addTapActionWithBlock:^(UIGestureRecognizer *gestureRecoginzer) {
        
        RegisterViewController *mRegisterViewController = [RegisterViewController createViewController];
        mRegisterViewController.bindType = 0;
        [self.navigationController pushViewController:mRegisterViewController animated:YES];
    }];
    
    self.forgotPwdLabel.userInteractionEnabled = YES;
    [self.forgotPwdLabel addTapActionWithBlock:^(UIGestureRecognizer *gestureRecoginzer) {
        
        ForgotPwdViewController *mForgotPwdViewController = [ForgotPwdViewController createViewController];
        [self.navigationController pushViewController:mForgotPwdViewController animated:YES];
    }];
    
    
    self.rememberAccountImageView.layer.borderWidth = 0.6;
    self.rememberAccountImageView.layer.borderColor = [UIColor colorWithHexString:@"#999999"].CGColor;
    self.rememberAccountImageView.tag = 1;
    self.rememberAccountImageView.userInteractionEnabled = YES;
//    [self.rememberAccountImageView setImage:nil];
    [self.rememberAccountImageView addTapActionWithBlock:^(UIGestureRecognizer *gestureRecoginzer) {
        
        if (self.rememberAccountImageView.tag == 1) {
            self.rememberAccountImageView.tag = 0;
            [self.rememberAccountImageView setImage:nil];
        }else{
            self.rememberAccountImageView.tag = 1;
            [self.rememberAccountImageView setImage:[UIImage imageNamed:@"sdk_select_Image"]];
        }
        
    }];
    
    self.loginPwdEyesImageView.userInteractionEnabled = YES;
    self.loginPwdEyesImageView.tag = 1;
    self.loginPwdField.secureTextEntry = YES;
    [self.loginPwdEyesImageView addTapActionWithBlock:^(UIGestureRecognizer *gestureRecoginzer) {
        
        if (self.loginPwdEyesImageView.tag == 1) {
            self.loginPwdEyesImageView.tag = 0;
            [self.loginPwdEyesImageView setImage:[UIImage imageNamed:@"sdk_eyes_open_image"]];
            self.loginPwdField.secureTextEntry = NO;
        }else{
            self.loginPwdEyesImageView.tag = 1;
            [self.loginPwdEyesImageView setImage:[UIImage imageNamed:@"sdk_eyes_close_image"]];
            self.loginPwdField.secureTextEntry = YES;
        }
        
    }];
    
    NSArray<AccountModel *> *mAccountArray = [[ConfigCoreUtil share] getAccountModels];//获取保存的数据
     if (mAccountArray.count > 0){//设置默认显示第一个，即按照时间排序最后登录的一个账号
         self.loginAccountField.text = mAccountArray[0].accountName;
         self.loginPwdField.text = mAccountArray[0].accountPwd;
     }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)startLogin:(id)sender {
    [self requestAccountLogin];
}

-(void) requestAccountLogin
{
    
    NSString *accountName = [GamaUtils triString:self.loginAccountField.text];
    NSString *pwd = [GamaUtils triString:self.loginPwdField.text];
    
    if (!accountName || [accountName isEqualToString:@""]) {
        [GamaUtils gamaToastWithMsg:SDKConReaderGetLocalizedString(@"TXT_PH_ACCOUNT_INPUT_ACCOUNT")];
        return;
    }
    
    if (![GamaUtils validUserName:accountName]) {
        [GamaUtils gamaToastWithMsg:SDKConReaderGetLocalizedString(@"ALERT_MSG_ACCOUNT_RULE")];
        return;
    }
    
    if (!pwd || [pwd isEqualToString:@""]) {
        [GamaUtils gamaToastWithMsg:SDKConReaderGetLocalizedString(@"TXT_PH_ACCOUNT_INPUT_PWD")];
        return;
    }
//    if (GamaLoginViewModel.model.vfConfig == YES){
//        if(vfTF.text.length<1){
//            [GamaUtils gamaToastWithMsg:SDKConReaderGetLocalizedString(@"GAMA_LOGIN_CAPTCH_PLACEHOLDER")];
//            return;
//        }
//    }

    if (self.rememberAccountImageView.tag == 1) {
        [ConfigCoreUtil share].isSaveAccountInfo = YES;
    }else{
        [ConfigCoreUtil share].isSaveAccountInfo = NO;
    }
    
    kWeakSelf
    [SDKRequest doLoginWithAccount:accountName andPassword:pwd otherDic:nil successBlock:^(id responseData) {
        
        CCSDKResponse *cc = (CCSDKResponse *)responseData;
        cc.account = accountName;
        cc.password = pwd;
        [weakSelf handleLoginOrRegSuccess:cc thirdPlate:_SDK_PLAT_SELF];
        
    } errorBlock:^(BJError *error) {
        [GamaAlertView showAlertWithMessage:error.message];
    }];
}




@end
