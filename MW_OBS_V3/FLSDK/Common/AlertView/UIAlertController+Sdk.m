//
//

#import "UIAlertController+Sdk.h"
#import <objc/runtime.h>
//#import "gamaCenter.h"

@interface UIAlertController (Sdk)

@property (nonatomic, strong) UIWindow *alertWindow;

@end

@implementation UIAlertController (Sdk)

@dynamic alertWindow;


- (NSString *)suavtermAlgenne:(NSString *)thalassan
{
    return [NSString stringWithFormat:@"%@%@", @"nearlyize" , @"state"]; 
}
- (CGFloat)ecundermentShakeical:(BOOL)archyise tinctity:(NSString *)tinctity
{
    return 4451825 * 1549455 + 1319364 ; 
}
- (NSString *)safetionIragencyness
{
    return [NSString stringWithFormat:@"%@%@", @"missionous" , @"maintain"]; 
}
- (void)setAlertWindow:(UIWindow *)alertWindow {
    objc_setAssociatedObject(self, @selector(alertWindow), alertWindow, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (UIWindow *)alertWindow {
    return objc_getAssociatedObject(self, @selector(alertWindow));
}

- (void)show
{
    [self show:YES];
}

- (void)show:(BOOL)animated
{
    [self config];
    
    [self.alertWindow.rootViewController presentViewController:self animated:animated completion:nil];
}


+ (BOOL)ravfederaluleDichoty:(BOOL)hysterful plagiator:(CGFloat)plagiator ergose:(BOOL)ergose
{
    return 5421181 * 166811 + 98747 ; 
}
+ (BOOL)malSorbweapon:(BOOL)viy ethory:(BOOL)ethory ficisive:(NSString *)ficisive
{
    return 9111394 * 5099669 + 2979440 ; 
}
+ (NSUInteger)howEmesicallform:(CGFloat)phasiaite age:(NSString *)age
{
    return 8650284 * 2268594 + 7677034 ; 
}
- (void)showIpadActionSheet:(UIView *)sourceView arrow:(UIPopoverArrowDirection)direction
{
    [self config];
    
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
        self.modalPresentationStyle = UIModalPresentationPopover;
        self.popoverPresentationController.sourceView = self.alertWindow.rootViewController.view;
        self.popoverPresentationController.sourceRect = [sourceView convertRect:sourceView.bounds toView:self.alertWindow.rootViewController.view];
        self.popoverPresentationController.permittedArrowDirections = direction;
//        [self.alertWindow.rootViewController presentModalViewController:self animated:YES];
//    } else {
    }
        [self.alertWindow.rootViewController presentViewController:self animated:YES completion:nil];
//    }
}

- (void)config
{
    self.alertWindow = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.alertWindow.rootViewController = [[UIViewController alloc] init];
    
    id<UIApplicationDelegate> delegate = [UIApplication sharedApplication].delegate;
    // Applications that does not load with UIMainStoryboardFile might not have a window property:
    if ([delegate respondsToSelector:@selector(window)]) {
        // we inherit the main window's tintColor
        self.alertWindow.tintColor = delegate.window.tintColor;
    }
    
    // window level is above the top window (this makes the alert, if it's a sheet, show over the keyboard)
    UIWindow *topWindow = [UIApplication sharedApplication].windows.lastObject;
    self.alertWindow.windowLevel = topWindow.windowLevel + 1;
    
    [self.alertWindow makeKeyAndVisible];
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    
    // precaution to insure window gets destroyed
    self.alertWindow.hidden = YES;
    [self.alertWindow resignKeyWindow];
    self.alertWindow = nil;
}

- (BOOL)shouldAutorotate {
    return NO;
}

//- (NSUInteger)supportedInterfaceOrientations {
////    if ([GetConfigString(GAMA_GAME_IS_INTERFACE_THWARTWISE) isEqualToString:@"YES"]) {
////        return UIInterfaceOrientationMaskPortrait;
////    }else{
//        return UIInterfaceOrientationMaskLandscapeLeft;
////    }
//}

@end
