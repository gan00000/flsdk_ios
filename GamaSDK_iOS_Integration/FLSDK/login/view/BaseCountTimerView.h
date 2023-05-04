







#import "SDKBaseView.h"
#import "CountTimerDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@interface BaseCountTimerView : SDKBaseView

@property (assign,nonatomic) NSInteger totalCount;
@property(nonatomic, weak) id<CountTimerDelegate> countTimerDelegate;

-(void)startCountTimer_MMMethodMMM;
-(void)finishCountTimer_MMMethodMMM;

@end

NS_ASSUME_NONNULL_END
