//
//  AdjustDelegate.h
//  MWSDK_VN
//
//  Created by Gan Yuanrong on 2023/8/2.
//  Copyright © 2023 Gama. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface AdjustDelegate : NSObject

+ (instancetype)share;

- (void)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions;
//- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary *)options;

- (void)logEventWithEventName_MMMethodMMM:(NSString *)eventName;

- (void)logEventWithEventName_MMMethodMMM:(NSString *)eventName eventValues_MMMethodMMM:(NSDictionary<NSString * , NSString *> *)eventValues;

- (void)logEventWithEventName_MMMethodMMM:(NSString *)eventName eventValues_MMMethodMMM:(NSDictionary<NSString * , NSString *> *)eventValues revenue:(double)revenue transactionId:(NSString *)transactionId;

@end

NS_ASSUME_NONNULL_END
