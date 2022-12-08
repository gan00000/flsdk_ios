
#import "CHMXTTUserView.h"
#import "CountTimerDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@interface CHMXTTCreateCoreView : CHMXTTUserView


@property(nonatomic, assign)int  namedTag;
@property(nonatomic, assign)long  font_idx;
@property(nonatomic, assign)double  responseMin;




-(UIView *)lowercaseGestureInfodicIntegerView;


@property (assign,nonatomic) NSInteger totalCount;
@property(nonatomic, weak) id<CountTimerDelegate> countTimerDelegate;

-(void)startCountTimer_MMMethodMMM;
-(void)finishCountTimer_MMMethodMMM;

@end

NS_ASSUME_NONNULL_END
