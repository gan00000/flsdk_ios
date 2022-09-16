//
//  SeaariumContinueatory.m
//  FLSDK
//
//  Created by Gan Yuanrong on 2022/6/16.
//  Copyright © 2022 Gama. All rights reserved.
//

#import "SeaariumContinueatory.h"

#import <FBSDKCoreKit/FBSDKCoreKit.h>
#import <FBSDKLoginKit/FBSDKLoginKit.h>
#import <FBSDKShareKit/FBSDKShareKit.h>

//@import FBSDKCoreKit;
//@import FBSDKLoginKit;
//@import FBSDKShareKit;

@interface SeaariumContinueatory() <FBSDKSharingDelegate>

@property (nonatomic,strong) FBSDKLoginManager *loginManager;

@property (nonatomic,strong) CCallBack successBlock;
@property (nonatomic,strong) CCallBack failBlock;

@end

@implementation SeaariumContinueatory

#pragma mark - delegate

+ (instancetype)share{
    
    static SeaariumContinueatory *_FBDelegate = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _FBDelegate = [[SeaariumContinueatory alloc] init];
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
    //注释掉，不判断accessToken,直接每次调用登录
//    if (nil == [self currentAccessToken] || [[self currentAccessToken] isExpired]) {
//        retResult = NO;
//    } else {
//        retResult = YES;
//    }
    
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

-(void)shareWithTag:(NSString *)hashTag message:(NSString *)message url:(NSString *)url
    presentingViewController:(UIViewController * _Nonnull)presentingViewController
    successBlock:(CCallBack)successBlock
    failBlock:(CCallBack)failBlock
{
    self.successBlock = successBlock;
    self.failBlock = failBlock;
    
    NSURL *mUrl = [NSURL URLWithString:url];
    FBSDKShareLinkContent *xFBSDKShareLinkContent = [[FBSDKShareLinkContent alloc] init];
    xFBSDKShareLinkContent.contentURL = mUrl;
    xFBSDKShareLinkContent.quote = message;
    if (hashTag) {
        xFBSDKShareLinkContent.hashtag = [[FBSDKHashtag alloc] initWithString:hashTag];
    }
    
    FBSDKShareDialog *shareDialog = [[FBSDKShareDialog alloc] initWithViewController:presentingViewController content:xFBSDKShareLinkContent delegate:self];
    
    BOOL fbExist = [[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"fbapi://"]]; //判断fb是否安装
    if (fbExist) {
        shareDialog.mode = FBSDKShareDialogModeNative;
    }else{
        shareDialog.mode = FBSDKShareDialogModeAutomatic;
    }
    
    BOOL ok = [shareDialog show];
    SDK_LOG(@"FBSDKShareDialogModeNative not ok");
  
//    [FBSDKShareDialog showFromViewController:presentingViewController withContent:xFBSDKShareLinkContent delegate:self];
    
}


/// Sent to the delegate when sharing completes without error or cancellation.
/// @param sharer The sharer that completed.
/// @param results The results from the sharer.  This may be nil or empty.
- (void)sharer:(id<FBSDKSharing>)sharer didCompleteWithResults:(NSDictionary<NSString *,id> *)results{
    
    SDK_LOG(@"share didCompleteWithResults");
    if (self.successBlock) {
        self.successBlock(@"", 1, nil);
    }
}
/// Sent to the delegate when the sharer encounters an error.
/// @param sharer The sharer that completed.
/// @param error The error.
///
- (void)sharer:(id<FBSDKSharing>)sharer didFailWithError:(NSError *)error{
    SDK_LOG(@"share didFailWithError: %@",error);
    if (self.failBlock) {
        self.failBlock(@"error", 0, nil);
    }
}
/// Sent to the delegate when the sharer is cancelled.
/// @param sharer The sharer that completed.
- (void)sharerDidCancel:(id<FBSDKSharing>)sharer{
    SDK_LOG(@"sharerDidCancel");
    if (self.failBlock) {
        self.failBlock(@"cancel", 0, nil);
    }
}

@end
