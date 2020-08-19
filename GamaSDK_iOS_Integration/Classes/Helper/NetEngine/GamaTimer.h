//
//  GamaTimer.h
//  GamaSDK_iOS
//
//  Created by coke on 2018/10/17.
//  Copyright © 2018年 starpy. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, GamaExitEventSource){
    GamaExitEventSourceChangeAccount,
    GamaExitEventSourceBackground,
};

@interface GamaTimer : NSObject
@property (nonatomic, strong) NSTimer *timer;
@property (nonatomic, assign) NSInteger timerCount;
@property (nonatomic, assign) BOOL loginState;
+ (GamaTimer *)shareInstance;

- (void)gama_FBEventStartTimer;

+ (void)gama_UserRetentionEvent;

+ (NSInteger)getCurrentMonth;

+ (void)setStartTimeStamp;

+ (NSString *)getStartTimeStamp;

+ (void)setEndTimeStamp;

+ (NSString *)getEndTimeStamp;

+ (void)reportExitEvent:(GamaExitEventSource)eventSource;
@end
