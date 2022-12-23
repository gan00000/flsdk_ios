#import "MCoolFishFunctionView.h"
#import "MWSDK.h"
NS_ASSUME_NONNULL_BEGIN

@interface MCoolFishHomeManager : MCoolFishFunctionView


@property(nonatomic, copy)NSArray *  lnewsList;
@property(nonatomic, assign)NSInteger  string_count;


/// 函数定义
@property (copy,nonatomic) MWBlock mMWBlock;

@end

NS_ASSUME_NONNULL_END
