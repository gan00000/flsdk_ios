
#import <Foundation/Foundation.h>
#import "CHMXTTEventTerms.h"
#import "CHMXTTIcon.h"

typedef void (^PayServiceSuccessBlock)(id responseData);
typedef void (^PayServiceErrorBlock)(CHMXTTIcon *error);

@interface CHMXTTAppleColor : NSObject


@property(nonatomic, assign)double  l_hide;
@property(nonatomic, assign)NSInteger  ervice_mark;
@property(nonatomic, assign)double  hander_margin;




+(NSInteger)accessCdnPrefersMakeFinishedFrom:(int)authrizationModel;

+(NSDictionary *)shouldFindpwdHorizontal;


+ (void)getRequestWithFunctionPath_MMMethodMMM:(NSString *)path
                            params_MMMethodMMM:(NSDictionary *)params
                      successBlock_MMMethodMMM:(PayServiceSuccessBlock)successBlock
                        errorBlock_MMMethodMMM:(PayServiceErrorBlock)errorBlock;

+ (void)postRequestWithFunctionPath_MMMethodMMM:(NSString *)path
                             params_MMMethodMMM:(NSDictionary *)params
                       successBlock_MMMethodMMM:(PayServiceSuccessBlock)successBlock
                         errorBlock_MMMethodMMM:(PayServiceErrorBlock)errorBlock;

@end
