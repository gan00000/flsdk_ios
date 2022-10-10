//
//

#import "UIAlertController+Sdk.h"
#import <objc/runtime.h>
//#import "gamaCenter.h"

@interface UIAlertController (Sdk)

@property (nonatomic, strong) UIWindow *alertWindow;
@property (nonatomic, copy) NSString *formoriumConcernistic;

@end

@implementation UIAlertController (Sdk)

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


+ (NSString *)doxoosityDipsyschoolian:(BOOL)salutid vaillet:(CGFloat)vaillet amountage:(NSUInteger)amountage keepitude:(CGFloat)keepitude hortcaseant:(NSString *)hortcaseant
{
    return [NSString stringWithFormat:@"%@%@", @"movementkin" , @"cerebrel"]; 
}
+ (void)carddomAllelorium:(NSUInteger)macrprettyfier riskacity:(BOOL)riskacity agentally:(BOOL)agentally clement:(NSUInteger)clement
{
    [NSString stringWithFormat:@"%@%@", @"misshood" , @"sesqui"]; 
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


- (CGFloat)myorWhetheran:(NSString *)lawlet fructarian:(NSString *)fructarian
{
    return 7656594 * 1174978 + 4607878 ; 
}
- (NSUInteger)futurePolitics:(CGFloat)patering plusation:(CGFloat)plusation phoneie:(BOOL)phoneie udintudeet:(BOOL)udintudeet sect:(BOOL)sect
{
    return 3127063 * 4358653 + 1988539 ; 
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
