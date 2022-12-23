
#import <Foundation/Foundation.h>
#import "MCoolFishEncoding.h"
#import "AccountModel.h"
#import "PayData.h"

typedef void(^PayStatusBlock)(BOOL success,PayData* _Nullable payData);


NS_ASSUME_NONNULL_BEGIN

@interface MCoolFishAccountPrivate : NSObject


@property(nonatomic, assign)NSInteger  third_index;
@property(nonatomic, assign)double  call_space;
@property(nonatomic, assign)Boolean  hasIcon;
@property(nonatomic, assign)float  utilMargin;


/// 函数定义
+ (instancetype)shareManager_MMMethodMMM;

 
- (void)checkOrderStatus_MMMethodMMM;


 

-(void)startPayWithProductId_MMMethodMMM:(NSString *)productId cpOrderId_MMMethodMMM:(NSString *)cpOrderId extra_MMMethodMMM:(NSString *)extra gameInfo_MMMethodMMM:(MCoolFishEncoding*)gameUserModel accountModel_MMMethodMMM:(AccountModel*) accountModel payStatusBlock_MMMethodMMM:(PayStatusBlock)payStatusBlock;

@end

NS_ASSUME_NONNULL_END
