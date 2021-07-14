//
//  SdkBaseNavViewController.m
//  FLSDK
//
//  Created by ganyuanrong on 2021/7/13.
//  Copyright © 2021 Gama. All rights reserved.
//

#import "SdkBaseNavViewController.h"
#import "UIColor+HexColor.h"
#import "UINavigationBar+Awesome.h"

@interface SdkBaseNavViewController ()

@end

@implementation SdkBaseNavViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
//    self.navigationBar.translucent = NO;
//    [self.navigationBar lt_setBackgroundColor:[UIColor colorWithHexString:@"f43c7"]];
//    self.navigationBar.shadowImage = [UIImage imageNamed:@"sdk_login_bg"];
    

    [self.navigationBar lt_setBackgroundColor:[UIColor colorWithHexString:@"f43c7"]];
//    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"sdk_nav_back"]
//                                                                                       style:UIBarButtonItemStylePlain
//                                                                                      target:self
//                                                                                      action:@selector(backAction:)];
//    self.navigationItem.leftBarButtonItem.image = [UIImage imageNamed:@"sdk_nav_back"];
    
    



}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark - Back Action
- (void)backAction:(UIButton *)button {
//    UIViewController *viewController = self.topViewController;
    
    if (self.viewControllers.count == 1) {
        [self dismissViewControllerAnimated:YES completion:nil];
        return;
    }
    [self popViewControllerAnimated:YES];
}
@end
