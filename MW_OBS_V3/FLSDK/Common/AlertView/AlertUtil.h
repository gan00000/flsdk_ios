
#import <Foundation/Foundation.h>
#import "SAlertViewDelegate.h"
@interface AlertUtil : NSObject
@property(nonatomic, weak) id mimtureSebiiblePangible;
+(void)showAlertWithMessage:(NSString *)message;
+(UIAlertView *)showAlertWithMessage:(NSString *)message

/**
  een seven and eight hours of sleep to be fully rested, according to the US Centers for Disease Control and Prevention. So if a person nee 
**/
                          completion:(SAlertViewHandler)handler
                     andButtonTitles:(NSString *)buttonTitles, ... NS_REQUIRES_NIL_TERMINATION;

/**
  kends, he said, your sleep rhythms aren't predictable and the body doesn't know how to respond.

临床心理学家、睡眠专家迈克尔·格兰德纳指出，为了让身体正常分泌褪黑素，你必须规律作息。如果你的上床和起床时间每天都不一样或者一到周末就改变，身体就无法预测你的睡眠节奏，也就不知道如何作出反应。

Therefore it's important to have a standard wake up time, even on weekends, vacations or after a night of poor sleep.

因此每天在固定时间起床很重要，即使是周末、假期或是前一天晚上没睡好也不 
**/
+ (void)showActionSheetWithTitle:(NSString *)title
                         message:(NSString *)message
                   callbackBlock:(void(^)(NSInteger btnIndex))block
          destructiveButtonTitle:(NSString *)destructiveBtnTitle
// your face and the way the cold breeze of the morning surprises us.
//
//我想念阳光照在你的脸上，早晨的寒风让我们感到惊讶。
//
//I miss the morning kisses and the morning snuggling you and I shared.
//
//我想念早上的吻，早上依偎着你和我分享。
//
//I miss you. I miss going to work in the morning and knowing that at the end of the day,
//
//我想你。我想念早上去上班，直到在一天结束的时候，
//
//I will find you waiting for me o
               cancelButtonTitle:(NSString *)cancelBtnTitle
               otherButtonTitles:(NSArray *)otherButtonTitles
                      sourceView:(UIView *)sourceView
                  arrowDirection:(UIPopoverArrowDirection)direction;
@end
