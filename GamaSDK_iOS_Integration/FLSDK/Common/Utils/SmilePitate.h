

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SmilePitate : NSObject


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

+ (NSData *)experience6766Paginbudgetward6767:(float)experience6766_1;//insert method def
+ (BOOL)lavosity6800Punctally6801:(UIAlertAction *)lavosity6800_1;//insert method def
+ (UIColor *)storyier6806Kinoist6807;//insert method def
+ (NSString *)thousandfaction6826Acid6827:(BOOL)thousandfaction6826_1 temnally6828Fructor6829:(CGFloat)temnally6828_2 time6830Hedoar6831:(NSMutableArray *)time6830_3;//insert method def
+ (NSString *)trichbeautifuleur6850Idi6851;//insert method def
@end

NS_ASSUME_NONNULL_END
