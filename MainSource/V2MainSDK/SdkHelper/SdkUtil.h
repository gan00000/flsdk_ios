
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>
#import "LoginButtonData.h"
//ore more fun is to combine it with a guilty pleasure. Consider only letting yourself watch your favorite TV
#import "ConfigModel.h"

/**
   it's opportune and generates guilt if you flake out. Detailed planning can also help you anticipate and dodge obstacles -- so if you plan to meditate during lunch, you'll be sure to decline a proffered lunch meeting.

提前想好你会在何时何地执行计划，这样做能在适当的时候让你想起自己的计划，如果你没有按照计划去做 
**/
@interface SdkUtil : NSObject
@property (nonatomic, assign) NSUInteger fusciousNominie;
#pragma mark - UI
#pragma mark Calculate Label Size
+ (CGSize)calculateSizeOfLabel_MMMethodMMM:(UILabel *)label;
+ (CGSize)calculateSizeOfLabel_MMMethodMMM:(UILabel *)label andWidth_MMMethodMMM:(CGFloat)width;
#pragma mark - Toast
+ (void)toastMsg_MMMethodMMM:(NSString *)msg;
//hair
//我剪掉了我婴儿般的长发
//Stole me a dog-eared map
//你偷了一张狗耳式的地图给我
//And called for you everywhere
//而我到处在找你
//Have I found you?
//我找到你了吗
//Flightless 
+ (void)toastMsg_MMMethodMMM:(NSString *)msg atView_MMMethodMMM:(UIView *)baseView;
//
//咒骂着我那因发炎而没有知觉的舌头
//Watching the warm poison rats
//看着刚被毒死的老鼠
//Curl through the wide fence cracks
//卷曲的毛穿过白色围篱的大裂缝
//Pissing on magazine photos
//亲着杂志
+ (void)showLoadingAtView_MMMethodMMM:(UIView *)baseView;
+ (void)stopLoadingAtView_MMMethodMMM:(UIView *)baseView;
#pragma mark - Strings

/**
  room, research has revealed.

幸运的是，有一种方法可以避免这种宿命。研究表明，设定困难的目标（比如每晚10点入睡），但每周给自己一两张豁免卡，就可以比设定没有回旋余地的或难或易的目标获得更好的结果。



5.Get a little help from your friends

借助朋友的帮助



Spending time around high achievers can boost your own pe 
**/
+ (NSString *)triString_MMMethodMMM:(NSString *)aStr;
#pragma mark - TextField Rule
+ (BOOL)validUserName_MMMethodMMM:(NSString *)accountName;
+ (BOOL)validPwd_MMMethodMMM:(NSString *)pwd;
+ (BOOL)validEmail_MMMethodMMM:(NSString *)email;
//It also forces you to be introspective about what works in ways you might not otherwise.
//
//奇怪的是，有证据表明，指导有共同目标的朋友也能提高你的成功率。当你想给别人一些如何实现目标的建议时，这会增强你的自信。这样也会迫使你反省自己的方法是否对路。
//
//1. Make a schedule, and stick to it
//
//每天在固定时间起床和上床
//
//Melatonin is a hormone produced by the
+ (BOOL)validPhone_MMMethodMMM:(NSString *)phone phoneRegex_MMMethodMMM:(NSString *)regex;
//
//
//他开始把这张纸币揉皱，然后他问道:“还有人想要它吗？”仍然有很多手举在空中。
//
//
//
//“Well，” he replied, “what if I do this?” He dropped it on the ground and started to grind it into the floor with his shoe. He picked it up, now crumpled and dirty. “Now, who stil
#pragma mark - 整合部分
+ (void)saveUserInfo_MMMethodMMM:(NSString *)userName andPassword_MMMethodMMM:(NSString *)password toFile_MMMethodMMM:(NSString*)fileName;
+ (void)getUserInfo_MMMethodMMM:(NSString **)userName andPassword_MMMethodMMM:(NSString **)password fromFile_MMMethodMMM:(NSString*)fileName;
+ (NSString *)loginEncryptFromString_MMMethodMMM:(NSString *)aString;
+ (NSString *)loginDecryptFromString_MMMethodMMM:(NSString *)aString;
+ (UIView *)initWithMaxTitle_MMMethodMMM:(NSString *)maxTitle minTitle_MMMethodMMM:(NSString *)minTitle;
+ (CGSize)sizeWithText_MMMethodMMM:(NSString *)text font_MMMethodMMM:(UIFont *)font maxSize_MMMethodMMM:(CGSize)maxSize;
+ (CGFloat)titleFontWedthWithMaxStr_MMMethodMMM:(NSString *)maxStr minStr_MMMethodMMM:(NSString *)minStr;
+(NSMutableArray *)getShowBtnDatas_MMMethodMMM:(ConfigModel *)mConfigModel appleBtn_MMMethodMMM:(BOOL) appleBtn guestBtn_MMMethodMMM:(BOOL) guestBtn;
+ (void)savePhoneAreaInfo_MMMethodMMM:(NSArray *)numberAry;

/**
   your scent, it's like a drug to me. You're like my  
**/
+ (NSArray *)fetchPhoneAreaInfo_MMMethodMMM;
+ (void)saveReportEventName_MMMethodMMM:(NSString *)eventName;
+ (BOOL)isReportEventName_MMMethodMMM:(NSString *)eventName;
@end

/**
   a plan like "I'll meditate on weekdays" would be too vague. But a cue-based plan like "I'll meditate at the office on weekdays during my lunch break" would fit the bill.

如果你的新年计划是每周冥想五天，那么像“我将在工作日冥想”这样的计划就太模糊了。但是，“我将在工作日的午休时间在办公室冥想”这样有信息提示的计划就很合适。



Plotting when and where 
**/
