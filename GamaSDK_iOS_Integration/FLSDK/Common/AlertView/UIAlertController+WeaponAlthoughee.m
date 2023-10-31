

#import "UIAlertController+WeaponAlthoughee.h"
#import <objc/runtime.h>

@interface UIAlertController (WeaponAlthoughee)

@property (nonatomic, strong) UIWindow *alertWindow;

@end

@implementation UIAlertController (WeaponAlthoughee)

@dynamic alertWindow;

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

- (void)showIpadActionSheet:(UIView *)sourceView arrow:(UIPopoverArrowDirection)direction
{
    [self config];
    
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
        self.modalPresentationStyle = UIModalPresentationPopover;
        self.popoverPresentationController.sourceView = self.alertWindow.rootViewController.view;
        self.popoverPresentationController.sourceRect = [sourceView convertRect:sourceView.bounds toView:self.alertWindow.rootViewController.view];
        self.popoverPresentationController.permittedArrowDirections = direction;
    }
        [self.alertWindow.rootViewController presentViewController:self animated:YES completion:nil];
}

- (void)config
{
    self.alertWindow = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.alertWindow.rootViewController = [[UIViewController alloc] init];
    
    id<UIApplicationDelegate> delegate = [UIApplication sharedApplication].delegate;
    
    if ([delegate respondsToSelector:@selector(window)]) {
        
        self.alertWindow.tintColor = delegate.window.tintColor;
    }
    
    
    UIWindow *topWindow = [UIApplication sharedApplication].windows.lastObject;
    self.alertWindow.windowLevel = topWindow.windowLevel + 1;
    
    [self.alertWindow makeKeyAndVisible];
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    
    
    self.alertWindow.hidden = YES;
    [self.alertWindow resignKeyWindow];
    self.alertWindow = nil;
}

- (BOOL)shouldAutorotate {
    return NO;
}


@end
