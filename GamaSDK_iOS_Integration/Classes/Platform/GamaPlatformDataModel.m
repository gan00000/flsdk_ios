//
//  GamaPlatformDataModel.m
//  GamaSDK_iOS
//
//  Created by sunn on 2017/8/11.
//  Copyright © 2017年 gama. All rights reserved.
//

#import "GamaPlatformDataModel.h"

@implementation GamaPlatformDataModel

- (instancetype)initWithDic:(NSDictionary *)dic
{
    if (self = [super init]) {
        self.icon   = [NSString stringWithFormat:@"%@", dic[@"icon"]];
        self.itemId = [NSString stringWithFormat:@"%@", dic[@"itemId"]];
        self.name   = [NSString stringWithFormat:@"%@", dic[@"name"]];
        self.url    = [NSString stringWithFormat:@"%@", dic[@"url"]];
    }
    return self;
}

@end

@implementation GamaRewardCenterModel

- (instancetype)initWithDic:(NSDictionary *)dic
{
    if (self = [super init]) {
        self.activityCode   = [NSString stringWithFormat:@"%@",dic[@"activityCode"]];
        self.rewardName     = [NSString stringWithFormat:@"%@",dic[@"rewardName"]];
        self.icon           = [NSString stringWithFormat:@"%@",dic[@"icon"]];
        self.giftbagGameCode       = [NSString stringWithFormat:@"%@",dic[@"giftbagGameCode"]];
        self.isReceive      = [NSString stringWithFormat:@"%@",dic[@"isReceive"]];
        self.time           = [NSString stringWithFormat:@"%@",dic[@"time"]];
        self.title          = [NSString stringWithFormat:@"%@",dic[@"title"]];
    }
    return self;
}

@end

@implementation GamaEmailModel

- (instancetype)initWithDic:(NSDictionary *)dic
{
    if (self = [super init]) {
        self.readStatus     = [NSString stringWithFormat:@"%@",dic[@"readStatus"]];
        self.time           = [NSString stringWithFormat:@"%@",dic[@"time"]];
        self.title          = [NSString stringWithFormat:@"%@",dic[@"title"]];
        self.url            = [NSString stringWithFormat:@"%@",dic[@"url"]];
        self.status         = [NSString stringWithFormat:@"%@",dic[@"status"]];
        self.messageId      = [NSString stringWithFormat:@"%@",dic[@"messageId"]];
    }
    return self;
}

@end

@implementation GamaSerialModel

- (instancetype)initWithDic:(NSDictionary *)dic
{
    if (self = [super init]) {
        self.rewardName         = [NSString stringWithFormat:@"%@",dic[@"rewardName"]];
        self.giftbag            = [NSString stringWithFormat:@"%@",dic[@"giftbag"]];
        self.time               = [NSString stringWithFormat:@"%@",dic[@"time"]];
        self.title              = [NSString stringWithFormat:@"%@",dic[@"title"]];
    }
    return self;
}

@end

@implementation GamaReginRegularModel

- (instancetype)initWithDic:(NSDictionary *)dic
{
    if (self = [super init]) {
        self.code         = [NSString stringWithFormat:@"%@",dic[@"code"]];
        self.name         = [NSString stringWithFormat:@"%@",dic[@"name"]];
        self.pattern      = [NSString stringWithFormat:@"%@",dic[@"pattern"]];
    }
    return self;
}

@end

/**
 *  平台用户信息
 */
@implementation GamaPlatformUserShareData

+ (instancetype)sharePlatUser
{
    static GamaPlatformUserShareData *_instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[GamaPlatformUserShareData alloc] init];
    });
    return _instance;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.isObtainUserInfo = NO;
        self.isObtainBindPhoneInfo = NO;
    }
    return self;
}

@end
