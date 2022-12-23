
#import "MCoolFishRegisterView.h"

NS_ASSUME_NONNULL_BEGIN

@interface MCoolFishConfigType : MCoolFishRegisterView

@property(nonatomic, assign)long  bundleIndex;
@property(nonatomic, assign)Boolean  enbaleAnimation;


/// 函数定义
- (instancetype)initWithCompleter_MMMethodMMM:(void (^)(void))completer;

+ (BOOL)openProvision_MMMethodMMM;
+(BOOL)isAgreenProvision_MMMethodMMM;
+ (void)saveAgreenProvisionState_MMMethodMMM:(BOOL)agreen;
@end

NS_ASSUME_NONNULL_END
