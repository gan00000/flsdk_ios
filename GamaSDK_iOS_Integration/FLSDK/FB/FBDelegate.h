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

//@import FBSDKCoreKit;
//@import FBSDKLoginKit;
//@import FBSDKShareKit;

#import "CComHeader.h"

NS_ASSUME_NONNULL_BEGIN

@interface FBDelegate : NSObject

+ (instancetype)share;

+ (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions;
+ (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary *)options;
+ (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation;

+ (void)applicationWillTerminate:(UIApplication *)application;

+ (void)applicationDidBecomeActive:(UIApplication *)application;


-(void)loginWithPesentingViewController:(UIViewController *)presentingViewController
                        isForceInappLogin:(BOOL)isForceInappLogin
            andIsForceReAuthorize:(BOOL)isForceReAuthorize
            andSuccessBlock:(void(^)(NSString *fbUserId,NSString *fbUserName,NSString *fbIdToken))successBlock
            andFailBlock:(void(^)(NSError *error))failBlock
                           andCancelBlock:(void(^)(NSError *error))cancelBlock;

-(void)shareWithTag:(NSString *)hashTag message:(NSString *)message url:(NSString *)url
    presentingViewController:(UIViewController * _Nonnull)presentingViewController
    successBlock:(CCallBack)successBlock
          failBlock:(CCallBack)failBlock;

@end


NS_ASSUME_NONNULL_END
