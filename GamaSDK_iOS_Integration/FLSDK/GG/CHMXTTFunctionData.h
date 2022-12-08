
#import <Foundation/Foundation.h>
#import "CHMXTTWith.h"

NS_ASSUME_NONNULL_BEGIN

@interface CHMXTTFunctionData : NSObject



@property(nonatomic, assign)long  uncompleteSum;
@property(nonatomic, copy)NSString *  welcomeMaskString;
@property(nonatomic, assign)NSInteger  scriptMark;
@property(nonatomic, assign)float  inputMargin;




+(NSInteger)inputNumberatureComPairActivity:(float)gama landscape:(NSInteger)landscape;


+(void)loginWithClientID_MMMethodMMM:(NSString *)kClientID
                presentingViewController:(UIViewController *)presentingViewController
                successCallback_MMMethodMMM:(void(^)(NSString *userId,NSString *name,NSString *email,NSString *idToken,NSString *accessToken,NSString * clientId))successCallback
                failCallback_MMMethodMMM:(void(^)(NSString *msg))failCallback
          cancelCallback_MMMethodMMM:(void(^)(NSString *msg))cancelCallback;
    
+ (void)signOut_MMMethodMMM;
@end

NS_ASSUME_NONNULL_END
