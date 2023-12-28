#import <UIKit/UIKit.h>
typedef void (^GestureActionBlock)(UIGestureRecognizer *gestureRecoginzer);
@interface UIView (TripseousServiceit)
- (void)addTapActionWithBlock_MMMethodMMM:(GestureActionBlock)block;
- (void)addLongPressActionWithBlock_MMMethodMMM:(GestureActionBlock)block;
@end
