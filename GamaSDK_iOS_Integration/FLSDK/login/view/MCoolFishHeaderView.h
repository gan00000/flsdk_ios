
#import "MCoolFishRegisterView.h"

NS_ASSUME_NONNULL_BEGIN

@interface MCoolFishHeaderView : MCoolFishRegisterView

@property(nonatomic, assign)int  function_flag;
@property(nonatomic, assign)int  main_p;
@property(nonatomic, assign)double  layout_space;
@property(nonatomic, assign)double  commonPadding;


/// 函数定义
- (instancetype)initWithCompleter_MMMethodMMM:(void (^)(void))completer;

+ (BOOL)openProvision_MMMethodMMM;
+(BOOL)isAgreenProvision_MMMethodMMM;
+ (void)saveAgreenProvisionState_MMMethodMMM:(BOOL)agreen;
@end

NS_ASSUME_NONNULL_END
