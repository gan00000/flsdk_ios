
#import "MCoolFishRegisterView.h"
#import "CountTimerDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@interface MCoolFishFunctionView : MCoolFishRegisterView


@property(nonatomic, assign)double  progressMin;
@property(nonatomic, assign)double  reader_min;


/// 函数定义
@property (assign,nonatomic) NSInteger totalCount;
@property(nonatomic, weak) id<CountTimerDelegate> countTimerDelegate;

-(void)startCountTimer_MMMethodMMM;
-(void)finishCountTimer_MMMethodMMM;

@end

NS_ASSUME_NONNULL_END
