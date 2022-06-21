//
//  FBDelegate.m
//  FLSDK
//
//  Created by Gan Yuanrong on 2022/6/16.
//  Copyright © 2022 Gama. All rights reserved.
//

#import "FBDelegate.h"

@implementation FBDelegate

#pragma mark - delegate


+ (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    return [[FBSDKApplicationDelegate sharedInstance] application:application
                                    didFinishLaunchingWithOptions:launchOptions];
}

+ (BOOL)application:(UIApplication *)application
            openURL:(NSURL *)url
  sourceApplication:(NSString *)sourceApplication
         annotation:(id)annotation
{
    NSString * systemFlog=[NSString stringWithFormat:@"facebook_login:get url,%@",url.description];
    SDK_LOG(systemFlog);
    
    [[FBSDKApplicationDelegate sharedInstance] application:application
                                                   openURL:url
                                         sourceApplication:sourceApplication
                                                annotation:annotation];
    return YES;
}

+ (void)applicationWillTerminate:(UIApplication *)application
{
    // do nothing
}

+ (void)applicationDidBecomeActive:(UIApplication *)application
{
//    [FBSDKAppEvents activateApp];
}


- (void)login:(BOOL)isForceInappLogin
            andIsForceReAuthorize:(BOOL)isForceReAuthorize
            andSuccessBlock:(void(^)(NSString *fbUserId,NSString *fbUserName,NSString *fbIdToken))successBlock
            andFailBlock:(void(^)(NSError *error))failBlock
                    andCancelBlock:(void(^)(NSError *error))cancelBlock
                    
{
   
    FBSDKLoginManager *loginManager = [[FBSDKLoginManager alloc] init];
//    if (isForceReAuthorize) {
//        [self facebookLogout];
//    }
    
    NSArray *readPermissions = @[@"public_profile"];
    
    [loginManager logInWithPermissions:readPermissions
                                                        fromViewController:nil
                                                                   handler:^(FBSDKLoginManagerLoginResult *result, NSError *error) {
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
            if (![result isCancelled] && !error) {
                
                [FBSDKProfile loadCurrentProfileWithCompletion:^(FBSDKProfile * _Nullable profile, NSError * _Nullable error) {
                    
                    NSString *fbUserId = FBSDKProfile.currentProfile.userID;
                    NSString *facebookTokenStr = [[self currentAccessToken] tokenString];
                    NSString *fbUserName = FBSDKProfile.currentProfile.name;
                    
                    dispatch_async(dispatch_get_main_queue(), ^{
                        
                        if (!fbUserId || [fbUserId isEqualToString:@""]) {
                            NSLog(@"fb login success");
                            !successBlock ? : successBlock( fbUserId, fbUserName, facebookTokenStr);
                        }else{
                            !failBlock ? : failBlock(error);
                        }
                       
                    });
                }];
                
                
            }else{
                dispatch_async(dispatch_get_main_queue(), ^{
                    NSLog(@"fb login error:%@",error);
                    if ([result isCancelled]) {
                        NSLog(@"fb login isCancelled");
                        !cancelBlock ? : cancelBlock(error);
                    }else{
                        !failBlock ? : failBlock(error);
                    }
                    
                });
            }
            
        });
    }];
}


- (BOOL)isFacebookLogined
{
    BOOL retResult = NO;
    
    if (nil == [self currentAccessToken] || [[self currentAccessToken] isExpired]) {
        retResult = NO;
    } else {
        retResult = YES;
    }
    
    return retResult;
}

- (FBSDKAccessToken *)currentAccessToken
{
    return [FBSDKAccessToken currentAccessToken];
}

- (void)facebookLogout
{
//    [ws.loginManager logOut];
//
//    ws.facebookId = @"";
//    ws.facebookName = @"";
}

@end
