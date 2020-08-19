//
//
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "GamaCentreInfo.h"

typedef void(^FacebookLoginBlock)(NSError * loginError, NSString *facebookID, NSString *facebookTokenStr);

@interface GamaFacebookCenter : NSObject

+ (NSString *) getFacebookName;
+ (NSString *) getFacebookId;
+ (NSString *) getFacebookTokenStr;

+ (BOOL)isFacebookLogined;

#pragma mark - event
+ (void)facebookEventLogWithCustomAppEvents:(NSString *)customAppEventName;
+ (void)facebookEventLogWithCustomAppEvents:(NSString *)customAppEventName parameters:(NSDictionary *)parameters;

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
//rewrite the method
+ (void)facebookLoginWithForceInApp:(BOOL)isForceInappLogin
              andIsForceReAuthorize:(BOOL)isForceReAuthorize
                   andCallbackBlock:(FacebookLoginBlock)callBackBlock;
+ (void)facebookLogout;

#pragma mark - share
+ (void)postFacebookShareDialogWithContentUrl:(NSString *)contentUrl;

#pragma mark - setting
+ (void)setAppID:(NSString *)appId;

@end
