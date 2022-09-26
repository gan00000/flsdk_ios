
//times in our lives, we are dropped, crumpled, and ground into the dirt by the decisions we make and the circumstances that come our way. We feel as though we are worthless；but no matter what happened or what will happen, you will never lose your value."
//
//
//
//“在生活中，很多次我们被自己制定的决策和身边的环境所抛弃、蹂躏，甚至碾入尘土。我们感到自己一无是处。但是不管发生了什么，或者将要发生什么
#import "SDKBaseView.h"

/**
  r attitude about sleep

改变对睡眠的心态

Many people view sleeping as the final thing they have to do in a jam-packed day, worth delaying to catch up on housework, schoolwork, office work or the latest binge-worthy television series.

许多人将睡眠视为忙碌的一天后要做的最后一件事，为了完成家务、作业、工作或追新剧，晚点再睡也没事。

That thinking needs t 
**/
NS_ASSUME_NONNULL_BEGIN
@interface TermsViewV2 : SDKBaseView
@property (nonatomic, assign) CGFloat suasitudeSesquienne;

/**
  3. Change your 
**/
- (instancetype)initWithCompleter:(void (^)(void))completer;
+ (BOOL)openProvision;
+(BOOL)isAgreenProvision;
+ (void)saveAgreenProvisionState:(BOOL)agreen;
@end
NS_ASSUME_NONNULL_END
