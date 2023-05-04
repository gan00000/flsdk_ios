







#import <Foundation/Foundation.h>
#import "GameUserModel.h"
#import "AccountModel.h"
#import "PayData.h"

typedef void(^PayStatusBlock)(BOOL success,PayData* _Nullable payData);


NS_ASSUME_NONNULL_BEGIN

@interface MWApplePayManager : NSObject

+ (instancetype)shareManager_MMMethodMMM;


- (void)checkOrderStatus_MMMethodMMM;





-(void)startPayWithProductId_MMMethodMMM:(NSString *)productId cpOrderId_MMMethodMMM:(NSString *)cpOrderId extra_MMMethodMMM:(NSString *)extra gameInfo_MMMethodMMM:(GameUserModel*)gameUserModel accountModel_MMMethodMMM:(AccountModel*) accountModel payStatusBlock_MMMethodMMM:(PayStatusBlock)payStatusBlock;

@end

NS_ASSUME_NONNULL_END
