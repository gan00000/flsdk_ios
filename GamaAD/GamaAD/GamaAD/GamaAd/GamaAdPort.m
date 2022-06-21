//

#import "GamaAdPort.h"
#import "GamaAdFunction.h"
#import "GamaAdInfo.h"
#import <objc/runtime.h>
#import <objc/message.h>
#import "GamaCentreInfo.h"
#import "GamaFacebookPort.h"
//#if __has_include("Firebase.h")
//#import "Firebase.h"
//#endif

@implementation GamaAdPort : NSObject 

+ (void)initialize
{
    if (SDKConReaderGetBool(GAMA_GAME_IS_INITIALIZE_AD) || SDKConReaderGetString(GAMA_GAME_IS_INITIALIZE_AD).length == 0) {
        [GamaAdFunction appFlayerTrackWith:ADTrackTypeInit];    //AppFlayer初始化操作
        if ([NSClassFromString(@"FIRApp") respondsToSelector:NSSelectorFromString(@"configure")]) {
            ((void(*)(Class, SEL))objc_msgSend)(NSClassFromString(@"FIRApp"),NSSelectorFromString(@"configure"));
        }   //FireBase初始化
    }else{
        GAMA_SHOW_CURRENT_FUNC_NAME;
        GAMA_FUNCTION_LOG(@"未启用AD:initialize");
    }
    [GamaAdFunction writeAdjustEventFile];
    [GamaAdFunction adjustInitlized];
    
}
#pragma mark - 游戏启动
+(void)start
{
    // 游戏每次启动都需调用的广告，上报 Gama 服务器
    [GamaAdFunction startAd];
    
    // third ad flag launch
    BOOL isFirstToThirdADLaunch = [GamaAdFunction startThirdAd];
    
    if (isFirstToThirdADLaunch) {
        if (SDKConReaderGetBool(GAMA_GAME_IS_INITIALIZE_AD) || SDKConReaderGetString(GAMA_GAME_IS_INITIALIZE_AD).length == 0) {
        // 游戏第一次启动时，需调用的广告
//        [GamaAdFunction appFlayerTrackWith:ADTrackTypeUserDefine userDefineEvent:@"install"];
        }
    }
    
}
#pragma mark - 游戏进入前台
+(void)startWhenBecomeActive
{
    NSLog(@"App become Active");
    if (SDKConReaderGetBool(GAMA_GAME_IS_INITIALIZE_AD) || SDKConReaderGetString(GAMA_GAME_IS_INITIALIZE_AD).length == 0) {
        [GamaAdFunction appFlayerTrackWith:ADTrackTypeLanch];
    }else{
        GAMA_SHOW_CURRENT_FUNC_NAME;
        GAMA_FUNCTION_LOG(@"未启用AD:BecomeActive");
    }
}
#pragma mark - 玩家登录游戏
+(void)startWhenLogin
{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    NSString *lastLoginDate = [userDefaults objectForKey:kUserLoginDatetimeKey];
    if (lastLoginDate == nil || [lastLoginDate isEqualToString:@""]) {
        [userDefaults setObject:[SUtil getTimeDate] forKey:kUserLoginDatetimeKey];
        [userDefaults synchronize];
    } else {
        int ci = [self compareDate:[SUtil getTimeDate] withDate:lastLoginDate];
        if (ci == -1) {
            [GamaAdFunction appFlayerTrackWith:ADTrackTypeNextDayLogin];
        }
    }
}
#pragma mark - 玩家账号注册
+(void)startWhenRegister
{
    [GamaAdFunction appFlayerTrackWith:ADTrackTypeRegister];
}

#pragma mark - 游戏由其它应用启动
+(BOOL)handleADURL:(NSURL *)url
{
    return [self application:[UIApplication sharedApplication] openURL:url sourceApplication:@""];
}

+ (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication
{
    return [GamaAdFunction handleURL:url];
}

+ (void)adjust_application:(UIApplication *)app didRegisterForRemoteNotificationsWithDeviceToken:(NSDate *)deviceToken
{
    [GamaAdFunction adjust_application:app didRegisterForRemoteNotificationsWithDeviceToken:deviceToken];
}

// 注意传入的 today 和 otherDay的时间格式为: yyyy-MM-dd_hh:mm:ss 例子 2014-04-24_11:09:06
+ (int)compareDate:(NSString*)today withDate:(NSString*)otherDay{
    int ci;
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    today = [[today componentsSeparatedByString:@"_"] objectAtIndex:0];
    otherDay = [[otherDay componentsSeparatedByString:@"_"] objectAtIndex:0];
    [df setDateFormat:@"yyyy-MM-dd"];
    NSDate *dt1 = [[[NSDate alloc] init] autorelease];
    NSDate *dt2 = [[[NSDate alloc] init] autorelease];
    dt1 = [df dateFromString:today];
    dt2 = [df dateFromString:otherDay];
    [NSDate  timeIntervalSinceReferenceDate];
    NSComparisonResult result = [dt1 compare:dt2];
    switch (result)
    {
            //today比otherDay大
        case NSOrderedDescending: {
            NSTimeInterval dayTime = 24*60*60;
            // 将today往前减少一天的时间，判断是否和昨天的时间是否相等，如果相等则表示
            // otherDay为昨天
            NSDate * newDate = [dt1 dateByAddingTimeInterval:-dayTime];
            result = [dt2 compare:newDate];
            if (result == NSOrderedSame) {
                // 表示日期为昨天
                ci = -1;
            } else {
                // 表示日期为昨天以前的时间
                ci = 1;
            }
        }
            break;
            //date02=date01,代表日期是今天
        case NSOrderedSame: ci=0;
            break;
        default:
            // 默认显示所有的具体的日期时间
            ci = 1;
            break;
    }
    [df release];
    return ci;
}

+ (void)reportEventChannel:(GamaThirdAdvertisementChannel)channel eventName:(nonnull NSString *)name eventValues:(nullable NSDictionary *)values
{
    if (channel == GamaThirdAdvertisementAllChannel) {
        [GamaAdFunction firebaseLogEventWithName:name parameters:values];
        [GamaAdFunction appFlayerTrackWithEventName:name eventValues:values];
        [NSClassFromString(@"GamaFacebookPort") facebookEventLogWithCustomAppEvents:name parameters:values];
        [GamaAdFunction adjustTrackEvent:name Parameter:values];
        NSString *sysLog = [NSString stringWithFormat:@"channel:all eventName:%@ eventValues:%@",name,values];
        GAMA_FUNCTION_LOG(sysLog);
        return;//防止重复上报
    }
    if (channel & GamaThirdAdvertisementAppsflyer) {
        [GamaAdFunction appFlayerTrackWithEventName:name eventValues:values];
        NSString *sysLog = [NSString stringWithFormat:@"channel:appsflyer eventName:%@ eventValues:%@",name,values];
        GAMA_FUNCTION_LOG(sysLog);
    }
    if (channel & GamaThirdAdvertisementFirebase) {
        [GamaAdFunction firebaseLogEventWithName:name parameters:values];
        NSString *sysLog = [NSString stringWithFormat:@"channel:firebase eventName:%@ eventValues:%@",name,values];
        GAMA_FUNCTION_LOG(sysLog);
    }
    if (channel & GamaThirdAdvertisementFacebook) {
        [NSClassFromString(@"GamaFacebookPort") facebookEventLogWithCustomAppEvents:name parameters:values];
        NSString *sysLog = [NSString stringWithFormat:@"channel:facebook eventName:%@ eventValues:%@",name,values];
        GAMA_FUNCTION_LOG(sysLog);
    }if (channel & GamaThirdAdvertisementAdjust) {
        [GamaAdFunction adjustTrackEvent:name Parameter:values];
    }
}

@end
