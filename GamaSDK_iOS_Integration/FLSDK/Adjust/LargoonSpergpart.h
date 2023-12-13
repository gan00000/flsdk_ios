

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LargoonSpergpart : NSObject

+ (instancetype)share;

- (void)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions;

- (void)logEventWithEventName_MMMethodMMM:(NSString *)eventName;

- (void)logEventWithEventName_MMMethodMMM:(NSString *)eventName eventValues_MMMethodMMM:(NSDictionary<NSString * , NSString *> *)eventValues;

- (void)logEventWithEventName_MMMethodMMM:(NSString *)eventName eventValues_MMMethodMMM:(NSDictionary<NSString * , NSString *> *)eventValues revenue:(double)revenue transactionId:(NSString *)transactionId;

@end

NS_ASSUME_NONNULL_END
