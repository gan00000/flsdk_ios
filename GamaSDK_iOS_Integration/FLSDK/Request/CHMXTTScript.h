
#import <Foundation/Foundation.h>
#import "CHMXTTEventTerms.h"
#import "CHMXTTIcon.h"
#import "CHMXTTCore.h"

NS_ASSUME_NONNULL_BEGIN

@interface CHMXTTScript : NSObject


@property(nonatomic, assign)double  implMargin;
@property(nonatomic, assign)long  area_tag;
@property(nonatomic, assign)float  layoutOffset;
@property(nonatomic, assign)int  paramIdx;




+(NSString *)startNewlineEnumeratorScreen:(double)service arac:(Boolean)arac;


+ (void)postRequestWithFunctionPath_MMMethodMMM:(NSString *)path
                             params_MMMethodMMM:(NSDictionary *)params
                       successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                         errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock;

@end

NS_ASSUME_NONNULL_END
