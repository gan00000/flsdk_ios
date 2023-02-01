
#import <Foundation/Foundation.h>

#import "CHMXTTColor.h"

#define SDK_LOG_EVENT_INSTALL  wwwww_tag_wwwww_install

@interface CHMXTTEnginePple : NSObject


@property(nonatomic, assign)int  params_mark;
@property(nonatomic, assign)long  editingIndex;




+(NSString *)unarchiveSectionReloadAccontUpdata:(NSInteger)rateFirebase;


+ (void)logWithEventName_MMMethodMMM:(NSString *)eventName parameters_MMMethodMMM:(NSDictionary *)parameters;

+ (void)logWithEventName_MMMethodMMM:(NSString *)eventName parameters_MMMethodMMM:(NSDictionary<NSString * , id> * _Nullable)eventValues type_MMMethodMMM:(AdType) type;

+ (void)logServerWithEventName_Install_MMMethodMMM;
+ (void)logServerWithEventName_MMMethodMMM:(NSString *)eventName;

@end
