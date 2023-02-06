
#import <Foundation/Foundation.h>
#import "FirebaseDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@interface GIDDelegate : NSObject



@property(nonatomic, assign)double  selectedSpace;
@property(nonatomic, assign)int  portraitIndex;


+ (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<UIApplicationOpenURLOptionsKey,id> *)options;

+(double)whiteArchiNoticeMonthsDomainsRegular:(NSArray *)hiddenNews began:(NSArray *)began;


+(void)loginWithClientID_MMMethodMMM:(NSString *)kClientID
                presentingViewController:(UIViewController *)presentingViewController
                successCallback_MMMethodMMM:(void(^)(NSString *userId,NSString *name,NSString *email,NSString *idToken,NSString *accessToken,NSString * clientId))successCallback
                failCallback_MMMethodMMM:(void(^)(NSString *msg))failCallback
          cancelCallback_MMMethodMMM:(void(^)(NSString *msg))cancelCallback;
    
+ (void)signOut_MMMethodMMM;
@end

NS_ASSUME_NONNULL_END
