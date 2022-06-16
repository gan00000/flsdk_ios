//
//  FBDelegate.h
//  FLSDK
//
//  Created by Gan Yuanrong on 2022/6/16.
//  Copyright © 2022 Gama. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#import <FBSDKCoreKit/FBSDKCoreKit.h>
#import <FBSDKLoginKit/FBSDKLoginKit.h>
#import <FBSDKShareKit/FBSDKShareKit.h>

#import "CComHeader.h"

NS_ASSUME_NONNULL_BEGIN

@interface FBDelegate : NSObject


+ (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions;

+ (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation;

+ (void)applicationWillTerminate:(UIApplication *)application;

+ (void)applicationDidBecomeActive:(UIApplication *)application;


- (void)login:(BOOL)isForceInappLogin
            andIsForceReAuthorize:(BOOL)isForceReAuthorize
            andSuccessBlock:(void(^)(NSString *fbUserId,NSString *fbUserName,NSString *fbIdToken))successBlock
            andFailBlock:(void(^)(NSError *error))failBlock
andCancelBlock:(void(^)(NSError *error))cancelBlock;

@end


NS_ASSUME_NONNULL_END
