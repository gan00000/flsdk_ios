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

@interface PersionCenterHorViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *gameIconIV;

@property (weak, nonatomic) IBOutlet UILabel *gameNameValueLabel;
@property (weak, nonatomic) IBOutlet UILabel *serverNameValueLabel;
@property (weak, nonatomic) IBOutlet UILabel *roleNameValueLabel;
@property (weak, nonatomic) IBOutlet UILabel *accountValueLabel;
@property (weak, nonatomic) IBOutlet UILabel *uidValueLabel;
@property (weak, nonatomic) IBOutlet UIButton *updateAccountBtn;
@property (weak, nonatomic) IBOutlet UIButton *changePwdBtn;
@property (weak, nonatomic) IBOutlet UIButton *switchAccountBtn;
@property (weak, nonatomic) IBOutlet UIButton *delAccountBtn;

@end

@implementation PersionCenterHorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    FloatConfigData *floatConfigData = SDK_DATA.floatConfigData;
    FloatMenuResp *floatMenuResp = SDK_DATA.floatMenuResp;
    if (floatMenuResp) {
        self.serverNameValueLabel.text = floatMenuResp.serverName;
        self.roleNameValueLabel.text = floatMenuResp.roleName;
        self.gameNameValueLabel.text = floatMenuResp.gameName;
        self.uidValueLabel.text = floatMenuResp.userId;
    }
    
    LoginResponse *mLoginResponse = SDK_DATA.mLoginResponse;
    if (mLoginResponse && mLoginResponse.data) {
        if (mLoginResponse.data.isBind) {
            self.accountValueLabel.text = mLoginResponse.data.account;
            self.accountValueLabel.hidden = NO;
            self.updateAccountBtn.hidden = YES;
        }else{
            self.accountValueLabel.hidden = YES;
            self.accountValueLabel.font = [UIFont systemFontOfSize:2];
            self.updateAccountBtn.hidden = NO;
        }
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

@end
