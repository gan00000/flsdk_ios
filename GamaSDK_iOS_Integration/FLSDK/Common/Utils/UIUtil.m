
#import "UIUtil.h"
#import "SdkHeader.h"

@implementation UIUtil

#pragma mark - UI


+(UIImageView*)initImageViewWithImage_MMMethodMMM:(NSString *)imageName
{
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:GetImage(imageName)];
    imageView.contentMode = UIViewContentModeScaleAspectFit;
            NSArray * updatar = [NSArray arrayWithObjects:@(606), @(31), nil];
             while (updatar.count > 74) { break; }
    return imageView;
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
            NSString * rotate1 = @"gaucherie";
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

+(NSArray *)decideNameHit{
     double buttonService = 2743.0;
    NSMutableArray * postofficeCharacterize = [[NSMutableArray alloc] init];
    buttonService *= buttonService;
    [postofficeCharacterize addObject: @(buttonService)];
         int temp_y_5 = (int)buttonService;
     int d_84 = 1;
     int l_95 = 0;
     if (temp_y_5 > l_95) {
         temp_y_5 = l_95;
     }
     while (d_84 < temp_y_5) {
         d_84 += 1;
     int a_60 = d_84;
          int m_69 = 1;
     int t_55 = 0;
     if (a_60 > t_55) {
         a_60 = t_55;
     }
     while (m_69 <= a_60) {
         m_69 += 1;
          a_60 += m_69;
         break;
     }
         break;
     }

    return postofficeCharacterize;

}







+(void)showAlertTips_MMMethodMMM:(UIViewController *)viewController msg_MMMethodMMM:(NSString *)msg
{

    UIAlertController *mAlert = [UIAlertController alertControllerWithTitle:nil message:msg preferredStyle:(UIAlertControllerStyleAlert)];
    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                          handler:^(UIAlertAction * action) {
        
        SDK_LOG(@"action = %@", action);

         {
    [self decideNameHit];

}
            NSString * decodeG = @"chagrin";
             if ([decodeG isEqualToString:@"9"]) {}
    }];
            NSString * forwardc = @"premonition";
             while (forwardc.length > 156) { break; }
    [mAlert addAction:defaultAction];
    if (viewController) {
        [viewController presentViewController:mAlert animated:YES completion:nil];
    }else
    {
        [appTopViewController presentViewController:mAlert animated:YES completion:nil];
    }
    
}


+ (UIButton *)initBtnWithNormalImage_MMMethodMMM:(NSString *)normalImageName
                    highlightedImage_MMMethodMMM:(NSString *)highlightedImageName
                                 tag_MMMethodMMM:(NSUInteger)tag
                            selector:(SEL)selector
                              target_MMMethodMMM:(id)target
{
    return [self initBtnWithNormalImage_MMMethodMMM:normalImageName highlightedImage_MMMethodMMM:highlightedImageName selectedImageName_MMMethodMMM:nil titleText_MMMethodMMM:nil fontSize_MMMethodMMM:14 textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:tag selector:selector target_MMMethodMMM:target];
}

+(NSArray *)multipliedProvidingLableButton:(NSArray *)ramework socialBefore:(double)socialBefore {
     NSInteger interface = 2554;
     float dictionaryBtn = 7714.0;
    NSMutableArray * balmySmudgeDispassionate = [NSMutableArray arrayWithCapacity:616];
    interface /= 14;
    [balmySmudgeDispassionate addObject: @(interface)];
         int o_89 = (int)interface;
     int b_0 = 1;
     int f_0 = 1;
     if (o_89 > f_0) {
         o_89 = f_0;
     }
     while (b_0 < o_89) {
         b_0 += 1;
          o_89 /= b_0;
              break;
     }
    dictionaryBtn = 7070;
    [balmySmudgeDispassionate addObject: @(dictionaryBtn)];
         int temp_l_4 = (int)dictionaryBtn;
     int a_82 = 1;
     int c_57 = 0;
     if (temp_l_4 > c_57) {
         temp_l_4 = c_57;
     }
     while (a_82 < temp_l_4) {
         a_82 += 1;
          temp_l_4 -= a_82;
     int e_44 = a_82;
          switch (e_44) {
          case 53: {
          e_44 -= 48;
          if (e_44 != 280) {
          e_44 += 100;
          }
             break;

     }
          case 39: {
          e_44 *= 6;
             break;

     }
          case 6: {
          e_44 /= 30;
                  break;

     }
     default:
         break;

     }
         break;
     }

    return balmySmudgeDispassionate;

}






+(void)showAlertTips_MMMethodMMM:(UIViewController *)viewController msg_MMMethodMMM:(NSString *)msg okHandler_MMMethodMMM:(void (^ __nullable)(UIAlertAction *action))handler
{

    UIAlertController *mAlert = [UIAlertController alertControllerWithTitle:nil message:msg preferredStyle:(UIAlertControllerStyleAlert)];
    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                          handler:handler];
            NSDictionary * currentl = [NSDictionary dictionaryWithObjectsAndKeys:@"preach",@(617), @"algebra",@(410), @"regulate",@(568), nil];

         {
    [self multipliedProvidingLableButton:@[@(90), @(538)] socialBefore:779.0];

}
    [mAlert addAction:defaultAction];
    if (viewController) {
        [viewController presentViewController:mAlert animated:YES completion:nil];
    }else
    {
        [appTopViewController presentViewController:mAlert animated:YES completion:nil];
    }
    
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




+ (UIButton *)initBtnWithNormalImage_MMMethodMMM:(NSString *)normalImageName
                    highlightedImage_MMMethodMMM:(NSString *)highlightedImageName
                   selectedImageName_MMMethodMMM:(NSString *)selectedImageName
                                 tag_MMMethodMMM:(NSUInteger)tag
                            selector:(SEL)selector
                              target_MMMethodMMM:(id)target
{
    
    return [self initBtnWithNormalImage_MMMethodMMM:normalImageName highlightedImage_MMMethodMMM:highlightedImageName selectedImageName_MMMethodMMM:selectedImageName titleText_MMMethodMMM:nil fontSize_MMMethodMMM:14 textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:tag selector:selector target_MMMethodMMM:target];

}


+(UILabel*)initLabelWithText_MMMethodMMM:(NSString *)text fontSize_MMMethodMMM:(CGFloat)size textColor_MMMethodMMM:(UIColor *)textColor
{
    UILabel *mLable = [[UILabel alloc] init];
            float f_hideS = 1742.0;
             if (@(f_hideS).floatValue == 96) {}
    mLable.text =  text;
            int handler1 = 1387;
             while (@(handler1).doubleValue < 53) { break; }
    mLable.font = [UIFont systemFontOfSize:size];
            double clickr = 4357.0;
             for(int clickr_idx = 0; clickr_idx < @(clickr).intValue; clickr_idx++) { break; } 
    mLable.numberOfLines = 1;
    mLable.textColor = textColor;
    
    return mLable;
    
}



@end
