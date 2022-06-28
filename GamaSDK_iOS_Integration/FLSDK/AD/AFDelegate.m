//
//  AFDelegate.m
//  FLSDK
//
//  Created by Gan Yuanrong on 2022/6/28.
//  Copyright © 2022 Gama. All rights reserved.
//

#import "AFDelegate.h"

@implementation AFDelegate

+ (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions{
    
    [AppsFlyerLib shared].isDebug = YES;
    [[AppsFlyerLib shared] setAppsFlyerDevKey:@"QtrxWJpdhQVov9F8hwKD3o"];
    [[AppsFlyerLib shared] setAppleAppID:@"1630130607"];
    
    return YES;
}

+ (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary *)options{
    
    return YES;
}
+ (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation{
    return YES;
}

+ (void)applicationWillTerminate:(UIApplication *)application{
    
}

+ (void)applicationDidBecomeActive:(UIApplication *)application{
    [[AppsFlyerLib shared] start];
}


@end
