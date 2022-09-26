
#import "SDKBaseView.h"
NS_ASSUME_NONNULL_BEGIN
@interface TermsView : SDKBaseView
- (instancetype)initWithCompleter:(void (^)(void))completer;

/**
  ve woken up right beside you.

我想你。我想念我在你身边醒来的所有早晨。

I miss th 
**/
+ (BOOL)openProvision;
+(BOOL)isAgreenProvision;
+ (void)saveAgreenProvisionState:(BOOL)agreen;
@end

/**
  tandard wake up time, even on weekends, vacations or after a night of poor sleep.

因此每天在固定时间起床很重要，即使是周末、假期或是前一天晚上没睡好也不应该例外。

2. Don't lay in bed awake

A well-known speaker started off his seminar by holding up 
**/
NS_ASSUME_NONNULL_END
