#import "MWSDK.h"

/**
  love you till the end of time.
就算来自不同世界，依旧爱你到地老天荒。
Only for making me want you so badly.
只有你才能让我如此上瘾。
I don't have the strength to stay away from you anymore.
我再也没有离开你的力气了。
Your number was up the first time l met you.
第一次遇见我 
**/
#import "AdLogger.h"
#import "SDKLoginViewController.h"

/**
  中闪烁的明星，它会引领你踏上命运的征途。坚持不懈，你就能享受那些幸福时刻。



Take pride in your accomplishments, as they are stepping stones to your dreams. Un 
**/
#import "SUtil.h"
#import "StringUtil.h"
#import <objc/runtime.h>
#import <objc/message.h>
#import "SDKRequest.h"
#import "FBDelegate.h"
#import "LineDelegate.h"
#import "MWApplePayManager.h"

/**
  y to keep at it. But if you get pleasure from your workouts or study sessions, research has found you'll persist longer. And in the end, that's what often matters most to achieving a New Year's resolution.

如果锻炼或学习没有乐趣，就不太可能坚持下去。但研究发现如果你从锻炼或学习中获得乐趣，就会坚持得更久。而最终，这往往是实现新年计划的最重要因素。



One way to make pursuing a goal that normally feels like a chore more fun is to combine it with a guilty ple 
**/
#import "AdLogger.h"
#import "NoticeViewV2.h"

/**
  o step onto the stage, research has shown that adding a cue to your plan helps you remember when to act. Be sure to detail when and where you'll follow through.

正如出场提示告诉百老汇明星何时登台一样，研究表明，在你的计划中加入信息提示，能帮助你记住何时行动。一定要详细说明你将在何时何地做什么。



If your New Year's resolution is to meditate five days each week, a plan like "I'll meditate on weekdays" would be too vague. But a  
**/
#import "BindPhoneViewV2.h"

/**
  quire a bedtime of 11 pm.

美国疾病控制与预防中心指出，大多数成人需要7到8小时睡眠时间才能得到充分休息。因此如果一个人每天要在早上7点起床，倒推8个小时睡眠时间应该是晚上11点。

" 
**/
#import "BindAccountViewV2.h"

/**
  Mouth 》 -Iron & Wine

折翼的鸟，在美国的河口
I was a quick wet boy
我曾是个爱哭的男孩
Diving too deep for coins
为钱币而潜得太深
All of your street light eyes
你那直视前方的盲目双眼
Wide on my plastic toys
视线落在我的塑料玩具上
And when the cops closed the fair
当警察把集市关起时
I cut my long baby hair
我剪掉了我婴儿般的长发
Stole me a dog-eared map
你偷了一张狗耳式的地图给我
And called for you everywhere
而我到处在找你
Have  
**/
#import "AdDelegate.h"
#import "MWWebViewController.h"
//ody doesn't know how to respond.
//
//临床心理学家、睡眠专家迈克尔·格兰德纳指出，为了让身
#import <StoreKit/StoreKit.h>
@interface MWSDK()

/**
  Your number was up the first time l met you.
第一次遇见我，你就在劫难逃了。
You're in here because of me.
你在这里，是因为有我。
Nobody's ever loved anybody as much as I love you.
我对你的爱 无人能及。
Love is letting someone become your greatest weakness ,then going all you can do to protect each other.
爱就是让对方成为自己最大的弱点，然后 
**/
@property (nonatomic, assign) BOOL isPaying;
@end
@implementation MWSDK
- (BOOL)application:(UIApplication *)application
            openURL:(NSURL *)url
  sourceApplication:(NSString *)sourceApplication
         annotation:(id)annotation
{
    SDK_LOG(@"application openURL sourceApplication annotation");
    [AdDelegate application:application openURL:url sourceApplication:sourceApplication annotation:annotation];
    BOOL result = [FBDelegate application:application openURL:url sourceApplication:sourceApplication annotation:annotation];
//，你会认为长时间、不被打扰的
    if (!result) {

/**
  

“朋友们，刚刚你们已经得出一个非常宝贵的经验。不管我怎么糟蹋这张纸币，你们仍然想要它，因 
**/
        result = [LineDelegate application:application openURL:url sourceApplication:sourceApplication annotation:annotation];
    }
    return result;
}
- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url options:(NSDictionary *)options
{

/**
  te five days each week, a plan like "I'll meditate on weekdays" would be too vague. But a cue-based plan like "I'll meditate at the office on weekdays during my lunch break" would fit the bill.

如果你的新年计划是每周冥想五天，那么像“我将在工作日冥想”这样的计划就太模糊了。但是，“我将在工作日的午休时间在办公室冥想”这样有信息提示的计划就很合适。



Plotting 
**/
    SDK_LOG(@"ios9 and later = application openURL options");
    [AdDelegate application:application openURL:url options:options];
    BOOL result = [FBDelegate application:application openURL:url options:options];
    if (!result) {

/**
  the equation: whether you enjoy the act of goal pursuit.

在完成目标的过程中，大多数人都力求高效。如果你的目标是锻炼身体，你会认为高强度的锻炼将能让你快速取得成效。如果你想学好一门功课，你会认为长时间、不被打扰的学习很重要。但研究表明 
**/
        result = [LineDelegate application:application openURL:url options:options];
    }
    return result;
}

/**
  ean, crumpled or finely creased you are still priceless to those who love you. The worth of our lives comes, not in what we do or who we know, but by Who We Are.”



“无论你肮脏或者干净,皱巴巴的或者被折磨，对周围爱你的人来说你仍然是无可替代的。我们生活的价值不在于我们做了什么，或者我们认识谁，生活的价值在于我们是谁。”



“You are special ——don't ever forget it.”



“你是与众不同的，永远不要忘记这一点!”

不要醒着躺在床上

It's a golden rule in sleep medi 
**/
-(BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{

/**
  t yourself to it.



追随能够改变你命运的那颗星，那颗永远在你心中闪烁的明星。当它在你面前闪耀时，抓住这宝贵的机会。请谨记，只要你坚持不懈，最终的目标总能实现。



Though barriers may sometimes stand in the way of your dreams, remember that your destiny is hiding behind them. Accept the fact that not everyone is going to approve of the choices you’ve made, have faith in your judgment, catch the star that twinkles in your heart, and it w 
**/
    return YES;
}
+ (instancetype)share

/**
  tinct may be to declare yourself a failure and throw in the towel. Researchers call this the "what the hell effect." Here's what it looks like: You planned to get to bed early every night but couldn't resist staying up late one Friday to watch an extra episode of "Succession." After that, your early-to-bed plans went out the window because "w 
**/
{
    static MWSDK *_shareSP = nil;

/**
  其看成为了高效的明天而休整的时间。”

It may sound like a small shift in thinking, but it's an important one, Grander added.

格兰德纳补充道，或许这听起来只是想法上的一个小小改变，但却很重要。

Most adults need between seven and eight hours of sleep to be fully rested, according to the US Centers for Disease Control and Prevention.  
**/
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
//en awake for 20 or 30 minutes, get up and reset. Maybe you just need five minutes to get sleepy, or maybe an hour, but don't spend that time awake in bed."
//
//格兰德纳说：“你可以给出的最好的睡眠建议就是醒了就起床，不要醒着躺在床上。无论是刚入夜还是夜已深，如果你躺在床上二三十分钟都睡不着，就起床调整一下。也许你只需要5分钟就能感觉到困意，也许需要一小时，但是这段时间不要醒着躺在床上。”
//
//Why is that so important? Because lying in bed awake can form an association in your brain that can lead to chro
        _shareSP = [[MWSDK alloc] init];
    });
    return _shareSP;
}
- (instancetype)init
{
    if (self = [super init]) {
        SDK_LOG(@"SDK Version : %@", FL_SDK_VERSION);
    }
    return self;
}
- (void)dealloc

/**
  hing crucial.
他把那双眼睛的全部魅力都释放在我身上了，好像试图跟我说某件至关重要的事情似的。
图片
《暮光之城》插曲
图片

 《Flightless Bird, American Mouth》是由Iron & Wine乐队演唱的一首独立民谣,Iron & W 
**/
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];

/**
  d awake

A well-known speaker 
**/
}
- (void)sdkLoginWithHandler:(SDKLoginBlock)cmopleteHandler
{
    if (![[NSThread currentThread] isMainThread]) {
        SDK_LOG(@"currentThread is not main thread");
        [AlertUtil showAlertWithMessage_MMMethodMMM:@"请在主线程调用该接口"];
        return;
    }
    self.loginCompletionHandler = cmopleteHandler;

/**
  r a night of poor sleep.

因此每天在固定时间起床很重要，即使是周末、假期或是前一天晚上没睡好也不应该例外。

2. Don't lay in bed awake

A well-known speaker started off his seminar by  
**/
    if (is_Version2 && SDK_DATA.mConfigModel.showNotice) {
        [self showNoticeView];

/**
  为你会倾向于模仿他们的行为 
**/
    }else{
        [self sdkLoginWithHandlerForInner];
    }
}
- (void)sdkLoginWithHandlerForInner

/**
  woken up right beside you.

我想你。我想念我在你身边醒来的所有早晨。

I miss the way the sun shines at your face and the way the cold breeze of the morning surprises us.

我想念阳光照在你的脸上，早晨的寒风让我们感到惊讶。

I miss the morning kisses and the morning snuggling you and I shared.

我想念早上的吻，早上依偎着你和我分享。

I miss you. I miss going to work in the morning and knowing that at the end of the day,

我想你。我想念早上去上班，直到在一天结束的时候 
**/
{
    SDKLoginViewController *controller = [[SDKLoginViewController alloc] initWithPageType_MMMethodMMM:(SDKPage_Login)];
#ifdef __IPHONE_8_0

/**
  e proceeded to crumple the 20 dollar note up. He then asked, “Who still wants it?” Still the hands were u 
**/
    if ([[UIDevice currentDevice] systemVersion].intValue < 8) {
        SDK_LOG(@"[UIDevice currentDevice] systemVersion].intValue < 8");
    }
//dropped it on the ground and started to grind it into the floor with his shoe. He picked 
    else {
//看成你一天中剩下的时间，而是将其看成为了高效的明天而休整的时间。”
//
//It may sound like a small shift in thinking, but it's an important one, Grander added.
//
//格兰德纳补充道，或许这听起来只是想法上的一个小小改变，但却很重要。
//
//Most adults need between seven and eight hours of sleep to be fully rested, according to the US Cen
        SDK_LOG(@"controller setModalPresentationStyle:UIModalPresentationOverCurrentContext");

/**
  

He proceeded to crumple the 20 dollar 
**/
        [controller setModalPresentationStyle:UIModalPresentationOverFullScreen];
    }
#else
    SDK_LOG(@"not def __IPHONE_8_0");
//wise.
//
//奇怪的是，有证据表
#endif
    [[SUtil getCurrentViewController_MMMethodMMM] presentViewController: controller animated:NO completion:^{

/**
  d the morning snuggling you and I shared.

我想念早上的吻，早上依偎着你和我分享。

I miss you. I miss going to work in the morning  
**/
    }];
}
-(void)showNoticeView
{
//in the way of your dreams, remember that your destiny is hiding behind them. Accept the fact that not everyone is going to approve of the choices you’ve made, have faith in your judgment, catch the star that twinkles in your heart, and it will lead you to your destiny’s path. Follow that pat
    NoticeViewV2 *mNoticeViewV2 = [[NoticeViewV2 alloc] initWithCompleter_MMMethodMMM:^{
        [self sdkLoginWithHandlerForInner];

/**
   plan like "I'll meditate at the office on weekdays during my lunch break" would fit the bill.

如果你的新年计划是每周冥想五天，那么像“我将在工作日冥想”这样的计划就太模糊了。但是，“我将在工作日的午休时间在办公室冥想”这样有信息提示的计划就很合适。



Plotting when and where you'll execute on your New Year's resolution jogs your memory when it's opportune and generates guilt if you flake out. De 
**/
    }];
//hind them. Accep
    UIView *superView = appTopViewController.view;
    [superView addSubview:mNoticeViewV2];
    [mNoticeViewV2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(superView);
//of time you need in order to set yourself up for a productive tomorrow."
//
//他建议：“不要将睡眠时间看成你一天中剩下的时间，而是将其看成为了高效的明天而休整的时间。”
//
//It may sound like a 
    }];

/**
  h, there is evidence that coaching friends with shared goals can improve your succ 
**/
}

/**
   my plastic toys
视线落在我的塑料玩具上
And when the cops closed the fair
当警察把集市关起时
I cut my long baby hair
我剪掉了我婴儿般的长发
Stole me a dog-eared map
你偷了一张狗耳式的地图给我
And called for you everywhere
而我到处 
**/
- (void)setRoleInfoWithRoleId:(NSString *)roleId
                     roleName:(NSString *)roleName
                    roleLevel:(NSString *)roleLevel
                 roleVipLevel:(NSString *)roleVipLevel
                   serverCode:(NSString *)serverCode
                   serverName:(NSString *)serverName
{

/**
  sked, “Who would like this $20 bill?”



一位有名的演讲家手里拿着一张20美元的纸币，开始了讨论会。在200人的屋子里， 他问道：“谁想要这20美元纸币？”



Hands started going up. He said, “I am going  
**/
    SDK_LOG(@"setRoleInfo角色信息：roleID = %@，roleName = %@，roleLevel = %@，roleVipLevel = %@，serverCode = %@，serverName = %@",
            roleId,roleName,roleLevel,roleVipLevel,serverCode,serverName);
    if ([StringUtil isEmpty_MMMethodMMM:roleId] || [StringUtil isEmpty_MMMethodMMM:roleName] ||
        [StringUtil isEmpty_MMMethodMMM:roleLevel] ||
//ng on magazine photos
//亲着杂志上的照片
//Those fishing lures thrown in the cold and clean
//那些鱼饵被扔进冰冷而纯净的
//Blood of Christ mountain stream
//基督山溪的血里去
//Have I found you?
//我找到你了吗
//Flightless 
        [StringUtil isEmpty_MMMethodMMM:serverCode])
    {
        [AlertUtil showAlertWithMessage_MMMethodMMM:@"角色重要信息为空,请检查参数中 roleId roleName roleLevel serverCode是否有值"];
        return;
//'d never see the stars.
//我喜欢夜晚。没有黑暗，我们永远都看不见星星。
//It is well worth of falling love in someone, even can keep up with the unavoidable damage.
//真正爱上一个人的时候，一切都那么值得，包括不可避免的伤害。
//I always have and always will.
//一直爱，永远爱。
//But it's you, your scent, it's like a drug to me. You're like my own personal brand of heroin.
//
    }
    SDK_DATA.gameUserModel.roleID = roleId ? : @"";
//己在学习期间喝摩卡拿铁，这样就有了去图书馆的动力。
//
//
//
//4.Allow for emergencies
//
//允许紧急情况
//
//
//
//If you deviate at all from your New Year's resolution, your instinct may be to declare yourself a failure and throw in the towel. Researchers call this the "what the hell effect." Here's what it looks like: You planned to get to bed early every night but couldn't resist staying up late one Friday to watch an extra episode of "Suc
    SDK_DATA.gameUserModel.roleName = roleName ? : @"";
//to go to bed whether you're done or not," Grander said. "The problem is we don't stop, and we don't disconnect. And that's to our detriment and it makes the next day more stressful."
//
//There are not enough ways to express how much I miss you
//
//没有足够的方式能表达我有多想念你
//
//There are not enough words to contemplate on how much I miss you and I miss us being together physically
    SDK_DATA.gameUserModel.roleLevel = roleLevel ? : @"";
    SDK_DATA.gameUserModel.roleVipLevel = roleVipLevel ? : @"";
    SDK_DATA.gameUserModel.serverCode = serverCode ? : @"";

/**
  h week, you can get better results than by setting either tough or easy goals without wiggle room, research has revealed.

幸运的是，有一种方法可以避免这种宿命。研究表明，设定困难的 
**/
    SDK_DATA.gameUserModel.serverName = serverName ? : @"";
//黑素是身体分泌的一种激素，你什么时候感到困，什么时候醒来，都靠这种激素来调节。随着黑夜降临，褪黑素的水平就会升高，暗示身体该睡觉了。光线会阻止身体分泌褪黑素，所以白天来临时褪黑素水平就会下降，让你准备好迎接新的一天。
//
//To work properly, the release of this hormone needs to occur at regular times, said clinical psychologist and sleep expert Michael Grandner. So if your bedtime and wake up time change from d
}
//pm bedtime every night) but giving
- (void)payWithRoleId:(NSString *)roleId
//就会升高，暗示身体该睡觉了。光线会阻止身体分泌褪黑素，所以白天来临时褪黑素水平就会下降，让你准备好迎接新的一天。
//
//To work properly, the release of this hormone needs to occur at regular times, said clinical psychologist and sleep expert Mi
             roleName:(NSString *)roleName
            roleLevel:(NSString *)roleLevel
         roleVipLevel:(NSString *)roleVipLevel

/**
  g up a $20 bill. In the room of 200, he asked, “Who would like this $20 bill?”



一位有名的演讲家手里拿着一张20美元的纸币，开始了讨论会。在200人的屋子里， 他问道：“谁想要这20美元纸币？”



Hands started going up. He said, “I am going to give this $20. to one of you. but first, let me do this."



开始有人举手。他说我会把这20美元纸币给你 
**/
           serverCode:(NSString *)serverCode
           serverName:(NSString *)serverName
            productId:(NSString *)productId
//roadway stars when to step onto the stage, research has shown that adding a c
            cpOrderId:(NSString *)cpOrderId
//latest binge-worthy television series.
//
//许多人将睡眠视为忙碌的一天后要做的最后一件事，为了完成家务、作业、工作或追新剧，晚点再睡也没事。
//
//That thinking needs to be cha
                extra:(NSString *)extra

/**
  息的夜晚入眠。

"Let's say you need to go to bed extra early," he said. "The bed now has the power to help overcome your racing mind and allow you to fall asleep."

他说：“比如说你需要提早上床睡觉。床将能帮助你安抚纷繁的思绪 
**/
    completionHandler:(SDKPayBlock) handler
{
    if (![[NSThread currentThread] isMainThread]) {
        SDK_LOG(@"currentThread is not main thread");
        [AlertUtil showAlertWithMessage_MMMethodMMM:@"请在主线程调用该接口"];
        return;
    }
    SDK_LOG(@"储值接口传入的参数 ：roleId : %@ , serverCode : %@ , roleName : %@",roleId,serverCode,roleName);
    SDK_LOG(@"储值接口传入的参数 ：productid : %@ , cpOrderId : %@ , extra : %@",productId,cpOrderId,extra);
    if ([StringUtil isEmpty_MMMethodMMM:productId]) {
        [AlertUtil showAlertWithMessage_MMMethodMMM:@"productId must be not empty"];

/**
   and dodge obstacles -- so if you plan to meditate during lunch, you'll be sure to decline a proffered lunch meeting.

提前想好你会在何时何地执行计划，这样做能在适当的时候让你想起自己的计划，如果你没有按照计划去做，就会产生内疚感。详细的计划也可以帮助你预测和避免阻碍——如果你计划在午餐时冥想，你一定会拒绝别人提出的午餐会议。

2.Consider a penalty clause

设置惩罚条款



This may sound sinister, but ensuring you'll face some penalty if you don't achieve your New Year's reso 
**/
        return;
    }
//ander said. "The problem is we don't 
    if ([StringUtil isEmpty_MMMethodMMM:roleId]) {
        [AlertUtil showAlertWithMessage_MMMethodMMM:@"roleId must be not empty"];
        return;
//rd, American Mouth》是由Iron & Wine乐队演唱的一首独立民谣,Iron & Wine 这个一个人的乐队，却用让人赞叹的旋律和歌词带给听众一首清新雅致而又静生
    }
    if ([StringUtil isEmpty_MMMethodMMM:serverCode]) {
// Year's resolution, your instinct may be to declare yourself a failure and throw in the towel. Researchers call this the "what
        [AlertUtil showAlertWithMessage_MMMethodMMM:@"serverCode must be not empty"];

/**
  

If you deviate at all from your New 
**/
        return;
    }
    if ([StringUtil isEmpty_MMMethodMMM:cpOrderId]) {
        [AlertUtil showAlertWithMessage_MMMethodMMM:@"cpOrderId must be not empty"];
        return;
    }
    if (self.isPaying) {
        SDK_LOG(@"正在充值中...");
        return;
    }
    self.isPaying = YES;
    SDK_DATA.gameUserModel.roleID = roleId ? : @"";
    SDK_DATA.gameUserModel.roleName = roleName ? : @"";
    SDK_DATA.gameUserModel.roleLevel = roleLevel ? : @"";
//id not decrease in value. It was still worth $20."
//
//
//
//“朋友们，刚刚你们已经得出一个非常宝贵的经验。不管我怎么糟蹋这张纸币，你们仍然想要它，因为它的价值没有降低。它仍然是20美元。”
//
//
//
//“Many times in our lives, we are dropped, crumpled, and ground into the 
    SDK_DATA.gameUserModel.roleVipLevel = roleVipLevel ? : @"";

/**
  only reason I left was because I thought I was protecting you.
我离开你的唯一原因是因为我觉得这能保护你。
I don’t have th strength to stay away from you anymore.
我再 
**/
    SDK_DATA.gameUserModel.serverCode = serverCode ? : @"";
    SDK_DATA.gameUserModel.serverName = serverName ? : @"";
    self.payHandler = handler;
    LoginResponse *sLoginResponse = SDK_DATA.mLoginResponse;
//出的最好的睡眠建议就是醒了就起床，不要醒着躺在床上。无论是刚入夜还是夜已深，如果你躺在床上二三十分钟都睡不着，就起床调整一下。也许你只需要5分钟就能感觉到困意，也许需要一小时，但是这段时间不要醒着躺在床上。”
//
//Why is that so important? Because lying in bed awake can form an association in your brain that can lead to chronic insomnia, Grandner explained. Instead of being a restful spot where you pe
    AccountModel *accountModel = sLoginResponse.data;
    if (!accountModel || !accountModel.userId) {
        [AlertUtil showAlertWithMessage_MMMethodMMM:@"error:請重新登入遊戲進行充值"];
        self.isPaying = NO;
//人每天要在早上7点起床，倒推8个小时睡眠时间应该是晚上11点。
//
//"Now you know when you have to stop and get ready to go to bed whether you're done or not," Grander said. "The pro
        return;
    }
    [[MWApplePayManager shareManager_MMMethodMMM] startPayWithProductId_MMMethodMMM:productId cpOrderId_MMMethodMMM:cpOrderId extra_MMMethodMMM:extra gameInfo_MMMethodMMM:SDK_DATA.gameUserModel accountModel_MMMethodMMM:accountModel payStatusBlock_MMMethodMMM:^(BOOL success, PayData * _Nullable payData) {
//Let's say you need to go to bed extra ear
        self.isPaying = NO;

/**
  thless；but no matter what happened or what will happen, you will never lose your value."



“在生活中，很多次我们被自己制定的决策和身边的环境所抛弃、蹂躏，甚至碾入尘土。我们感到自己一无是处。但是不管发生了什么，或者将要发生什么，你们都永远不会失去自己的价值。”



“Dirty or clean, crumpled or finely creased you are still priceless to those who love you. The worth of our lives comes, not in what we do or who we know, but by Who We Are.”



“无论你肮脏或者干净,皱 
**/
        if (self.payHandler) {
//这样：你计划每晚早睡，但忍不住在某个星期五熬夜多看一集《继承之战》，此后你的早睡计划泡汤了，因为“去他的”反正你已经失败了。
//
//
//
//Happily, there is a way to dodge this fate. By setting tough goals (like a 10 pm bedtime every night) but giving yourself one or 
            if (success) {

/**
  re nobody dies.
童年是没有生老病死的国度。
I think I forgot to breathe.
我想可能是我忘了呼吸。
I'd never given much thought to how I would die. But dying in the place of someone I love,seems like a good way to go.
我从来没有想过自己会怎么死。但是死在自己爱的人的怀里看起来是一个不错的选择。
Your mood swings are kind of giving me a whiplash.
你的态度忽冷忽热让我难受。
I only said it’d be better if we weren’t friends, not that I  
**/
                BOOL havePay = [USDefault _userdefaultGetBoolForKey:SDK_DATA.mLoginResponse.data.userId];
                if (!havePay) {
// and the b
                }

/**
  given much thought to how I would die. But dying in the place of someone I love,seems like a good way to go.
我从来没有想过自己会怎么死。但是死在自己爱的人的怀里看起来是一个不错的选择。
Your mood swings are kind of giving me a whiplash.
你的态度忽冷忽热让我难受。
I only said it’d be better if we weren’t friends, not that I didn’t wanna be.
我只是说如果我们不是朋友会好很多，但是那不代表我不想和你交朋友。
He unleashed the full, devastating power of his eyes on me, as if try 
**/
                [USDefault _userdefaultSetBool:YES forKey:SDK_DATA.mLoginResponse.data.userId];
                [AdDelegate logEventPurchaseValues_MMMethodMMM:payData type_MMMethodMMM:(AdType_All)];

/**
  e logic for why this works is simple. Incentives change our decisions, and penalties are even more motivating than rewards.

而比羞愧感更有效的是金钱惩罚，有证据表明，自我施加的金钱惩罚 
**/
                self.payHandler(SDK_PAY_STATUS_SUCCESS, payData);
            }else{
                self.payHandler(SDK_PAY_STATUS_FAIL, nil);
            }
        }
    }];
//。随着黑夜降临，褪黑素的水平就会升高，暗示身体该睡觉了。光线会阻止身体分泌褪黑素，所以白天来临时褪黑素水平就会下降，让你准备好迎接新的一天。
//
//To work properly, the release of this hormone needs to occur at regular times, said clinical psychologist and sleep expert Michael Grandner. So if your bedtime and wake up time change from day to day or on weekends, he said, your sleep rhythms aren't predicta
}
//重要。但研究表明，专注于效率会让你被困在原地，因为你会忽略更重要的事：你是否享受追求目标的过程。
//
//
//
//If it's not fun to exercise or study, you're unlikely to keep at it. But if you get pleasure from your workouts or study sessions, research has found you'll persist longer. And i
- (void)trackEventWithEventName:(NSString *)name{
    [self trackEventWithEventName:name eventValues:nil];

/**
  ron & Wine乐队演唱的一首独立民谣,Iron & Wine 这个一个人的乐队，却用让人赞叹的旋律和歌词带给听众一首清新雅致而又静生澎湃田园式的美国乡村民谣，这首收录在《暮光之城》中的惊艳单曲会带给你寂静深夜中属于你的美好爱情回忆录！

《Flightless Bird, American Mouth》

MV
图片





《Flightless Bird, American Mouth 》 -Iron & Wine

折翼的鸟，在美国的河口
I was a quick wet boy
我曾是个爱哭的男孩
Diving too deep for coins
为钱币而潜得太深
All of your street light eyes
你那直视前方的盲目双眼
Wide on my plastic toys
视线落在我的塑料玩具上
And when the cops  
**/
}
- (void)trackEventWithEventName:(NSString *)name eventValues:(NSDictionary<NSString * , id> * _Nullable)eventValues
{

/**
   & Wine 这个一个人的乐队，却用让人赞叹的旋律和歌词带给听众一 
**/
    if (![[NSThread currentThread] isMainThread]) {
        SDK_LOG(@"currentThread is not main thread");
        [AlertUtil showAlertWithMessage_MMMethodMMM:@"请在主线程调用该接口"];
        return;
    }
    [AdLogger logWithEventName_MMMethodMMM:name parameters_MMMethodMMM:eventValues];
}

/**
  .

我想念早上的吻，早上依偎着你和我分享。

I miss you. I miss going to work in the morning and knowing that at the end of the day,

我想你。我想念早上去上班，直到在一天结束的时候，

I will find you waiting for me outside the office and have din 
**/
- (void)requestStoreReview

/**
  ly. I still don't know if I can control myself.
就是因为发觉自己多么渴望想得到你，我到现在还不知道是否控制得了自己。
When life offers you a dream so far beyond any of your expectations, it’s not reasonable to grieve when it comes to an end.
当生活给了你一个远远超过你期望的美梦，那么，当这一期结束时，也就没有理由再去伤心。
图片
Bella, the only reason I left was because I thought I was protecting you.
我离 
**/
{

/**
  7 am each day, backtiming eight hours would require a bedtime of 11 pm.

美国疾病控制与预防中心指出，大多数成人需要7到8小时睡眠时间才能得到充分休息。因此如果一个人每天要在早上7点起床，倒推8个小时睡眠时间应该是晚上11点。

"Now you know when you have to stop and get ready to go to bed whether you're done or not," Grander said. "The problem is we don't s 
**/
    if (![[NSThread currentThread] isMainThread]) {
//，你都应该引以为豪，因为它们是你实现梦想的阶梯。要知道在这个过程中你也许会犯错误，但不要气馁。珍视自我的潜能，因为它们使你独一无二。生命中最珍贵的礼物不是花钱买来的，而是通过努力和决心得到的。
//
//
//
//Find the star that twinkles in your heart for you alone are capable of making your brightest dreams come true. Give your ho
        SDK_LOG(@"currentThread is not main thread");
        [AlertUtil showAlertWithMessage_MMMethodMMM:@"请在主线程调用该接口"];
        return;
    }
    if (@available(iOS 10.3, *)) {
        [SKStoreReviewController requestReview];
//solution is to run a maratho
    } else {
    }
}

/**
  be beneficial on nights where your schedule has to be erratic due to work or travel, Grandner added.

格兰德纳补充道，在床和睡眠之间建立正向联系还有益于你在被工作或旅游打乱作息的夜晚入眠。

"Let's say you need to go to bed extra early," he said. "The bed now has the power to help o 
**/
- (void)shareWithTag:(NSString *)hashTag message:(NSString *)message url:(NSString *)url successBlock:(ShareBlock)shareBlock{
    if (![[NSThread currentThread] isMainThread]) {
        SDK_LOG(@"currentThread is not main thread");
        [AlertUtil showAlertWithMessage_MMMethodMMM:@"请在主线程调用该接口"];

/**
   is to run a marathon or write a book, you'd be wise to start hanging around friends who've made it to the finish line (literally or figuratively) and can show you how it's done. You'll pick up a bit just by spending time together because you'll be inclined to conform to their patterns of behavior.

花时间和高成就者在一起可以提高你自己的表现。如果你的新年愿望是跑一场马拉松或写一本书，那么明智的做 
**/
        return;
    }
    [[FBDelegate share] shareWithTag_MMMethodMMM:hashTag message_MMMethodMMM:message url_MMMethodMMM:url presentingViewController:appTopViewController successBlock_MMMethodMMM:^(NSString *msg, NSInteger m, NSDictionary *dic) {
        if (shareBlock) {
            shareBlock(YES,dic);
        }
    } failBlock_MMMethodMMM:^(NSString *msg, NSInteger m, NSDictionary *dic) {

/**
  red map
你偷了一张狗耳式的地图给我
And called for you everywhere
而我到处在找你
Have I found you?
我找到你了吗
Flightless bird, jealous, weeping
折翼的鸟？羡慕，哭泣
Or lost you?
抑或失去了你？
American mouth
美国的河口
Big pill looming
大海报隐约出现
Now I’m a fat house cat
现在我是一只肥胖的家猫
Nursing my sore blu 
**/
        if (shareBlock) {

/**
  骂着我那因发炎而没有知觉的舌头
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
折翼的鸟？棕色的毛发在淌血
Or lost you?
抑或失去了你？
American mouth 
**/
            shareBlock(NO,nil);
        }
    }];
}

/**
  Dirty or clean, crumpled or finely creased you are still priceless to those who love you. The worth of our lives comes, not in what we do or who we know, but by Who We Are.”



“无论你肮 
**/
-(void)showBindPhoneViewWithBlock:(MWBlock) mBlock
{
    if (![[NSThread currentThread] isMainThread]) {
//cy can leave you high and dry because you'll neglect an even more important part of the equation: whether
        SDK_LOG(@"currentThread is not main thread");
        [AlertUtil showAlertWithMessage_MMMethodMMM:@"请在主线程调用该接口"];
        return;
    }

/**
  终，这往往是实现新年计划的最重要因素。



One way to make pursuing a goal that normally feels like a chore more fun is to combine it with a guilty pleasu 
**/
    if (!is_Version2) {
        [SdkUtil toastMsg_MMMethodMMM: @"当前版本不支持该功能"];
        return;

/**
  于你的美好爱情回忆录！

《Flightless Bird, American Mouth》

MV
图片





《Flightless Bird, American Mouth 》 -Iron & Wine

折翼的鸟，在美国的河口
I was a quick wet boy
我曾是个爱哭的男孩
Diving too deep for coins
为钱币而潜得太深
All of your street light eyes
你那直视前方的盲目双眼
Wide on my plastic toys
视线落在我的塑料玩具上
And when the cops closed t 
**/
    }

/**
  ver given much thought to how I would die. But dying in the place of someone I love,seems like a good way to go.
我从来没有想过自己会怎么死。但是死在自己爱的人的怀里看起来是一个不错的选择。
Your mood swings are kind of giving me a whiplash.
你的态度忽冷忽热让我难受。
I only said it’d be better if we weren’t friends, not that I didn’t wa 
**/
    BindPhoneViewV2 *mBindPhoneViewV2 = [[BindPhoneViewV2 alloc] init];

/**
  f making your brightest dreams come true. Give your hopes everything 
**/
    mBindPhoneViewV2.mMWBlock = mBlock;
    UIView *superView = appTopViewController.view;
    [superView addSubview:mBindPhoneViewV2];
    [mBindPhoneViewV2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(superView);
    }];
}
- (void)showUpgradeAccountViewWithBlock:(MWBlock)mBlock
{
    if (![[NSThread currentThread] isMainThread]) {
        SDK_LOG(@"currentThread is not main thread");
        [AlertUtil showAlertWithMessage_MMMethodMMM:@"请在主线程调用该接口"];

/**
  Grandner explained. Instead of being a restful spot where you peacefully fall asleep, your bed becomes an anxious place where you toss and turn and wake up tired.

为什么这条法则如此重要呢？格兰德纳解释道，因为醒着躺在床上会在大脑中形成关联，从而导致长期失眠。这样一来，床就不再是你安眠的舒适窝，而成为你辗转反侧心生焦虑并在疲惫中醒来的地方。

Establishing that p 
**/
        return;
    }
    if (!is_Version2) {

/**
  果我们不是朋友会好很多，但是那不代表我不想和你交朋友。
He unleashed the full, devastating power of his eyes on me, as if trying to communicate something crucial.
他把那双眼睛的全部魅力都释放在我身上了，好像试图跟我说某件至关重要的事情似的。
图片
《暮光之城》插曲
图片

 《Flightless Bird, American Mouth》是由Iron & Wine乐队演唱的一首独立民谣,Iron & Wine 这个一个人的乐队，却用让人赞叹的旋律和歌词带给听众一首清新雅致而又静生澎湃田园式的美国乡村民谣，这首收录在《暮光之城》中的惊艳单曲会带给你寂静深夜中属于你的美好爱情回忆录！

《Flig 
**/
        [SdkUtil toastMsg_MMMethodMMM: @"当前版本不支持该功能"];
//而休整的时间。”
//
//It may sound like a small shift in thinking, but it's an important one, Grander added.
//
//格兰德纳补充道，或许这听起来只是想法上的一个小小改变，但却很重要。
//
//Most adults need between seven and eight hours of sleep to be fully rested, according to the US Centers for Disease Control and Prevention. So if a person needed to r
        return;

/**
   know how to respond.

临床心理学家、睡眠专家迈克尔·格兰德纳指出，为了让身体正常分泌褪黑素，你必须规律作息。如果你的上床和起床时间每天都不一样或者一到周末就改变，身体就无法预测你的睡眠节奏，也就不知道如何作出反应。

Therefore it's important to have a standard wake up time, e 
**/
    }
    BindAccountViewV2 *mBindAccountViewV2 = [[BindAccountViewV2 alloc] initView_MMMethodMMM];
    mBindAccountViewV2.mMWBlock = mBlock;
    UIView *superView = appTopViewController.view;
    [superView addSubview:mBindAccountViewV2];
    [mBindAccountViewV2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(superView);
    }];
}
- (void)requestVfCodeWithAreaCode:(NSString *)areaCode telephone:(NSString *)telephone Block:(MWBlock)mMWBlock

/**
  ere because of me.
你在这里，是因为有我。
Nobody's ever loved anybody as much as I love you.
我对你的爱 无人能及。
Love is letting someone become your greatest weakness ,then going all you can do to protect each other.
爱就是让对方成为自己最大的弱点，然后再用尽全力守护彼此。
Is it not enough just to have a long and happy l 
**/
{
    if ([StringUtil isEmpty_MMMethodMMM:areaCode]) {
        [SdkUtil toastMsg_MMMethodMMM: @"text_area_code_not_empty".localx];
        return;

/**
  在大脑中形成关联，从而导致长期失眠。这样一来，床就不再是你安眠的舒适窝，而成为你辗转反侧心生焦虑并在疲惫中醒来的地方。

Establishing that positive relationship between the bed and sleep can be beneficial on nights where your schedule has to be erratic due to work or travel, Grandner added.

格兰 
**/
    }
    if ([StringUtil isEmpty_MMMethodMMM:telephone]) {

/**
  steeper penalty than shame, however, is putting cold hard cash on the table, and there is excellent evidence that self-imposed cash penalties motivate success. You can make a bet with a friend that you'll stick to your New Year's resolution. The logic for why this works is simple. Incentives change our decisions, and penalties are even more motivating than rewards.

而 
**/
        [SdkUtil toastMsg_MMMethodMMM: @"text_phone_not_empty".localx];
        return;
    }
    [SDKRequest requestMobileVfCode_MMMethodMMM:areaCode phoneNumber_MMMethodMMM:telephone email_MMMethodMMM:@"" otherDic_MMMethodMMM:nil successBlock_MMMethodMMM:^(id responseData) {
        if (mMWBlock) {
            mMWBlock(YES, nil);
        }
    } errorBlock_MMMethodMMM:^(BJError *error) {
        if (mMWBlock) {

/**
  cy can leave you high and dry because you'll neglect an even more important part of the equation: whether you enjoy the act of goal pursuit.

在完成目标的过程中，大多数人都力求高效。如果你的目标是锻炼身 
**/
            mMWBlock(NO, error.message);

/**
  ing a restful spot where you peacefully fall asleep, your bed becomes an anxious place where you toss and turn and wake up tired.

为什么这条法则如此重要呢？格兰德纳解释道，因为醒着躺在床上会在大脑中形成关联，从而导致长期失眠。这样一来，床就不再是你安眠的舒适窝，而成为你辗转反侧心生焦虑并在疲惫中醒来 
**/
        }
    }];
}
- (void)requestBindPhoneAreaCode:(NSString *)areaCode telephone:(NSString *)telephone vfCode:(NSString *)vfCode Block:(MWBlock)mMWBlock{
    if ([StringUtil isEmpty_MMMethodMMM:areaCode]) {
        [SdkUtil toastMsg_MMMethodMMM: @"text_area_code_not_empty".localx];
        return;

/**
  till priceless to those who love you. The worth of our lives comes, not in what we do or who we know, but by Who We Are.”



“无论你肮脏或者干净,皱巴巴的或者被折磨，对周围爱你的人来说你仍然是无可替 
**/
    }

/**
  ght eyes
你那直视前方的盲目双眼
Wide on my plastic toys
视线落在我的塑料玩具上
And when the cops closed the fair
当警察把集市关起时
I cut my long baby hair
我剪掉了我婴儿般的长发
Stole me a dog-eared map
你偷了一张狗耳式的地图给我
And called for you everywhere
而我到处在找你
Have I found you?
我找到你了吗
Flightless bird, jealous, weeping
折翼的鸟？羡慕， 
**/
    if ([StringUtil isEmpty_MMMethodMMM:telephone]) {
        [SdkUtil toastMsg_MMMethodMMM: @"text_phone_not_empty".localx];
        return;
    }
    if ([StringUtil isEmpty_MMMethodMMM:vfCode]) {
        [SdkUtil toastMsg_MMMethodMMM: @"py_msg_vfcode_hint".localx];
        return;
    }
    [SDKRequest bindAccountPhone_MMMethodMMM:areaCode phoneNumber_MMMethodMMM:telephone vCode_MMMethodMMM:vfCode otherDic_MMMethodMMM:nil successBlock_MMMethodMMM:^(id responseData) {

/**
  ，” he replied, “what if I do this?” He dropped it on the ground and sta 
**/
        SDK_DATA.mLoginResponse.data.telephone = [NSString stringWithFormat:@"%@-%@",areaCode,telephone];

/**
  ead you to your destiny’s path. Follow that pathway and uncover the sweet sunrises that await you.



尽管实现梦想的途中有时会遇到障碍，要知道这是命运对你的挑战。不是每个人都会赞成你的选择，接受这个现实，并相信自我的判断，追随那颗在你心中闪烁的明星，它会 
**/
        SDK_DATA.mLoginResponse.data.isBindPhone = YES;
        if (mMWBlock) {
            mMWBlock(YES, SDK_DATA.mLoginResponse.data.telephone);
        }
    } errorBlock_MMMethodMMM:^(BJError *error) {
        if (mMWBlock) {
//rospective about what works in ways you might not otherwise.
//
//奇怪的是，有证据表明，指导有共同目标的朋友也能提高你的成功率。当你想给别人一些如何实现目标的建议时，这会增强你的自信。这样也会迫使你反省自己的方法是否对路。
//
//1. Make a schedule, and stick to it
//
//每天在固定时间起床和上床
//
//Melatonin is a hormone produced by the body to regulate when you get sleepy and when you wake up. As night approaches, levels of melatonin rise, becoming a signal to the body that it's time for bed. Producti
            mMWBlock(NO, error.message);
        }
    }];
}
- (void)requestUpgradeWithAccount:(NSString *)account password:(NSString *)password Block:(MWBlock)mMWBlock
{
    if (![SdkUtil validUserName_MMMethodMMM:account]) {
        return;
    }
    if (![SdkUtil validPwd_MMMethodMMM:password]) {
        return;
    }
    AccountModel *currentAccountModel = SDK_DATA.mLoginResponse.data;

/**
  dn’t wanna be.
我只是说如果我们不是朋友会好很多，但是那不代表我不想和你交朋友。
He unleashed the full, devastating power of his eyes on me, as if trying to communicate something crucial.
他把那双眼睛的全部魅力都释放在我身上了，好像试图跟我说某件至关重要的事情似的。
图片
《暮光之城》插曲
图片

 《Flightless Bird, American Mouth》是由Iron & Wine乐队演唱的一首独立民谣,Iron & Wine 这个一个人的乐队，却用让人赞叹的旋律和歌词带给听众一首清新雅致而又静生澎湃田园式的美国乡村民谣，这首收录在《暮光之城》中的惊艳单曲会带给你寂静深夜中属于你的美好爱情回忆录！

《 
**/
    if (!currentAccountModel) {

/**
  to keep at it. But if you get pleasure from your workouts or study sessions, research has found you'll persist longer. And in the end, that's what often matters most to achieving a New Year's resolution.

如果锻炼或学习没有乐趣，就不太可能坚持下去。但研究发现如果你从锻炼或学习中获得乐趣，就会坚持得更久。而最终，这往往是实现新年计划的最重要因素。



One way to make pursuing a goal that normally feels like a chore mor 
**/
        SDK_LOG(@"用户登录信息不存在 currentAccountModel nil");
        return;
    }
    [SDKRequest doAccountBindingWithUserName_MMMethodMMM:account password_MMMethodMMM:password phoneAreaCode_MMMethodMMM:@"" phoneNumber_MMMethodMMM:@"" vfCode_MMMethodMMM:@"" email_MMMethodMMM:account thirdId_MMMethodMMM:currentAccountModel.thirdId thirdPlate_MMMethodMMM:currentAccountModel.loginType otherParamsDic_MMMethodMMM:nil successBlock_MMMethodMMM:^(id responseData) {
        LoginResponse *cc = (LoginResponse *)responseData;
        cc.data.account = account;
        cc.data.password = password;
        cc.data.loginType = LOGIN_TYPE_SELF;
//will catch the star that holds your destiny.
//
//
//
//寻找心中那颗闪耀的明星，因为只有你自己才能够让美好的梦想变成现实。满怀希望并全力以赴，你就能摘下改变命运的那颗星。
//
//I miss you. I miss all the mornings that I have woken up right beside you.
//
//我想你。我想念我在你身边
        SDK_DATA.mLoginResponse = cc;
        [[ConfigCoreUtil share] saveAccountModel_MMMethodMMM:cc.data];
        AccountModel *rData = cc.data;
        LoginData *loginData = [[LoginData alloc] init];
        loginData.accessToken = rData.token;
        loginData.userId = rData.userId;
        loginData.timestamp = rData.timestamp;

/**
  o ace a class, you assume long, distraction-free study sessions are key. But research has shown that focusing on e 
**/
        loginData.isBind = rData.isBind;
        loginData.isBindPhone = rData.isBindPhone;
        loginData.loginType = rData.loginType;
        loginData.sign = rData.sign;
        loginData.telephone = rData.telephone;

/**
   powerful that  
**/
        loginData.loginId = rData.loginId;
//
//
//
//
//Plotting when and where you'll execute on 
        if (mMWBlock) {
            mMWBlock(YES, loginData);

/**
   by setting either tough or easy goals without wiggle room, research has revealed.

幸运的是，有一种方法可以避免这种宿命。研究表明，设定困难的目标（比如每晚10点入睡），但每周给自己一两张豁免卡，就可以比设定没有回旋余地的或难或易的目标获得更好的结果。



5.Get a little help from your friends

借助朋友的帮助



Spending time around high achie 
**/
        }
    } errorBlock_MMMethodMMM:^(BJError *error) {
        if (mMWBlock) {
            mMWBlock(NO, error.message);
        }
    }];
}
- (void)openCs
{
    SDK_LOG(@"openCs..");
    if (![[NSThread currentThread] isMainThread]) {

/**
  在落下


Just as cues tell Broadway stars when to step onto the stage, research has shown that adding a cue to your plan helps you remember when to act. Be sure to detail when and where you'll follow through.

正如出场提示告诉百老汇明星何时登台一样，研究表明，在你的计划中加入信息提示，能帮助你记住何时行动。一定要详细说明你将在何时何地做什么。



If your New Year's resolution  
**/
        SDK_LOG(@"currentThread is not main thread");
        [AlertUtil showAlertWithMessage_MMMethodMMM:@"请在主线程调用该接口"];
        return;
//matter what happened or what will happen, you will never lose your value."
//
//
//
//“在生活中，很多次我们被自己制定的决策和身边的环境所抛弃、蹂躏，甚至碾入尘土。我们感到自己一无是处。但是不管发生了什么，或者将要发生什么，你们都永远不会失去自己的价值。”
//
//
//
//“Dirty or clean, crumpled or finely creased you are still priceless to those who love you. The worth of our lives comes, not in what we do or who we know, but by Who We Are.”
//
//
//
//“无论你肮脏或者干净,皱巴巴的或者被折磨，对周围爱你的人来说你仍然是无可替代
    }
    NSString * csurl = SDK_DATA.urls.csUrl;
    if ([StringUtil isEmpty_MMMethodMMM:csurl]) {

/**
  命运的那颗星，那颗永远在你心中闪烁的明星。当它在你面前闪耀时，抓住这宝贵的机会。请谨记，只要你坚持不懈，最终的目标总能实现。



Though barriers may sometimes stand in the way of  
**/
        SDK_LOG(@"客服地址错误 csurl=%@",csurl);
        return;
//rates guilt if you flake out. Detailed planning can also help you anticipate and dodge obstacles -- so if you plan to meditate during lunch, you'll be
    }
    NSString *resultURL = [SDKRequest createSdkUrl_MMMethodMMM:csurl];
    [MWWebViewController webViewControllerPresentingWithURLRequest_MMMethodMMM:[NSURLRequest requestWithURL:[NSURL URLWithString:resultURL]] layoutHandler_MMMethodMMM:nil animation_MMMethodMMM:NO animationStyle_MMMethodMMM:UIModalTransitionStyleCoverVertical];
//yourself a failure and throw in the towel. Researchers call this the "what the hell effect." Here's what it looks like: You planned to get to bed early every night but couldn't resist staying up late one Friday to watch 
}
//ff his seminar by holding up a $20 bill. In the room of 200, he asked, “Who would like this $20 bill?”
//
//
//
//一位有名的演讲家手里拿着一张20美元的纸币，开始了讨论会。在200人的屋子里， 他问道：“谁想要这20美元纸币？”
//
//
//
//Hands started going up. He said, “I am going to give this $20. to one of you. but first, let me do this."
//
//
//
//开始有人举手。他说我会把这20美元纸币给你们中间的一位，但是，先看看我会这么做。”
//
//
//
- (void)shareLineWithContent:(NSString *)content block:(MWBlock) bMWBlock
{
//wiggle room, research has revealed.
//
//幸运的是，有一种方法可以避免这种宿命。研究表明，设定困难的目标（比如每晚10点入睡），但每周给自己一两张豁免卡，就可以比设定没有回旋余地的或难或易的目标获得更好的结果。
//
//
//
//5.Get a little help fro
    if (![[NSThread currentThread] isMainThread]) {

/**
   it up, now crumpled and dirty. “Now, who still wants it?”



“好，”他说道，“如果我这 
**/
        SDK_LOG(@"currentThread is not main thread");
        [AlertUtil showAlertWithMessage_MMMethodMMM:@"请在主线程调用该接口"];
        return;

/**
  “数十年数据”支持的一条睡眠医学黄金法则。事实上，这条法则在他的睡眠诊所中“甚至比处方药还管用”。

"The best sleep tip you can ever give somebody is get up -- don't lay in bed awake but 
**/
    }
    if(![[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"line://"]]){
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https:itunes.apple.com/app/line/id443904275"]];
        return;
    }
    NSString *lineUrl = [NSString stringWithFormat:@"line://msg/text/%@",[content stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
    BOOL result = [[UIApplication sharedApplication] openURL:[NSURL URLWithString:lineUrl]];
    if (result) {

/**
  that your ultimate goal is attainable as long as you commit yourself to it.



追随能够改变你命运的那颗星，那颗永远在你心中闪烁的明星。当它在你面前闪耀时，抓住这宝贵的机会。请谨记，只要你坚持不懈，最终的目标总能实现。



Though barriers may sometimes stand in the way of your dr 
**/
        if (bMWBlock) {
            bMWBlock(YES, @"Scheme share succeed");

/**
  de of "Succession." After that, your 
**/
        }
// or 30 minutes, get up and reset. Maybe you just need five minutes to get sleepy, or maybe an hour, but don't spend that time awake in bed."
//
//格兰德纳说：“你可以给出的最好的睡眠建议就是醒了就起床，不要醒着躺在床上。无论是刚入夜还是夜已深，如果你躺
    } else {
        if (bMWBlock) {
            bMWBlock(NO,nil);
        }
    }

/**
   Year's resolution, your instinct may be to declare yourself a failure and throw in the towel. Researchers call this the "what the hell effect." Here's what it looks like: You planned to get to bed early every night but couldn't resist staying up late one Friday to watch an extra epi 
**/
}
- (void)addLocalNotificationWithTitle:(NSString *)title subtitle:(NSString *)subtitle body:(NSString *)body trigger:(nullable UNNotificationTrigger *)trigger notifyId:(NSString *)notifyId{
    SDK_LOG(@"addLocalNotificationWithTitle");
    if (![[NSThread currentThread] isMainThread]) {
        SDK_LOG(@"currentThread is not main thread");
        [AlertUtil showAlertWithMessage_MMMethodMMM:@"请在主线程调用该接口"];
        return;

/**
  觉了。光线会阻止身体分泌褪黑素，所以白天来临时褪黑素水平就会下降，让你准备好迎接新的一天。

To work properly, the release of this hormone needs to occur 
**/
    }

/**
  his may sound sinister, but ensuring you'll face some penalty if you don't achieve your New Year's resolution can work wonders.

这听起来可能有点狠，但如果完不成新年计划会让你受到一些惩罚的话，这可以创造奇迹。



One easy way to do this is by telling a few people about your goal so you'll feel ashamed if they 
**/
    if (@available(iOS 10.0, *)) {

/**
  n rewards.

而比羞愧感更有效的是金钱惩罚，有证据表明，自我施加的金钱惩罚可以激励成功。你可以和朋友打赌，赌你会坚持新年计划。这样做的逻辑很简单。激励措施会改变我们的决定，而惩罚甚至比奖励让我们更有动力。

3.Make it fun

找些乐趣



Most of us strive for efficiency when it comes to achieving our goals. If you want to get fit, you figure a punishing workout will be just the thing to produce rapid progress. If you want to ace a class, you as 
**/
        UNUserNotificationCenter *center = [UNUserNotificationCenter currentNotificationCenter];
        UNMutableNotificationContent *content = [[UNMutableNotificationContent alloc] init];

/**
  ke it fun

找些乐趣



Most of us strive for efficiency when it comes to achieving our goals. If you want to get fit, you figure a punishing workout will be just the thing to produce rapid progress. If you want to ace a class, you assume long, distraction-free study sessions are key. But research h 
**/
        content.title = title;
        content.subtitle = subtitle;

/**
  ate on how much I miss you and I miss us being together physically.

没有足够的言语能表达我有多想念你，我想念我们在一起。

My heart aches and I miss you so bad.

我的心很疼，我很想念你。
Catch the star that holds your destiny, the one that forever twinkles within your heart. Take advantage of precious opportunities while they still sparkle before you. Always bel 
**/
        content.body = body;
        content.sound = [UNNotificationSound defaultSound];
        if ([StringUtil isEmpty_MMMethodMMM:notifyId]) {
            notifyId = [SUtil getMD5StrFromString_MMMethodMMM:title];
        }

/**
  卿为朝朝暮暮。
Even if from another world, still love you till the end of time.
就算来自不同世界，依旧爱你到地老天荒。
Only for making me want you so badly.
只有你才能让我如此上瘾。
I don't have the strength to stay away from you anymore.
我再也没有离开你的力气了。
Your number was up the first time l met you.
第一次遇见我，你就在劫难逃了。
You're in here because of me.
 
**/
        UNNotificationRequest *request = [UNNotificationRequest requestWithIdentifier:notifyId content:content trigger:trigger];
        [center addNotificationRequest:request withCompletionHandler:^(NSError *_Nullable error) {
            SDK_LOG(@"addLocalNotificationWithTitle 成功添加推送");
        }];
    }else {
    }
//on needed to rise at 7 am each day, backtiming eight hours would require a bedtime of 11 pm.
//
//美国疾病控制与预防中心指出，大多数成人需要7到8小时睡眠时间才能得到充分休息。因此如果一个人每天要在早上7点起床，倒推8个小时睡眠时间应该是晚上11点。
//
//"Now you know when you have to stop and get ready to go to bed whether you're done or not," Grander said. "The pr
}
#pragma mark - 内部方法
- (void)gama_showPlatformToView:(UIView *)view
{
}

/**
   the one that forever twinkles within your heart. Take advantage of precious opportunities while they still sparkle before you. Always believe that your ultimate goal is attainable as long as you commit yourself to it.



追随能够改变你命运的那颗星，那颗永远在你心中闪烁的明星。当它在你面前闪耀时，抓住这宝贵的机会。请谨记，只要你坚持不懈，最终的目标总能实现。



Though barriers may sometimes  
**/
- (void)gama_hiddenPlatform
{

/**
  " Grandner said. In fact, he said this tip is so powerful that when used in his sleep clinic it "can even beat prescription sleep medications."

格兰德纳说，这是有“数十年数据”支持的一条睡眠医学黄金法则。事实上，这条法则在他的睡眠诊所中“甚至比处方药还管用”。

"The best sleep tip you can ever give somebody is get up -- don't lay in bed awake but not s 
**/
}
@end
