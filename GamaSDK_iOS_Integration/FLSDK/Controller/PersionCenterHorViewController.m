//
//  PersionCenterHorViewController.m
//  MW_SDK
//
//  Created by Gan Yuanrong on 2024/3/5.
//  Copyright © 2024 Gama. All rights reserved.
//

#import "PersionCenterHorViewController.h"
#import "SdkHeader.h"
#import "FloatMenuResp.h"
#import "FloatConfigData.h"
#import "NSString+URLEncoding.h"
#import "UIButton+WebCache.h"
#import "UIImageView+WebCache.h"
#import "LoginHelper.h"

#import "FloatBindAccountViewController.h"
#import "FloatChangePwdViewController.h"

@interface PersionCenterHorViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *gameIconIV;

@property (weak, nonatomic) IBOutlet UILabel *gameNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *serverCodeLabel;
@property (weak, nonatomic) IBOutlet UILabel *roleNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *accountLabel;
@property (weak, nonatomic) IBOutlet UILabel *uidLabel;


@property (weak, nonatomic) IBOutlet UILabel *gameNameValueLabel;
@property (weak, nonatomic) IBOutlet UILabel *serverNameValueLabel;
@property (weak, nonatomic) IBOutlet UILabel *roleNameValueLabel;
@property (weak, nonatomic) IBOutlet UILabel *accountValueLabel;
@property (weak, nonatomic) IBOutlet UILabel *uidValueLabel;
@property (weak, nonatomic) IBOutlet UIButton *updateAccountBtn;
@property (weak, nonatomic) IBOutlet UIButton *changePwdBtn;
@property (weak, nonatomic) IBOutlet UIButton *switchAccountBtn;
@property (weak, nonatomic) IBOutlet UIButton *delAccountBtn;
@property (weak, nonatomic) IBOutlet UIView *delContentView;
@property (weak, nonatomic) IBOutlet UIButton *cancelDelBtn;
@property (weak, nonatomic) IBOutlet UIButton *confirmDelBtn;
@property (weak, nonatomic) IBOutlet UILabel *delWarmLabel;
@property (weak, nonatomic) IBOutlet UIImageView *delWarnIcon;

@property (strong, nonatomic) FloatBindAccountViewController *mFloatBindAccountViewController;
@property (strong, nonatomic) FloatChangePwdViewController *mFloatChangePwdViewController;

@end

@implementation PersionCenterHorViewController

- (void)makeViewStatus {
    
    LoginResponse *mLoginResponse = SDK_DATA.mLoginResponse;
    if (mLoginResponse && mLoginResponse.data) {
        if (mLoginResponse.data.isBind) {
            self.accountValueLabel.text = mLoginResponse.data.loginId;
            self.accountValueLabel.hidden = NO;
            self.accountLabel.hidden = NO;
            self.accountLabel.font = [UIFont systemFontOfSize:11];
            self.updateAccountBtn.hidden = YES;
        }else{
            self.accountValueLabel.hidden = YES;
            self.accountLabel.hidden = YES;
            self.accountLabel.font = [UIFont systemFontOfSize:2];
            self.updateAccountBtn.hidden = NO;
        }
        self.uidValueLabel.text = mLoginResponse.data.userId;
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.changePwdBtn.layer.cornerRadius = 16;
    self.switchAccountBtn.layer.cornerRadius = 16;
    self.updateAccountBtn.layer.cornerRadius = 12;
    
    FloatConfigData *floatConfigData = SDK_DATA.floatConfigData;
    [self.gameIconIV sd_setImageWithURL:[NSURL URLWithString:floatConfigData.gameIcon] placeholderImage:[SUtil getAppIconImage_MMMethodMMM]];
    
    FloatMenuResp *floatMenuResp = SDK_DATA.floatMenuResp;
    if (floatMenuResp) {
        self.serverNameValueLabel.text = [floatMenuResp.serverName urlDecode_MMMethodMMM];
        self.roleNameValueLabel.text = [floatMenuResp.roleName urlDecode_MMMethodMMM];
        self.gameNameValueLabel.text = [floatMenuResp.gameName urlDecode_MMMethodMMM];
        //self.uidValueLabel.text = floatMenuResp.userId;
    }
    
    [self makeViewStatus];
    
    
    self.delContentView.hidden = YES;
    self.delContentView.layer.cornerRadius = 15;
    
    self.delWarnIcon.image = GetImage(@"float_del_account_warnings");
    self.cancelDelBtn.layer.cornerRadius = 16;
    self.cancelDelBtn.layer.borderColor = [UIColor colorWithHexString_MMMethodMMM:@"#DDDDDD"].CGColor;
    self.cancelDelBtn.layer.borderWidth = 0.5;
    
    self.confirmDelBtn.layer.cornerRadius = 16;
}


- (IBAction)goToUpdateAccountPage:(id)sender {
    
    self.mFloatBindAccountViewController = [[FloatBindAccountViewController alloc] initWithNibName:XIB_FloatBindAccountViewController bundle:SDK_BUNDLE];
    self.mFloatBindAccountViewController.mMWBlock = ^(BOOL success, id  _Nullable result) {
        if (success) {
            [self makeViewStatus];
        }
    };
    UIView *advViwe = self.mFloatBindAccountViewController.view;
    [self.view addSubview:advViwe];
    [advViwe mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(self.view);
        make.top.bottom.trailing.mas_equalTo(self.view);
    }];
}

- (IBAction)goToChangePwdPage:(id)sender {
    
    self.mFloatChangePwdViewController = [[FloatChangePwdViewController alloc] initWithNibName:XIB_FloatChangePwdViewController bundle:SDK_BUNDLE];
    
    UIView *advViwe = self.mFloatChangePwdViewController.view;
    [self.view addSubview:advViwe];
    [advViwe mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(self.view);
        make.top.bottom.trailing.mas_equalTo(self.view);
    }];
    
}

- (IBAction)switchLoginAccount:(id)sender {
    
    [self.mFloatContentViewController dismissViewControllerAnimated:NO completion:^{
        
    }];
    if ([MWSDK share].switchAccountBlock) {
        [MWSDK share].switchAccountBlock(YES, nil);
    }
    
}

- (IBAction)delAccountAction:(id)sender {
    
    self.delContentView.hidden = NO;
}

- (IBAction)cancelDelBtnAction:(id)sender {
    self.delContentView.hidden = YES;
}
- (IBAction)confirmDelBtnAction:(id)sender {
    
    [self doDeleteAccount_MMMethodMMM];
}


- (void)doDeleteAccount_MMMethodMMM {
    
//    if (!currentAccountModel || [StringUtil isEmpty_MMMethodMMM:currentAccountModel.userId]) {
//        [SdkUtil toastMsg_MMMethodMMM:wwwww_tag_wwwww_text_select_account.localx];
//        return;
//    }
//    [LoginHelper deleteAccountAndRequest_MMMethodMMM:nil view_MMMethodMMM:self.view account_MMMethodMMM:SDK_DATA.mLoginResponse.data otherParamsDic_MMMethodMMM:nil successBlock_MMMethodMMM:^{
//
//        [deleteAccountConfireView removeFromSuperview];
//
//
//    }];
    
    [SDKRequest requestDeleteUserAccount_MMMethodMMM:SDK_DATA.mLoginResponse.data otherParamsDic_MMMethodMMM:nil successBlock_MMMethodMMM:^(id responseData) {
        
        LoginResponse *cc = (LoginResponse *)responseData;
        [SdkUtil toastMsg_MMMethodMMM:cc.message];
        [[ConfigCoreUtil share] removeAccountByUserId_MMMethodMMM:SDK_DATA.mLoginResponse.data.userId];
        self.delContentView.hidden = YES;
        
        [self switchLoginAccount:nil];
        
    } errorBlock_MMMethodMMM:^(BJError *error) {
        [AlertUtil showAlertWithMessage_MMMethodMMM:error.message];
    }];
}

@end
