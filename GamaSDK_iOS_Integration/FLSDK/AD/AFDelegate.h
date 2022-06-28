//
//  AFDelegate.h
//  FLSDK
//
//  Created by Gan Yuanrong on 2022/6/28.
//  Copyright © 2022 Gama. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#import <AppsFlyerLib/AppsFlyerLib.h>

NS_ASSUME_NONNULL_BEGIN

@interface AFDelegate : NSObject

+ (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions;
+ (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary *)options;
+ (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation;

+ (void)applicationWillTerminate:(UIApplication *)application;

+ (void)applicationDidBecomeActive:(UIApplication *)application;


@end

NS_ASSUME_NONNULL_END
