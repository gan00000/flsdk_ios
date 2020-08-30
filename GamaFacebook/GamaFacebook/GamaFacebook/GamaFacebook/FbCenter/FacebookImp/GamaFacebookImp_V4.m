//
//

#import "GamaFacebookImp_V4.h"
#import "GamaCentreInfo.h"
#import "GamaFacebookPort.h"
#import "FacebookShareDelegateWarper.h"

@interface GamaFacebookImp_V4 ()

@property (nonatomic,retain) FBSDKLoginManager *loginManager;   // it is a id<FBSDKLoginManager> type

@end

@implementation GamaFacebookImp_V4
@synthesize loginManager;
@synthesize facebookName;
@synthesize facebookId;
@synthesize facebookGender;
@synthesize facebookTokenStr;

-(void)dealloc
{
    !facebookId ? : [facebookId release] ;
    facebookId = nil;
    
    !facebookName ? : [facebookName release] ;
    facebookName = nil;
    
    !facebookGender ? : [facebookGender release];
    facebookGender = nil;
    
    !loginManager ? : [loginManager release] ;
    loginManager = nil;
    
    !facebookTokenStr ? : [facebookTokenStr release];
    facebookTokenStr = nil;
    
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    
    [super dealloc];
}

-(id)init
{
    self=[super init];
    if (self) {
        
        facebookName = nil;
        facebookId = nil;
        facebookGender = nil;
        loginManager = nil;
        facebookTokenStr = nil;
        
//        [[NSNotificationCenter defaultCenter] addObserver:self
//                                                 selector:@selector(_currentProfileChanged:)
//                                                     name:@"com.facebook.sdk.FBSDKProfile.FBSDKProfileDidChangeNotification"
//                                                   object:nil];
    }
    return self;
}
//- (void)_currentProfileChanged:(NSNotification *)notification
//{
//    FBSDKProfile *profile = notification.userInfo[FBSDKProfileChangeNewKey];
//
//    self.facebookId = profile.userID;
//    self.facebookName = profile.name;
//}


+ (GamaFacebookImp_V4 *)sharedInstance
{
    static GamaFacebookImp_V4 * facebookImp_v4;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken,^{
        facebookImp_v4 = [[GamaFacebookImp_V4 alloc]init];
        
        facebookImp_v4.loginManager = [[FBSDKLoginManager alloc] init];
        
        [FBSDKProfile enableUpdatesOnAccessTokenChange:YES];
    });
    return facebookImp_v4;
}


+ (NSString *)getFacebookId
{
    return [[FBSDKAccessToken currentAccessToken] userID];
    //    return [GamaFacebookImp_V4 sharedInstance].facebookId;
}

+ (NSString *)getFacebookName
{
    return [[FBSDKProfile currentProfile] name];
    //    return [GamaFacebookImp_V4 sharedInstance].facebookName;
}

+ (NSString *)getFacebookTokenStr
{
    return [[FBSDKAccessToken currentAccessToken] tokenString];
    //    return [GamaFacebookImp_V4 sharedInstance].facebookTokenStr;
}

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
    GAMA_FUNCTION_LOG(systemFlog);
    
    NSString *urlStr = url.description;
    //由于能接受回调所以取消
    //    if ([urlStr rangeOfString:@"//bridge/share"].location != NSNotFound) {    //
    //        [self _postShareNotify];
    //    }
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
    [FBSDKAppEvents activateApp];
}


#pragma mark - Login

+ (void)requestAppsIdWithCompletionHaldler:(void(^)(NSString *appsId, NSString *businessToken))block
{
    static BOOL tmpRequestingAppIds,tmpRequestingBusinessToken;
    tmpRequestingAppIds = YES, tmpRequestingBusinessToken = YES;
    
    void(^successBlock)(NSString *apps, NSString *businessToken) = Block_copy(block);
    
    FBSDKGraphRequest *tmpRequest = [[[FBSDKGraphRequest alloc] initWithGraphPath:@"/me/ids_for_business"
                                                                       parameters:@{ @"limit" : @"500", @"fields" : @"app,id" }
                                                                       HTTPMethod:@"GET"] autorelease];
    NSLog(@"FacebookSDK Graph API Version: %@",tmpRequest.version);
    [tmpRequest startWithCompletionHandler:^(id connection, id result, NSError *error)
     {
        if (!tmpRequestingAppIds)
        {
            return ;
        }
        
        if (!error)
        {
            NSDictionary *appIdDic = (NSDictionary *)result;
            NSArray *appIdArr = [appIdDic objectForKey:@"data"];
            __block NSMutableString *apps = [[NSMutableString alloc] init];
            [appIdArr enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop)
             {
                //get the Facebook App ID
                NSString *tmpFacebookAppID = [[(NSDictionary*)obj objectForKey:@"app"] objectForKey:@"id"];
                
                //
                NSDictionary *appData = obj;
                NSString *appid = [appData objectForKey:@"id"];
                if (idx == [appIdArr count] - 1) {
                    [apps appendFormat:@"%@_%@",appid,tmpFacebookAppID];
                } else {
                    [apps appendFormat:@"%@_%@,",appid,tmpFacebookAppID];
                }
            }];
            
            FBSDKGraphRequest *tmpRequest = [[[FBSDKGraphRequest alloc] initWithGraphPath:@"/me"
                                                                               parameters:@{@"fields" : @"token_for_business" }
                                                                               HTTPMethod:@"GET"] autorelease];
            [tmpRequest startWithCompletionHandler:^(id connection, id result, NSError *error)
             {
                if (!tmpRequestingBusinessToken)
                {
                    return ;
                }
                
                if (error) {
                    NSLog(@"failed to request business token! error: %@",error);
                }
                
                NSString *businessToken = [(NSDictionary *)result objectForKey:@"token_for_business"];
                
                if (successBlock)
                {
                    successBlock(apps,businessToken);
                    Block_release(successBlock);
                }
                
                [apps release];//若不在此才释放，会提早被释放掉
                tmpRequestingBusinessToken = NO;
            }];
        }
        else
        {
            NSLog(@"failed to request business ids! error: %@",error);
        }
        
        tmpRequestingAppIds = NO;
        
    }];
}

//BOOL isLoginCancle, NSError * loginError, NSString *facebookID, NSString *facebookName
+ (void)impFacebookLoginWithForceInApp:(BOOL)isForceInappLogin
                 andIsForceReAuthorize:(BOOL)isForceReAuthorize
                      andCallbackBlock:(FacebookLoginStatusBlock)callBackBlock
{
    __block GamaFacebookImp_V4 * ws = [self sharedInstance];
    
    if (isForceReAuthorize) {
        [self facebookLogout];
    } else {
        if ([self isFacebookLogined]) {
            ws.facebookId = [[self currentAccessToken] userID];
            //            ws.facebookName = [[FBSDKProfile currentProfile] name];
            ws.facebookTokenStr = [[self currentAccessToken] tokenString];
            !callBackBlock ? : callBackBlock(NO, nil, ws.facebookId, ws.facebookName, ws.facebookTokenStr);
            return;
        }
    }
    
    //TEST
//    if (isForceInappLogin) {
//        //FBSDKLoginBehaviorWeb = 3
//        [ws.loginManager setLoginBehavior:FBSDKLoginBehaviorBrowser];
//    }
    //    NSString *lastPermissionsStr = nil;
    //    NSString *readPermissionsStr = SDKConReaderGetString(GAMA_FB_READ_PERMISSIONS);
    //    NSString *basePermissionsStr = @"public_profile";
    //    if (readPermissionsStr.length > 1) {
    //        lastPermissionsStr = [basePermissionsStr stringByAppendingFormat:@",%@",readPermissionsStr];
    //    }else {
    //        lastPermissionsStr = basePermissionsStr;
    //    }
    //    GAMA_FUNCTION_LOG(lastPermissionsStr);
    NSArray *readPermissions = @[@"public_profile"];
    //@[@"public_profile",@"user_birthday",@"user_friends",@"user_gender"];
    
    [[GamaFacebookImp_V4 sharedInstance].loginManager logInWithPermissions:readPermissions
                                                        fromViewController:nil
                                                                   handler:^(FBSDKLoginManagerLoginResult *result, NSError *error) {
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
            if (![result isCancelled] && !error) {
                
                [FBSDKProfile loadCurrentProfileWithCompletion:^(FBSDKProfile * _Nullable profile, NSError * _Nullable error) {
                    
                    ws.facebookId = FBSDKProfile.currentProfile.userID;
                    ws.facebookTokenStr = [[GamaFacebookImp_V4 currentAccessToken] tokenString];
                    ws.facebookName = FBSDKProfile.currentProfile.name;
                    
                    dispatch_async(dispatch_get_main_queue(), ^{
                        !callBackBlock ? : callBackBlock([result isCancelled], error, ws.facebookId, ws.facebookName, ws.facebookTokenStr);
                    });
                }];
                
                // wait for the - (void)_currentProfileChanged:(NSNotification *)notification
//                while ((ws.facebookName == nil || [ws.facebookName isEqualToString:@""]) && ws.facebookId == nil) {
//                    [NSThread sleepForTimeInterval:0.1f];
//                }
                
                
            }else{
                dispatch_async(dispatch_get_main_queue(), ^{
                    !callBackBlock ? : callBackBlock([result isCancelled], error, ws.facebookId, ws.facebookName, ws.facebookTokenStr);
                });
            }
            
        });
    }];
}

+ (BOOL)isFacebookLogined
{
    BOOL retResult = NO;
    
    if (nil == [self currentAccessToken] || [[self currentAccessToken] isExpired]) {
        retResult = NO;
    } else {
        retResult = YES;
    }
    
    return retResult;
}

+ (id)currentAccessToken
{
    return [FBSDKAccessToken currentAccessToken];
}

+ (void)facebookLogout
{
    __block GamaFacebookImp_V4 * ws = [self sharedInstance];
    [ws.loginManager logOut];
    
    ws.facebookId = @"";
    ws.facebookName = @"";
}

#pragma mark - event
+ (void)facebookEventLogWithCustomAppEvents:(NSString *)customAppEventName
{
    [FBSDKAppEvents logEvent:customAppEventName];
}

+ (void)facebookEventLogWithCustomAppEvents:(NSString *)eventName
                                 parameters:(NSDictionary *)parameters {
    [FBSDKAppEvents logEvent:eventName parameters:parameters];
}

#pragma mark - share

+ (void)postFacebookShareDialogWithContentUrl:(NSString *)contentUrl
{
    FBSDKShareLinkContent *content = [[FBSDKShareLinkContent alloc] init];
    
    [content setContentURL:[NSURL URLWithString:contentUrl]];
    
    id tmpDelegate =
    [FacebookShareDelegateWarper makeFacebookSharingDelegateResolverAndCallbackSuccessBlock:^(NSDictionary *result) {
        [self _postShareNotify];
    } andErrorBlock:^(NSError *error) {
        [self _postShareNotify];
        NSLog(@"Error publishing story: %@", error.description);
    } andCancleBlock:^{
        [self _postShareNotify];
        NSLog(@"User cancelled.");
    }];
    
    [FBSDKShareDialog showFromViewController:nil
                                 withContent:content
                                    delegate:tmpDelegate]; // 该方法点击完成，无任何回调，导1致无法判断用户是否分享出去。
    [content release];
}

#pragma mark - setting


+ (void)setAppID:(NSString *)appId
{
    [FBSDKSettings setAppID:appId];
}


#pragma mark - private
+ (void)_postShareNotify
{
    // FB新政策里面已不会再告知分享是否成功，因此所有都回调分享成功
    [[NSNotificationCenter defaultCenter] postNotificationName:@"Gama_httpRequest_SharingResult"
                                                        object:nil
                                                      userInfo:@{@"code":@"1000",@"message":SDKConReaderGetString(GAMA_SHARE_TEXT_SHARE_SUCCESS)}];
}

@end

