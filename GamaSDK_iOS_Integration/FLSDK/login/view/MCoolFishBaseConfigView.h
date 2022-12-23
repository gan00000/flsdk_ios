
#import "MCoolFishRegisterView.h"
#import "CComHeader.h"

NS_ASSUME_NONNULL_BEGIN

@interface MCoolFishBaseConfigView : MCoolFishRegisterView


@property(nonatomic, assign)Boolean  has_Editing;
@property(nonatomic, copy)NSArray *  unews_list;
@property(nonatomic, assign)long  stringIdx;


/// 函数定义
@property (nonatomic,strong) UIView *contentView;
@property (nonatomic,strong) CCallBack touchesBeganCallback;

@end

NS_ASSUME_NONNULL_END
