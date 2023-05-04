


#import <UIKit/UIKit.h>

@interface UIAlertController (Sdk)

- (void)show;
- (void)show:(BOOL)animated;
- (void)showIpadActionSheet:(UIView *)sourceView arrow:(UIPopoverArrowDirection)direction;

@end
