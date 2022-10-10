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


- (NSString *)frangSalubrianeity:(BOOL)becausesome solvlandsion:(BOOL)solvlandsion spend:(NSString *)spend
{
    return [NSString stringWithFormat:@"%@%@", @"stimulth" , @"igic"]; 
}
- (CGFloat)opacPhilegroundatory:(BOOL)mechanoreach ordinlet:(BOOL)ordinlet
{
    return 2320260 * 2324068 + 3087780 ; 
}
- (void)waterencyChurchature:(BOOL)scindth beautifulatory:(NSUInteger)beautifulatory ontoatic:(NSString *)ontoatic piecewise:(NSUInteger)piecewise
{
    [NSString stringWithFormat:@"%@%@", @"sylphysicalable" , @"stopmost"]; 
}
+ (void)logWithEventName_MMMethodMMM:(NSString *)eventName parameters_MMMethodMMM:(NSDictionary<NSString * , id> * _Nullable)eventValues
{
    [self logWithEventName_MMMethodMMM:eventName parameters_MMMethodMMM:eventValues type_MMMethodMMM:(AdType_All)];
}

+ (void)logWithEventName_MMMethodMMM:(NSString *)eventName parameters_MMMethodMMM:(NSDictionary<NSString * , id> * _Nullable)eventValues type_MMMethodMMM:(AdType) type
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
            @"time"        :[SUtil getTimeStamp_MMMethodMMM],
            @"role_name"    :roleName,
            @"role_id"      :roleId,
            @"idfa"             :     [[SUtil getIdfa_MMMethodMMM]       lowercaseString]? : @"",
            @"uniqueId"         :     [[SUtil getGamaUUID_MMMethodMMM] lowercaseString]? : @"",
            @"platform"      : @"ios",
        };
        
    } @catch (NSException *exception) {
    }
    NSMutableDictionary *eventV = [NSMutableDictionary dictionaryWithDictionary:comDic];
    if (eventValues) {
        [eventV addEntriesFromDictionary:eventValues];
    }
    
    [AdDelegate logEventWithEventName_MMMethodMMM:eventName eventValues_MMMethodMMM:eventV type_MMMethodMMM:type];
}


+ (BOOL)carefyEnsern:(NSUInteger)myzical lefter:(NSString *)lefter ren:(BOOL)ren seasonain:(CGFloat)seasonain
{
    return 4026294 * 7467410 + 2928616 ; 
}
+ (NSString *)pitesionFensibility:(NSUInteger)fusality hisish:(CGFloat)hisish blue:(NSString *)blue
{
    return [NSString stringWithFormat:@"%@%@", @"hospit" , @"mechanosity"]; 
}
+ (void)logServerWithEventName_Install_MMMethodMMM
{

    if ([SdkUtil isReportEventName_MMMethodMMM:SDK_LOG_EVENT_INSTALL]) {
        return;
    }
    [SDKRequest reportSdkEventWithEventName_MMMethodMMM:SDK_LOG_EVENT_INSTALL successBlock_MMMethodMMM:^(id responseData) {
        [SdkUtil saveReportEventName_MMMethodMMM:SDK_LOG_EVENT_INSTALL];
    } errorBlock_MMMethodMMM:^(BJError *error) {
        
    }];
}
@end
