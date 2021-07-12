//
//  HomeViewController.m
//  GamaSDK_iOS
//
//  Created by ganyuanrong on 2021/7/9.
//  Copyright © 2021 Gama. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@property (retain, nonatomic) IBOutlet UILabel *loginTopTitleLabel;
@property (retain, nonatomic) IBOutlet UIImageView *sdkLogoImageView;

@property (retain, nonatomic) IBOutlet UITextField *loginAccountField;
@property (retain, nonatomic) IBOutlet UITextField *loginPwdField;
@property (retain, nonatomic) IBOutlet UIImageView *loginPwdEyesImageView;
@property (retain, nonatomic) IBOutlet UIButton *loginOkButton;
@property (retain, nonatomic) IBOutlet UILabel *forgotPwdLabel;
@property (retain, nonatomic) IBOutlet UILabel *registerAccountLabel;
@property (retain, nonatomic) IBOutlet UILabel *changePwdLabel;
@property (retain, nonatomic) IBOutlet UIImageView *rememberAccountImageView;

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
}


- (void)dealloc {
    [_loginTopTitleLabel release];
    [_sdkLogoImageView release];
    [_loginAccountField release];
    [_loginPwdField release];
    [_loginPwdEyesImageView release];
    [_loginOkButton release];
    [_forgotPwdLabel release];
    [_registerAccountLabel release];
    [_changePwdLabel release];
    [_rememberAccountImageView release];
    [super dealloc];
}
@end
