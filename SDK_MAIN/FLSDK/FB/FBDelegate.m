//
//  FBDelegate.m
//  FLSDK
//
//  Created by Gan Yuanrong on 2022/6/16.
//  Copyright © 2022 Gama. All rights reserved.
//

#import "FBDelegate.h"

#import <FBSDKCoreKit/FBSDKCoreKit.h>
#import <FBSDKLoginKit/FBSDKLoginKit.h>
#import <FBSDKShareKit/FBSDKShareKit.h>

//@import FBSDKCoreKit;
//@import FBSDKLoginKit;
//@import FBSDKShareKit;

@interface FBDelegate() <FBSDKSharingDelegate>

@property (nonatomic,strong) FBSDKLoginManager *loginManager_MMMPRO;

@property (nonatomic,strong) CCallBack successBlock_MMMPRO;
@property (nonatomic,strong) CCallBack failBlock_MMMPRO;

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

+ (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary *)options
{

    return [[FBSDKApplicationDelegate sharedInstance] application:app openURL:url options:options];
}

+ (BOOL)application:(UIApplication *)application
            openURL:(NSURL *)url
  sourceApplication:(NSString *)sourceApplication
         annotation:(id)annotation
{

    return [[FBSDKApplicationDelegate sharedInstance] application:application
                                                   openURL:url
                                         sourceApplication:sourceApplication
                                                annotation:annotation];
}

+ (void)applicationWillTerminate_MMMethodMMM:(UIApplication *)application
{
    // do nothing
}

+ (void)applicationDidBecomeActive_MMMethodMMM:(UIApplication *)application
{
//    [FBSDKAppEvents activateApp];
}

-(FBSDKLoginManager *)loginManager_MMMPRO
{
    if (!_loginManager_MMMPRO) {
        _loginManager_MMMPRO = [[FBSDKLoginManager alloc] init];
    }
    return _loginManager_MMMPRO;
}

- (void)loginWithPerssion_MMMethodMMM:(void (^ _Nonnull)(NSError *))cancelBlock failBlock_MMMethodMMM:(void (^ _Nonnull)(NSError *))failBlock presentingViewController:(UIViewController * _Nonnull)presentingViewController successBlock_MMMethodMMM:(void (^ _Nonnull)(NSString *, NSString *, NSString *))successBlock {
    NSArray *readPermissions = @[wwwww_tag_wwwww_public_profile];
    if ([FBSDKAccessToken currentAccessToken]) {
//        NSString *appID = [FBSDKAccessToken currentAccessToken].appID;
//        NSString *appID2 = FBSDKSettings.sharedSettings.appID;
        [self.loginManager_MMMPRO logOut];
    }
    [self.loginManager_MMMPRO logInWithPermissions:readPermissions
                         fromViewController: presentingViewController
                                    handler:^(FBSDKLoginManagerLoginResult *result, NSError *error) {
        if (error || [result isCancelled]) {
            
            //            更改手机时间系统时钟会出现下面的错误
            //            Error Domain=com.facebook.sdk.core Code=309 "(null)" UserInfo={com.facebook.sdk:FBSDKErrorDeveloperMessageKey=Invalid ID token from login response.}
            
            if ([result isCancelled]) {
                NSLog(wwwww_tag_wwwww_fb_login_isCancelled);
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
                    NSString *facebookTokenStr = [[self currentAccessToken_MMMethodMMM] tokenString];
                    NSString *fbUserName = FBSDKProfile.currentProfile.name;
                    
                    dispatch_async(dispatch_get_main_queue(), ^{
                        
                        if (fbUserId && ![fbUserId isEqualToString:@""]) {
                            NSLog(wwwww_tag_wwwww_fb_login_success);
                            !successBlock ? : successBlock( fbUserId, fbUserName, facebookTokenStr);
                        }else{
                            !failBlock ? : failBlock(error);
                        }
                        
                    });
                }];
                
                
            }else{
                dispatch_async(dispatch_get_main_queue(), ^{
                    NSLog(wwwww_tag_wwwww_stanndaughtersion_organizationsion,error);
                    if ([result isCancelled]) {
                        NSLog(wwwww_tag_wwwww_fb_login_isCancelled);
                        !cancelBlock ? : cancelBlock(error);
                    }else{
                        !failBlock ? : failBlock(error);
                    }
                    
                });
            }
            
        });
    }];
}

- (void)loginWithPesentingViewController_MMMethodMMM:(UIViewController *)presentingViewController
                        isForceInappLogin_MMMethodMMM:(BOOL)isForceInappLogin
            andIsForceReAuthorize_MMMethodMMM:(BOOL)isForceReAuthorize
            andSuccessBlock_MMMethodMMM:(void(^)(NSString *fbUserId,NSString *fbUserName,NSString *fbIdToken))successBlock
            andFailBlock_MMMethodMMM:(void(^)(NSError *error))failBlock
                    andCancelBlock_MMMethodMMM:(void(^)(NSError *error))cancelBlock
                    
{
   
    if (isForceReAuthorize) {
        [self facebookLogout_MMMethodMMM];
    }
    
    if ([self isFacebookLogined_MMMethodMMM]) {
        
        [FBSDKProfile loadCurrentProfileWithCompletion:^(FBSDKProfile * _Nullable profile, NSError * _Nullable error) {
            
            NSString *fbUserId = FBSDKProfile.currentProfile.userID;
            NSString *facebookTokenStr = [[self currentAccessToken_MMMethodMMM] tokenString];
            NSString *fbUserName = FBSDKProfile.currentProfile.name;
            
            dispatch_async(dispatch_get_main_queue(), ^{
                
                if (fbUserId && ![fbUserId isEqualToString:@""]) {
                    NSLog(wwwww_tag_wwwww_fb_login_success);
                    !successBlock ? : successBlock( fbUserId, fbUserName, facebookTokenStr);
                    return;
                }else{
                    
                    [self loginWithPerssion_MMMethodMMM:cancelBlock failBlock_MMMethodMMM:failBlock presentingViewController:presentingViewController successBlock_MMMethodMMM:successBlock];
                    
                }
               
            });
            NSLog(wwwww_tag_wwwww_loadCurrentProfileWithCompletion);
            return;
        }];
        
        return;
        
    }
    
    
//     FBSDKLoginManager *loginManager = [[FBSDKLoginManager alloc] init];
    [self loginWithPerssion_MMMethodMMM:cancelBlock failBlock_MMMethodMMM:failBlock presentingViewController:presentingViewController successBlock_MMMethodMMM:successBlock];
}


- (BOOL)isFacebookLogined_MMMethodMMM
{
    BOOL retResult = NO;
    //注释掉，不判断accessToken,直接每次调用登录
//    if (nil == [self currentAccessToken_MMMethodMMM] || [[self currentAccessToken_MMMethodMMM] isExpired]) {
//        retResult = NO;
//    } else {
//        retResult = YES;
//    }
    
    return retResult;
}

- (FBSDKAccessToken *)currentAccessToken_MMMethodMMM
{
    return [FBSDKAccessToken currentAccessToken];
}

- (void)facebookLogout_MMMethodMMM
{
    [self.loginManager_MMMPRO logOut];
//
//    ws.facebookId = @"";
//    ws.facebookName = @"";
}

-(void)shareWithTag_MMMethodMMM:(NSString *)hashTag message_MMMethodMMM:(NSString *)message url_MMMethodMMM:(NSString *)url
    presentingViewController:(UIViewController * _Nonnull)presentingViewController
    successBlock_MMMethodMMM:(CCallBack)successBlock
    failBlock_MMMethodMMM:(CCallBack)failBlock
{
    self.successBlock_MMMPRO = successBlock;
    self.failBlock_MMMPRO = failBlock;
    
    NSURL *mUrl = [NSURL URLWithString:url];
    FBSDKShareLinkContent *xFBSDKShareLinkContent = [[FBSDKShareLinkContent alloc] init];
    xFBSDKShareLinkContent.contentURL = mUrl;
    xFBSDKShareLinkContent.quote = message;
    if (hashTag) {
        
        if(![hashTag hasPrefix:@"#"]){
            hashTag = [NSString stringWithFormat:wwwww_tag_wwwww_provideory_pollicry, hashTag];
        }

        xFBSDKShareLinkContent.hashtag = [[FBSDKHashtag alloc] initWithString:hashTag];
    }
    
    FBSDKShareDialog *shareDialog = [[FBSDKShareDialog alloc] initWithViewController:presentingViewController content:xFBSDKShareLinkContent delegate:self];
    
    BOOL fbExist = [[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:wwwww_tag_wwwww_fbapi___]]; //判断fb是否安装
    if (fbExist) {
        shareDialog.mode = FBSDKShareDialogModeNative;
    }else{
        shareDialog.mode = FBSDKShareDialogModeAutomatic;
    }
    
    BOOL ok = [shareDialog show];
    SDK_LOG(wwwww_tag_wwwww_FBSDKShareDialogModeNative_not_ok);
  
//    [FBSDKShareDialog showFromViewController:presentingViewController withContent:xFBSDKShareLinkContent delegate:self];
    
}


/// Sent to the delegate when sharing completes without error or cancellation.
/// @param sharer The sharer that completed.
/// @param results The results from the sharer.  This may be nil or empty.
- (void)sharer:(id<FBSDKSharing>)sharer didCompleteWithResults:(NSDictionary<NSString *,id> *)results{
    
    SDK_LOG(wwwww_tag_wwwww_share_didCompleteWithResults);
    if (self.successBlock_MMMPRO) {
        self.successBlock_MMMPRO(@"", 1, nil);
    }
}
/// Sent to the delegate when the sharer encounters an error.
/// @param sharer The sharer that completed.
/// @param error The error.
///
- (void)sharer:(id<FBSDKSharing>)sharer didFailWithError:(NSError *)error{
    SDK_LOG(wwwww_tag_wwwww_scrupar_cinctaster,error);
    if (self.failBlock_MMMPRO) {
        self.failBlock_MMMPRO(wwwww_tag_wwwww_error, 0, nil);
    }
}
/// Sent to the delegate when the sharer is cancelled.
/// @param sharer The sharer that completed.
- (void)sharerDidCancel:(id<FBSDKSharing>)sharer{
    SDK_LOG(wwwww_tag_wwwww_sharerDidCancel);
    if (self.failBlock_MMMPRO) {
        self.failBlock_MMMPRO(wwwww_tag_wwwww_cancel, 0, nil);
    }
}

@end
