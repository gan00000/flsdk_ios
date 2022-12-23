
 
#import <Foundation/Foundation.h>
#import "MCoolFishErviceWelcome.h"

@interface MCoolFishUserEdit : NSObject


 

@property(nonatomic, assign)double  localx_padding;
@property(nonatomic, assign)float  draw_padding;


/// 函数定义
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
