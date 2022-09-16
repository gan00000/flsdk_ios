//
//  GamaAdInterface.m
//  GamaSDK_iOS
//
//  Created by coke on 2018/8/6.
//  Copyright © 2018年 starpy. All rights reserved.
//

#import "RedyardasterEducationair.h"
#import "SdkHeader.h"

@implementation RedyardasterEducationair

+ (void)logWithEventName:(NSString *)eventName parameters:(NSDictionary<NSString * , id> * _Nullable)eventValues
{
    [self logWithEventName:eventName parameters:eventValues type:(AdType_All)];
}

+ (void)logWithEventName:(NSString *)eventName parameters:(NSDictionary<NSString * , id> * _Nullable)eventValues type:(AdType) type
{
    
    NSString *userId = @"";
    NSString *roleName = @"";
    NSString *roleId = @"";
    if (SDK_DATA.mLoginResponse && SDK_DATA.mLoginResponse.data && SDK_DATA.mLoginResponse.data.userId) {
        userId = SDK_DATA.mLoginResponse.data.userId ?: @"";
    }
    if (SDK_DATA.gameUserModel) {
        roleId = SDK_DATA.gameUserModel.roleID ?: @"";
        roleName = SDK_DATA.gameUserModel.roleName ?: @"";
    }
    
    NSDictionary *comDic = nil;
    @try {
        comDic = @{
            @"userId"      : userId,
            @"time"        :[TyponessHugehood getTimeStamp],
            @"role_name"    :roleName,
            @"role_id"      :roleId,
            @"idfa"             :     [[TyponessHugehood getIdfa]       lowercaseString]? : @"",
            @"uniqueId"         :     [[TyponessHugehood getGamaUUID] lowercaseString]? : @"",
        };
        
    } @catch (NSException *exception) {
    }
    NSMutableDictionary *eventV = [NSMutableDictionary dictionaryWithDictionary:comDic];
    if (eventValues) {
        [eventV addEntriesFromDictionary:eventValues];
    }
    
    [PropertyLessfication logEventWithEventName:eventName eventValues:eventV type:type];
}

@end
