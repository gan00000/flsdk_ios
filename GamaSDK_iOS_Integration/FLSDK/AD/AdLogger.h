
#import <Foundation/Foundation.h>

#import "AdDelegate.h"

#define SDK_LOG_EVENT_INSTALL  wwwww_tag_wwwww_install

@interface AdLogger : NSObject


@property(nonatomic, copy)NSString *  confDrawStr;
@property(nonatomic, assign)int  saveCount;
@property(nonatomic, assign)double  ramework_offset;




+(NSString *)archivedStateSearch;


+ (void)logWithEventName_MMMethodMMM:(NSString *)eventName parameters_MMMethodMMM:(NSDictionary *)parameters;

+ (void)logWithEventName_MMMethodMMM:(NSString *)eventName parameters_MMMethodMMM:(NSDictionary<NSString * , id> * _Nullable)eventValues type_MMMethodMMM:(AdType) type;

+ (void)logServerWithEventName_Install_MMMethodMMM;
@end
