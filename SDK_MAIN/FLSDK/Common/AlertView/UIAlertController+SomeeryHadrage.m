

#import "UIAlertController+SomeeryHadrage.h"
#import <objc/runtime.h>

@interface UIAlertController (SomeeryHadrage)

@property (nonatomic, strong) UIWindow *alertWindow_MMMPRO;

@end

@implementation UIAlertController (SomeeryHadrage)

@dynamic alertWindow_MMMPRO;

- (void)setAlertWindow_MMMPRO:(UIWindow *)alertWindow {
    objc_setAssociatedObject(self, @selector(alertWindow_MMMPRO), alertWindow, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (UIWindow *)alertWindow_MMMPRO {
    return objc_getAssociatedObject(self, @selector(alertWindow_MMMPRO));
}

- (void)show
{
    [self show:YES];
}

- (void)show:(BOOL)animated
{
    [self config];
    
    [self.alertWindow_MMMPRO.rootViewController presentViewController:self animated:animated completion:nil];
}

- (void)showIpadActionSheet:(UIView *)sourceView arrow:(UIPopoverArrowDirection)direction
{
    [self config];
    
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
        self.modalPresentationStyle = UIModalPresentationPopover;
        self.popoverPresentationController.sourceView = self.alertWindow_MMMPRO.rootViewController.view;
        self.popoverPresentationController.sourceRect = [sourceView convertRect:sourceView.bounds toView:self.alertWindow_MMMPRO.rootViewController.view];
        self.popoverPresentationController.permittedArrowDirections = direction;
    }
        [self.alertWindow_MMMPRO.rootViewController presentViewController:self animated:YES completion:nil];
}

- (void)config
{
    self.alertWindow_MMMPRO = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.alertWindow_MMMPRO.rootViewController = [[UIViewController alloc] init];
    
    id<UIApplicationDelegate> delegate = [UIApplication sharedApplication].delegate;
    
    if ([delegate respondsToSelector:@selector(window)]) {
        
        self.alertWindow_MMMPRO.tintColor = delegate.window.tintColor;
    }
    
    
    UIWindow *topWindow = [UIApplication sharedApplication].windows.lastObject;
    self.alertWindow_MMMPRO.windowLevel = topWindow.windowLevel + 1;
    
    [self.alertWindow_MMMPRO makeKeyAndVisible];
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    
    
    self.alertWindow_MMMPRO.hidden = YES;
    [self.alertWindow_MMMPRO resignKeyWindow];
    self.alertWindow_MMMPRO = nil;
}

- (BOOL)shouldAutorotate {
    return NO;
}


@end
