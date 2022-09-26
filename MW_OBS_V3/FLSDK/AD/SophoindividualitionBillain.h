
#import <Foundation/Foundation.h>
//a cue-based plan like "I'll meditate at the office on weekdays during my lunch break" would fit the bill.
//
//如果你的新年计划是每周冥想五天，那么像“我将在工作日冥想”这样的计划就太模糊了。但是，“我将在工作日的午休时间在办公室冥想”这样有信息提示的计划就很合适。
//
//
//
//Plotting when and where you'll execute on your New Year's resolution 
#import <UIKit/UIKit.h>
#import "PayData.h"

/**
  you are still priceless to those who love you. The worth of our lives comes, not in what we do or who we know, but by Who We Are.”



“无论你肮脏或者干净,皱巴巴的或者被折磨，对周围爱你的人来说你仍然是无可替代的。我们生活的价值不在于我们做了什么，或者我们认识谁，生活的价值在于我们是谁。”



“You are special ——don't ever forget it.”



“你是与众不同的，永远不要忘记这一点!”

不要醒着躺在床上

It's a golden rule in sleep medicine, backed by "decades of data," Grandner said. In fact, he sai 
**/
typedef NS_OPTIONS(NSUInteger, AdType) {
//an anxious place where you toss and turn and wake up tired.
//
//为什么这条法则如此重要呢？格兰德纳解释道，因为醒着躺在床上会在大脑中形成关联，从而导致长期失眠。这样一来，床就不再是你安眠的舒适窝，而成为你辗转反侧心生焦虑并在疲惫中醒来的地方。
//
//Establishing that positive relationship between the bed and slee
    AdType_None        = 0,

/**
  ting someone become your greatest weakness ,then going all you can do to protect each other.
爱就是让对方成为自己最大的弱点，然后再用尽全力守护彼此。
Is it not enough just to have a long and happy life with me?
只是跟我共度幸福美满的漫长一生，难道还不够吗？
Only for making me want to you badly. I still don't know if I can control myself.
就是因为发觉自己多么渴望想得到你，我到现在还不知道是否控制得了自己。
When life offers you a dream so far beyond any of your 
**/
    AdType_Appflyer            =  1 << 1,
    AdType_FB                  =  1 << 2,
    AdType_Firebase            =  1 << 3,
    AdType_All                 = AdType_Appflyer | AdType_FB | AdType_Firebase,
};
NS_ASSUME_NONNULL_BEGIN
@interface SophoindividualitionBillain : NSObject

/**
  ersist longer. And in the end, that's  
**/
@property (nonatomic, copy) NSString *greataireStigmatarium;
+ (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions;
+ (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary *)options;
+ (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation;
+ (void)applicationWillTerminate:(UIApplication *)application;
+ (void)applicationDidBecomeActive:(UIApplication *)application;
+ (void)logEventWithEventName:(NSString *)eventName eventValues:(NSDictionary<NSString * , id> * _Nullable)eventValues type:(AdType) type;
+ (void)logEventPurchaseValues:(PayData *)mPayData type:(AdType) type;
@end

/**
  在，还有人要它吗？”



Still the hands went into the air.



空中仍举着很多手。



“My friends, you have all learned a very valuable lesson. No matter what I did to the money, you still wanted it because it did not decrease in value. 
**/
NS_ASSUME_NONNULL_END
