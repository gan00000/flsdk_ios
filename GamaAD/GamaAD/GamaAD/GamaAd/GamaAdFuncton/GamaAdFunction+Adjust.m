//
//  GamaAdFunction+Adjust.m
//  GamaAD
//
//  Created by coke on 2019/10/11.
//  Copyright © 2019 Gama. All rights reserved.
//

#define GAMA_ADJUST_EVENT_PLIST @"GamaAdjustEvent"

#import "GamaAdFunction.h"
#import "GamaRequestor.h"
#if __has_include(<AdjustSdk/Adjust.h>)
#import <AdjustSdk/Adjust.h>
#endif
#import <objc/runtime.h>
#import <objc/message.h>



@implementation GamaAdFunction (Adjust)

+ (void)adjustInitlized{
    NSString *yourAppToken = SDKConReaderGetString(GAMA_AD_ADJUST_APP_TOKEN);//@"kr4bnynqvgn4";
    NSString *environment = @"production";//ADJEnvironmentProduction
    Class adjustConfig = ((Class(*)(Class,SEL,id,id))objc_msgSend)(NSClassFromString(@"ADJConfig"),NSSelectorFromString(@"configWithAppToken:environment:"),yourAppToken,environment);
  ((void(*)(Class,SEL,NSInteger,NSInteger,NSInteger,NSInteger,NSInteger))objc_msgSend)(adjustConfig,NSSelectorFromString(@"setAppSecret:info1:info2:info3:info4:"),SDKConReaderGetString(GAMA_AD_ADJUST_APP_SECRET).integerValue,SDKConReaderGetString(GAMA_AD_ADJUST_KEY_INFO1).integerValue,SDKConReaderGetString(GAMA_AD_ADJUST_KEY_INFO2).integerValue,SDKConReaderGetString(GAMA_AD_ADJUST_KEY_INFO3).integerValue,SDKConReaderGetString(GAMA_AD_ADJUST_KEY_INFO4).integerValue);//(1, 295090883, 1470641013, 781079857, 1819950834)
    
    ((void(*)(Class,SEL,Class))objc_msgSend)(NSClassFromString(@"Adjust"),NSSelectorFromString(@"appDidLaunch:"),adjustConfig);
    ((void(*)(Class,SEL,int))objc_msgSend)(adjustConfig,NSSelectorFromString(@"setLogLevel:"),1);//ADJLogLevelVerbose打印Log

   ((void(*)(Class,SEL,id,id))objc_msgSend)(NSClassFromString(@"Adjust"),NSSelectorFromString(@"addSessionCallbackParameter:value:"),@"gameCode",[NSString stringWithFormat:@"%@",SDKConReaderGetString(SDK_GAME_CODE)]);
}

+ (void)adjust_application:(UIApplication *)app didRegisterForRemoteNotificationsWithDeviceToken:(NSDate *)deviceToken
{
    ((void(*)(Class,SEL,id))objc_msgSend)(NSClassFromString(@"Adjust"),NSSelectorFromString(@"setDeviceToken:"),deviceToken);
}

+ (void)application:(UIApplication *)application continueUserActivity:(NSUserActivity *)userActivity
 restorationHandler:(void (^)(NSArray *restorableObjects))restorationHandler {
    if ([[userActivity activityType] isEqualToString:NSUserActivityTypeBrowsingWeb])
    {
//        NSURL *url = [userActivity webpageURL];

        // url object contains your universal link content
    }
}

+ (void)adjustTrackEvent:(NSString *)eventName Parameter:(NSDictionary *)dic
{
    NSString *yourAppToken = SDKConReaderGetString(GAMA_AD_ADJUST_APP_TOKEN);//@"kr4bnynqvgn4";
    if (!yourAppToken || yourAppToken.length == 0) {return ;}//如果不存在token则不请求；

    NSString *eventToken = [self checkEventToken:eventName];
    if(!eventToken){
        [self requestAdsServicesWithEventName:eventName parameter:dic];
        return ;
    }else{
        [self sendEventToAdjsutServicesWithEventName:eventToken par:dic];
    }
}

+ (void)sendEventToAdjsutServicesWithEventName:(NSString *)token par:(NSDictionary *)dic{

//    Class event = ((Class(*)(Class,SEL,id))objc_msgSend)(NSClassFromString(@"ADJEvent"),NSSelectorFromString(@"eventWithEventToken:"),token);
//    ((void(*)(Class,SEL,id,id))objc_msgSend)(event,NSSelectorFromString(@"addCallbackParameter:value:"),@"gameCode",[NSString stringWithFormat:@"%@",SDKConReaderGetString(SDK_GAME_CODE)]);
    
    ADJEvent *event = [ADJEvent eventWithEventToken:token];
    [event addCallbackParameter:@"gameCode" value:SDKConReaderGetString(SDK_GAME_CODE)];
    if (dic.count > 0) {
        NSArray *keysArray = [dic allKeys];
        for (int i = 0; i < keysArray.count; i++) {
            NSString *key = keysArray[i];
             //根据键值获取字典中的每一项
            NSString *value = dic[key];
//            ((void(*)(Class,SEL,id,id))objc_msgSend)(event,NSSelectorFromString(@"addCallbackParameter:value:"),key,value);
            [event addCallbackParameter:key value:value];
        }
    }
    if (dic[@"currentLocalPrice"]) {
        double revenue = [NSString stringWithString:dic[@"currentLocalPrice"]].doubleValue;
        NSString *currencyCode = [NSString stringWithString:dic[@"currencyCode"]];

//        ((void(*)(Class,SEL,double,id))objc_msgSend)(event,NSSelectorFromString(@"setRevenue:currency:"),revenue,currencyCode);
        [event setRevenue:revenue currency:currencyCode];
        NSString *sysLog = [NSString stringWithFormat:@"channel:adjust currentLocalPrice:%f currencyCode:%@", revenue, currencyCode];
        GAMA_FUNCTION_LOG(sysLog);
    }
//    ((void(*)(Class,SEL,Class))objc_msgSend)(NSClassFromString(@"Adjust"),NSSelectorFromString(@"trackEvent:"),event);
    [Adjust trackEvent:event];
    NSString *sysLog = [NSString stringWithFormat:@"channel:adjust eventToken:%@ eventValues:",token];
    GAMA_FUNCTION_LOG(sysLog);
}

+ (NSString *)checkEventToken:(NSString *)eventName {
    NSMutableDictionary *eventDic = [[NSMutableDictionary alloc] initWithContentsOfFile:[self getAdjustEventPlistPath]];
    NSString *token = [eventDic valueForKey:eventName];
    return token;
}

+ (NSString *)getAdjustEventPlistPath{
    NSString *yourAppToken = SDKConReaderGetString(GAMA_AD_ADJUST_APP_TOKEN);//@"kr4bnynqvgn4";
    if (!yourAppToken || yourAppToken.length == 0) {return @"";}//如果不存在token则不请求；

    NSURL *GamaBundleUrl = [[NSBundle mainBundle] URLForResource:@"SDKResources" withExtension:@"bundle"];
    NSBundle *gamaBundle = nil;
    if (GamaBundleUrl) {
        gamaBundle = [NSBundle bundleWithURL:GamaBundleUrl];
    }
    
    NSString * infoPlistPath=[gamaBundle pathForResource:GAMA_ADJUST_EVENT_PLIST ofType:@"plist"];
    if (!infoPlistPath) {
        infoPlistPath = [[NSBundle mainBundle] pathForResource:GAMA_ADJUST_EVENT_PLIST ofType:@"plist"];
    }
    if (!infoPlistPath) {
        NSString *sysLog = [NSString stringWithFormat:@"channel:adjust missing necessary documents"];
        GAMA_FUNCTION_LOG(sysLog);
    }
    return infoPlistPath;
}

+ (void)writeAdjustEventFile{
    NSString *yourAppToken = SDKConReaderGetString(GAMA_AD_ADJUST_APP_TOKEN);//@"kr4bnynqvgn4";
    if (!yourAppToken || yourAppToken.length == 0) {return ;}//如果不存在token则不请求；
    
    //(https://adsjp.gamamobi.com/incident/gamecode.txt)
    NSString *urlStr = [NSString stringWithFormat:@"%@incident/%@.txt",SDKConReaderGetString(GAMA_AD_DOMAIN_NAME),SDKConReaderGetString(SDK_GAME_CODE)];//SDKConReaderGetString(SDK_GAME_CODE)
    [GamaRequestor requestByNSURLRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:urlStr]] ComplitionHandler:^(NSURLResponse *response, NSDictionary *resultJsonDic, NSError *jsonParseErr, NSString *resultStr, NSData *resultRawData, NSError *error) {
        if (!error && resultJsonDic[@"events"]) {
            NSMutableDictionary *eventDic = [[NSMutableDictionary alloc] initWithContentsOfFile:[self getAdjustEventPlistPath]];
            NSArray *tempAry = resultJsonDic[@"events"];
            if(tempAry.count > eventDic.count){
                [tempAry enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
                }];
                [eventDic writeToFile:[self getAdjustEventPlistPath] atomically:YES];
            }
        }
    }];
}

+ (void)requestAdsServicesWithEventName:(NSString *)eName parameter:(NSDictionary *)par{
    NSString *yourAppToken = SDKConReaderGetString(GAMA_AD_ADJUST_APP_TOKEN);//@"kr4bnynqvgn4";
    if (!yourAppToken || yourAppToken.length == 0) {return ;}//如果不存在token则不请求；

    NSString *urlStr = [NSString stringWithFormat:@"%@incident/%@.txt",SDKConReaderGetString(GAMA_AD_DOMAIN_NAME),SDKConReaderGetString(SDK_GAME_CODE)];//SDKConReaderGetString(SDK_GAME_CODE)
    [GamaRequestor requestByNSURLRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:urlStr]] ComplitionHandler:^(NSURLResponse *response, NSDictionary *resultJsonDic, NSError *jsonParseErr, NSString *resultStr, NSData *resultRawData, NSError *error) {
        if (!error && resultJsonDic[@"events"]) {
            NSMutableDictionary *eventDic = [[NSMutableDictionary alloc] initWithContentsOfFile:[self getAdjustEventPlistPath]];
            NSArray *tempAry = resultJsonDic[@"events"];
            if(tempAry.count > eventDic.count){
                [tempAry enumerateObjectsUsingBlock:^(NSDictionary *  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
                    if ([obj[@"name"] isEqualToString:eName]) {
                        [self sendEventToAdjsutServicesWithEventName:obj[@"token"] par:par];
//                        return ;
                    }
                    if (!eventDic[@"name"]) { //如果字典不存在该数据则插入
                        [eventDic setValue:obj[@"token"] forKey:obj[@"name"]];
                    }
                }];
                [eventDic writeToFile:[self getAdjustEventPlistPath] atomically:YES];
            }
        }
    }];
}

@end

