

#import <Foundation/Foundation.h>
#import "BehaviorenneMediacle.h"
#import "TvadeRhigant.h"
#import "PayData.h"

typedef void(^PayStatusBlock)(BOOL success,PayData* _Nullable payData);


NS_ASSUME_NONNULL_BEGIN

@interface OleotRule : NSObject

+ (instancetype)shareManager_MMMethodMMM;


- (void)checkOrderStatus_MMMethodMMM;




-(void)startPayWithProductId_MMMethodMMM:(NSString *)productId cpOrderId_MMMethodMMM:(NSString *)cpOrderId extra_MMMethodMMM:(NSString *)extra gameInfo_MMMethodMMM:(BehaviorenneMediacle*)gameUserModel accountModel_MMMethodMMM:(TvadeRhigant*) accountModel payStatusBlock_MMMethodMMM:(PayStatusBlock)payStatusBlock;

@end

NS_ASSUME_NONNULL_END
