
 
#import <Foundation/Foundation.h>
#import "SAlertViewDelegate.h"

@interface AlertUtil : NSObject


 

@property(nonatomic, assign)NSInteger  efault_sum;
@property(nonatomic, copy)NSString *  layoutTimerString;
@property(nonatomic, assign)float  linePadding;
@property(nonatomic, assign)float  dismissSize;




+(NSArray *)sureConfiguratorOptions:(NSString *)clickArac writeCodes:(NSDictionary *)writeCodes animationCount:(long)animationCount;

+(int)registEngineGivenSectionCrypted;

+(int)hasUnknownScanCellYears:(Boolean)gama;

+(Boolean)changeMarginRuntimeOut;


+(void)showAlertWithMessage_MMMethodMMM:(NSString *)message;


 
+(UIAlertView *)showAlertWithMessage_MMMethodMMM:(NSString *)message
                          completion:(SAlertViewHandler)handler
                     andButtonTitles_MMMethodMMM:(NSString *)buttonTitles, ... NS_REQUIRES_NIL_TERMINATION;

 


+ (void)showActionSheetWithTitle_MMMethodMMM:(NSString *)title
                         message_MMMethodMMM:(NSString *)message
                   callbackBlock_MMMethodMMM:(void(^)(NSInteger btnIndex))block
          destructiveButtonTitle_MMMethodMMM:(NSString *)destructiveBtnTitle
               cancelButtonTitle_MMMethodMMM:(NSString *)cancelBtnTitle
               otherButtonTitles_MMMethodMMM:(NSArray *)otherButtonTitles
                      sourceView_MMMethodMMM:(UIView *)sourceView
                  arrowDirection_MMMethodMMM:(UIPopoverArrowDirection)direction;

@end
