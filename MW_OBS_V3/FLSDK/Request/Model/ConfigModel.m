//
//  ConfigModel.m
//  FLSDK
//
//  Created by Gan Yuanrong on 2022/6/20.
//  Copyright © 2022 Gama. All rights reserved.
//

#import "ConfigModel.h"

@implementation ConfigModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.visitorLogin = YES;
        self.fbLogin = YES;
        self.googleLogin = YES;
        self.lineLogin = YES;
        self.appleLogin = YES;
        self.deleteAccount = NO;
        self.appPassCheck = NO;
        self.showContract = YES;
        self.showLogo = NO;
        self.showForgetPwd = YES;
        self.showNotice = NO;
        
    }
    return self;
}

@end
