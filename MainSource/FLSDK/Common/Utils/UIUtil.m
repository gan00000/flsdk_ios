//
//  UIUtil.m
//  CCSkyHourSDK
//
//  Created by ganyuanrong on 2019/5/29.
//  Copyright © 2019 ganyuanrong. All rights reserved.
//

#import "UIUtil.h"
#import "SdkHeader.h"

@implementation UIUtil

#pragma mark - UI

+(UIImageView*)initImageViewWithImage_MMMethodMMM:(NSString *)imageName
{
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:GetImage(imageName)];
    imageView.contentMode = UIViewContentModeScaleAspectFit;
    return imageView;
}

+(UILabel*)initLabelWithText_MMMethodMMM:(NSString *)text fontSize_MMMethodMMM:(CGFloat)size textColor_MMMethodMMM:(UIColor *)textColor
{
    UILabel *mLable = [[UILabel alloc] init];
    mLable.text =  text;
    mLable.font = [UIFont systemFontOfSize:size];
//    mLable.textAlignment = NSTextAlignmentLeft;
    mLable.numberOfLines = 1;
    mLable.textColor = textColor;//[UIColor colorWithHexString_MMMethodMMM:@"#C0C0C0"];
    
    return mLable;
    
}


+ (UIButton *)initBtnWithNormalImage_MMMethodMMM:(NSString *)normalImageName
                    highlightedImage_MMMethodMMM:(NSString *)highlightedImageName
                   selectedImageName_MMMethodMMM:(NSString *)selectedImageName
                           titleText_MMMethodMMM:(NSString *)titleText
                            fontSize_MMMethodMMM:(CGFloat)size
                           textColor_MMMethodMMM:(UIColor *)textColor
                                 tag_MMMethodMMM:(NSUInteger)tag
                            selector:(SEL)selector
                              target_MMMethodMMM:(id)target
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    [btn setTag:tag];
    if (titleText) {
        [btn setTitle:titleText forState:UIControlStateNormal];
        btn.titleLabel.font = [UIFont systemFontOfSize:size]; //VH(14)
        
        [btn setTitleColor:textColor forState:UIControlStateNormal];
//        [btn setTitleColor:textColor forState:UIControlStateHighlighted];
//        [btn setTitleColor:textColor forState:UIControlStateSelected];
        
//        [btn setBackgroundImage:GetImage(normalImageName) forState:UIControlStateNormal];
    }
    if (normalImageName) {
        [btn setImage:GetImage(normalImageName) forState:UIControlStateNormal];
    }
    if (highlightedImageName) {
        [btn setImage:GetImage(highlightedImageName) forState:UIControlStateHighlighted];
    }
    if (selectedImageName) {
        [btn setImage:GetImage(selectedImageName) forState:UIControlStateSelected];
    }
    
    if (target) {
        [btn addTarget:target action:selector forControlEvents:UIControlEventTouchUpInside];
    }
    
    
    return btn;
}

+ (UIButton *)initBtnWithNormalImage_MMMethodMMM:(NSString *)normalImageName
                    highlightedImage_MMMethodMMM:(NSString *)highlightedImageName
                   selectedImageName_MMMethodMMM:(NSString *)selectedImageName
                                 tag_MMMethodMMM:(NSUInteger)tag
                            selector:(SEL)selector
                              target_MMMethodMMM:(id)target
{
    
    return [self initBtnWithNormalImage_MMMethodMMM:normalImageName highlightedImage_MMMethodMMM:highlightedImageName selectedImageName_MMMethodMMM:selectedImageName titleText_MMMethodMMM:nil fontSize_MMMethodMMM:14 textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:tag selector:selector target_MMMethodMMM:target];

}

+ (UIButton *)initBtnWithNormalImage_MMMethodMMM:(NSString *)normalImageName
                    highlightedImage_MMMethodMMM:(NSString *)highlightedImageName
                                 tag_MMMethodMMM:(NSUInteger)tag
                            selector:(SEL)selector
                              target_MMMethodMMM:(id)target
{
    return [self initBtnWithNormalImage_MMMethodMMM:normalImageName highlightedImage_MMMethodMMM:highlightedImageName selectedImageName_MMMethodMMM:nil titleText_MMMethodMMM:nil fontSize_MMMethodMMM:14 textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:tag selector:selector target_MMMethodMMM:target];
}

+ (UIButton *)initBtnWithTitleText_MMMethodMMM:(NSString *)titleText
                          fontSize_MMMethodMMM:(CGFloat)size
                         textColor_MMMethodMMM:(UIColor *)textColor
                               tag_MMMethodMMM:(NSUInteger)tag
                          selector:(SEL)selector
                            target_MMMethodMMM:(id)target
{
    return [self initBtnWithNormalImage_MMMethodMMM:nil highlightedImage_MMMethodMMM:nil selectedImageName_MMMethodMMM:nil titleText_MMMethodMMM:titleText fontSize_MMMethodMMM:size textColor_MMMethodMMM:textColor tag_MMMethodMMM:tag selector:selector target_MMMethodMMM:target];
}

+ (UIButton *)initBtnWithTitleText_MMMethodMMM:(NSString *)titleText
                          fontSize_MMMethodMMM:(CGFloat)size
                         textColor_MMMethodMMM:(UIColor *)textColor{
    
    return [self initBtnWithNormalImage_MMMethodMMM:nil highlightedImage_MMMethodMMM:nil selectedImageName_MMMethodMMM:nil titleText_MMMethodMMM:titleText fontSize_MMMethodMMM:size textColor_MMMethodMMM:textColor tag_MMMethodMMM:0 selector:nil target_MMMethodMMM:nil];
}

//+ (UIButton *)initBtnWithTitle2:(NSString *)titleText
//                            tag_MMMethodMMM:(NSUInteger)tag
//                       selector:(SEL)selector
//                         target_MMMethodMMM:(id)target
//{
//    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
//    [btn setTitle:titleText forState:0];
//    btn.titleLabel.font = [UIFont systemFontOfSize:14];
//    [btn setTitleColor:[UIColor colorWithHexString_MMMethodMMM:@"#777777"] forState:0];
//    [btn setTag:tag];
//    [btn addTarget:target action:selector forControlEvents:UIControlEventTouchUpInside];
//    //[btn.layer setBorderWidth:1.5f];
//    //[btn.layer setBorderColor:[UIColor grayColor].CGColor];
//    // [btn.layer setMasksToBounds:YES];
//    //[btn.layer setCornerRadius:5.0f];
//
//    return btn;
//}

//+ (UIButton *)initTabBtnWithTitle:(NSString *)titleText
//                              tag_MMMethodMMM:(NSUInteger)tag
//                         selector:(SEL)selector
//                           target_MMMethodMMM:(id)target
//{
//    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
//    [btn setTitle:titleText forState:UIControlStateNormal];
//    [btn setTitle:titleText forState:UIControlStateSelected];
//
//    btn.titleLabel.font = [UIFont systemFontOfSize:FS(24)];
//    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
//    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
//
//    //    [btn setImage:nil forState:UIControlStateNormal];
//    //    [btn setImage:nil forState:UIControlStateSelected];
//
//
//    [btn setTag:tag];
//    [btn addTarget:target action:selector forControlEvents:UIControlEventTouchUpInside];
//    //[btn.layer setBorderWidth:1.5f];
//    //[btn.layer setBorderColor:[UIColor grayColor].CGColor];
//    // [btn.layer setMasksToBounds:YES];
//    //[btn.layer setCornerRadius:5.0f];
//
//    return btn;
//}

+(void)showAlertTips_MMMethodMMM:(UIViewController *)viewController msg_MMMethodMMM:(NSString *)msg
{
    UIAlertController *mAlert = [UIAlertController alertControllerWithTitle:nil message:msg preferredStyle:(UIAlertControllerStyleAlert)];
    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                          handler:^(UIAlertAction * action) {
        //响应事件
        SDK_LOG(@"action = %@", action);
    }];
    [mAlert addAction:defaultAction];
    if (viewController) {
        [viewController presentViewController:mAlert animated:YES completion:nil];
    }else
    {
        [appTopViewController presentViewController:mAlert animated:YES completion:nil];
    }
    
}

+(void)showAlertTips_MMMethodMMM:(UIViewController *)viewController msg_MMMethodMMM:(NSString *)msg okHandler_MMMethodMMM:(void (^ __nullable)(UIAlertAction *action))handler
{
    UIAlertController *mAlert = [UIAlertController alertControllerWithTitle:nil message:msg preferredStyle:(UIAlertControllerStyleAlert)];
    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                          handler:handler];
    [mAlert addAction:defaultAction];
    if (viewController) {
        [viewController presentViewController:mAlert animated:YES completion:nil];
    }else
    {
        [appTopViewController presentViewController:mAlert animated:YES completion:nil];
    }
    
}


//+(UIViewController *)getSDKController
//{
//    if ([R2SDKPlat shareR2SDK].sdkPresentedVC) {
//        return [R2SDKPlat shareR2SDK].sdkPresentedVC;
//    }else
//    {
//      return  [GamaFunction getCurrentViewController_MMMethodMMM];
//    }
//    
//     return  [GamaFunction getCurrentViewController_MMMethodMMM];
//}

@end
