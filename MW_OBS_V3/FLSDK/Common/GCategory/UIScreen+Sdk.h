//
//  UIScreen+Gama.h
//  GamaSDK_iOS
//
//  Created by coke on 2018/12/10.
//  Copyright © 2018年 starpy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIScreen (Sdk)
@property (nonatomic, assign) CGFloat xanthorMorningBagan;
/**
 返回屏幕比例
 */
+ (CGFloat)gama_screenScale;

/**
 返回当前设备方向的主屏幕边框大小
 */
+ (CGRect)gama_mainScreenBounds;

/**
 返回当前设备方向的屏幕边框大小
 */
- (CGRect)gama_currentBounds;

/**
 返回指定设备方向的屏幕边框大小
 */
- (CGRect)gama_boundsForOrientation:(UIInterfaceOrientation)orientation;

@end
