







#import "UIScreen+Sdk.h"

@implementation UIScreen (Sdk)
+ (CGFloat)gama_screenScale_MMMethodMMM {
    static CGFloat screenScale = 0.0;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if ([NSThread isMainThread]) {
            screenScale = [[UIScreen mainScreen] scale];
        } else {
            dispatch_sync(dispatch_get_main_queue(), ^{
                screenScale = [[UIScreen mainScreen] scale];
            });
        }
    });
    return screenScale;
}

+ (CGRect)gama_mainScreenBounds_MMMethodMMM {
    return [[UIScreen mainScreen] gama_boundsForOrientation_MMMethodMMM:[[UIApplication sharedApplication] statusBarOrientation]];
}

- (CGRect)gama_currentBounds_MMMethodMMM {
    return [self gama_boundsForOrientation_MMMethodMMM:[[UIApplication sharedApplication] statusBarOrientation]];
}

- (CGRect)gama_boundsForOrientation_MMMethodMMM:(UIInterfaceOrientation)orientation {
    CGRect bounds = [self bounds];
    UIInterfaceOrientation currentOrientation = [[UIApplication sharedApplication] statusBarOrientation];
    if (UIInterfaceOrientationIsLandscape(currentOrientation)) {
        if (UIInterfaceOrientationIsPortrait(orientation)) {
            CGFloat buffer = bounds.size.width;
            bounds.size.width = bounds.size.height;
            bounds.size.height = buffer;
        }
    } else {
        if (UIInterfaceOrientationIsLandscape(orientation)) {
            CGFloat buffer = bounds.size.width;
            bounds.size.width = bounds.size.height;
            bounds.size.height = buffer;
        }
    }
    
    if ((NSFoundationVersionNumber <= NSFoundationVersionNumber_iOS_7_1) && UIInterfaceOrientationIsLandscape(orientation)) {
        CGFloat buffer = bounds.size.width;
        bounds.size.width = bounds.size.height;
        bounds.size.height = buffer;
    }
    return bounds;
}
@end
