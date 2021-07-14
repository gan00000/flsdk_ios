//
//  RegisterViewController.m
//  FLSDK
//
//  Created by ganyuanrong on 2021/7/13.
//  Copyright © 2021 Gama. All rights reserved.
//

#import "RegisterViewController.h"
#import "YYModel.h"
#import "AccountModel.h"
#import "GamaUtils.h"
#import "SdkHeader.h"
#import "SDKRequest.h"
#import "GamaPhoneModel.h"

@interface RegisterViewController ()

@property (weak, nonatomic) IBOutlet UILabel *loginTopTitleLabel;
@property (weak, nonatomic) IBOutlet UIImageView *sdkLogoImageView;

@property (weak, nonatomic) IBOutlet UITextField *loginAccountField;
@property (weak, nonatomic) IBOutlet UITextField *loginPwdField;
@property (weak, nonatomic) IBOutlet UIImageView *loginPwdEyesImageView;
@property (weak, nonatomic) IBOutlet UIButton *registerOkButton;
@property (weak, nonatomic) IBOutlet UIView *areaCodeSelectView;
@property (weak, nonatomic) IBOutlet UILabel *areaCodeLabel;
@property (weak, nonatomic) IBOutlet UITextField *phoneField;
@property (weak, nonatomic) IBOutlet UITextField *vfCodeField;
@property (weak, nonatomic) IBOutlet UIButton *sendVfCodeButton;

@property (nonatomic, strong) GamaPhoneModel *phoneModel;
@property (weak, nonatomic) IBOutlet UIImageView *agreeTermsImageView;
@property (weak, nonatomic) IBOutlet UILabel *platformRuleLabel;

@end

@implementation RegisterViewController
{
    int phoneCountdown;
    NSTimer *downTimer;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.sendVfCodeButton.layer.borderWidth = 1;
    self.sendVfCodeButton.layer.borderColor = [UIColor colorWithHexString:@"#FF37D2"].CGColor;
    self.sendVfCodeButton.layer.cornerRadius = 15;
    
    self.phoneModel = [[GamaPhoneModel alloc] init];
    self.phoneModel.delegate = self;
    
    self.agreeTermsImageView.layer.borderWidth = 0.6;
    self.agreeTermsImageView.layer.borderColor = [UIColor colorWithHexString:@"#999999"].CGColor;
    
    [self.areaCodeSelectView addTapActionWithBlock:^(UIGestureRecognizer *gestureRecoginzer) {
        [self.phoneModel gamaShowAreaCodesActionSheetFromView:self.areaCodeSelectView];
    }];
    
    self.agreeTermsImageView.tag = 0;
    self.agreeTermsImageView.userInteractionEnabled = YES;
    [self.agreeTermsImageView setImage:nil];
    [self.agreeTermsImageView addTapActionWithBlock:^(UIGestureRecognizer *gestureRecoginzer) {
        
        if (self.agreeTermsImageView.tag == 1) {
            self.agreeTermsImageView.tag = 0;
            [self.agreeTermsImageView setImage:nil];
        }else{
            self.agreeTermsImageView.tag = 1;
            [self.agreeTermsImageView setImage:[UIImage imageNamed:@"sdk_select_Image"]];
        }
        
    }];
}

+(NSString *)storyboardName
{
    return @"HGameRegisterVC";
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)startRegisterAccount:(id)sender {
    
    NSString *name = self.loginAccountField.text;
    NSString *password = self.loginPwdField.text;
    NSString *areaCode = self.areaCodeLabel.text;
    NSString *phoneNum = self.phoneField.text;
    NSString *vfCode = self.vfCodeField.text;

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
    
    if (self.agreeTermsImageView.tag != 1) {
        [GamaUtils gamaToastWithMsg:SDKConReaderGetLocalizedString(@"ALERT_MSG_AGREEMENT_RULE")];
        return;
    }
    
    
    if (self.bindType == 0) {
        [self requestRegister:areaCode name:name password:password phoneNum:phoneNum vfCode:vfCode];
    }else if (self.bindType == kBindFBActTag){
        
//        [self requestBindFb:areaCode name:name password:password phoneNum:phoneNum vfCode:vfCode];
        
    }else if (self.bindType == kBindAppleActTag){
        
//        [self requestBindApple:areaCode name:name password:password phoneNum:phoneNum vfCode:vfCode];
        
    }else if (self.bindType == kBindGuestActTag){
//        [self requestBindMac:areaCode name:name password:password phoneNum:phoneNum vfCode:vfCode];
    }
    
    
}
- (IBAction)startSendVfCode:(id)sender {
    
    NSString *areaCode = self.areaCodeLabel.text;
    NSString *phoneNum = self.phoneField.text;
    if (!phoneNum || [@"" isEqualToString:phoneNum]) {
        [GamaUtils gamaToastWithMsg:@"請輸入電話號碼"];
        return;
    }
    [self requestPhoneVerficationWithPhoneArea:areaCode phoneNumber:phoneNum];
    
}


- (void)requestRegister:(NSString *)areaCode name:(NSString *)name password:(NSString *)password phoneNum:(NSString *)phoneNum vfCode:(NSString *)vfCode {
    
    kWeakSelf
    [SDKRequest doRegisterAccountWithUserName:name
                                  andPassword:password
                                phoneAreaCode:areaCode
                                  phoneNumber:phoneNum
                                       vfCode:vfCode
                                   interfaces:@"1"
                               otherParamsDic:nil
                                 successBlock:^(id responseData) {
        
        CCSDKResponse *cc = (CCSDKResponse *)responseData;
        cc.account = name;
        cc.password = password;
        
        [weakSelf handleLoginOrRegSuccess:responseData thirdPlate:_SDK_PLAT_SELF];
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
    self.sendVfCodeButton.userInteractionEnabled = NO;
    [self.sendVfCodeButton setTitle:[NSString stringWithFormat:@"%d", phoneCountdown] forState:UIControlStateNormal];
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
        [self.sendVfCodeButton setTitle:[NSString stringWithFormat:@"%d", phoneCountdown] forState:UIControlStateNormal];
    }
    
}

-(void) resetVfCodeBtnStatue
{
    if (downTimer) {
        [downTimer invalidate];
        downTimer = nil;
    }
    self.sendVfCodeButton.userInteractionEnabled = YES;
    [self.sendVfCodeButton setTitle: @"獲取驗證碼" forState:UIControlStateNormal];
}

- (void)dealloc
{
    
    if (downTimer) {
        [downTimer invalidate];
        downTimer = nil;
    }
}

#pragma mark -- 电话号码

-(void)showSelectedAreaCodeValue:(NSString *)selectedAreaCodeValue{
    self.areaCodeLabel.text = selectedAreaCodeValue;
}


@end
