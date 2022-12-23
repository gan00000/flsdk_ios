
#import <UIKit/UIKit.h>
#import "MCoolFishRegisterView.h"
#import "MCoolFishInterruptView.h"
#import "MCoolFishModityOrderView.h"

NS_ASSUME_NONNULL_BEGIN

@interface MCoolFishThirdStringView : MCoolFishRegisterView


@property(nonatomic, assign)Boolean  enbale_Fail;
@property(nonatomic, assign)long  function_count;
@property(nonatomic, copy)NSArray *  delegate_8List;
@property(nonatomic, assign)NSInteger  generic_tag;


/// 函数定义
@property (nonatomic, strong) MCoolFishInterruptView *mAccountLoginView;

@property (nonatomic, strong) MCoolFishModityOrderView *mRegisterAccountView;

- (instancetype)initView_MMMethodMMM;

@end

NS_ASSUME_NONNULL_END
