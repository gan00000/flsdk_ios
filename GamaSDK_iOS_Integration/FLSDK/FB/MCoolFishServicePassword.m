
#import "MCoolFishServicePassword.h"

#import <FBSDKCoreKit/FBSDKCoreKit.h>
#import <FBSDKLoginKit/FBSDKLoginKit.h>
#import <FBSDKShareKit/FBSDKShareKit.h>


@interface MCoolFishServicePassword() <FBSDKSharingDelegate>
@property(nonatomic, assign)float  confPadding;
@property(nonatomic, assign)double  firebase_min;




@property (nonatomic,strong) FBSDKLoginManager *loginManager;

@property (nonatomic,strong) CCallBack successBlock;
@property (nonatomic,strong) CCallBack failBlock;

@end

@implementation MCoolFishServicePassword

#pragma mark - delegate


+ (instancetype)share{
    
    static MCoolFishServicePassword *_FBDelegate = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _FBDelegate = [[MCoolFishServicePassword alloc] init];
    });
    
    return _FBDelegate;
}



- (void)facebookLogout_MMMethodMMM
{
    [self.loginManager logOut];
}


+ (void)applicationDidBecomeActive_MMMethodMMM:(UIApplication *)application
{
}


- (BOOL)isFacebookLogined_MMMethodMMM
{
   self.confPadding = 6445.0;

   self.firebase_min = 9246.0;

   self.generic_max = 3045.0;

   self.arrayMark = 2816;

   self.urlsFromCenter_list = @[@(6840.0)];

    BOOL retResult = NO;
    
    
    return retResult;
}


- (void)sharer:(id<FBSDKSharing>)sharer didCompleteWithResults:(NSDictionary<NSString *,id> *)results{
    
    SDK_LOG(@"share didCompleteWithResults");
    if (self.successBlock) {
        self.successBlock(@"", 1, nil);
    }
}


- (void)loginWithPerssion_MMMethodMMM:(void (^ _Nonnull)(NSError *))cancelBlock failBlock_MMMethodMMM:(void (^ _Nonnull)(NSError *))failBlock presentingViewController:(UIViewController * _Nonnull)presentingViewController successBlock_MMMethodMMM:(void (^ _Nonnull)(NSString *, NSString *, NSString *))successBlock {
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


- (void)sharer:(id<FBSDKSharing>)sharer didFailWithError:(NSError *)error{
    SDK_LOG(@"share didFailWithError_MMMethodMMM: %@",error);
    if (self.failBlock) {
        self.failBlock(@"error", 0, nil);
    }
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
            NSLog(@"loadCurrentProfileWithCompletion");
            return;
        }];
        
        return;
        
    }
    
    
    [self loginWithPerssion_MMMethodMMM:cancelBlock failBlock_MMMethodMMM:failBlock presentingViewController:presentingViewController successBlock_MMMethodMMM:successBlock];
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



+ (void)applicationWillTerminate_MMMethodMMM:(UIApplication *)application
{
    
}


+ (BOOL)application:(UIApplication *)application
            openURL:(NSURL *)url
  sourceApplication:(NSString *)sourceApplication
         annotation:(id)annotation
{
    
    [[FBSDKApplicationDelegate sharedInstance] application:application
                                                   openURL:url
                                         sourceApplication:sourceApplication
                                                annotation:annotation];
    return YES;
}


+ (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary *)options
{
    
    
    
    return [[FBSDKApplicationDelegate sharedInstance] application:app openURL:url options:options];
}


+ (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    return [[FBSDKApplicationDelegate sharedInstance] application:application
                                    didFinishLaunchingWithOptions:launchOptions];
}



- (FBSDKAccessToken *)currentAccessToken_MMMethodMMM
{
    return [FBSDKAccessToken currentAccessToken];
}

- (void)sharerDidCancel:(id<FBSDKSharing>)sharer{
    SDK_LOG(@"sharerDidCancel");
    if (self.failBlock) {
        self.failBlock(@"cancel", 0, nil);
    }
}

-(FBSDKLoginManager *)loginManager
{
    if (!_loginManager) {
        _loginManager = [[FBSDKLoginManager alloc] init];
    }
    return _loginManager;
}

@end
