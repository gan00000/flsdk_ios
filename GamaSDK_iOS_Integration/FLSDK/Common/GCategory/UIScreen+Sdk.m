//
//  UIScreen+Gama.m
//  GamaSDK_iOS
//
//  Created by coke on 2018/12/10.
//  Copyright © 2018年 starpy. All rights reserved.
//

#import "UIScreen+Gama.h"

@implementation UIScreen (Gama)
+ (CGFloat)gama_screenScale {
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

+ (CGRect)gama_mainScreenBounds {
    return [[UIScreen mainScreen] gama_boundsForOrientation:[[UIApplication sharedApplication] statusBarOrientation]];
}

- (CGRect)gama_currentBounds {
    return [self gama_boundsForOrientation:[[UIApplication sharedApplication] statusBarOrientation]];
}

- (CGRect)gama_boundsForOrientation:(UIInterfaceOrientation)orientation {
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
