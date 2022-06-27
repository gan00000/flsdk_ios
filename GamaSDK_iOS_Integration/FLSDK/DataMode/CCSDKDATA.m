//
//  R2SDKDATA.m
//  CCSkyHourSDK
//
//  Created by ganyuanrong on 2019/5/29.
//  Copyright © 2019 ganyuanrong. All rights reserved.
//

#import "CCSDKDATA.h"

@implementation CCSDKDATA

+ (instancetype)sharedSdkData
{
    static CCSDKDATA * pfData = nil;
    static dispatch_once_t once_dispatch;
    dispatch_once(&once_dispatch, ^{
        pfData = [[CCSDKDATA alloc] initSDKDATA];
    });
    return pfData;
}

- (instancetype)initSDKDATA
{
    if (self = [super init]) {
//        [self releaseData];
        [self initData];
         
    }
    return self;
}




#pragma mark -
#pragma mark - Private Action

- (void)initData
{
    ConfigModel *mcm = [[ConfigModel alloc] init];
    mcm.visitorLogin = YES;
    mcm.fbLogin = YES;
    mcm.googleLogin = YES;
    mcm.lineLogin = YES;
    mcm.appleLogin = YES;
    mcm.delectAccount = NO;
    self.mConfigModel = mcm;
    
    
    GameUserModel *mGameUserModel = [[GameUserModel alloc] init];
    mGameUserModel.roleID = @"";
    mGameUserModel.roleName = @"";
    mGameUserModel.roleLevel = @"";
    mGameUserModel.roleVipLevel = @"";
    mGameUserModel.serverCode = @"";
    mGameUserModel.serverName = @"";
    self.gameUserModel = mGameUserModel;
}


@end
