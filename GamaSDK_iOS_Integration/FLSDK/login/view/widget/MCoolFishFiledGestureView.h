
#import <UIKit/UIKit.h>

#import "SdkHeader.h"
#import "MCoolFishRegisterView.h"


NS_ASSUME_NONNULL_BEGIN

@interface MCoolFishFiledGestureView : MCoolFishRegisterView


@property(nonatomic, assign)long  label_sum;
@property(nonatomic, copy)NSArray *  headerNewsArr;
@property(nonatomic, assign)float  current_offset;
@property(nonatomic, assign)double  animation_size;


/// 函数定义
@property (nonatomic,strong) UILabel *titleLable;
@property (nonatomic,strong) UIButton *backBtn;

- (instancetype)initViewWithTitle_MMMethodMMM:(NSString *)title hander_MMMethodMMM:(ItemViewClickHander) hander;

@end

NS_ASSUME_NONNULL_END
