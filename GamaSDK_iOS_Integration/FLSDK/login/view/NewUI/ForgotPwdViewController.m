//
//  ForgotPwdViewController.m
//  FLSDK
//
//  Created by ganyuanrong on 2021/7/13.
//  Copyright © 2021 Gama. All rights reserved.
//

#import "ForgotPwdViewController.h"

@interface ForgotPwdViewController ()

@property (weak, nonatomic) IBOutlet UILabel *loginTopTitleLabel;
@property (weak, nonatomic) IBOutlet UIImageView *sdkLogoImageView;

@property (weak, nonatomic) IBOutlet UITextField *loginAccountField;
@property (weak, nonatomic) IBOutlet UIButton *forgotOkButton;
@property (weak, nonatomic) IBOutlet UIView *areaCodeSelectView;
@property (weak, nonatomic) IBOutlet UILabel *areaCodeLabel;
@property (weak, nonatomic) IBOutlet UITextField *phoneField;

@end

@implementation ForgotPwdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

+(NSString *)storyboardName
{
    return @"HGameForgotPwdVC";
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)startForgotAction:(id)sender {
}

@end
