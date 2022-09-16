//
//  R2SDKDATA.m
//  CCSkyHourSDK
//
//  Created by ganyuanrong on 2019/5/29.
//  Copyright © 2019 ganyuanrong. All rights reserved.
//

#import "HeiseLeuker.h"

@implementation HeiseLeuker

+ (instancetype)sharedSdkData
{
    static HeiseLeuker * pfData = nil;
    static dispatch_once_t once_dispatch;
    dispatch_once(&once_dispatch, ^{
        pfData = [[HeiseLeuker alloc] initSDKDATA];
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
    self.mConfigModel = mcm;
    
    DorspoorencyDesdata *mGameUserModel = [[DorspoorencyDesdata alloc] init];
    self.gameUserModel = mGameUserModel;
}


@end
