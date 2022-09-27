//
//  GamaAdInterface.m
//  GamaSDK_iOS
//
//  Created by coke on 2018/8/6.
//  Copyright © 2018年 starpy. All rights reserved.
//

#import "AdLogger.h"
#import "SdkHeader.h"
#import "SDKRequest.h"

@implementation AdLogger

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
            @"time"        :[SUtil getTimeStamp],
            @"role_name"    :roleName,
            @"role_id"      :roleId,
            @"idfa"             :     [[SUtil getIdfa]       lowercaseString]? : @"",
            @"uniqueId"         :     [[SUtil getGamaUUID] lowercaseString]? : @"",
            @"platform"      : @"ios",
        };
        
    } @catch (NSException *exception) {
    }
    NSMutableDictionary *eventV = [NSMutableDictionary dictionaryWithDictionary:comDic];
    if (eventValues) {
        [eventV addEntriesFromDictionary:eventValues];
    }
    
    [AdDelegate logEventWithEventName:eventName eventValues:eventV type:type];
}

+ (void)logServerWithEventName_Install
{

    if ([SdkUtil isReportEventName:SDK_LOG_EVENT_INSTALL]) {
        return;
    }
    [SDKRequest reportSdkEventWithEventName:SDK_LOG_EVENT_INSTALL successBlock:^(id responseData) {
        [SdkUtil saveReportEventName:SDK_LOG_EVENT_INSTALL];
    } errorBlock:^(BJError *error) {
        
    }];
}
@end
