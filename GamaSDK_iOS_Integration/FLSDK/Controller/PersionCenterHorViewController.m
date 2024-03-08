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

#import "FloatBindAccountViewController.h"

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

@property (strong, nonatomic) FloatBindAccountViewController *mFloatBindAccountViewController;

@end

@implementation PersionCenterHorViewController

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
        self.uidValueLabel.text = floatMenuResp.userId;
    }
    
    LoginResponse *mLoginResponse = SDK_DATA.mLoginResponse;
    if (mLoginResponse && mLoginResponse.data) {
        if (mLoginResponse.data.isBind) {
            self.accountValueLabel.text = mLoginResponse.data.account;
            self.accountValueLabel.hidden = NO;
            self.accountLabel.hidden = NO;
            
            self.updateAccountBtn.hidden = YES;
        }else{
            self.accountValueLabel.hidden = YES;
            self.accountLabel.hidden = YES;
            self.accountLabel.font = [UIFont systemFontOfSize:2];
            self.updateAccountBtn.hidden = NO;
        }
    }
    
}


- (IBAction)goToUpdateAccountPage:(id)sender {
    
    self.mFloatBindAccountViewController = [[FloatBindAccountViewController alloc] initWithNibName:XIB_FloatBindAccountViewController bundle:SDK_BUNDLE];
    
    UIView *advViwe = self.mFloatBindAccountViewController.view;
    [self.view addSubview:advViwe];
    [advViwe mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(self.view);
    }];
}

- (IBAction)goToChangePwdPage:(id)sender {
}

- (IBAction)switchLoginAccount:(id)sender {
}

- (IBAction)delAccountAction:(id)sender {
}


@end
