//
//  UIUtil.h
//  CCSkyHourSDK
//
//  Created by ganyuanrong on 2019/5/29.
//  Copyright © 2019 ganyuanrong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIUtil : NSObject


#pragma mark - UI

+(UIImageView*)initImageViewWithImage:(NSString *)imageName;

+(UILabel*)initLabelWithText:(NSString *)text fontSize:(CGFloat)size textColor:(UIColor*)textColor;

+ (UIButton *)initBtnWithNormalImage:(NSString *)normalImageName
                    highlightedImage:(NSString *)highlightedImageName
                   selectedImageName:(NSString *)selectedImageName
                           titleText:(NSString *)titleText
                            fontSize:(CGFloat)size
                           textColor:(UIColor *)textColor
                                 tag:(NSUInteger)tag
                            selector:(SEL)selector
                              target:(id)target;

+ (UIButton *)initBtnWithNormalImage:(NSString *)normalImageName
                    highlightedImage:(NSString *)highlightedImageName
                   selectedImageName:(NSString *)selectedImageName
                                 tag:(NSUInteger)tag
                            selector:(SEL)selector
                              target:(id)target;

+ (UIButton *)initBtnWithNormalImage:(NSString *)normalImageName
                    highlightedImage:(NSString *)highlightedImageName
                                 tag:(NSUInteger)tag
                            selector:(SEL)selector
                              target:(id)target;


+ (UIButton *)initBtnWithTitleText:(NSString *)titleText
                          fontSize:(CGFloat)size
                         textColor:(UIColor *)textColor
                               tag:(NSUInteger)tag
                          selector:(SEL)selector
                            target:(id)target;

+ (UIButton *)initBtnWithTitleText:(NSString *)titleText
                          fontSize:(CGFloat)size
                         textColor:(UIColor *)textColor;

//+ (UIButton *)initTabBtnWithTitle:(NSString *)titleText
//                           tag:(NSUInteger)tag
//                      selector:(SEL)selector
//                           target:(id)target;

+(void)showAlertTips:(UIViewController *)viewController msg:(NSString *)msg;
+(void)showAlertTips:(UIViewController *)viewController msg:(NSString *)msg okHandler:(void (^ __nullable)(UIAlertAction *action))handler;

//+(UIViewController *)getSDKController;
+(NSInteger)getSdkPageWidth;

+(NSInteger)getSdkPageHeight;

//+(NSInteger)getItemHeight;//根据高度计算每一行的高度
//+(NSInteger)getItemWidthMargin;

+(CGFloat)getViewHeight:(CGFloat)height;
+(CGFloat)getViewWidth:(CGFloat)width;
+(CGFloat)getFontSize:(CGFloat)size;

@end

NS_ASSUME_NONNULL_END
