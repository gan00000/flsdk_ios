//
//  GamaAdFunction+FirebaseAD.m
//  GamaAD
//
//  Created by coke on 2018/7/5.
//  Copyright © 2018年 Gamamobi. All rights reserved.
//

#import "GamaAdFunction.h"
#if __has_include("Firebase.h")
#import "Firebase.h"
#endif
#import <objc/runtime.h>
#import <objc/message.h>


@implementation GamaAdFunction (FirebaseAD)

+ (void)firebaseLogEventWithName:(NSString *)name parameters:(NSDictionary *)par {
    if ([NSClassFromString(@"FIRAnalytics") respondsToSelector:NSSelectorFromString(@"logEventWithName:parameters:")]) {
        ((void(*)(Class ,SEL , id ,id ))objc_msgSend)(NSClassFromString(@"FIRAnalytics"),NSSelectorFromString(@"logEventWithName:parameters:"),name,par);
    }
//    [FIRAnalytics logEventWithName:name parameters:par];
}

+ (void)firebaseTrackWith:(ADTrackType)trackType userDefineEvent:(NSString *)userDefineEventString {
    
}

+ (void)firebaseTrackWithEventName:(NSString *)eventName eventValues:(NSDictionary *)values {
    
}

@end
