
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "SdkHeader.h"

NS_ASSUME_NONNULL_BEGIN
typedef void (^AppleLoginSuccess )(NSDictionary *__nullable result);
typedef void (^AppleLoginError)(NSError *__nullable error);
typedef void(^AppleCompleteHandler)(NSError * __nullable error, NSDictionary * __nullable results);

@interface MCoolFishDelegate : NSObject

@property(nonatomic, copy)NSString *  sessionStr;
@property(nonatomic, assign)double  animation_size;
@property(nonatomic, assign)long  textSum;
@property(nonatomic, assign)double  function_max;


/// 函数定义
@property (strong, nonatomic) NSString *appleThirdID;

+ (instancetype)share;

- (void)handleAuthrization:(UIView *_Nullable)mView;

- (void)makeAppleCallbackSuccessBlock_MMMethodMMM:(AppleLoginSuccess)successBlock andErrorBlock_MMMethodMMM:(AppleLoginError)errorBlock;


- (void)autoLoginAppleAccountWithInformation_MMMethodMMM;

- (NSDictionary *)fetchAppleLoginInfo_MMMethodMMM;
@end

NS_ASSUME_NONNULL_END
