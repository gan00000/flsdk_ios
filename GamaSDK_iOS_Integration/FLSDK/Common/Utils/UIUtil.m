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

+ (UIButton *)initBtnWithNormalImage:(NSString *)normalImageName
                    highlightedImage:(NSString *)highlightedImageName
                           titleText:(NSString *)titleText
                                 tag:(NSUInteger)tag
                            selector:(SEL)selector
                              target:(id)target
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
   
    [btn setTag:tag];
    if (titleText && ![titleText isEqualToString:@""]) {
         [btn setTitle:titleText forState:0];
        if (device_is_iPhoneX) {
            btn.titleLabel.font = [UIFont systemFontOfSize:18];
        }else{
            btn.titleLabel.font = [UIFont systemFontOfSize:16];
        }
              
                 [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [btn setBackgroundImage:GetImage(normalImageName) forState:UIControlStateNormal];
    }else{
        [btn setImage:GetImage(normalImageName) forState:UIControlStateNormal];
           [btn setImage:GetImage(highlightedImageName) forState:UIControlStateHighlighted];
    }
   
    [btn addTarget:target action:selector forControlEvents:UIControlEventTouchUpInside];
    
    return btn;
}

+ (UIButton *)initBtnWithNormalImage:(NSString *)normalImageName
                    highlightedImage:(NSString *)highlightedImageName
                                 tag:(NSUInteger)tag
                            selector:(SEL)selector
                              target:(id)target
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:GetImage(normalImageName) forState:UIControlStateNormal];
    [btn setImage:GetImage(highlightedImageName) forState:UIControlStateHighlighted];
    [btn setTag:tag];
    [btn addTarget:target action:selector forControlEvents:UIControlEventTouchUpInside];
    
    return btn;
}

+ (UIButton *)initBtnWithTitle:(NSString *)titleText
                           tag:(NSUInteger)tag
                      selector:(SEL)selector
                        target:(id)target
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    [btn setTitle:titleText forState:0];
    [btn setTitleColor:[UIColor blackColor] forState:0];
    [btn setTag:tag];
    [btn addTarget:target action:selector forControlEvents:UIControlEventTouchUpInside];
    [btn.layer setBorderWidth:1.5f];
    [btn.layer setBorderColor:[UIColor grayColor].CGColor];
    [btn.layer setMasksToBounds:YES];
    [btn.layer setCornerRadius:5.0f];
    
    return btn;
}

+ (UIButton *)initBtnWithTitle2:(NSString *)titleText
                           tag:(NSUInteger)tag
                      selector:(SEL)selector
                        target:(id)target
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    [btn setTitle:titleText forState:0];
    btn.titleLabel.font = [UIFont systemFontOfSize:14];
    [btn setTitleColor:[UIColor colorWithHexString:@"#777777"] forState:0];
    [btn setTag:tag];
    [btn addTarget:target action:selector forControlEvents:UIControlEventTouchUpInside];
    //[btn.layer setBorderWidth:1.5f];
    //[btn.layer setBorderColor:[UIColor grayColor].CGColor];
   // [btn.layer setMasksToBounds:YES];
    //[btn.layer setCornerRadius:5.0f];
    
    return btn;
}

+ (UIButton *)initTabBtnWithTitle:(NSString *)titleText
                           tag:(NSUInteger)tag
                      selector:(SEL)selector
                        target:(id)target
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:titleText forState:UIControlStateNormal];
    [btn setTitle:titleText forState:UIControlStateSelected];
    
    btn.titleLabel.font = [UIFont systemFontOfSize:VH(24)];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
    [btn setTitleColor:[UIColor colorWithHexString:@"ff3a3b"] forState:UIControlStateNormal];
    
//    [btn setImage:nil forState:UIControlStateNormal];
//    [btn setImage:nil forState:UIControlStateSelected];
    
    
    [btn setTag:tag];
    [btn addTarget:target action:selector forControlEvents:UIControlEventTouchUpInside];
    //[btn.layer setBorderWidth:1.5f];
    //[btn.layer setBorderColor:[UIColor grayColor].CGColor];
   // [btn.layer setMasksToBounds:YES];
    //[btn.layer setCornerRadius:5.0f];

    return btn;
}

+(void)showAlertTips:(UIViewController *)viewController msg:(NSString *)msg
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

+(void)showAlertTips:(UIViewController *)viewController msg:(NSString *)msg okHandler:(void (^ __nullable)(UIAlertAction *action))handler
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
//      return  [GamaFunction getCurrentViewController];
//    }
//    
//     return  [GamaFunction getCurrentViewController];
//}

+(NSInteger)getSdkPageWidth
{
    if (IS_IPHONE) {
        if (SCREEN_WIDTH > SCREEN_HEIGHT) {//横屏
            return kBgHeight * (608.0 / 582.0);
        }
        
        return SCREEN_WIDTH * 0.88;
    }
    return 608 * 0.8;
}


+(NSInteger)getSdkPageHeight
{
    if (IS_IPHONE) {
        if (SCREEN_WIDTH > SCREEN_HEIGHT) {//横屏
            int hetight = SCREEN_HEIGHT * 0.85;
            return hetight;
        }
        return [self getSdkPageWidth] + 1.1;//豎屏
    }
    return 582 * 0.8;;
}

+(NSInteger)getItemHeight
{
    
    if (IS_IPHONE) {
        int width = [self getSdkPageHeight];
        int itemHeight = width / 10;
        //int itemTopMargin = width / 7;
        if (itemHeight > 48) {
            return 48;
        }
        return itemHeight;
    }
    return 40;
}

+(NSInteger)getItemWidthMargin
{
    
    if (SCREEN_WIDTH > SCREEN_HEIGHT) {//横屏
        return 80;
    }
    return 30;
}

//h = 582 w = 608
+(CGFloat)getViewHeight:(CGFloat)height
{
    CGFloat scale = [[UIScreen mainScreen] scale];
    return kBgHeight * (height / 582);
    
//
//    if (device_is_iPhoneX) {
//        return height;
//    }else{//iphone 8以下    这里以414 * 896为模板
//        CGFloat ppi = 401;
//        if (scale == 2) {
//            ppi = 326;
//        }
////        if (SCREEN_WIDTH > SCREEN_HEIGHT) {//横屏
////            CGFloat ss = height / 414 * SCREEN_HEIGHT;
////            return ss / 458 * ppi;
////        }
////        CGFloat ss = height / 896 * SCREEN_HEIGHT;
//        return height / 458 * ppi;
//    }
////    if (SCREEN_WIDTH > SCREEN_HEIGHT) {//横屏
////        float ss = height / 720.0 * SCREEN_HEIGHT;
////        return ss;
////    }
////    float ss = height / 1280 * SCREEN_HEIGHT;
////    return ss;
}

+(CGFloat)getViewWidth:(CGFloat)width
{
    return kBgWidth * (width / 608);
}

@end
