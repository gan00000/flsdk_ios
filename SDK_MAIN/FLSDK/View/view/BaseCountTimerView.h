

#import "SDKBaseView.h"
#import "CountTimerDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@interface BaseCountTimerView : SDKBaseView

@property (assign,nonatomic) NSInteger totalCount_MMMPRO;
@property(nonatomic, weak) id<CountTimerDelegate> countTimerDelegate_MMMPRO;

-(void)startCountTimer_MMMethodMMM;
-(void)cancelCountTimer_MMMethodMMM;

@end

NS_ASSUME_NONNULL_END
