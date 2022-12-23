
#import <Foundation/Foundation.h>
#import "MCoolFishEncodingWelcome.h"

NS_ASSUME_NONNULL_BEGIN

@interface MCoolFishButton : NSObject



@property(nonatomic, assign)Boolean  has_Firebase;
@property(nonatomic, assign)int  find_count;
@property(nonatomic, assign)float  interruptOffset;


/// 函数定义
+(void)loginWithClientID_MMMethodMMM:(NSString *)kClientID
                presentingViewController:(UIViewController *)presentingViewController
                successCallback_MMMethodMMM:(void(^)(NSString *userId,NSString *name,NSString *email,NSString *idToken,NSString *accessToken,NSString * clientId))successCallback
                failCallback_MMMethodMMM:(void(^)(NSString *msg))failCallback
          cancelCallback_MMMethodMMM:(void(^)(NSString *msg))cancelCallback;
    
+ (void)signOut_MMMethodMMM;
@end

NS_ASSUME_NONNULL_END
