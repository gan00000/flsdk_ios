//
//  FBDelegate.h
//  FLSDK
//
//  Created by Gan Yuanrong on 2022/6/16.
//  Copyright © 2022 Gama. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#import "CComHeader.h"

NS_ASSUME_NONNULL_BEGIN

@interface FBDelegate : NSObject

+ (instancetype)share;

+ (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions;
+ (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary *)options;
+ (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation;

+ (void)applicationWillTerminate_MMMethodMMM:(UIApplication *)application;

+ (void)applicationDidBecomeActive_MMMethodMMM:(UIApplication *)application;


-(void)loginWithPesentingViewController_MMMethodMMM:(UIViewController *)presentingViewController
                        isForceInappLogin_MMMethodMMM:(BOOL)isForceInappLogin
            andIsForceReAuthorize_MMMethodMMM:(BOOL)isForceReAuthorize
            andSuccessBlock_MMMethodMMM:(void(^)(NSString *fbUserId,NSString *fbUserName,NSString *fbIdToken))successBlock
            andFailBlock_MMMethodMMM:(void(^)(NSError *error))failBlock
                           andCancelBlock_MMMethodMMM:(void(^)(NSError *error))cancelBlock;

-(void)shareWithTag_MMMethodMMM:(NSString *)hashTag message_MMMethodMMM:(NSString *)message url_MMMethodMMM:(NSString *)url
    presentingViewController:(UIViewController * _Nonnull)presentingViewController
    successBlock_MMMethodMMM:(CCallBack)successBlock
          failBlock_MMMethodMMM:(CCallBack)failBlock;

@end


NS_ASSUME_NONNULL_END
