

#import <Foundation/Foundation.h>
#import "HusbandtyCrispfic.h"

NS_ASSUME_NONNULL_BEGIN

@interface SendiseOptimpresentmost : NSObject

+ (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<UIApplicationOpenURLOptionsKey,id> *)options;

+ (void)loginWithClientID_MMMethodMMM:(NSString *)kClientID
                presentingViewController:(UIViewController *)presentingViewController
                successCallback_MMMethodMMM:(void(^)(NSString *userId,NSString *name,NSString *email,NSString *idToken,NSString *accessToken,NSString * clientId))successCallback
                failCallback_MMMethodMMM:(void(^)(NSString *msg))failCallback
          cancelCallback_MMMethodMMM:(void(^)(NSString *msg))cancelCallback;
    
+ (void)signOut_MMMethodMMM;
@end

NS_ASSUME_NONNULL_END
