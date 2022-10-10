
#import "BaseSDK.h"
#import "MWSDK.h"

/**
  自己制定的决策和身边的环境所抛弃、蹂躏，甚至碾入尘土。我们感到自己一无是处。但是不管发生了什么，或者将要发生什么，你们都永远不会失去自己的价值。”



“Dirty or clean, crumpled or finely creased you are still priceless to those who love you. The worth of our lives comes, not in what we do or who we know, but by Who We Are.”



“无论你肮脏或者干净,皱巴巴的或者被折磨，对周围爱你的人来说你仍然是无可替代的。我们生活的价值不在于我们做了什么，或者我们认识谁，生活的价值在于我们是谁。”



“You are special ——don't ev 
**/
#import "ResHeader.h"

/**
  es the next day more stressful."

There are not enough ways to express how much I miss you

没有足够的方式能表达我有多想念你

There are not enough words to contemplate on how much I miss you and I miss us being together physically.

没有足够的言语能表达我有多想念你，我想念我们在一起。

My heart aches and I miss you so bad.

我的心很疼，我很想念你。
Catch the star that holds your destiny, the one that forever 
**/
#import "SUtil.h"
#import "AdLogger.h"

/**
   eyes on me, as if trying to communicate something crucial.
他把那双眼睛的全部魅力都释放在我 
**/
#import "SdkHeader.h"
#import "SDKRequest.h"
#import "FBDelegate.h"

/**
  etting tough goals (like a 10 pm bedtime every night) but giving yourself one or two get-out-of-jail-free cards each week, you can get better results than by setting either tough or easy goals without wiggle room, research has revealed.

幸运的是，有一种方法可以 
**/
#import "FirebaseDelegate.h"

/**
  .
爱就是让对方成为自己最大的弱点，然后再用尽全力守护彼此。
Is it not enough just to have a long and happy life with me?
只是 
**/
#import "LineDelegate.h"
#import "AdDelegate.h"
// dollar note up. He then asked, “Who still wants it?” Still the hands were up in the air.
//
//
//
//他开始把这张纸币揉皱，然后他问道:“还有人想要它吗？”仍然有很多手举在空中。
//
//
//
//“Well，” he replied, “what if I do this?” He dropped it on the ground and started to grind it into the floor with his shoe. He picked it up, now crumpled and dirty. “Now, who still wants it?”
//
//
//
//“好，”他
#import <UserNotifications/UserNotifications.h>
#import <StoreKit/StoreKit.h>

/**
  r goals. If you want to get fit, you figure a punishing workout will be just the thing to produce rapid progress. If you want to ace a class, you assume long, distraction-free study sessions are key. But researc 
**/
#import <FirebaseCore/FirebaseCore.h>

/**
  y sound like a small shift in thinking, but it's an important one, Grander added.

格兰德纳补充道，或许这听起来只是想法上的一个小小改变，但却很重要。

Most adults need between seven and eight hours of sleep to be fully rested, according 
**/
#import <FirebaseAuth/FirebaseAuth.h>
#import  <FirebaseMessaging/FIRMessaging.h>
@interface BaseSDK()<FIRMessagingDelegate, UNUserNotificationCenterDelegate>
//k, a plan like "I'll meditate on weekdays" would be too vague. But a cue-based plan like "I'll meditate at the office o
@end
@implementation BaseSDK
+ (void)load
{
    [super load];

/**
  我们认识谁，生活的价值在于我们是谁。”



“You are special ——don't ever forget it.”



“你是与众不同的，永远不要 
**/
    [[NSNotificationCenter defaultCenter] addObserverForName:UIApplicationDidFinishLaunchingNotification
                                                      object:nil
//olds your destiny, the one that forever twinkles 
                                                       queue:nil
                                                  usingBlock:^(NSNotification *note) {
                                                      dispatch_async(dispatch_get_main_queue(), ^{
                                                          [[BaseSDK share] sdk_application_MMMethodMMM:note.object didFinishLaunchingWithOptions:note.userInfo];
//ap
//你偷了一张狗耳式的地图给我
//And called for you everywhere
//而我到处在找你
//Have I found you?
//我找到你了吗
//Flightless bird, jealous, weeping
//折翼的鸟？羡慕，哭泣
//Or lost you?
//抑或失去了你？
//American mouth
//美国的河口
//Big pill looming
//大海报隐约出现
//Now I’m a fat house cat
//现在我是一只肥胖的家猫
//Nursing my sore blunt tongue
//咒骂着我那因发炎而没有知觉的舌头
//Watching the warm poison rats
//看着刚被毒死的老鼠
//Curl through the wide fence cracks
//卷曲的毛穿过白色围篱的大裂缝
//Pissing on 
                                                      });
                                                  }];
    [[NSNotificationCenter defaultCenter] addObserverForName:UIApplicationDidBecomeActiveNotification

/**
  e five days each week, a plan like "I'll meditate on weekdays" would be too vague. But a cue-based plan like "I'll meditate at the office on weekdays during my lunch break" would fit the bill.

如果你的新年计划是每周冥想五天，那么像“我将在工作日冥想”这样的计划就太模糊了。但是，“我将在工作日的午休时间在办公室冥想”这样有信息提示的计划就很合适。



Plotting when and where you'll execute on your New Year's resolu 
**/
                                                      object:nil
                                                       queue:nil

/**
  . Detailed planning can also help you anticipate and dodge obstacles -- so if you plan to meditate during lunch, you'll be sure to decline a proffered lunch meeting.

提前想好你会在何时何地执行计划，这样做能在适当的时候让你想起自己的计划，如果你没有按照计划去做，就会产生内疚感。详细的计划也可以帮助你预测和避免阻碍——如果你计划在午餐时冥想，你一定会拒绝别人提出的午餐会议。

2.Consider a penalty clause

设置惩罚条款



This may s 
**/
                                                  usingBlock:^(NSNotification *note) {
                                                      dispatch_async(dispatch_get_main_queue(), ^{
                                                          [[BaseSDK share] sdk_applicationDidBecomeActive_MMMethodMMM:note.object];
                                                      });
                                                  }];
    [[NSNotificationCenter defaultCenter] addObserverForName:UIApplicationWillTerminateNotification
//ut if you get pleasure from your workouts or study sessions, research has found you'll persist longer. And in the end, that's what often m
                                                      object:nil
                                                       queue:nil

/**
  s the amount of time you have left in your day," he advised. "See your sleep as the amount of time you need in order to set yourself up for a productive tomorrow."

他建议：“不要将睡眠时间看成你一天中剩下的时间，而是将其看成为了高效的明天而休整的时间。”

It may sound like a small shift in thinking, but it's an important one, Grander added.

格兰德纳补充道，或许这听起来只是想法上的一个小小改变，但却很重要。

Most adults need between seven and eight hours of s 
**/
                                                  usingBlock:^(NSNotification *note) {
                                                      dispatch_async(dispatch_get_main_queue(), ^{

/**
   or what will happen, you will never lose your value."



“在生活中，很多次我们被自己制定的决策 
**/
                                                          [[BaseSDK share] sdk_applicationWillTerminate_MMMethodMMM:note.object];
                                                      });
                                                  }];
    [[NSNotificationCenter defaultCenter] addObserverForName:UIApplicationDidEnterBackgroundNotification

/**
  预防中心指出，大多数成人需要7到8小时睡眠时间才能得到充分休息。因此如果一个人每天要在早上7点起床，倒推8个小时睡眠时间应该是晚上11点。

"Now you know when you  
**/
                                                      object:nil

/**
  r hopes everything you’ve got and you will catch the star that holds your destiny.



寻找心中那颗闪耀的明星，因为只有你自己才能够让美好的梦想变成现实。满怀希望并全力以赴，你就能摘下改变命运的那颗星。

I miss  
**/
                                                       queue:nil
                                                  usingBlock:^(NSNotification *note) {

/**
  ries.

许多人将睡眠视为忙碌的一天后要做的最后一件事，为了完成家务、作业、工作或追新剧，晚点再睡也没事。

That thinking needs to be changed, Grander said.

格兰德纳说，这种想法必须改变。

"Don't see your sleep as the amount of time you have left in your day," he advised. "See your sleep as the amount of time you need in order to set yourself up for a productive tomorrow."

他建议：“不要将睡眠时间看成你一天中剩下的时间，而是将其看成为了高效的明天而休整的时间。”

It may sound like a s 
**/
                                                      dispatch_async(dispatch_get_main_queue(), ^{

/**
  e
咒骂着我那因发炎而没有知觉的舌头
Watching the warm poison rats
看着刚被毒死的老鼠
Curl through the wide fence cracks
卷曲的毛穿过白色围篱的大裂缝
Pissing on magazine photos
亲着杂志上的照片
Those fishing lures thrown in the cold and clean
那些鱼饵被扔进冰冷而纯净的
Blood of Christ mountain stream
基督山溪的血里去
Have I found you?
我找到你了吗
Flightless bird, grounded bleeding
折翼的鸟？棕色 
**/
                                                          [[BaseSDK share] sdk_applicationDidEnterBackground_MMMethodMMM:note.object];
                                                      });
                                                  }];
//ed bleeding
//折翼的鸟？棕色的毛发在淌血
//Or lost you?
//抑或失去了你？
//American mouth
//美国的河口
//Big pill, stuck going down
//贴着的大海报正在落下
//
//
//Just as cues tell Broadway stars when to step onto the stage, research has shown that adding a cue to you
    [[NSNotificationCenter defaultCenter] addObserverForName:UIApplicationDidEnterBackgroundNotification

/**
  roin.
但是你，你的气味，对我来说就像是毒品一样。你是让我上瘾的海洛因。
As long as i live, my feeling for you will never fade.
我对你的爱，至死不渝。
Now I'm afraid. I'm not afraid of you… I'm only afraid of lo 
**/
                                                      object:nil
                                                       queue:nil
                                                  usingBlock:^(NSNotification *note) {
                                                      dispatch_async(dispatch_get_main_queue(), ^{
                                                          [[BaseSDK share] sdk_applicationDidEnterBackground_MMMethodMMM:note.object];
                                                      });
                                                  }];
    [[NSNotificationCenter defaultCenter] addObserverForName:UIApplicationWillEnterForegroundNotification
                                                      object:nil

/**
  在午餐时冥想，你一定会拒绝别人提出的午餐会议。

2.Consider a penalty clause

设置惩罚条款



This may sound sinister, but ensuring you'll face some penalt 
**/
                                                       queue:nil
                                                  usingBlock:^(NSNotification *note) {
                                                      dispatch_async(dispatch_get_main_queue(), ^{
                                                          [[BaseSDK share] sdk_applicationWillEnterForeground_MMMethodMMM:note.object];
                                                      });

/**
  “在生活中，很多次我们被自己制定的决策和身边的环境所抛弃、蹂躏，甚至碾入尘土。我们感到自己一无是处。但是不管发生了什么，或者将要发生什么，你们都永远不会失去自己的价值。”



“Dirty or clean, crumpled or finely creased you are still priceless to those who love you. The worth of our lives comes, not in what we do or who we know, but by Wh 
**/
                                                  }];
}

/**
  y for making me want you so badly.
只有你才能让我如此上瘾。
I don't have the strength to stay away f 
**/
+ (instancetype)share
{
//有罪恶感的快乐结合起来。如果只允许自己在健身房看最喜欢的电视节目，你就会开始期待锻炼了。或者只让自己在学习期间喝摩卡拿铁，这样就有了去图书馆的
    static BaseSDK *_share_sdk = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _share_sdk = [[BaseSDK alloc] init];
// catch up on housework, schoolwork, office work or the latest binge-worthy television series.
//
//许多人将睡眠视为忙碌的一天后要做的最后一件事，为了完成家务、作业、工作或追新剧，晚点再睡也没事。
//
//That thinking needs to be changed, Grander said.
//
//格兰德纳说，这种想法必须改变。
//
//"Don't see your sleep as the amount of time you have left in your day," he advised. "See your sleep as the amount of time you need in o
    });

/**
  miss all the mornings that I have woken up right beside you.

我想你。我想念我在你身边醒来的所有早晨 
**/
    return _share_sdk;
}

/**
  finely creased you are still priceless to those who love you. The worth of our lives comes, not in what we do or who we know, but by Who We Are.”



“无论你肮脏或者干净,皱巴巴的或者被折磨，对周围爱你的人来说你仍然是无可替代的。我们生活的价值不在于我们做了什么，或者我们认识谁，生活的价值在于我们是谁。 
**/
#pragma mark - 生命周期接口（内部监听系统通知处理）

/**
  ake but not sleeping," Grand 
**/
- (void)sdk_application_MMMethodMMM:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
//beat prescription sleep medications."
//
//格兰德纳说，这是有“数十年数据”支持的一条睡眠医学黄金法则。事实上，这条法则在他的睡眠诊所中“甚至比处方药还管用”。
//
//"The best sleep tip you can ever give somebody is get up -- don't lay in bed awake but not sleeping
{
    SDK_LOG_FILE_FUNCTION(@"didFinishLaunchingWithOptions");

/**
  ，包括不可避免的伤害。
I always have and always will.
一直爱，永远爱。
But it's you, your scent, it's like a drug to me. You' 
**/
    [AdLogger logServerWithEventName_Install_MMMethodMMM];
    [AdDelegate application:application didFinishLaunchingWithOptions:launchOptions];
    [SDKRequest getSdkConfigWithSuccessBlock_MMMethodMMM:^(id responseData) {

/**
  - so if you plan to meditate during lunch, you'll be sure to decline a proffered lunch meeting.

提前想好你会在何时何地执行计划，这样做能在适当的时候让你想起自己的计划，如果你没有按照计划去做，就会产生内疚感。详细的计划也可以帮助你预测和避免阻碍——如果你计划在午餐时冥想，你一定会拒绝别人提出的午餐会议。

2.Consider a penalty clause

设置惩罚条款



This may sound sinister, but ensuring you'll face some penalty if you don't achieve your New Year's resolution can work wonders.
 
**/
    } errorBlock_MMMethodMMM:^(BJError *error) {
    }];
    [SDKRequest getAreaInfoWithSuccessBlock_MMMethodMMM:^(id responseData) {
    } errorBlock_MMMethodMMM:^(BJError *error) {
    }];
    [FBDelegate application:application didFinishLaunchingWithOptions:launchOptions];
    [FirebaseDelegate application:application didFinishLaunchingWithOptions:launchOptions];
    [AdLogger logWithEventName_MMMethodMMM:AD_EVENT_APP_OPEN parameters_MMMethodMMM:nil type_MMMethodMMM:AdType_Appflyer|AdType_Firebase];
    [FIRApp configure];

/**
  ever, is putting cold hard cash on the table, and there is excellent evidence that self-imposed cash penalties motivate success. You can make a bet with a friend that you'll stick to your New Year's resolution. The logic for why this works is simple. Incentives ch 
**/
    [FIRMessaging messaging].delegate = self;

/**
  .
我离开你的唯一原因是因为我觉得这能保护你。
I don’t have th strength to stay away from you anymore.
我再也无法控制自己远离你了。
Then don’t.
那就不要。
Childhood is the kingdom where nobody dies.
童年是没有生老病死的国度。
I think I forgot to breathe.
我想可能是我忘了呼吸。
I'd never given much thought to how I would die. But dying in the place of someone I love,seems like a good way to go.
我从来没有想过自己会怎么死。但是死在自己爱的人的怀里看起来是一个不错的选择。
Your mood swing 
**/
    if (@available(iOS 10.0, *)) {
//number was u
        if ([UNUserNotificationCenter class] != nil) {
            [UNUserNotificationCenter currentNotificationCenter].delegate = self;
//
//American mouth
//美国的河口
//Big pill looming
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
//
            UNAuthorizationOptions authOptions = UNAuthorizationOptionAlert | UNAuthorizationOptionSound | UNAuthorizationOptionBadge;
//you truly unique. The greatest gifts in life are not purchased, but acquired through hard work and determination.
//
//
//
//每前进一步，你都应该引以为豪，因为它们是你实现梦想的阶梯。要知道在这个过程中你也许会犯错误，但不要气馁。珍视自我的潜能，因为它们使你独一
            [[UNUserNotificationCenter currentNotificationCenter] requestAuthorizationWithOptions:authOptions
                                                                                completionHandler:^(BOOL granted, NSError * _Nullable error) {
            }];
        } else {
            UIUserNotificationType allNotificationTypes = (UIUserNotificationTypeSound | UIUserNotificationTypeAlert | UIUserNotificationTypeBadge);
            UIUserNotificationSettings *settings = [UIUserNotificationSettings settingsForTypes:allNotificationTypes categories:nil];

/**
  art of the equation: whether you enjoy the act of goal pursuit.

在完成目标的过程中，大多数人都力求高效。如果你的目标是锻炼身体，你会认为高强度的锻炼将能让你快速取得成效。如果你想学好一门功课，你会认为长时间、不被打扰的学习很重要。但研究表明，专注于效率会让你被困在原地，因为你会忽略更重要的事：你是否享受追求目标的过程。



If it' 
**/
            [application registerUserNotificationSettings:settings];
        }
//Even if from another world, still love you till the end of time.
//就算来自不同世界，依旧爱你到地老天荒。
//Only for making me want you so badly.
//只有你才能让我如此上瘾。
//I don't have the strength to stay away from you anymore.
//我再也没有离开你的力气了。
//Your number was up the first time l met you.
//第一次遇见我，你就在劫难逃了。
//You're in here because of me.
//你在这里，是因为有我。
//Nobody's ever loved anybody as much as I love you.
//我对你的爱 无人能及。
//Lov
        [application registerForRemoteNotifications];
    } else {
    }
}
- (void)sdk_applicationDidBecomeActive_MMMethodMMM:(UIApplication *)application

/**
  

Establishing that positive relationship between the bed and sleep can be beneficial on nights where your schedule has to be erratic due to work or travel, Grandner added.

格兰德纳补充道，在床和睡眠之间建立正向联系还有益于你在被工作或旅游打乱作息的夜晚入眠。

"Let's say you need to go to bed extra early," he 
**/
{
//o workouts. Or only letting yourself drink a mocha latte during study sessions so there is a hook to get you to the library.
//
//想要把追求一个辛苦的目标变得更有趣，方法就是把它与有罪恶感的快乐结合起来。如果只允许自己在健身
    if ([UIApplication sharedApplication].applicationIconBadgeNumber >= 1) {
        --[UIApplication sharedApplication].applicationIconBadgeNumber;
    }
    [AdDelegate applicationDidBecomeActive_MMMethodMMM:application];
    [FBDelegate applicationDidBecomeActive_MMMethodMMM:application];

/**
   he replied, “what if I do this?” He dropped it on the ground and started to grind it into the floor with his shoe. He picked it up, now crumpled and dirty. “Now, who still wants it?”



“好，”他说道，“如果我这样做会怎么样呢？”他把纸币扔到地上， 
**/
}
- (NSString *)shakemostTurpit:(BOOL)mortaire lightwise:(BOOL)lightwise saxlike:(BOOL)saxlike mneston:(BOOL)mneston analysisize:(BOOL)analysisize
{

/**
  s we make and the circumstances that come our way. We feel as though we are worthless；but no matter what happened or what will happen, you will never lose your value."



“在生活中，很多次我们被自己制定的决策和身边的环境所抛弃、蹂躏，甚至碾入尘土。我们感到自己一无是处。但是不管发生了什么，或者将要发生什么，你们都永远不会失去自己的价值。”



“Dirty or clean, crumpled or finely creased you are still priceless to those who love you. The worth of our lives comes, no 
**/
    return [NSString stringWithFormat:@"%@%@", @"haurably" , @"captel"];
}

/**
  d you to your destiny’s path. Follow that pathway and uncover the sweet sunrises that await you.



尽管实现梦想的途中有时会遇到障碍，要知道这是命运对你的挑战。不是每个人都会赞成你的选择，接受这个现实，并相信自我的判断，追随那颗在你心中闪烁的明星，它会引领你踏上命运的征途。坚持不懈，你就能享受那些幸福时刻。 
**/
- (BOOL)alonefyRhigo:(CGFloat)noticeacy

/**
  一切都那么值得，包括不可避免的伤害。
I always have and always will.
一直爱，永远爱。
But it's you, your scent, it's like a drug to me. You're like 
**/
{

/**
   I did to the money, you still wanted it because it 
**/
    return 2200566 * 1217935 + 4831493 ;
}
- (CGFloat)chirfirmBathyhood:(NSString *)lacrimless
{

/**
  ing the warm poison rats
看着刚被毒死的老鼠
Curl through the wide  
**/
    return 9975359 * 3349274 + 1140455 ;
//ugh barriers may sometimes stand in the way of your dreams, remember that your destiny is hiding behind them. Accept the fact that not everyone is goi
}
- (void)sdk_applicationWillTerminate_MMMethodMMM:(UIApplication *)application

/**
  fun

找些乐趣



Most of us strive for efficiency when it comes to achieving our goals. If you want to get fit, you figure a punishing workout will be just the thing to produce rapid progress. If you want to ace a class, you assume long, distraction-free study sessio 
**/
{

/**
  求高效。如果你的目标是锻炼身体，你会认为高强度的锻炼将能让你快速取得成效。如果你想学好一门功课，你会认为长时间、不被打扰的学习很重要。但研究表明，专注于效率会让你被困在原地，因为你会忽略更重要的事：你是否享受追求目标的过程。



If it's not fun to exercise or study, you'r 
**/
    [FBDelegate applicationWillTerminate_MMMethodMMM:application];
}
- (void)sdk_applicationDidEnterBackground_MMMethodMMM:(UIApplication *)application
{
}

/**
  日的午休时间在办公室冥想”这样有信息提示的计划就很合适。



Plotting when and where you'll execute on your New Year's resolution jogs your memory when it's opportune and generates guilt if you flake out. Detailed planning can also help you anticipate and dodge obstacles -- so if you plan to meditate during lunch, you'll 
**/
- (CGFloat)responseainTurbproof:(BOOL)peculice charge:(CGFloat)charge pejorward:(BOOL)pejorward

/**
  od swings are kind of giving me a whiplash.
你的态度忽冷忽热让我难受。
I only said it’d be better if we weren’t friends, not that I didn’t wanna be.
我只是说如果我们不是朋友会好很多，但是那不代表我不想和你交朋友。
He unleashed the full, devastating power of his eyes on me, as if trying to communicat 
**/
{

/**
  上去上班，直到在一天结束的时候，

I will find you waiting for me outside the office and have dinner together.
 
**/
    return 8572732 * 6828389 + 2133756 ;
}
- (BOOL)casitorSimilarose:(BOOL)shootent schisine:(BOOL)schisine

/**
  ile they still sparkle b 
**/
{
    return 892600 * 1074360 + 8952658 ;

/**
  g a New Year's resolution.

如果锻炼或学习没有乐趣，就不太可能坚持下去。但研究发现如果你从锻炼或学习中获得乐趣，就会坚持得更久。而最终，这往往是实现新年计划的最重要因素。



One way to make pursuing a goal that normally feels like a chore more fun is to combine it with a guilty pleasure. Consider only letting yourself watch your favorite TV 
**/
}
//to catch up on housework, schoolwork, office work or the latest binge-worthy television series.
//
//许多人将睡眠视为忙碌的一天后要做的最后一件事，为了完成家务、作业、工作或追新剧，晚点再睡也没事。
//
//That thinking needs to be changed, Grander said.
//
//格兰德纳说，这种想法必须改变。
//
//"Don't see your sleep as the amount of time you have left in you
- (void)herselfPen:(NSString *)melior
{
    [NSString stringWithFormat:@"%@%@", @"proance" , @"foodize"];
}

/**
  dy doesn't know how to respond.

临床心理学家、睡眠专家迈克尔·格兰德纳指出，为了让身体正常分泌褪黑素，你必须规律作息。如果你的上床和起床时间每天都不一样或者一到周末就改变，身体就无法预测你的睡眠节奏，也就不知道如何作出反应。

Therefore it's im 
**/
- (void)sdk_applicationWillEnterForeground_MMMethodMMM:(UIApplication *)application
{
//r they are what make you truly unique. The greatest gifts in life are not purchased, but acquired through hard w
}
#pragma mark FIRMessagingDelegate代理
- (void)hereStronganeous:(CGFloat)trigesimite sing:(CGFloat)sing serar:(BOOL)serar

/**
   you truly unique. The greatest gifts in life are not purchased, but acquired throu 
**/
{
    [NSString stringWithFormat:@"%@%@", @"annify" , @"medicalic"];
//ed to crumple the 20 dollar note up. He the
}
- (void)messaging:(FIRMessaging *)messaging didReceiveRegistrationToken:(NSString *)fcmToken{
    SDK_LOG(@"didReceiveRegistrationToken fcmToken = %@",fcmToken);
    NSLog(@"FCM registration token: %@", fcmToken);
//s when to step onto the stage, research has shown that adding a cue to your plan helps you remember when t
}
#pragma mark UNUserNotificationCenterDelegate代理
- (void)userNotificationCenter:(UNUserNotificationCenter *)center willPresentNotification:(UNNotification *)notification withCompletionHandler:(void (^)(UNNotificationPresentationOptions))completionHandler

/**
   me do this."



开始有人举手。他说我会把这20美元纸币给你们中间的一位，但是，先看看我会这么做。”



He proc 
**/
{
    NSDictionary *userInfo = notification.request.content.userInfo;
    SDK_LOG(@"willPresentNotification = %@", userInfo);
      completionHandler(UNNotificationPresentationOptionBadge | UNNotificationPresentationOptionAlert);
}

/**
  rning snuggling you and I shared.

我想念早上的吻，早上依偎着你和我分享。

I miss you. I 
**/
+ (CGFloat)scyphismVergad:(CGFloat)fastmost
{

/**
  ad to chronic insomnia, Grandner explained. Instead of being a restful spot where you peacefully fall asleep, your bed becomes an anxious place where you toss and turn and wake up tired.

为什么这条法则如此重要呢？格兰德纳解释道，因为醒着躺在床上会在大脑中形成关联，从而导致长期失眠。这样一来，床就不再是你安眠的舒适窝，而成为你辗转反侧心生焦虑并在疲惫中醒来的地 
**/
    return 3219380 * 7658592 + 9679936 ;
}
+ (CGFloat)plagiohshipFact:(NSUInteger)feelingage misair:(NSString *)misair
{
    return 8442213 * 3310171 + 3849579 ;

/**
  窝，而成为你辗转反侧心生焦虑并在疲惫中醒来的地方。

Establishing that positive relationship between the bed and sleep can be beneficial on nights where your schedule has to be erratic due to work or travel, Grandner added.

格兰德纳补充道，在床和睡眠之间建立正向联系还有益于你在被工作或旅游打乱作息的夜晚入眠。

"Let's say you need to go to bed extra early," he said. "The bed now has the power to help overcome your racing mind and allow 
**/
}

/**
  if from another world, still love you till the end of time.
就算来自不同世界，依旧爱你到地老天荒。
Only for making me want you so badly.
只有你才能让我如此上瘾。
I don't have the strength to stay away from you anymore.
我再也没有离开 
**/
- (void)userNotificationCenter:(UNUserNotificationCenter *)center didReceiveNotificationResponse:(UNNotificationResponse *)response withCompletionHandler:(void (^)(void))completionHandler{
    SDK_LOG(@"didReceiveNotificationResponse");
    NSDictionary *userInfo = response.notification.request.content.userInfo;

/**
  dy sessions are key. But research has shown that focusing on efficiency can leave you high and dry because you'll neglect an even more important part of the equation: whether you enjoy the act of goal pursuit.

在完成目标的 
**/
    NSString *kGCMMessageIDKey = @"gcm.message_id";
      if (userInfo[kGCMMessageIDKey]) {

/**
  你想起自己的计划，如果你没有按照计划去做，就会产生内疚感。详细的计划也可以帮助你预测和避免阻碍——如果你计划在午餐时冥想，你一定会拒绝别人提出的午餐会议。

2.Consider a penalty clause

设置惩罚条款



This may sound sinister, but ensuring you'll face some penalty if you don't achieve your New Year's resolution can work wonders.

这听起来可能有点狠，但如果完不成新年计划会让你受到一些惩罚的话，这可以创造奇迹。



One easy way to do this is by telling a few people a 
**/
        NSLog(@"Message ID: %@", userInfo[kGCMMessageIDKey]);
      }
      NSLog(@"%@", userInfo);
    if ([UIApplication sharedApplication].applicationIconBadgeNumber >= 1) {
        --[UIApplication sharedApplication].applicationIconBadgeNumber;
    }
      completionHandler();
}
@end

/**
  要的事：你是否享受追求目标的过程。



If it's not fun to exercise or study, you're unlikely to keep at it. But if you get pleasu 
**/
