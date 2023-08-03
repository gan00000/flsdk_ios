//
//  AdjustDelegate.m
//  MWSDK_VN
//
//  Created by Gan Yuanrong on 2023/8/2.
//  Copyright © 2023 Gama. All rights reserved.
//

#import "AdjustDelegate.h"
#import <AdjustSdk/Adjust.h>
#import "SdkHeader.h"

@implementation AdjustDelegate
{
    NSDictionary *eventsDic;
}

+ (instancetype)share{
    
    static AdjustDelegate *mDelegate = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        mDelegate = [[AdjustDelegate alloc] init];
    });
    
    return mDelegate;
}

- (void)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions{
    
    NSString *adjustAppToken = [SDKRES getStringForKey_MMMethodMMM:@"adjust_app_token"];//@"{YourAppToken}";
    if([StringUtil isEmpty_MMMethodMMM:adjustAppToken]){
        SDK_LOG(@"adjustAppToken is empty");
        return ;
    }
    NSString *environment = ADJEnvironmentProduction;
    if ([SDKRES isAdDebug_MMMethodMMM]) {//是否开启debug
        environment = ADJEnvironmentSandbox;
    }
    ADJConfig *adjustConfig = [ADJConfig configWithAppToken:adjustAppToken environment:environment];
    [adjustConfig setLogLevel:ADJLogLevelVerbose];
    [Adjust appDidLaunch:adjustConfig];
    SDK_LOG(@"adjustAppToken init finish");
    
}

- (void)logEventWithEventName_MMMethodMMM:(NSString *)eventName{
    [self logEventWithEventName_MMMethodMMM:eventName eventValues_MMMethodMMM:nil revenue:-1 transactionId:@""];
}

- (void)logEventWithEventName_MMMethodMMM:(NSString *)eventName eventValues_MMMethodMMM:(NSDictionary<NSString * , id> *)eventValues{
    [self logEventWithEventName_MMMethodMMM:eventName eventValues_MMMethodMMM:eventValues revenue:-1 transactionId:@""];
}


- (void)logEventWithEventName_MMMethodMMM:(NSString *)eventName eventValues_MMMethodMMM:(NSDictionary<NSString * , id> *)eventValues revenue:(double)revenue transactionId:(NSString *)transactionId
{
    NSString *adjustAppToken = [SDKRES getStringForKey_MMMethodMMM:@"adjust_app_token"];//@"{YourAppToken}";
    if([StringUtil isEmpty_MMMethodMMM:adjustAppToken]){
        SDK_LOG(@"adjustAppToken is empty");
        return ;
    }
    SDK_LOG(@"adjust track event start eventName=%@",eventName);
    NSString *eventToken = @"";
    if(eventsDic){
        eventToken = eventsDic[eventName];
    }
    
    if([StringUtil isEmpty_MMMethodMMM:eventToken]){
        NSString *adjustEventFileName = [NSString stringWithFormat:@"adjust-info-%@", GAME_CODE];
        NSString *adjustEventPlistPath = [[NSBundle mainBundle] pathForResource:adjustEventFileName ofType:@"plist"];
        
        if (!adjustEventPlistPath) {
            SDK_LOG(@"adjust track event adjust-info-xxx file is empty, name=%@",adjustEventFileName);
            return;
        }
        eventsDic = [NSDictionary dictionaryWithContentsOfFile:adjustEventPlistPath];
        if(eventsDic){
            eventToken = eventsDic[eventName];
        }
    }
    
    if([StringUtil isEmpty_MMMethodMMM:eventToken]){
        SDK_LOG(@"adjust track event eventToken is empty, eventName=%@",eventName);
        return;
    }
    
    ADJEvent *event = [ADJEvent eventWithEventToken:eventToken];
    if(revenue > 0){
        [event setRevenue:revenue currency:@"USD"];
        if([StringUtil isNotEmpty_MMMethodMMM:transactionId]){
            [event setTransactionId:transactionId];
        }
    }
    
    if(eventValues){
        
        [eventValues enumerateKeysAndObjectsUsingBlock:^(NSString * _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
            NSString *value2 = [NSString stringWithFormat:@"%@", obj];
            [event addCallbackParameter:key value:value2];
        }];
    }
    
    [Adjust trackEvent:event];
    SDK_LOG(@"adjust track event finish, eventName=%@",eventName);
}

@end
