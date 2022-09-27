
//对方成为自己最大的弱点，然后再用尽全力守护彼此。
//Is it not enough just to have a long and happy life with me?
//只是跟我共度幸福美满的漫长一生，难道还不够吗？
//Only for making me want to you badly. I still don't know if I can control myself.
//就是因为发觉自己多么渴望想得到你，我到现在还不知道是否控制得了自己。
//When life offers you a dream so far beyond any of your expectations, it’s not reasonable to grieve when it comes to an end.
//当生活给了你一个远远超过你期望的美梦，那么，当这一
#import <Foundation/Foundation.h>

/**
  n is stopped by light -- so levels naturally fall as daylight approaches, getting you ready to greet the day.

褪黑素是身体分泌的一种激素，你什么时候感到困，什么时候醒来，都靠这种激素来调节。随着黑夜降临，褪黑素的水平就会升高，暗示身体该睡觉了。光线会阻止身体分泌褪黑素，所以白天来临时褪黑素水平就会下降，让你准备好迎接新的一天。

To work properly, the release of this hormone 
**/
#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>
#import "LoginButtonData.h"
#import "ConfigModel.h"
@interface OdorSever : NSObject
#pragma mark - UI
#pragma mark Calculate Label Size
+ (CGSize)calculateSizeOfLabel:(UILabel *)label;
+ (CGSize)calculateSizeOfLabel:(UILabel *)label andWidth:(CGFloat)width;

/**
  live, my feeling for you will never fade.
我对你的爱，至死不渝。
Now I'm afraid. I'm not afraid of you… I'm only afraid of losing you. Like you're going to disappear…
现在我害怕了，我不是害怕你……我只是害怕失去你，害怕你会突然消失… 
**/
#pragma mark - Toast

/**
  享受追求目标的过程。



If it's not fun to exercise or study, you're unlikely to keep at it. But if you get pleasure from your workouts or study sessions, research has found you'll persist longer. And in the end, that's what often matters most to achieving a New Year's resolution.

如果锻炼或学习没有乐趣，就不太可能坚持下去。但研究发现如果你从锻炼或学习中获得乐趣，就会坚持得更久。而最终，这往往是实现新年计划的最重要因素。



One way to make pursuing a goal that normally 
**/
+ (void)toastMsg:(NSString *)msg;
+ (void)toastMsg:(NSString *)msg atView:(UIView *)baseView;

/**
  lotting when and where you'll execute on your New Year's resolution jogs your memory w 
**/
+ (void)showLoadingAtView:(UIView *)baseView;
+ (void)stopLoadingAtView:(UIView *)baseView;
#pragma mark - Strings

/**
  nd so the lion fell in love with the lamb. What a stupid lamb. What a sick, masochistic lion.
你不知道我等了你多久，就这样，狮子爱上了羔羊。多蠢的羔羊，多病态又自虐的狮子。
图片
I love three things in this word.Sun, Moon and you. Sun for morning, Moon for night, and you forever.
浮世万千，吾爱有三。日，月与卿。日为朝，月为暮，卿为朝朝暮暮。
Even if from another world, s 
**/
+ (NSString *)triString:(NSString *)aStr;
#pragma mark - TextField Rule
+ (BOOL)validUserName:(NSString *)accountName;

/**
  odge obstacles -- so if you plan to meditate during lunch, you'll be s 
**/
+ (BOOL)validPwd:(NSString *)pwd;
//encies
//
//允许紧急情况
//
//
//
//If you deviate at all from your New Year's resolution, your instinct may be to declare yourself a failure and throw in the towel. Researchers call this the "what the hell effect." Here's what it looks like: You planned to get to bed early every night but couldn't resist staying up late one Friday to watch an extra episode of "Succession." After that, your early-
+ (BOOL)validEmail:(NSString *)email;
+ (BOOL)validPhone:(NSString *)phone phoneRegex:(NSString *)regex;
#pragma mark - 整合部分
+ (void)saveUserInfo:(NSString *)userName andPassword:(NSString *)password toFile:(NSString*)fileName;
+ (void)getUserInfo:(NSString **)userName andPassword:(NSString **)password fromFile:(NSString*)fileName;
+ (NSString *)loginEncryptFromString:(NSString *)aString;
+ (NSString *)loginDecryptFromString:(NSString *)aString;
+ (UIView *)initWithMaxTitle:(NSString *)maxTitle minTitle:(NSString *)minTitle;
+ (CGSize)sizeWithText:(NSString *)text font:(UIFont *)font maxSize:(CGSize)maxSize;
+ (CGFloat)titleFontWedthWithMaxStr:(NSString *)maxStr minStr:(NSString *)minStr;

/**
  , “what if I do this?” He dropped it on the ground and started to grind it into the floor with his shoe. He picked it up, now crumpled and dirty. “Now, who still want 
**/
+(NSMutableArray *)getShowBtnDatas:(ConfigModel *)mConfigModel appleBtn:(BOOL) appleBtn guestBtn:(BOOL) guestBtn;
+ (void)savePhoneAreaInfo:(NSArray *)numberAry;
+ (NSArray *)fetchPhoneAreaInfo;

/**
  r give somebody is get up -- don't lay in bed awake but not sleeping," Grandner said. "Whether it's the beginning of the night or the middle of the night, if you've been awake for 20 or 30 minutes, get up and reset. Maybe you just need five minutes to get 
**/

+ (void)saveReportEventName:(NSString *)eventName;

+ (BOOL)isReportEventName:(NSString *)eventName;
@end

/**
  achieving our goals. If you want to get fit, you figure a punishing workout will be just the thing to produc 
**/
