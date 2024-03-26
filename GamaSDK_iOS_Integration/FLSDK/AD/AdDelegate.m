//
//  AFDelegate.m
//  FLSDK
//
//  Created by Gan Yuanrong on 2022/6/28.
//  Copyright © 2022 Gama. All rights reserved.
//

#import "AdDelegate.h"
#import <AdSupport/AdSupport.h>
#import <AppTrackingTransparency/AppTrackingTransparency.h>
#import <AdSupport/ASIdentifierManager.h>

#import <FirebaseCore/FirebaseCore.h>
#import <FirebaseAnalytics/FIRAnalytics.h>

#import <FBSDKCoreKit/FBSDKCoreKit.h>

#import <AppsFlyerLib/AppsFlyerLib.h>

#import "SdkHeader.h"
#import "AdjustDelegate.h"

#import "MWSDK.h"

@implementation AdDelegate

+ (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions{
    
    NSString *afDevKey = [SDKRES getAfDevKey_MMMethodMMM];
    NSString *appId = [SDKRES getAppId_MMMethodMMM];
    SDK_LOG(@"afDevKey:%@,appId=%@",afDevKey,appId);
    if ([StringUtil isNotEmpty_MMMethodMMM:afDevKey] && [StringUtil isNotEmpty_MMMethodMMM:appId]) {
        
        if ([SDKRES isAdDebug_MMMethodMMM]) {//是否开启debug
            [AppsFlyerLib shared].isDebug = YES;
        }
        [[AppsFlyerLib shared] setAppsFlyerDevKey:afDevKey];//QtrxWJpdhQVov9F8hwKD3o
        [[AppsFlyerLib shared] setAppleAppID:appId];
        
        if (@available(iOS 14, *)) {
            [[AppsFlyerLib shared] waitForATTUserAuthorizationWithTimeoutInterval:60];
        }
    }
    //adjust
    [[AdjustDelegate share] application:application didFinishLaunchingWithOptions:launchOptions];
   
    return YES;
}

// Deep linking

// Open URI-scheme for iOS 9 and above
+ (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary *)options{
    [[AppsFlyerLib shared] handleOpenUrl:url options:options];
    return YES;
}

// Open URI-scheme for iOS 8 and below
+ (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation{
    [[AppsFlyerLib shared] handleOpenURL:url sourceApplication:sourceApplication];
    return YES;
}

+ (void)applicationWillTerminate_MMMethodMMM:(UIApplication *)application{
    
}

+ (void)applicationDidBecomeActive_MMMethodMMM:(UIApplication *)application{
    NSString *afDevKey = [SDKRES getAfDevKey_MMMethodMMM];
    if ([StringUtil isNotEmpty_MMMethodMMM:afDevKey]){
        [[AppsFlyerLib shared] start];
    }
}

+ (void)logEventWithEventName_MMMethodMMM:(NSString *)eventName eventValues_MMMethodMMM:(NSDictionary<NSString * , id> * _Nullable)eventValues type_MMMethodMMM:(AdType) type{
    
    @try {
        SDK_LOG(@"logEventWithEventName=%@", eventName);
        if (type & AdType_Appflyer) {
            [[AppsFlyerLib shared] logEvent:eventName withValues:eventValues];
        }
        if (type & AdType_Firebase) {
            //firebase
            [FIRAnalytics logEventWithName:eventName parameters:eventValues];
        }
        if (type & AdType_FB) {
            
             //fb
            [[FBSDKAppEvents shared] logEvent:eventName parameters:eventValues];
        }
       
        //adjust
        [[AdjustDelegate share] logEventWithEventName_MMMethodMMM:eventName eventValues_MMMethodMMM:eventValues];
        
    } @catch (NSException *exception) {
        //[self _presentAlertWithException:exception andDictionary:dic];
    }
   
}

+ (void)logEventPurchaseValues_MMMethodMMM:(PayData *)mPayData type_MMMethodMMM:(AdType) type{
    
    if (!mPayData.orderId || [@"" isEqualToString:mPayData.orderId]){//判断orderId存在才上报
        return;
    }
    
    @try {
        
        if (type & AdType_Appflyer) {
            SDK_LOG(@"logEventPurchaseValues af");
            [[AppsFlyerLib shared] logEvent:AFEventPurchase withValues: @{
                            AFEventParamRevenue  : @(mPayData.amount),
                            AFEventParamCurrency : wwwww_tag_wwwww_USD,
                            AFEventParamCustomerUserId : SDK_DATA.mLoginResponse.data.userId ?: @"",
                            AFEventParamContentId: mPayData.productId ?: @"",
                            AFEventParamOrderId: mPayData.orderId ?: @"",
                            wwwww_tag_wwwww_platform      : wwwww_tag_wwwww_ios,
                            wwwww_tag_wwwww_uniqueId      :  [SUtil getGamaUUID_MMMethodMMM]? : @"",
                            wwwww_tag_wwwww_time         :[SUtil getTimeStamp_MMMethodMMM],
                            wwwww_tag_wwwww_userId      : SDK_DATA.mLoginResponse.data.userId ?: @"",
                            wwwww_tag_wwwww_serverTimestamp      : mPayData.timestamp ?: @"",
                            
            }];
            
        }
        if (type & AdType_Firebase) {
            //firebase
            SDK_LOG(@"logEventPurchaseValues firebase");
            [FIRAnalytics logEventWithName:kFIREventPurchase parameters:@{
                kFIRParameterItemID : mPayData.productId,
                //kFIRParameterPrice : @(mPayData.amount),
                kFIRParameterValue : @(mPayData.amount),
                kFIRParameterCurrency : wwwww_tag_wwwww_USD,
                kFIRParameterTransactionID : mPayData.orderId,
                wwwww_tag_wwwww_userId      : SDK_DATA.mLoginResponse.data.userId ?: @"",
                wwwww_tag_wwwww_platform      : wwwww_tag_wwwww_ios,
                
            }];
        }
        if (type & AdType_FB) {
            
             //fb
            SDK_LOG(@"logEventPurchaseValues fb");
//            [[FBSDKAppEvents shared] logPurchase:mPayData.amount currency:wwwww_tag_wwwww_USD parameters:@{
//                FBSDKAppEventParameterNameCurrency : wwwww_tag_wwwww_USD,
//                FBSDKAppEventParameterNameOrderID : mPayData.orderId,
//                FBSDKAppEventParameterNameContentID : mPayData.productId,
//                wwwww_tag_wwwww_userId      : SDK_DATA.mLoginResponse.data.userId ?: @"",
//            }];
            
            [[FBSDKAppEvents shared] logPurchase:mPayData.amount currency:wwwww_tag_wwwww_USD];

        }
        
        //adjust
        NSDictionary *eventValues = @{
            @"usdPrice"  : @(mPayData.amount),
            @"currency" : wwwww_tag_wwwww_USD,
            wwwww_tag_wwwww_productId: mPayData.productId ?: @"",
            wwwww_tag_wwwww_orderId: mPayData.orderId ?: @"",
            wwwww_tag_wwwww_platform      : wwwww_tag_wwwww_ios,
            wwwww_tag_wwwww_uniqueId      :  [SUtil getGamaUUID_MMMethodMMM]? : @"",
            wwwww_tag_wwwww_time         :[SUtil getTimeStamp_MMMethodMMM],
            wwwww_tag_wwwww_userId      : SDK_DATA.mLoginResponse.data.userId ?: @"",
            wwwww_tag_wwwww_serverTimestamp      : mPayData.timestamp ?: @"",
            
        };
        [[AdjustDelegate share] logEventWithEventName_MMMethodMMM:@"AJ_Purchase" eventValues_MMMethodMMM:eventValues revenue:mPayData.amount transactionId:mPayData.transactionId];
       
        GameUserModel *gGameUserModel = [[ConfigCoreUtil share] getGameUserInfo_MMMethodMMM:SDK_DATA.mLoginResponse.data.userId];
        if(gGameUserModel){
            if(gGameUserModel.isPay){//除了第一次
                
                if(gGameUserModel.isSecondPay){
                    //NOT TO DO
                }else{//第二次充值上报
                    gGameUserModel.isSecondPay = YES;
                    [[ConfigCoreUtil share] updateGameUserInfo_MMMethodMMM:gGameUserModel];
                    //上报
                    SDK_LOG(@"logEvent firebase second_purchase");
                    [FIRAnalytics logEventWithName:@"second_purchase" parameters:@{
                        kFIRParameterItemID : mPayData.productId,
                        //kFIRParameterPrice : @(mPayData.amount),
                        kFIRParameterValue : @(mPayData.amount),
                        kFIRParameterCurrency : wwwww_tag_wwwww_USD,
                        kFIRParameterTransactionID : mPayData.orderId,
                        wwwww_tag_wwwww_userId      : SDK_DATA.mLoginResponse.data.userId ?: @"",
                        wwwww_tag_wwwww_platform      : wwwww_tag_wwwww_ios,
                        
                    }];
                    
                    //AF和FB不上报金额
                    
                    SDK_LOG(@"logEvent af second_purchase");
                    [[AppsFlyerLib shared] logEvent:@"second_purchase" withValues: @{
//                                    AFEventParamRevenue  : @(mPayData.amount),
//                                    AFEventParamCurrency : wwwww_tag_wwwww_USD,
                                    AFEventParamCustomerUserId : SDK_DATA.mLoginResponse.data.userId ?: @"",
                                    AFEventParamContentId: mPayData.productId ?: @"",
                                    AFEventParamOrderId: mPayData.orderId ?: @"",
                                    wwwww_tag_wwwww_platform      : wwwww_tag_wwwww_ios,
                                    wwwww_tag_wwwww_uniqueId      :  [SUtil getGamaUUID_MMMethodMMM]? : @"",
                                    wwwww_tag_wwwww_time         :[SUtil getTimeStamp_MMMethodMMM],
                                    wwwww_tag_wwwww_userId      : SDK_DATA.mLoginResponse.data.userId ?: @"",
                                    wwwww_tag_wwwww_serverTimestamp      : mPayData.timestamp ?: @"",
                                    
                    }];
                    
                    SDK_LOG(@"logEvent fb second_purchase");
                    [[FBSDKAppEvents shared] logEvent:@"second_purchase" parameters: @{
//                                                            AFEventParamCurrency : wwwww_tag_wwwww_USD,
                                                            AFEventParamCustomerUserId : SDK_DATA.mLoginResponse.data.userId ?: @"",
                                                            AFEventParamContentId: mPayData.productId ?: @"",
                                                            AFEventParamOrderId: mPayData.orderId ?: @"",
                                                            wwwww_tag_wwwww_platform      : wwwww_tag_wwwww_ios,
                                                            wwwww_tag_wwwww_uniqueId      :  [SUtil getGamaUUID_MMMethodMMM]? : @"",
                                                            wwwww_tag_wwwww_time         :[SUtil getTimeStamp_MMMethodMMM],
                                                            wwwww_tag_wwwww_userId      : SDK_DATA.mLoginResponse.data.userId ?: @"",
                                                            wwwww_tag_wwwww_serverTimestamp      : mPayData.timestamp ?: @"",
                                                            
                                            }];
                    
                    [[AdjustDelegate share] logEventWithEventName_MMMethodMMM:@"second_purchase" eventValues_MMMethodMMM:eventValues revenue:mPayData.amount transactionId:mPayData.transactionId];
                    
                }
                
            }else{//第一次充值
                gGameUserModel.isPay = YES;
                gGameUserModel.firstPayTime = [SUtil getTimeStamp_MMMethodMMM];
                if([[SUtil getDateStringWithTimeStr_MMMethodMMM:gGameUserModel.firstPayTime dateFormat_MMMethodMMM:@"yyyy-MM-dd"] isEqualToString:[SUtil getDateStringWithTimeStr_MMMethodMMM:gGameUserModel.regTime dateFormat_MMMethodMMM:@"yyyy-MM-dd"]]){//是否注册首日付费玩家
                    gGameUserModel.isRegDayPay = YES;
                }else{
                    gGameUserModel.isRegDayPay = NO;
                }
                [[ConfigCoreUtil share] updateGameUserInfo_MMMethodMMM:gGameUserModel];
            }
            
            if(mPayData.amount > 4){
                
                NSString *curTime = [SUtil getTimeStamp_MMMethodMMM];
                if([[SUtil getDateStringWithTimeStr_MMMethodMMM:curTime dateFormat_MMMethodMMM:@"yyyy-MM-dd"] isEqualToString:[SUtil getDateStringWithTimeStr_MMMethodMMM:gGameUserModel.regTime dateFormat_MMMethodMMM:@"yyyy-MM-dd"]]){//是否注册首日玩家
                    
                    [AdLogger logWithEventName_MMMethodMMM:AD_EVENT_purchase_over4 parameters_MMMethodMMM:eventValues];
                }
            }
            
        }
        
    } @catch (NSException *exception) {
        //[self _presentAlertWithException:exception andDictionary:dic];
    }
   
}



//+ (void)logEventForFBWithEventName:(NSString *)eventName eventValues:(NSDictionary<NSString * , id> * _Nullable)eventValues{
//
//    @try {
//        //fb
//        [[FBSDKAppEvents shared] logEvent: eventName parameters:eventValues];
//
//    } @catch (NSException *exception) {
//        //[self _presentAlertWithException:exception andDictionary:dic];
//    }
//
//}

@end
