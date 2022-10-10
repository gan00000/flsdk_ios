
#import <Foundation/Foundation.h>
//被折磨，对周围爱你的人来说你仍然是无可替代的。我们生活的价值不在于我们做了什么，或者我们认识谁，生活的价值在于我们是谁。”
//
//
//
//“You are special ——don't ever forget it.”
//
//
//
//“你是与众不同的，永远不要
#import "SdkHeader.h"
typedef NS_OPTIONS(NSUInteger, SDKPage)
//。不管我怎么糟蹋这张纸币，你们仍然想要它，因为它的价值没有降低。它仍然是20美元。”
//
//
//
//“Many times in our lives, we are dropped, crumpled, and ground into the dirt by the decisions we make and the circumstances that come our way. We feel a
{

/**
  、假期或是前一天晚上没睡好也不应该例外。

2. Don't lay in bed awake

A well-known speaker started off his seminar by holding up a $20 bill. In the room of 200, he asked, “Who would like this $20 bill?”



一位有名的演讲家手里拿着一张20美元的纸币，开始了讨论会。在200人的屋子里， 他问道：“谁想要这20美元纸币？”



Hands  
**/
    SDKPage_Login,
    SDKPage_LoginType,
    SDKPage_UnBind,
    SDKPage_Find_Pwd

/**
  night. Withou 
**/
};
NS_ASSUME_NONNULL_BEGIN
@protocol LoginViewDelegate <NSObject>
-(void)goPageView_MMMethodMMM:(CURRENT_PAGE_TYPE) toPage;
-(void)goPageView_MMMethodMMM:(CURRENT_PAGE_TYPE) toPage from_MMMethodMMM:(CURRENT_PAGE_TYPE)fromPage param_MMMethodMMM:(id) obj;

/**
  
开始有人举手。他说我会把这20美元纸币给你们中间的一位，但是，先看看我会这么做。”



He proceeded to crumple the 20 dollar note up. He then asked, “Who still wants it?” Still the hands were up in the air.



他开始把这张纸币揉皱，然后他问道:“还有人想要它吗？”仍然有很多手举在空中。



“Well，” he replied, “what if I do this?” He dro 
**/
-(void)goBackBtn_MMMethodMMM:(UIView *)backView backCount_MMMethodMMM:(NSUInteger) count fromPage_MMMethodMMM:(CURRENT_PAGE_TYPE) fromPage toPage_MMMethodMMM:(CURRENT_PAGE_TYPE) toPage;
//sleep rhythms aren't predictable and the body doesn't know how to respond.
//
//临床心理学家、睡眠专家迈克尔·格兰德纳指出，为了让身体正常分泌褪黑素，你必须规律作息。如果你的上床和起床时间每天都不一样或者一到周末就改变，身体就无法预测你的睡眠节奏，也就不知道如何作出反应。
//
//Therefore it's important to have a standard wake up time, even on weekends, vacations or after a night of poor sleep.
//
//因此每天在固定时间起床很重要，即使是周末、假期或是前一天晚上没睡好也不应该例外。
//
//2. Don't lay in bed awake
//
//A well-known speaker s
-(void)logout_MMMethodMMM;

/**
  et you to the library.

想要把追求一个 
**/
-(void)loginSuccess_MMMethodMMM;
-(void)cancelAutoSwitchAccount_MMMethodMMM;

/**
  elf to it.



追随能够改变你命运的那颗星，那颗永远在你心中闪烁的明星。当它在你面前闪耀时，抓住这宝贵的机会。请谨记，只要你坚持不懈，最终的目标总能实现。



Though barriers may sometimes stand in the way of your dreams, remember that your destiny is hiding behind them. A 
**/
-(void) handleLoginOrRegSuccess_MMMethodMMM:(id)responseData thirdPlate_MMMethodMMM:(NSString *)thirdPlate;
-(void)changPasswordSuccess_MMMethodMMM;
@end
NS_ASSUME_NONNULL_END

/**
  ep

改变对睡眠的心态

Many people view sleeping as the final thing they have to do in a jam-packed day, worth delaying to catch up on housework, schoo 
**/
