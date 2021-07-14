//
//  MainHomeViewController.m
//  FLSDK
//
//  Created by ganyuanrong on 2021/7/13.
//  Copyright © 2021 Gama. All rights reserved.
//

#import "MainHomeViewController.h"
#import "AccountLoginViewController.h"
#import "SDKRequest.h"

@interface MainHomeViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *sdkLogoImageView;

@property (weak, nonatomic) IBOutlet UIButton *accountLoginButton;

@property (weak, nonatomic) IBOutlet UIButton *guestLoginButton;

@end

@implementation MainHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    self.accountLoginButton.layer.cornerRadius
}

+(NSString *)storyboardName
{
    return @"HGameMainHomeVC";
}

- (IBAction)goAccountLoginVCAction:(id)sender {
    
    AccountLoginViewController *xAccountLoginViewController = [AccountLoginViewController createViewController];
    [self.navigationController pushViewController:xAccountLoginViewController animated:YES];
}

- (IBAction)startGuestLoginAction:(id)sender {
    
    kWeakSelf
    [SDKRequest freeLoginOrRegisterWithSuccessBlock:^(id responseData) {
        
        [weakSelf handleLoginOrRegSuccess:responseData thirdPlate:_SDK_PLAT_MAC];
        
    } errorBlock:^(BJError *error) {
        if (error && error.message) {
            [GamaAlertView showAlertWithMessage:error.message];
        }
        
    }];
    
}

@end
