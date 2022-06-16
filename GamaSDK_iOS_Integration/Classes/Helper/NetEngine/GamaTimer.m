//
//  GamaTimer.m
//  GamaSDK_iOS
//
//  Created by coke on 2018/10/17.
//  Copyright © 2018年 starpy. All rights reserved.
//

#import "GamaTimer.h"
#import "SdkUserInfoModel.h"
#import "GamaFunction.h"
#import "GamaCommonHeader.h"
#import "SdkHeader.h"
//Timer時間
#define Play8888_TimeInterval 120.0

@interface GamaTimer()
@end

//FB Time Key
static NSString * const kGama_EightMin = GAMESWORD_EVENT_8MIN;
static NSString * const kGama_TenMin = GAMESWORD_EVENT_10MIN;
static NSString * const kGama_TwentyMin = GAMESWORD_EVENT_20MIN;
static NSString * const kGama_ThreetyMin = GAMESWORD_EVENT_30MIN;

//Save Data Key
static NSString * const kGama_TimeKey = @"FBTimeKey";
static NSString * const kGama_IntervalKey = @"TimeKey";

@implementation GamaTimer

static GamaTimer *instance = nil;
+ (GamaTimer *) shareInstance
{
    static dispatch_once_t onceToke;
    dispatch_once(&onceToke, ^{
        if (!instance) {
            instance = [[self alloc] init];
        }
    });
    return instance;
}

- (void)gama_FBEventStartTimer
{
    if (![[self p_loadData] isEqualToString:kGama_ThreetyMin]) {
        self.timerCount = 0;
        self.timer = [NSTimer scheduledTimerWithTimeInterval:Play8888_TimeInterval
                                                      target:self
                                                    selector:@selector(ReportFBEvent)
                                                    userInfo:nil
                                                     repeats:YES];
        [self.timer fire];
    }
}
#pragma -mark 紀錄執行段落
- (void)p_saveDataCount:(NSInteger)count fbKey:(NSString *)key
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:key forKey:kGama_TimeKey];
    [defaults setInteger:count forKey:kGama_IntervalKey];
    [defaults synchronize];
}

#pragma -mark 取得執行段落
- (NSString *)p_loadData
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *fbkey = [defaults objectForKey:kGama_TimeKey];
    return fbkey;
}

- (void)ReportFBEvent
{
    
    NSString *roleId = [SdkUserInfoModel shareInfoModel].roleID;
    NSString *roleName = [SdkUserInfoModel shareInfoModel].roleName;
    NSString *roleLevel = [SdkUserInfoModel shareInfoModel].roleLevel;
    NSString *roleVipLevel = [SdkUserInfoModel shareInfoModel].vipLevel;
    NSString *roleServerId = [SdkUserInfoModel shareInfoModel].serverCode;
    NSString *roleServerName = [SdkUserInfoModel shareInfoModel].serverName;
    
    NSDictionary *roleInfo = @{@"role_id":roleId,
                               @"role_name":roleName,
                               @"level":roleLevel,
                               @"vip_level":roleVipLevel,
                               @"server_code":roleServerId,
                               @"server_name":roleServerName,};
    if (self.timerCount == 4 && ![self p_loadData]) {
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
            [self p_saveDataCount:self.timerCount fbKey:kGama_EightMin];
//            [GamaAdPort reportEventChannel:GamaThirdAdvertisementAllChannel eventName:kGama_EightMin eventValues:roleInfo];
        });

    }else if (self.timerCount == 5 && ![[self p_loadData] isEqualToString:kGama_TenMin]) {
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
            [self p_saveDataCount:self.timerCount fbKey:kGama_TenMin];
//            [GamaAdPort reportEventChannel:GamaThirdAdvertisementAllChannel eventName:kGama_TenMin eventValues:roleInfo];
        });
    }
    else if (self.timerCount == 10 && [[self p_loadData] isEqualToString:kGama_TenMin]) {
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
            [self p_saveDataCount:self.timerCount fbKey:kGama_TwentyMin];
//            [GamaAdPort reportEventChannel:GamaThirdAdvertisementAllChannel eventName:kGama_TwentyMin eventValues:roleInfo];
        });
    }
    else if (self.timerCount == 15 && [[self p_loadData] isEqualToString:kGama_TwentyMin]) {
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
            [self p_saveDataCount:self.timerCount fbKey:kGama_ThreetyMin];
//            [GamaAdPort reportEventChannel:GamaThirdAdvertisementAllChannel eventName:kGama_ThreetyMin eventValues:roleInfo];
        });
        [self.timer invalidate];
        self.timer = nil;
    }
    self.timerCount += 1;
}

+ (void)gama_UserRetentionEvent
{
    NSString *userID = [SdkUserInfoModel shareInfoModel].userId;
    if (!userID) {
        return;
    }
    
    NSNumber *saveTimer = [[NSUserDefaults standardUserDefaults] objectForKey:@"firstLoginTimer"];
    if (!saveTimer) {//如果gama_firstLoginTimer为空则return;
        NSTimeInterval curTime = [[NSDate date] timeIntervalSince1970];
        [[NSUserDefaults standardUserDefaults] setInteger:(long)curTime forKey:@"firstLoginTimer"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        return;
    }

    [GamaTimer getStandardTimeInterval:[saveTimer integerValue]];
}

+ (void)getStandardTimeInterval:(NSTimeInterval)interval
{
    //进行时间差比较
    //当前时间与1970时间戳(秒为单位)
    NSTimeInterval time = [[NSDate date] timeIntervalSince1970];
    // 当前时间戳-当时时间戳=差值(比如朋友圈动态发表时间为10分钟前(当前时间-发表时间))
    NSTimeInterval timeInterval = time-interval;
    //计算出天、小时、分钟
    int day = timeInterval/(60*60*24);

    if (day == 1) {//次日
        [GamaTimer gama_reportEventName:[NSString stringWithFormat:@"flyfun_%dretention",day]];
    }
    if (day == 3) {//3日
        [GamaTimer gama_reportEventName:[NSString stringWithFormat:@"flyfun_%dretention",day]];
    }
    if (day == 7) {//7日
        [GamaTimer gama_reportEventName:[NSString stringWithFormat:@"flyfun_%dretention",day]];
    }
    if (day == 15) {//15日
        [GamaTimer gama_reportEventName:[NSString stringWithFormat:@"flyfun_%dretention",day]];
    }
    if (day == 30) {//30日
        [GamaTimer gama_reportEventName:[NSString stringWithFormat:@"flyfun_%dretention",day]];
    }

}

+ (void)gama_reportEventName:(NSString *)name
{
    NSArray *saveUidAry = [[NSUserDefaults standardUserDefaults] objectForKey:name];
    NSString *userID = [SdkUserInfoModel shareInfoModel].userId;
    NSMutableArray *mutableAry = [NSMutableArray array];

    __block BOOL isReport = YES;
    [saveUidAry enumerateObjectsUsingBlock:^(NSString *  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if ([obj isEqualToString:userID]) {
            isReport = NO;
            return ;
        }
    }];
    if (!isReport) {
        return;
    }
    [mutableAry addObjectsFromArray:saveUidAry];
    [mutableAry addObject:userID];
    NSArray *newAry = [NSArray arrayWithArray:mutableAry];

    NSString *roleId = [SdkUserInfoModel shareInfoModel].roleID;
    NSString *roleName = [SdkUserInfoModel shareInfoModel].roleName;
    NSString *roleLevel = [SdkUserInfoModel shareInfoModel].roleLevel;
    NSString *roleVipLevel = [SdkUserInfoModel shareInfoModel].vipLevel;
    NSString *roleServerId = [SdkUserInfoModel shareInfoModel].serverCode;
    NSString *roleServerName = [SdkUserInfoModel shareInfoModel].serverName;
    
    NSDictionary *roleInfo = @{@"user_id":userID,
                               @"role_id":roleId,
                               @"role_name":roleName,
                               @"level":roleLevel,
                               @"vip_level":roleVipLevel,
                               @"server_code":roleServerId,
                               @"server_name":roleServerName,};

//    [GamaAdPort reportEventChannel:GamaThirdAdvertisementAllChannel eventName:name eventValues:roleInfo];
    
    [[NSUserDefaults standardUserDefaults] setObject:newAry forKey:name];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

+ (NSInteger)getCurrentMonth{
    NSDateFormatter *sysTemFormatter = [[NSDateFormatter alloc]init];
    NSDate *date = [NSDate date]; // 获得时间对象
    NSTimeZone *zone = [NSTimeZone systemTimeZone]; // 获得系统的时区
    NSTimeInterval time = [zone secondsFromGMTForDate:date];// 以秒为单位返回当前时间与系统格林尼治时间的差
    NSDate *nowDate = [date dateByAddingTimeInterval:time];// 然后把差的时间加上,就是当前系统准确的时间
    [sysTemFormatter setTimeZone:zone];
    [sysTemFormatter setDateFormat:@"MM"];
    NSString* systemDateStr = [sysTemFormatter stringFromDate:nowDate];

    return [systemDateStr integerValue];
}

+ (void)setStartTimeStamp{
    NSString *timeStamp = [GamaFunction getTimeStamp];
    [[NSUserDefaults standardUserDefaults] setObject:timeStamp forKey:@"LoginStartTime"];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

+ (NSString *)getStartTimeStamp{
    NSString *loginStartTime = [[NSUserDefaults standardUserDefaults] objectForKey:@"LoginStartTime"];
    return loginStartTime;
}

+ (void)setEndTimeStamp{
    NSString *timeStamp = [GamaFunction getTimeStamp];
    [[NSUserDefaults standardUserDefaults] setObject:timeStamp forKey:@"LoginOutEndTime"];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

+ (NSString *)getEndTimeStamp{
    NSString *loginOutEndTime = [[NSUserDefaults standardUserDefaults] objectForKey:@"LoginOutEndTime"];
    return loginOutEndTime;
}

+ (void)reportExitEvent:(GamaExitEventSource)eventSource{
    if (eventSource == GamaExitEventSourceChangeAccount) {
        [GamaTimer shareInstance].loginState = NO;
    }
    
    if (eventSource == GamaExitEventSourceBackground &&[GamaTimer shareInstance].loginState == NO) {
        return ;
    }
    
    NSString *userID =[SdkUserInfoModel shareInfoModel].userId;
    NSString *serverCode = [SdkUserInfoModel shareInfoModel].serverCode ? [SdkUserInfoModel shareInfoModel].serverCode : @"";
    NSString *roleID = [SdkUserInfoModel shareInfoModel].roleID ? [SdkUserInfoModel shareInfoModel].roleID : @"";
    NSString *roleLevel = [SdkUserInfoModel shareInfoModel].roleLevel ? [SdkUserInfoModel shareInfoModel].roleLevel : @"" ;
    NSString *gamacode = [NSString stringWithFormat:@"%@",SDKConReaderGetString(SDK_GAME_CODE)];
    
    NSString *androidID = [[GamaFunction getIdfa] lowercaseString];//idfa
    NSString *adId = [[GamaFunction getGamaUUID] lowercaseString];//uuid
    
    
    NSString *startTime = [GamaTimer getStartTimeStamp];
    NSString *endTime = [GamaFunction getTimeStamp];
    NSString *packageName = [GamaFunction getBundleIdentifier];
    if (!(userID.length > 0 &&serverCode.length > 0 && roleID.length > 0)) {
        return ;
    }
    
    //https://ads.gamamobi.com/online/api?gameCode=sds&userId=1&roleId=1&serverCode=1&androidId=ere111&adId=ccc11&startTime=1565063760000&endTime=1565063760000&packageName=gama.mobi.com.sds
    NSString *payUrl = [NSString stringWithFormat:@"gameCode=%@&userId=%@&roleId=%@&serverCode=%@&androidId=%@&adId=%@&startTime=%@&endTime=%@&packageName=%@&roleLevel=%@",
                        gamacode,
                        userID,
                        serverCode,
                        roleID,
                        androidID,
                        adId,
                        startTime,
                        endTime,
                        packageName,
                        roleLevel];
    
    NSString *domainUrl = [NSString stringWithFormat:@"%@online/api?%@",SDKConReaderGetString(GAMA_AD_DOMAIN_NAME),payUrl];
    
//    [GamaRequestor requestByNSURLRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:domainUrl]]
//                       ComplitionHandler:^(NSURLResponse *response, NSDictionary *resultJsonDic, NSError *jsonParseErr, NSString *resultStr, NSData *resultRawData, NSError *error) {
//                           if (!error && !jsonParseErr)
//                           {
//                               NSString * codeStr= [NSString stringWithFormat:@"%@",resultJsonDic[@"code"]];
//                               if ([resultJsonDic[@"code"] integerValue] == 1000) {
//                                   //                                   self.impSuccess(nil);
//                               }else if(codeStr.length==4)
//                               {
//                                   NSString * message=resultJsonDic[@"message"];
//                                   NSLog(@"message:%@",message);
//                                   //[GamaAlertView showAlertWithMessage:message];
//                                   return;
//                               }
//                           }else{
////                               [GamaAlertView showAlertWithMessage:SDKConReaderGetString(GAMA_TEXT_NO_NET)];
//                           }
//                       }];
}

@end
