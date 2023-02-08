
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface StoreaticEctofic : NSObject



@property(nonatomic, assign)long  home_sum;
@property(nonatomic, assign)NSInteger  notice_index;
@property(nonatomic, copy)NSArray *  delegate_7NameFile_Array;




+(NSArray *)decideNameHit;

+(NSArray *)multipliedProvidingLableButton:(NSArray *)ramework socialBefore:(double)socialBefore;


#pragma mark - UI

+(UIImageView*)initImageViewWithImage_MMMethodMMM:(NSString *)imageName;

+(UILabel*)initLabelWithText_MMMethodMMM:(NSString *)text fontSize_MMMethodMMM:(CGFloat)size textColor_MMMethodMMM:(UIColor*)textColor;

+ (UIButton *)initBtnWithNormalImage_MMMethodMMM:(NSString *)normalImageName
                    highlightedImage_MMMethodMMM:(NSString *)highlightedImageName
                   selectedImageName_MMMethodMMM:(NSString *)selectedImageName
                           titleText_MMMethodMMM:(NSString *)titleText
                            fontSize_MMMethodMMM:(CGFloat)size
                           textColor_MMMethodMMM:(UIColor *)textColor
                                 tag_MMMethodMMM:(NSUInteger)tag
                            selector:(SEL)selector
                              target_MMMethodMMM:(id)target;

+ (UIButton *)initBtnWithNormalImage_MMMethodMMM:(NSString *)normalImageName
                    highlightedImage_MMMethodMMM:(NSString *)highlightedImageName
                   selectedImageName_MMMethodMMM:(NSString *)selectedImageName
                                 tag_MMMethodMMM:(NSUInteger)tag
                            selector:(SEL)selector
                              target_MMMethodMMM:(id)target;

+ (UIButton *)initBtnWithNormalImage_MMMethodMMM:(NSString *)normalImageName
                    highlightedImage_MMMethodMMM:(NSString *)highlightedImageName
                                 tag_MMMethodMMM:(NSUInteger)tag
                            selector:(SEL)selector
                              target_MMMethodMMM:(id)target;


+ (UIButton *)initBtnWithTitleText_MMMethodMMM:(NSString *)titleText
                          fontSize_MMMethodMMM:(CGFloat)size
                         textColor_MMMethodMMM:(UIColor *)textColor
                               tag_MMMethodMMM:(NSUInteger)tag
                          selector:(SEL)selector
                            target_MMMethodMMM:(id)target;

+ (UIButton *)initBtnWithTitleText_MMMethodMMM:(NSString *)titleText
                          fontSize_MMMethodMMM:(CGFloat)size
                         textColor_MMMethodMMM:(UIColor *)textColor;


+(void)showAlertTips_MMMethodMMM:(UIViewController *)viewController msg_MMMethodMMM:(NSString *)msg;
+(void)showAlertTips_MMMethodMMM:(UIViewController *)viewController msg_MMMethodMMM:(NSString *)msg okHandler_MMMethodMMM:(void (^ __nullable)(UIAlertAction *action))handler;

@end

NS_ASSUME_NONNULL_END
