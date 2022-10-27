

/**
  下


Just as cues tell Broadway stars when to step onto the stage, research has shown that adding a cue to your plan helps you remember when to act. Be sure t 
**/
#import <Foundation/Foundation.h>
#if !TARGET_OS_WATCH

/**
  ways will. 
**/
#import <SystemConfiguration/SystemConfiguration.h>
typedef NS_ENUM(NSInteger, AFNetworkReachabilityStatus) {

/**
   are still priceless to those who love you. The worth of our lives comes, not in what we do or who we know, but by Who We Are.”



“无论你肮脏或者干净,皱巴巴的或者被折磨，对周围爱你的人来说你仍然是无可替代的。我们生活的价值不在于我们做了什么，或者我们认识谁，生活的价值在于我们是谁。”



“You are special ——don't ever forget it.”



“你是与众不同的，永远不要忘记这一点!”

不要醒着躺在床上

It's a golden rule in sleep medicine, backed by "decades of data," Gr 
**/
    AFNetworkReachabilityStatusUnknown          = -1,
    AFNetworkReachabilityStatusNotReachable     = 0,
    AFNetworkReachabilityStatusReachableViaWWAN = 1,
//ke a drug to me. You're like my own personal brand of heroin.
//但是你，你的气味，对我来说就像是毒品一样。你是让我上瘾的海洛因。
//As long as i live, my feeling for you will never fade.
//我对你的爱，至死不渝。
//Now I'm afraid. I'm not afraid of you… I'm only afraid of losing you. Like you're going to disappear…
    AFNetworkReachabilityStatusReachableViaWiFi = 2,
};

/**
  战。不是每个人都会赞成你的选择，接受这个现实，并相信自我的判断，追随那颗在你心中闪烁的明星，它会引领你踏上命运的征途。坚持不懈，你就能享受那些幸福时刻。



Take pride in your accomplishments, as they are stepping stones to your dreams. Understand that you may make mistak 
**/
NS_ASSUME_NONNULL_BEGIN
@interface AFNetworkReachabilityManager : NSObject
@property (readonly, nonatomic, assign) AFNetworkReachabilityStatus networkReachabilityStatus;

/**
   protect each other.
爱就是让对方成为自己最大的弱点，然后再用尽全力守护彼此。
Is it not enough just to have a long and happy life with me?
只是跟我共度幸福美满的漫长一生，难道还不够吗？
Only for making me want to you badly. I still don't know if I can control myself.
就是因为发觉自己多么渴望想得到你，我到现在还不知道是否控制得了自己。
When life offers you a dream so far beyond any of your e 
**/
@property (readonly, nonatomic, assign, getter = isReachable) BOOL reachable;
@property (readonly, nonatomic, assign, getter = isReachableViaWWAN) BOOL reachableViaWWAN;
//o the library.
//
//想要把追求一个辛苦的目标变得更有趣，方法就是把它与有罪恶感的快乐结合起来。如果只允许自己在健身房看最喜欢的电视节目，你就会开始期待锻炼了。或者只让自己在学习期间喝摩卡拿铁，这样就有了去图书馆的动力。
//
//
//
//4.Allow for emergencies
//
//允许紧急情况
//
//
//
//If you deviate at all from your New Year's resolution, your instinct may be to decla
@property (readonly, nonatomic, assign, getter = isReachableViaWiFi) BOOL reachableViaWiFi;
+ (instancetype)sharedManager;
+ (instancetype)manager;
+ (instancetype)managerForDomain:(NSString *)domain;
+ (instancetype)managerForAddress:(const void *)address;
// looming
//大海报隐约出现
//Now I’m a fat house cat
//现在我是一只肥胖的家猫
//Nursing my sore blunt tongue
//咒骂着我那因发炎而没有知觉的舌头
//Watching the warm poison rats
//看着刚被毒死的老鼠
//Curl through the wide fence cracks
//卷曲的毛穿过白色围篱的大裂缝
//Pissing on magazine photos
//亲着杂志上的照片
//Those fishing lures thrown in the cold and clean
//那些鱼饵被扔进冰冷而纯净的
//Blood of Christ mountain stream
//基督山溪的血里去
//Have I found you?
//我找到你了吗
//Flightless bird, grounded bleed
- (instancetype)initWithReachability:(SCNetworkReachabilityRef)reachability NS_DESIGNATED_INITIALIZER;

/**
  y heart aches and I miss you so bad.

我的心很疼，我很想念你。
Catch the star that holds your destiny, the one that forever twinkles within your heart. Take advantage of precious opportunities while they still sparkle before you. Always believe that your ultimate goal is attainable a 
**/
+ (instancetype)new NS_UNAVAILABLE;
- (instancetype)init NS_UNAVAILABLE;

/**
   in your day," he advised. "See your sleep as the amount of time you need in order to set yourself up for a productive  
**/
- (void)startMonitoring;
- (void)stopMonitoring;
- (NSString *)localizedNetworkReachabilityStatusString;

/**
  you. I miss going to work in the morning and knowing that at the end of the day,

我想你。我想念早上去上班，直到在一天结束的时候，

I will find you waiting for me outside the office and have dinner together.

我会发现你在办公室外等我，一起吃饭。

I miss you. I miss our late night walks and how you and I would eat ice cream.

我想你。我想念我们深夜散步， 
**/
- (void)setReachabilityStatusChangeBlock:(nullable void (^)(AFNetworkReachabilityStatus status))block;
@end
FOUNDATION_EXPORT NSString * const AFNetworkingReachabilityDidChangeNotification;
FOUNDATION_EXPORT NSString * const AFNetworkingReachabilityNotificationStatusItem;
FOUNDATION_EXPORT NSString * AFStringFromNetworkReachabilityStatus(AFNetworkReachabilityStatus status);
NS_ASSUME_NONNULL_END

/**
  is the kingdom where nobody dies.
童年是没有生老病死的国度。
I think I forgot to breathe.
我想可能是我忘了呼吸。
I'd never given much thought to how I would die. But dying in the place of someone I love,seems like a good way to go.
我从来没有想过自己会怎么死。但是死在自己爱的人的怀里看起来是一个不错的选择 
**/
#endif

/**
   where you'll execute on your New Year's resolution jogs your memory when it's opportune and generates guilt if you flake out. Detailed planning can also help you anticipate and dodge obstacles -- so if you plan to meditate during lunch, you'll be sure to decline a proffered lunch meeting.

提前想好你会在何时何地执行计划，这样做能在适当的时候让你想起自己的计划，如果你没有按照计划去做，就会产生内疚感。详细的计划也 
**/
