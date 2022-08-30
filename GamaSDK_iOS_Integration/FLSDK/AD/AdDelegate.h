//
//  AFDelegate.h
//  FLSDK
//
//  Created by Gan Yuanrong on 2022/6/28.
//  Copyright © 2022 Gama. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "PayData.h"

typedef NS_OPTIONS(NSUInteger, AdType) {
    AdType_None        = 0,
    AdType_Appflyer            =  1 << 1,   // 0000 0001
    AdType_FB                  =  1 << 2,   // 0000 0010
    AdType_Firebase            =  1 << 3,   // 0000 0100
    AdType_All                 = AdType_Appflyer | AdType_FB | AdType_Firebase,
};

NS_ASSUME_NONNULL_BEGIN

@interface AdDelegate : NSObject

+ (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions;
+ (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary *)options;
+ (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation;

+ (void)applicationWillTerminate:(UIApplication *)application;

+ (void)applicationDidBecomeActive:(UIApplication *)application;


+ (void)logEventWithEventName:(NSString *)eventName eventValues:(NSDictionary<NSString * , id> * _Nullable)eventValues type:(AdType) type;
//+ (void)logEventForFBWithEventName:(NSString *)eventName eventValues:(NSDictionary<NSString * , id> * _Nullable)eventValues;

+ (void)logEventPurchaseValues:(PayData *)mPayData type:(AdType) type;

@end

NS_ASSUME_NONNULL_END
