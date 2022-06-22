//
//  FBDelegate.m
//  FLSDK
//
//  Created by Gan Yuanrong on 2022/6/16.
//  Copyright © 2022 Gama. All rights reserved.
//

#import "FBDelegate.h"

@interface FBDelegate()

@property (nonatomic,strong) FBSDKLoginManager *loginManager;

@end

@implementation FBDelegate

#pragma mark - delegate

+ (instancetype)share{
    
    static FBDelegate *_FBDelegate = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _FBDelegate = [[FBDelegate alloc] init];
    });
    
    return _FBDelegate;
}


+ (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    return [[FBSDKApplicationDelegate sharedInstance] application:application
                                    didFinishLaunchingWithOptions:launchOptions];
}

+  (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary *)options
{
//    NSString * systemFlog=[NSString stringWithFormat:@"facebook_login:get url,%@",url.description];
//    SDK_LOG(systemFlog);
//
    return [[FBSDKApplicationDelegate sharedInstance] application:app openURL:url options:options];
}

+ (BOOL)application:(UIApplication *)application
            openURL:(NSURL *)url
  sourceApplication:(NSString *)sourceApplication
         annotation:(id)annotation
{
//    NSString * systemFlog=[NSString stringWithFormat:@"facebook_login:get url,%@",url.description];
//    SDK_LOG(systemFlog);
    
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

-(FBSDKLoginManager *)loginManager
{
    if (!_loginManager) {
        _loginManager = [[FBSDKLoginManager alloc] init];
    }
    return _loginManager;
}

- (void)loginWithPerssion:(void (^ _Nonnull)(NSError *))cancelBlock failBlock:(void (^ _Nonnull)(NSError *))failBlock presentingViewController:(UIViewController * _Nonnull)presentingViewController successBlock:(void (^ _Nonnull)(NSString *, NSString *, NSString *))successBlock {
    NSArray *readPermissions = @[@"public_profile"];
    
    [self.loginManager logInWithPermissions:readPermissions
                         fromViewController: presentingViewController
                                    handler:^(FBSDKLoginManagerLoginResult *result, NSError *error) {
        if (error || [result isCancelled]) {
            
            if ([result isCancelled]) {
                NSLog(@"fb login isCancelled");
                !cancelBlock ? : cancelBlock(error);
            }else{
                !failBlock ? : failBlock(error);
            }
            return;
        }
        
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
            if (![result isCancelled] && !error) {
                
                [FBSDKProfile loadCurrentProfileWithCompletion:^(FBSDKProfile * _Nullable profile, NSError * _Nullable error) {
                    
                    NSString *fbUserId = FBSDKProfile.currentProfile.userID;
                    NSString *facebookTokenStr = [[self currentAccessToken] tokenString];
                    NSString *fbUserName = FBSDKProfile.currentProfile.name;
                    
                    dispatch_async(dispatch_get_main_queue(), ^{
                        
                        if (fbUserId && ![fbUserId isEqualToString:@""]) {
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

- (void)loginWithPesentingViewController:(UIViewController *)presentingViewController
                        isForceInappLogin:(BOOL)isForceInappLogin
            andIsForceReAuthorize:(BOOL)isForceReAuthorize
            andSuccessBlock:(void(^)(NSString *fbUserId,NSString *fbUserName,NSString *fbIdToken))successBlock
            andFailBlock:(void(^)(NSError *error))failBlock
                    andCancelBlock:(void(^)(NSError *error))cancelBlock
                    
{
   
    if (isForceReAuthorize) {
        [self facebookLogout];
    }
    
    if ([self isFacebookLogined]) {
        
        [FBSDKProfile loadCurrentProfileWithCompletion:^(FBSDKProfile * _Nullable profile, NSError * _Nullable error) {
            
            NSString *fbUserId = FBSDKProfile.currentProfile.userID;
            NSString *facebookTokenStr = [[self currentAccessToken] tokenString];
            NSString *fbUserName = FBSDKProfile.currentProfile.name;
            
            dispatch_async(dispatch_get_main_queue(), ^{
                
                if (fbUserId && ![fbUserId isEqualToString:@""]) {
                    NSLog(@"fb login success");
                    !successBlock ? : successBlock( fbUserId, fbUserName, facebookTokenStr);
                    return;
                }else{
                    
                    [self loginWithPerssion:cancelBlock failBlock:failBlock presentingViewController:presentingViewController successBlock:successBlock];
                    
                }
               
            });
            NSLog(@"loadCurrentProfileWithCompletion");
            return;
        }];
        
        return;
        
    }
    
    
//     FBSDKLoginManager *loginManager = [[FBSDKLoginManager alloc] init];
    [self loginWithPerssion:cancelBlock failBlock:failBlock presentingViewController:presentingViewController successBlock:successBlock];
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
    [self.loginManager logOut];
//
//    ws.facebookId = @"";
//    ws.facebookName = @"";
}

@end
