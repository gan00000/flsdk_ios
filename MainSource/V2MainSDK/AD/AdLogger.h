
#import <Foundation/Foundation.h>
#import "AdDelegate.h"
#define SDK_LOG_EVENT_INSTALL  @"install"
@interface AdLogger : NSObject
+ (void)logWithEventName_MMMethodMMM:(NSString *)eventName parameters_MMMethodMMM:(NSDictionary *)parameters;

/**
  er that, your early-to-bed plans went out the window because "what the hell, 
**/
+ (void)logWithEventName_MMMethodMMM:(NSString *)eventName parameters_MMMethodMMM:(NSDictionary<NSString * , id> * _Nullable)eventValues type_MMMethodMMM:(AdType) type;
//our plan helps you remember when to act. Be sure to detail when and where you'll follow through.
//
//正如出场提示告诉百老汇明星何时登台一样，研究表明，在你的计划中加入信息提示，能帮助你记住何时行动。一定要详细说明你将在何时何地做什么。
//
//
//
//If your New Year's resolution is to meditate five days each week, a plan like "I'll meditate on weekdays" would be too vague. But a cue-based plan like "I'll med
+ (void)logServerWithEventName_Install_MMMethodMMM;

/**
  个辛苦的目标变得更有趣，方法就是把它与有罪恶感的快乐结合起来。如果只允许自己在健身房看最喜欢的电视节目，你就会开始期待锻炼了。或者只让自己在学习期间喝摩卡拿铁，这样就有了去图书馆的动力。



4.Allow for e 
**/
@end
