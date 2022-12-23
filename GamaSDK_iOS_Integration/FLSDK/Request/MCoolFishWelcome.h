
#import <Foundation/Foundation.h>
#import "MCoolFishAlertReader.h"
#import "MCoolFishAlert.h"
#import "MCoolFishElegate.h"

NS_ASSUME_NONNULL_BEGIN

@interface MCoolFishWelcome : NSObject


@property(nonatomic, assign)int  webIdx;
@property(nonatomic, copy)NSString *  backFootStringStr;


/// 函数定义
+ (void)postRequestWithFunctionPath_MMMethodMMM:(NSString *)path
                             params_MMMethodMMM:(NSDictionary *)params
                       successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                         errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock;

@end

NS_ASSUME_NONNULL_END
