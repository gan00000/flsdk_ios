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
            return 380;
        }
        int width = MIN(SCREEN_WIDTH * 0.9, 350);
        return width;
    }
    return 380;
}


+(NSInteger)getSdkPageHeight
{
    if (IS_IPHONE) {
        if (SCREEN_WIDTH > SCREEN_HEIGHT) {//横屏
            int hetight = MIN(SCREEN_HEIGHT * 0.9, 350);
            return hetight;
        }
        return 360;
    }
    return 360;
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


+(NSInteger)getViewHeight:(float)height
{
    if (SCREEN_WIDTH > SCREEN_HEIGHT) {//横屏
        float ss = height / 720.0 * SCREEN_HEIGHT;
        return ss;
    }
    float ss = height / 1280 * SCREEN_HEIGHT;
    return ss;
}

+(NSInteger)getViewWidthScale:(float)scale height:(float)xHeight
{
    return scale * xHeight;
}

@end
