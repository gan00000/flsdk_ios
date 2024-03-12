//
//  FloatBindAccountViewController.m
//  MW_SDK
//
//  Created by Gan Yuanrong on 2024/3/8.
//  Copyright © 2024 Gama. All rights reserved.
//

#import "FloatChangePwdViewController.h"

#import "SdkHeader.h"
#import "FloatMenuResp.h"
#import "FloatConfigData.h"
#import "NSString+URLEncoding.h"
#import "UIButton+WebCache.h"
#import "UIImageView+WebCache.h"

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
    
    self.againPwdContentView.layer.cornerRadius = 16;
    self.againPwdContentView.layer.borderWidth = 0.5;
    self.againPwdContentView.layer.borderColor = [UIColor colorWithHexString_MMMethodMMM:@"#BABABA"].CGColor;
    self.againPwdIconImageView.image = GetImage(@"float_icon_again_pwd");
    
}


- (IBAction)confirmAction:(id)sender {
}

@end
