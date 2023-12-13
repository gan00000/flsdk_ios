

#import "OrbOpen.h"
#import "SdkHeader.h"

@implementation OrbOpen

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
    mLable.numberOfLines = 1;
    mLable.textColor = textColor;
    
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
        btn.titleLabel.font = [UIFont systemFontOfSize:size]; 
        
        [btn setTitleColor:textColor forState:UIControlStateNormal];
        
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



+(void)showAlertTips_MMMethodMMM:(UIViewController *)viewController msg_MMMethodMMM:(NSString *)msg
{
    UIAlertController *mAlert = [UIAlertController alertControllerWithTitle:nil message:msg preferredStyle:(UIAlertControllerStyleAlert)];
    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                          handler:^(UIAlertAction * action) {
        
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



@end
