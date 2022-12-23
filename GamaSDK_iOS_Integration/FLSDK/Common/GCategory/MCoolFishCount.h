#import <UIKit/UIKit.h>
typedef void (^GestureActionBlock)(UIGestureRecognizer *gestureRecoginzer);
@interface UIView (BlockGesture)
- (void)addTapActionWithBlock_MMMethodMMM:(GestureActionBlock)block;
- (void)addLongPressActionWithBlock_MMMethodMMM:(GestureActionBlock)block;
/// 函数定义

@end
