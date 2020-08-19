//
//

#import <Foundation/Foundation.h>
#import <FBSDKCoreKit/FBSDKCoreKit.h>
#import <FBSDKLoginKit/FBSDKLoginKit.h>
#import <FBSDKShareKit/FBSDKShareKit.h>
#import <FBSDKMessengerShareKit/FBSDKMessengerShareKit.h>

#import "GamaFacebookInfo.h"
#import "GamaFacebookCenter.h"

typedef void(^FacebookLoginStatusBlock)(BOOL isLoginCancle, NSError * loginError, NSString *facebookID, NSString *facebookName, NSString *facebookTokenStr);

@interface GamaFacebookImp_V4 : NSObject

@property (nonatomic,copy) NSString * facebookName;
@property (nonatomic,copy) NSString * facebookId;
@property (nonatomic,copy) NSString * facebookGender;
@property (nonatomic,copy) NSString * facebookTokenStr;

+ (NSString *) getFacebookName;
+ (NSString *) getFacebookId;
+ (NSString *) getFacebookTokenStr;

+(instancetype)sharedInstance;

+ (BOOL)isFacebookLogined;

#pragma mark - event
+ (void)facebookEventLogWithCustomAppEvents:(NSString *)customAppEventName;
+ (void)facebookEventLogWithCustomAppEvents:(NSString *)eventName
                                 parameters:(NSDictionary *)parameters;


#pragma mark - delegate
+ (BOOL)application:(UIApplication *)application
            openURL:(NSURL *)url
  sourceApplication:(NSString *)sourceApplication
         annotation:(id)annotation;

+ (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions;

+ (void)applicationWillTerminate:(UIApplication *)application;

+ (void)applicationDidBecomeActive:(UIApplication *)application;

#pragma mark - login
+ (void)requestAppsIdWithCompletionHaldler:(void(^)(NSString *appsId, NSString *businessToken))block;
+ (void)facebookLogout;

+ (void)impFacebookLoginWithForceInApp:(BOOL)isForceInappLogin
                 andIsForceReAuthorize:(BOOL)isForceReAuthorize
                      andCallbackBlock:(FacebookLoginStatusBlock)callBackBlock;

#pragma mark - share

+ (void)postFacebookShareDialogWithContentUrl:(NSString *)contentUrl;

#pragma mark - setting
+ (void)setAppID:(NSString *)appId;

@end
