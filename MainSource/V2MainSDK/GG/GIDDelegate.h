
#import <Foundation/Foundation.h>
#import "FirebaseDelegate.h"
NS_ASSUME_NONNULL_BEGIN
@interface GIDDelegate : NSObject
+(void)loginWithClientID_MMMethodMMM:(NSString *)kClientID
                presentingViewController:(UIViewController *)presentingViewController
                successCallback_MMMethodMMM:(void(^)(NSString *userId,NSString *name,NSString *email,NSString *idToken,NSString *accessToken,NSString * clientId))successCallback
                failCallback_MMMethodMMM:(void(^)(NSString *msg))failCallback
          cancelCallback_MMMethodMMM:(void(^)(NSString *msg))cancelCallback;
+ (void)signOut_MMMethodMMM;
@end
NS_ASSUME_NONNULL_END

/**
  你了吗
Flightless bird, grounded bleeding
折翼的鸟？棕色的毛发在淌血
Or lost you?
抑或失去了你？
American  
**/
