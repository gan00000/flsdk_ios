#import "MCoolFishFunctionView.h"
#import "MWSDK.h"
NS_ASSUME_NONNULL_BEGIN

@interface MCoolFishHomeManager : MCoolFishFunctionView


@property(nonatomic, assign)long  welcome_count;
@property(nonatomic, assign)NSInteger  utilMark;


/// 函数定义
@property (copy,nonatomic) MWBlock mMWBlock;

@end

NS_ASSUME_NONNULL_END
