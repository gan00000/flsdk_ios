
#import <Foundation/Foundation.h>

#import "MCoolFishRameworkTerms.h"

#define SDK_LOG_EVENT_INSTALL  wwwww_tag_wwwww_install

@interface MCoolFishCore : NSObject


@property(nonatomic, assign)double  modelOffset;
@property(nonatomic, assign)NSInteger  keychain_index;


/// 函数定义
+ (void)logWithEventName_MMMethodMMM:(NSString *)eventName parameters_MMMethodMMM:(NSDictionary *)parameters;

+ (void)logWithEventName_MMMethodMMM:(NSString *)eventName parameters_MMMethodMMM:(NSDictionary<NSString * , id> * _Nullable)eventValues type_MMMethodMMM:(AdType) type;

+ (void)logServerWithEventName_Install_MMMethodMMM;
@end
