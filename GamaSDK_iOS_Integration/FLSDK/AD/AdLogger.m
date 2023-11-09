

#import "AdLogger.h"
#import "SdkHeader.h"
#import "SDKRequest.h"

@implementation AdLogger

+ (void)logWithEventName_MMMethodMMM:(NSString *)eventName parameters_MMMethodMMM:(NSDictionary<NSString * , id> * _Nullable)eventValues
{
    [self logWithEventName_MMMethodMMM:eventName parameters_MMMethodMMM:eventValues type_MMMethodMMM:(AdType_All)];
}

+ (void)logWithEventName_MMMethodMMM:(NSString *)eventName parameters_MMMethodMMM:(NSDictionary<NSString * , id> * _Nullable)eventValues type_MMMethodMMM:(AdType) type
{
    
    NSString *userId = @"";
    NSString *serverTime = @"";
    NSString *roleName = @"";
    NSString *roleId = @"";
    if (SDK_DATA.mLoginResponse && SDK_DATA.mLoginResponse.data && SDK_DATA.mLoginResponse.data.userId) {
        userId = SDK_DATA.mLoginResponse.data.userId ?: @"";
        serverTime = SDK_DATA.mLoginResponse.data.timestamp ?: @"";
    }
    if (SDK_DATA.gameUserModel) {
        roleId = SDK_DATA.gameUserModel.roleID ?: @"";
        roleName = SDK_DATA.gameUserModel.roleName ?: @"";
    }
    
    NSDictionary *comDic = nil;
    @try {
        comDic = @{
            wwwww_tag_wwwww_userId      : userId,
            wwwww_tag_wwwww_serverTimestamp      : serverTime,
            wwwww_tag_wwwww_time        :[SUtil getTimeStamp_MMMethodMMM],
            wwwww_tag_wwwww_role_name    :roleName,
            wwwww_tag_wwwww_role_id      :roleId,
            wwwww_tag_wwwww_idfa             :     [[SUtil getIdfa_MMMethodMMM]       lowercaseString]? : @"",
            wwwww_tag_wwwww_uniqueId         :     [[SUtil getGamaUUID_MMMethodMMM] lowercaseString]? : @"",
            wwwww_tag_wwwww_platform      : wwwww_tag_wwwww_ios,
        };
        
    } @catch (NSException *exception) {
    }
    NSMutableDictionary *eventV = [NSMutableDictionary dictionaryWithDictionary:comDic];
    if (eventValues) {
        [eventV addEntriesFromDictionary:eventValues];
    }
    
    [AdDelegate logEventWithEventName_MMMethodMMM:eventName eventValues_MMMethodMMM:eventV type_MMMethodMMM:type];
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

+ (void)logServerWithEventName_MMMethodMMM:(NSString *)eventName
{
    
    if ([SdkUtil isReportEventName_MMMethodMMM:eventName]) {
        SDK_LOG(@"send event to sever exist, eventName=%@",eventName);
        return;
    }
    SDK_LOG(@"send event to sever, eventName=%@",eventName);
    [SDKRequest reportSdkEventWithEventName_MMMethodMMM:eventName successBlock_MMMethodMMM:^(id responseData) {
        [SdkUtil saveReportEventName_MMMethodMMM:eventName];
        SDK_LOG(@"send event to sever success, eventName=%@",eventName);
    } errorBlock_MMMethodMMM:^(BJError *error) {
        
    }];
}

@end
