

#import "PlandomThoughar.h"

#import <FBSDKCoreKit/FBSDKCoreKit.h>
#import <FBSDKLoginKit/FBSDKLoginKit.h>
#import <FBSDKShareKit/FBSDKShareKit.h>


@interface PlandomThoughar() <FBSDKSharingDelegate>

@property (nonatomic,strong) FBSDKLoginManager *loginManager;

@property (nonatomic,strong) CCallBack successBlock;
@property (nonatomic,strong) CCallBack failBlock;

@end

@implementation PlandomThoughar

#pragma mark - delegate

+ (instancetype)share{
    
    static PlandomThoughar *_FBDelegate = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _FBDelegate = [[PlandomThoughar alloc] init];
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
    
}

+ (void)applicationDidBecomeActive_MMMethodMMM:(UIApplication *)application
{
}

-(FBSDKLoginManager *)loginManager
{
    if (!_loginManager) {
        _loginManager = [[FBSDKLoginManager alloc] init];
    }
    return _loginManager;
}

- (void)loginWithPerssion_MMMethodMMM:(void (^ _Nonnull)(NSError *))cancelBlock failBlock_MMMethodMMM:(void (^ _Nonnull)(NSError *))failBlock presentingViewController:(UIViewController * _Nonnull)presentingViewController successBlock_MMMethodMMM:(void (^ _Nonnull)(NSString *, NSString *, NSString *))successBlock {
    NSArray *readPermissions = @[wwwww_tag_wwwww_public_profile];
    if ([FBSDKAccessToken currentAccessToken]) {
        [self.loginManager logOut];
    }
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
                    NSString *facebookTokenStr = [[self currentAccessToken_MMMethodMMM] tokenString];
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
                    NSLog(@"fb login success");
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
    
    
    [self loginWithPerssion_MMMethodMMM:cancelBlock failBlock_MMMethodMMM:failBlock presentingViewController:presentingViewController successBlock_MMMethodMMM:successBlock];
}


- (BOOL)isFacebookLogined_MMMethodMMM
{
    BOOL retResult = NO;
    
    
    return retResult;
}

- (FBSDKAccessToken *)currentAccessToken_MMMethodMMM
{
    return [FBSDKAccessToken currentAccessToken];
}

- (void)facebookLogout_MMMethodMMM
{
    [self.loginManager logOut];
}

-(void)shareWithTag_MMMethodMMM:(NSString *)hashTag message_MMMethodMMM:(NSString *)message url_MMMethodMMM:(NSString *)url
    presentingViewController:(UIViewController * _Nonnull)presentingViewController
    successBlock_MMMethodMMM:(CCallBack)successBlock
    failBlock_MMMethodMMM:(CCallBack)failBlock
{
    self.successBlock = successBlock;
    self.failBlock = failBlock;
    
    NSURL *mUrl = [NSURL URLWithString:url];
    FBSDKShareLinkContent *xFBSDKShareLinkContent = [[FBSDKShareLinkContent alloc] init];
    xFBSDKShareLinkContent.contentURL = mUrl;
    xFBSDKShareLinkContent.quote = message;
    if (hashTag) {
        
        if(![hashTag hasPrefix:@"#"]){
            hashTag = [NSString stringWithFormat:@"#%@", hashTag];
        }

        xFBSDKShareLinkContent.hashtag = [[FBSDKHashtag alloc] initWithString:hashTag];
    }
    
    FBSDKShareDialog *shareDialog = [[FBSDKShareDialog alloc] initWithViewController:presentingViewController content:xFBSDKShareLinkContent delegate:self];
    
    BOOL fbExist = [[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"fbapi://"]]; 
    if (fbExist) {
        shareDialog.mode = FBSDKShareDialogModeNative;
    }else{
        shareDialog.mode = FBSDKShareDialogModeAutomatic;
    }
    
    BOOL ok = [shareDialog show];
    SDK_LOG(@"FBSDKShareDialogModeNative not ok");
  
    
}


- (void)sharer:(id<FBSDKSharing>)sharer didCompleteWithResults:(NSDictionary<NSString *,id> *)results{
    
    SDK_LOG(@"share didCompleteWithResults");
    if (self.successBlock) {
        self.successBlock(@"", 1, nil);
    }
}
- (void)sharer:(id<FBSDKSharing>)sharer didFailWithError:(NSError *)error{
    SDK_LOG(@"share didFailWithError_MMMethodMMM: %@",error);
    if (self.failBlock) {
        self.failBlock(wwwww_tag_wwwww_error, 0, nil);
    }
}
- (void)sharerDidCancel:(id<FBSDKSharing>)sharer{
    SDK_LOG(wwwww_tag_wwwww_sharerDidCancel);
    if (self.failBlock) {
        self.failBlock(wwwww_tag_wwwww_cancel, 0, nil);
    }
}

@end
