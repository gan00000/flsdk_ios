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

+ (void)logWithEventName_MMMethodMMM:(NSString *)eventName parameters_MMMethodMMM:(NSDictionary<NSString * , id> * _Nullable)eventValues
{
    [self logWithEventName_MMMethodMMM:eventName parameters_MMMethodMMM:eventValues type_MMMethodMMM:(AdType_All)];
}

+ (void)logWithEventName_MMMethodMMM:(NSString *)eventName parameters_MMMethodMMM:(NSDictionary<NSString * , id> * _Nullable)eventValues type_MMMethodMMM:(AdType) type
{
    
    NSString *userId = @"";
    NSString *serverTime = @"";//serverTime
    NSString *roleName = @"";
    NSString *roleId = @"";
    if (SDK_DATA.mLoginResponse_MMMPRO && SDK_DATA.mLoginResponse_MMMPRO.data && SDK_DATA.mLoginResponse_MMMPRO.data.userId) {
        userId = SDK_DATA.mLoginResponse_MMMPRO.data.userId ?: @"";
        serverTime = SDK_DATA.mLoginResponse_MMMPRO.data.timestamp ?: @"";
    }
    if (SDK_DATA.gameUserModel_MMMPRO) {
        roleId = SDK_DATA.gameUserModel_MMMPRO.roleID ?: @"";
        roleName = SDK_DATA.gameUserModel_MMMPRO.roleName ?: @"";
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

+ (void)logWithEventName_MMMethodMMM:(NSString *)eventName parameters_MMMethodMMM:(NSDictionary<NSString * , id> * _Nullable)eventValues type_MMMethodMMM:(AdType) type isOnce:(BOOL) isOnce{
    
    if(isOnce){
        NSString *eventNameTag = STR_FORMAT(wwwww_tag_wwwww_hysterfier_throughouty, eventName, SDK_DATA.mLoginResponse_MMMPRO.data.userId);
        if ([SdkUtil isReportEventName_MMMethodMMM: eventNameTag]) {
            SDK_LOG(wwwww_tag_wwwww_purposeon_commercialsive,eventName);
            return;
        }
        SDK_LOG(wwwww_tag_wwwww_notopatientacity_sperm,eventName);
        [self logWithEventName_MMMethodMMM:eventName parameters_MMMethodMMM:eventValues type_MMMethodMMM:type];
        [SdkUtil saveReportEventName_MMMethodMMM:eventNameTag];
    }else{
        [self logWithEventName_MMMethodMMM:eventName parameters_MMMethodMMM:eventValues type_MMMethodMMM:type];
    }
 
}

+ (void)logEventPurchaseValues_MMMethodMMM:(PayData *)mPayData type_MMMethodMMM:(AdType) type{
    
    if (!mPayData.orderId || [@"" isEqualToString:mPayData.orderId]){//判断orderId存在才上报
        return;
    }
    
    [AdDelegate logEventPurchaseValues_MMMethodMMM:mPayData type_MMMethodMMM:type name_MMMethodMMM:nil];
    [AdDelegate logEventPurchaseValues_MMMethodMMM:mPayData type_MMMethodMMM:AdType_Firebase name_MMMethodMMM:wwwww_tag_wwwww_purchase_hf];
    
    GameUserModel *gGameUserModel = [[ConfigCoreUtil share] getGameUserInfo_MMMethodMMM:SDK_DATA.mLoginResponse_MMMPRO.data.userId];
    if(gGameUserModel){
        if(gGameUserModel.isPay){//已经充值过
            
            if(gGameUserModel.isSecondPay){
                //NOT TO DO
            }else{//第二次充值上报
                gGameUserModel.isSecondPay = YES;
//                [[ConfigCoreUtil share] updateGameUserInfo_MMMethodMMM:gGameUserModel];
                //上报
                
            }
            
        }else{//该用户第一次充值
            gGameUserModel.isPay = YES;
            gGameUserModel.firstPayTime = [SUtil getTimeStamp_MMMethodMMM];
            if([[SUtil getDateStringWithTimeStr_MMMethodMMM:gGameUserModel.firstPayTime dateFormat_MMMethodMMM:@"yyyy-MM-dd"] isEqualToString:[SUtil getDateStringWithTimeStr_MMMethodMMM:gGameUserModel.regTime dateFormat_MMMethodMMM:@"yyyy-MM-dd"]]){//是否注册首日付费玩家
                gGameUserModel.isRegDayPay = YES;
            }else{
                gGameUserModel.isRegDayPay = NO;
            }
//            [[ConfigCoreUtil share] updateGameUserInfo_MMMethodMMM:gGameUserModel];
            
            [AdDelegate logEventPurchaseValues_MMMethodMMM:mPayData type_MMMethodMMM:type name_MMMethodMMM:wwwww_tag_wwwww_purchase_first_charge_hf];
        }
        
//        if(mPayData.amount > 4){
//
//            NSString *curTime = [SUtil getTimeStamp_MMMethodMMM];
//            if([[SUtil getDateStringWithTimeStr_MMMethodMMM:curTime dateFormat_MMMethodMMM:@"yyyy-MM-dd"] isEqualToString:[SUtil getDateStringWithTimeStr_MMMethodMMM:gGameUserModel.regTime dateFormat_MMMethodMMM:@"yyyy-MM-dd"]]){//是否注册首日玩家
//
//                [AdLogger logWithEventName_MMMethodMMM:AD_EVENT_purchase_over4 parameters_MMMethodMMM:eventValues];
//            }
//        }
        
        if(mPayData.amount > 99){
            [self logWithEventName_MMMethodMMM:wwwww_tag_wwwww_purchase_99_single_hf parameters_MMMethodMMM:nil type_MMMethodMMM:type isOnce:YES];
        }
        
        gGameUserModel.payAmount = gGameUserModel.payAmount + mPayData.amount;
        gGameUserModel.payCount = gGameUserModel.payCount + 1;
        
        [[ConfigCoreUtil share] updateGameUserInfo_MMMethodMMM:gGameUserModel];//更新数据
        
        if(gGameUserModel.payAmount >= 50){
            [self logWithEventName_MMMethodMMM:wwwww_tag_wwwww_continuous_50_dollars_recharege_hf parameters_MMMethodMMM:nil type_MMMethodMMM:type isOnce:YES];
        }
        if(gGameUserModel.payAmount >= 100){
            [self logWithEventName_MMMethodMMM:wwwww_tag_wwwww_continuous_100_dollars_recharege_hf parameters_MMMethodMMM:nil type_MMMethodMMM:type isOnce:YES];
        }
        if(gGameUserModel.payAmount >= 500){
            [self logWithEventName_MMMethodMMM:wwwww_tag_wwwww_continuous_500_dollars_recharege_hf parameters_MMMethodMMM:nil type_MMMethodMMM:type isOnce:YES];
        }
        if(gGameUserModel.payAmount >= 1000){
            [self logWithEventName_MMMethodMMM:wwwww_tag_wwwww_continuous_1000_dollars_recharege_hf parameters_MMMethodMMM:nil type_MMMethodMMM:type isOnce:YES];
        }
        if(gGameUserModel.payAmount >= 3000){
            [self logWithEventName_MMMethodMMM:wwwww_tag_wwwww_continuous_3000_dollars_recharege_hf parameters_MMMethodMMM:nil type_MMMethodMMM:type isOnce:YES];
        }
        
        if(gGameUserModel.payCount == 2){
            [self logWithEventName_MMMethodMMM:wwwww_tag_wwwww_purchase_2rd_charge_hf parameters_MMMethodMMM:nil type_MMMethodMMM:type isOnce:YES];
        }
        if(gGameUserModel.payCount == 3){
            [self logWithEventName_MMMethodMMM:wwwww_tag_wwwww_purchase_3rd_charge_hf parameters_MMMethodMMM:nil type_MMMethodMMM:type isOnce:YES];
        }
        if(gGameUserModel.payCount == 10){
            [self logWithEventName_MMMethodMMM:wwwww_tag_wwwww_purchase_10rd_charge_hf parameters_MMMethodMMM:nil type_MMMethodMMM:type isOnce:YES];
        }
        
    }
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
        SDK_LOG(wwwww_tag_wwwww_pungic_vulgindeeder,eventName);
        return;
    }
    SDK_LOG(wwwww_tag_wwwww_privify_volunttion,eventName);
    [SDKRequest reportSdkEventWithEventName_MMMethodMMM:eventName successBlock_MMMethodMMM:^(id responseData) {
        [SdkUtil saveReportEventName_MMMethodMMM:eventName];
        SDK_LOG(wwwww_tag_wwwww_fishain_comacy,eventName);
    } errorBlock_MMMethodMMM:^(BJError *error) {
        
    }];
}

@end
