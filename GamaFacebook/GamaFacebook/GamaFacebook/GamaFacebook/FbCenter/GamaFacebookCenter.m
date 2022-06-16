//
//

#import "GamaFacebookCenter.h"
#import <Accounts/Accounts.h>

#import "GamaCentreInfo.h"
#import "GamaFacebookInfo.h"
#import "GamaFacebookImp_V4.h"
#import "GamaFacebookPort.h"

@implementation GamaFacebookCenter

static Class g_fbClass = nil;
+(void)load
{
    // cause of no ui, so that's it. no block here

    BOOL isFacebookLibExist = NO;
    NSString *sdkVersion = nil;
    if (NSClassFromString(@"FBSDKAccessToken")) {
        isFacebookLibExist = YES;
        sdkVersion = [NSClassFromString(@"FBSDKSettings") sdkVersion];
        g_fbClass = [GamaFacebookImp_V4 class];
    } else if (NSClassFromString(@"FBSession")) {
        isFacebookLibExist = YES;
        sdkVersion = [NSClassFromString(@"FBSettings") sdkVersion];
        g_fbClass = [GamaFacebookImp_V4 class];
    } else {
        isFacebookLibExist = NO;
        NSLog(@"---FacebookLib is Not exist---");
    }
    NSString *facebookAppId = SDKConReaderGetString(GAMA_AD_FACEBOOK_APP_ID);

    if (facebookAppId && ![facebookAppId isEqualToString:@""]) {
        if (isFacebookLibExist) {
            NSLog(@"FacebookSDK Version: %@",sdkVersion);
            return;
        }
        dispatch_async(dispatch_get_main_queue(), ^{
            [AlertUtil showAlertWithMessage:@"Please import Facebook SDK Framework."];
        });
    }
}

#pragma mark - delegate
+ (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    return [g_fbClass application:application didFinishLaunchingWithOptions:launchOptions];
}

+ (BOOL)application:(UIApplication *)application
            openURL:(NSURL *)url
  sourceApplication:(NSString *)sourceApplication
         annotation:(id)annotation
{
    return [g_fbClass application:application
                          openURL:url
                sourceApplication:sourceApplication
                       annotation:annotation];
}

+ (void)applicationWillTerminate:(UIApplication *)application
{
    [g_fbClass applicationWillTerminate:application];
}

+ (void)applicationDidBecomeActive:(UIApplication *)application
{
    [g_fbClass applicationDidBecomeActive:application];
}


+ (NSString *)getFacebookName
{
    return [g_fbClass getFacebookName];
}

+(NSString *)getFacebookId
{
    return [g_fbClass getFacebookId];
}

+ (NSString *)getFacebookTokenStr
{
    return [g_fbClass getFacebookTokenStr];
}

#pragma mark - Login

+ (void)requestAppsIdWithCompletionHaldler:(void(^)(NSString *appsId, NSString *businessToken))block
{
    [g_fbClass requestAppsIdWithCompletionHaldler:block];
}

+ (void)facebookLoginWithForceInApp:(BOOL)isForceInappLogin
              andIsForceReAuthorize:(BOOL)isForceReAuthorize
                   andCallbackBlock:(FacebookLoginBlock)callBackBlock
{
    [g_fbClass impFacebookLoginWithForceInApp:isForceInappLogin
                        andIsForceReAuthorize:isForceReAuthorize
                             andCallbackBlock:^(BOOL isLoginCancle, NSError *loginError, NSString *facebookID, NSString *facebookName, NSString *facebookTokenStr) {
                                 if (loginError) {      //Error
                                     GAMA_FUNCTION_LOG(loginError);
                                     //提示用户获取token失败
                                     [AlertUtil showAlertWithMessage:SDKConReaderGetLocalizedString(GAMA_LOGIN_TEXT_GET_FB_TOKEN_FAIL)];

                                     
                                     !callBackBlock ? : callBackBlock(loginError, [GamaFacebookCenter getFacebookId], [GamaFacebookCenter getFacebookTokenStr]);
                                 } else if (isLoginCancle) {      //@"Cancelled"
                                     //提示用户获取token失败
                                     [AlertUtil showAlertWithMessage:SDKConReaderGetLocalizedString(GAMA_LOGIN_TEXT_GET_FB_INFO_FAIL)];

                                     NSError *error = [NSError errorWithDomain:@"Facebook Login" code:1001 userInfo:@{@"userInfo":@"user cancle facebook authorize!"}];
                                     !callBackBlock ? : callBackBlock(error, [GamaFacebookCenter getFacebookId], [GamaFacebookCenter getFacebookTokenStr]);
                                 } else {      //Logged in
                                     [SdkUserInfoModel shareInfoModel].thirdId = [GamaFacebookCenter getFacebookId];
                                     !callBackBlock ? : callBackBlock(nil, [GamaFacebookCenter getFacebookId], [GamaFacebookCenter getFacebookTokenStr]);
                                 }
                             }];
}

#pragma mark - setting

+ (void)setAppID:(NSString *)appId;
{
    [g_fbClass setAppID:appId];
}

+ (BOOL)isFacebookLogined
{
    return [g_fbClass isFacebookLogined];
}

+ (void)facebookLogout
{
    [g_fbClass facebookLogout];
}

#pragma mark - event
+(void)facebookEventLogWithCustomAppEvents:(NSString *)customAppEventName
{
    [g_fbClass facebookEventLogWithCustomAppEvents:customAppEventName];
}

+(void)facebookEventLogWithCustomAppEvents:(NSString *)customAppEventName parameters:(NSDictionary *)parameters
{
    [g_fbClass facebookEventLogWithCustomAppEvents:customAppEventName parameters:parameters];
}

#pragma mark - share

+ (void)postFacebookShareDialogWithContentUrl:(NSString *)contentUrl
{
    [g_fbClass postFacebookShareDialogWithContentUrl:contentUrl];
}

@end
