//
//

#import <Foundation/Foundation.h>


typedef void (^FBShareKitSuccess)(NSDictionary *result);
typedef void (^FBShareKitError)(NSError * error);
typedef void (^FBShareKitCancle)();


@interface FacebookShareDelegateWarper : NSObject


+ (instancetype)makeFacebookSharingDelegateResolverAndCallbackSuccessBlock:(FBShareKitSuccess) successBlock
                                                             andErrorBlock:(FBShareKitError) errorBlock
                                                            andCancleBlock:(FBShareKitCancle)cancleBlock;

@end
