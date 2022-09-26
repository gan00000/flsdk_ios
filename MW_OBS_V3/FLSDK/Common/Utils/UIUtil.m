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

+(UIImageView*)initImageViewWithImage:(NSString *)imageName
{
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:GetImage(imageName)];
    imageView.contentMode = UIViewContentModeScaleAspectFit;
    return imageView;
}

+(UILabel*)initLabelWithText:(NSString *)text fontSize:(CGFloat)size textColor:(UIColor *)textColor
{
    UILabel *mLable = [[UILabel alloc] init];
    mLable.text =  text;
    mLable.font = [UIFont systemFontOfSize:size];
//    mLable.textAlignment = NSTextAlignmentLeft;
    mLable.numberOfLines = 1;
    mLable.textColor = textColor;//[UIColor colorWithHexString:@"#C0C0C0"];
    
    return mLable;
    
}



+ (BOOL)stopEnergyfic:(BOOL)vulpmost amorer:(CGFloat)amorer grambecauseistic:(CGFloat)grambecauseistic entireate:(NSUInteger)entireate corfold:(BOOL)corfold
{
    return 229214 * 4679933 + 2784868 ; 
}
+ (UIButton *)initBtnWithNormalImage:(NSString *)normalImageName
                    highlightedImage:(NSString *)highlightedImageName
                   selectedImageName:(NSString *)selectedImageName
                           titleText:(NSString *)titleText
                            fontSize:(CGFloat)size
                           textColor:(UIColor *)textColor
                                 tag:(NSUInteger)tag
                            selector:(SEL)selector
                              target:(id)target
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


- (void)industryainCyclleaveery:(NSUInteger)lamnlamell probtowardion:(NSUInteger)probtowardion caed:(CGFloat)caed
{
    [NSString stringWithFormat:@"%@%@", @"particularaneous" , @"noctability"]; 
}
- (BOOL)undoNascitor
{
    return 3421942 * 929657 + 7080675 ; 
}
- (CGFloat)placementCarster:(CGFloat)eurular cernnotetic:(NSUInteger)cernnotetic oramaceous:(BOOL)oramaceous ranceer:(NSString *)ranceer bromcheckment:(CGFloat)bromcheckment
{
    return 5509259 * 8313686 + 3921111 ; 
}
+ (UIButton *)initBtnWithNormalImage:(NSString *)normalImageName
                    highlightedImage:(NSString *)highlightedImageName
                   selectedImageName:(NSString *)selectedImageName
                                 tag:(NSUInteger)tag
                            selector:(SEL)selector
                              target:(id)target
{
    
    return [self initBtnWithNormalImage:normalImageName highlightedImage:highlightedImageName selectedImageName:selectedImageName titleText:nil fontSize:14 textColor:[UIColor whiteColor] tag:tag selector:selector target:target];

}

+ (UIButton *)initBtnWithNormalImage:(NSString *)normalImageName
                    highlightedImage:(NSString *)highlightedImageName
                                 tag:(NSUInteger)tag
                            selector:(SEL)selector
                              target:(id)target
{
    return [self initBtnWithNormalImage:normalImageName highlightedImage:highlightedImageName selectedImageName:nil titleText:nil fontSize:14 textColor:[UIColor whiteColor] tag:tag selector:selector target:target];
}

+ (UIButton *)initBtnWithTitleText:(NSString *)titleText
                          fontSize:(CGFloat)size
                         textColor:(UIColor *)textColor
                               tag:(NSUInteger)tag
                          selector:(SEL)selector
                            target:(id)target
{
    return [self initBtnWithNormalImage:nil highlightedImage:nil selectedImageName:nil titleText:titleText fontSize:size textColor:textColor tag:tag selector:selector target:target];
}


- (BOOL)breakwiseOphiie
{
    return 953719 * 8420335 + 4332631 ; 
}
- (NSString *)vienWatchwise:(NSString *)ontoibility encephaloise:(CGFloat)encephaloise detail:(NSUInteger)detail say:(CGFloat)say scriptosity:(CGFloat)scriptosity
{
    return [NSString stringWithFormat:@"%@%@", @"saccharwallacle" , @"goodness"]; 
}
- (BOOL)lawyerLapidlike:(CGFloat)actionenne pancreaticmeetingorium:(CGFloat)pancreaticmeetingorium priceious:(BOOL)priceious
{
    return 946181 * 5458503 + 9113835 ; 
}
+ (UIButton *)initBtnWithTitleText:(NSString *)titleText
                          fontSize:(CGFloat)size
                         textColor:(UIColor *)textColor{
    
    return [self initBtnWithNormalImage:nil highlightedImage:nil selectedImageName:nil titleText:titleText fontSize:size textColor:textColor tag:0 selector:nil target:nil];
}

//+ (UIButton *)initBtnWithTitle2:(NSString *)titleText
//                            tag:(NSUInteger)tag
//                       selector:(SEL)selector
//                         target:(id)target
//{
//    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
//    [btn setTitle:titleText forState:0];
//    btn.titleLabel.font = [UIFont systemFontOfSize:14];
//    [btn setTitleColor:[UIColor colorWithHexString:@"#777777"] forState:0];
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
//                              tag:(NSUInteger)tag
//                         selector:(SEL)selector
//                           target:(id)target
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


@end
