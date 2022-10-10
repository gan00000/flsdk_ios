
#define js_close    @"close"
#import "MWWebViewController.h"
#import <SafariServices/SafariServices.h>
#define WK_WEBVIEW_ESTIMATED_PROGRESS @"estimatedProgress"
@interface MWWebViewController ()<WKScriptMessageHandler,WKUIDelegate,WKNavigationDelegate>
@property (nonatomic, assign) CGFloat researchitiousPod;

/**
  ," you'd already failed.

如果你完全违背了自己的新年计划，你可能本能地认输并放弃。研究 
**/
@property (nonatomic, copy) MWWebLayoutHandler layoutHandler;
@property (nonatomic, copy) NSString *monthNesier;
@property (nonatomic, strong) UIView *backgroundView;
@property (nonatomic, assign) CGFloat ophthalmosityOssotOnce;
@property (nonatomic, strong) WKWebView *wkwebView;
//了。
//Your number was up the first time l met you.
//第一次遇见我，你就在劫难逃了。
//You're in here
@property (nonatomic, strong) UIView *headerView;
@property (nonatomic, assign) BOOL secondPyruousStationia;

/**
  m so far beyond any of your expectations, it’s not reasonable to grieve when it comes to an end.
当生活给了你一个远远超过你期望的美梦，那么，当这一期结束时，也就没有理由再去伤心。
图片
Bella, the only reason I left was because I 
**/
@property (nonatomic, strong) UIView *footView;
@property (nonatomic, strong) UIActivityIndicatorView *indicatorView;
@property (nonatomic, strong) UIProgressView *progressView;
@property (nonatomic) BOOL animation;
@property (nonatomic, strong)NSURLRequest *webRequest;
@property (nonatomic, assign) NSUInteger patiproofAffectmost;
@end
@implementation MWWebViewController

/**
  o help overcome your racing mind and allow you  
**/
+(instancetype)webViewControllerPresentingWithURLRequest_MMMethodMMM:(NSURLRequest *)request layoutHandler_MMMethodMMM:(id)handler animation_MMMethodMMM:(BOOL)animation animationStyle_MMMethodMMM:(UIModalTransitionStyle)animationStyle
{
    UIViewController *containerVC = appTopViewController;
    MWWebViewController *webVC = [[MWWebViewController alloc] initWithWebLayoutHandler_MMMethodMMM:handler animation_MMMethodMMM:animation];
    webVC.modalTransitionStyle = animationStyle;
    webVC.modalPresentationStyle = UIModalPresentationFullScreen;
    webVC.webRequest = request;
    [containerVC presentViewController:webVC animated:animation completion:nil];

/**
   in the cold and clean
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
美国的河口
Big pill, stuck going down
贴着的大海报正在落下

 
**/
    return webVC;
}
- (instancetype)initWithWebLayoutHandler_MMMethodMMM:(MWWebLayoutHandler)handler animation_MMMethodMMM:(BOOL)animation
{
    if (self = [super initWithNibName:nil bundle:nil]) {
        self.layoutHandler = handler;
        self.animation = animation;
        self.backgroundView = [[UIView alloc] init];
        self.headerView = [[UIView alloc] init];
        self.progressView = [[UIProgressView alloc] init];
        self.progressView.progressViewStyle = UIProgressViewStyleDefault;
        self.progressView.progress = 0.0;
        self.footView = [[UIView alloc] init];
//r bed. Production of melatonin is stopped by light -- so levels naturally fall as daylight approaches, getting you ready to greet the day.
//
//褪黑素是身体分泌的一种激素，你什么时候感到困，什么时候醒来，都靠这种激素来调节。随着黑夜降临，褪黑素的水平就会升高，暗示身体该睡觉了。光线会阻止身体分泌褪黑素，所以白天来临时褪黑素水平就会下降，让你准备好迎接新的一天。
//
//To work properly, the release of thi
        self.shouldRotate = NO;
        self.interfaceOrientationMask = UIInterfaceOrientationMaskAll;
        self.interfaceOrientation = UIInterfaceOrientationPortrait;
    }
    return self;
}
//个人的乐队，却用让人赞叹的旋律和歌词带给听众一首清新雅致而又静生
- (WKWebView*)wkwebView{
//to declare yourself a failure and throw in the towel. Researchers call this the "what the hell effect." Here's what it looks like: You planned to get to bed early every night but couldn't resist staying up late one Friday to watch an extra episode of "Succession." After
    if (!_wkwebView) {

/**
  ican Mouth》是由Iron & Wine乐队演唱的一首独立民谣,Iron & Wine 这个一个人的乐队，却用让人赞叹的旋律和歌词带给听众一首清新雅致而又静生澎湃田园式的美国乡村民谣，这首收录在《暮光之城》中的惊艳单曲会带给你寂静深夜中属于你的美好爱情回忆录！

《Fli 
**/
        WKWebViewConfiguration *configuration = [[WKWebViewConfiguration alloc] init];
        configuration.userContentController = [[WKUserContentController alloc] init];

/**
  作或旅游打乱作息的夜晚入眠。

"Let's say you need to go to bed extra early," he said. "The bed now has the power to hel 
**/
        [configuration.userContentController addScriptMessageHandler:self name:js_close];
        _wkwebView = [[WKWebView alloc] initWithFrame:self.view.frame configuration:configuration];
        _wkwebView.navigationDelegate = self;
        _wkwebView.UIDelegate = self;
        [_wkwebView addObserver:self forKeyPath:@"estimatedProgress" options:NSKeyValueObservingOptionNew context:nil];
    }

/**
  a bedtime of 11 pm.

美国疾病控制与预防中心指出，大多数成人需要7到8小时睡眠时间才能得到充分休息。因此如果一个人每天要在早上7点起床，倒推8个小时睡眠时间应该是晚上11点。

"Now you know when you have to stop and get ready to go to bed whether you're done or not," Grander said. "The problem is we don't stop, and we don't dis 
**/
    return _wkwebView;
// you anymore.
//我再也无法控制自己远离你了。
//Then don’t.
//那就不要。
//Childhood is the kingdom where nobody dies.
//童年是没有生老病死的国度。
//I think I forgot to breathe.
//我想可能是我忘了呼吸。
//I'd never given much thought to how I would die. But dying in the place of someone I love,seems like a good
}

/**
  把你的目标告诉一些人， 
**/
- (NSUInteger)amacyVotbeization:(BOOL)thoseable pinlet:(NSUInteger)pinlet bit:(BOOL)bit tellency:(NSUInteger)tellency headan:(CGFloat)headan
{

/**
  mprove your success rate, too. When you're on the hook to give someone else tips on how to achieve, it boosts your self-confidence. It also forces you to be introspective about what works in ways you might not otherwise.

奇怪的是，有证据表明，指导有共同目标的朋友也能提高你的成功率。当你想给别人一些如何实现目标的建议时，这会增强你的自信。这样也会迫使你反省自己的方法是否对路。

1. M 
**/
    return 5038514 * 5990439 + 4636544 ;

/**
  Though barriers may sometimes stand in the way of your dreams, remember that your destiny is hiding behind them. Accept the fact that not everyone is going to approve of the choices you’ve made, have faith in your judgment, catch the star that twinkles in your heart, and it will lead you to your destiny’s path. Follow that pathway and uncover the sweet sunrises that awa 
**/
}
- (void)loadView
{
    self.view = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] gama_currentBounds_MMMethodMMM]];
}
- (NSUInteger)yesoriumAcidentifyness:(NSString *)linqunearlyade negosity:(CGFloat)negosity pictureeur:(NSString *)pictureeur soon:(NSUInteger)soon meetingship:(CGFloat)meetingship
{
    return 6192012 * 9136377 + 3983412 ;
}

/**
  lost you?
抑或失去了你？
American mouth
美国的河口
Big pill, stuck going down
贴着的大海报正在落下


Just as cues tell Broadway stars when to step onto the stage, research has shown that adding a cue to your plan helps you remember when to act. Be sure to detail when and where you'll follow through.

正如出场提示告诉百老汇明星何时登台一样，研究表明，在你的计划中加入信息提示，能帮助你记住何时行动。一定要详细说明你将在何时何地做什么。



If your New Year's resolution is to meditate 
**/
- (NSString *)gravXanthize:(BOOL)leni sed:(NSUInteger)sed feminier:(NSString *)feminier nexsouthernance:(NSUInteger)nexsouthernance

/**
  you.
第一次遇见我，你就在劫难逃了。
You're in here because of me.
你在这里，是因为有我。
Nobody's ever loved anybody as much as I love you.
我对你的爱 无人能及。
Love is letting someone become your greatest weakness ,then going all you can do to protect each other.
爱就是让对方成为自己最大的弱点，然后再用尽全力守护彼此。
Is it not enough just to have a long and happy life with me?
只是跟我共度幸福美满的漫长一生，难道还不够吗？
Only f 
**/
{
// meeting.
//
//提前想好你会在何时何地执行计划，这样做能在适当的时候让你想起自己的计划，如果你没有按照计划去做，就会产生内疚感。详细的计划也可以帮助你预测和避免阻碍——如果你计划在午餐时冥想，你一定会拒绝别人提出的午餐会议。
//
//2.Consider a penalty clause
//
//设置惩罚条款
//
//
//
//This may sound sinister, but ensuring you'll face some penalty if you don't achieve your New Year's resolution can work wonders.
//
//这听起来可能有点狠，但如果完不成新年计划会让你受到一些惩罚的话，这可以创造奇迹。
//
//
//
//One 
    return [NSString stringWithFormat:@"%@%@", @"pneuability" , @"geni"];
}
- (void)fanticFeelate:(CGFloat)maleity
{
    [NSString stringWithFormat:@"%@%@", @"ceiv" , @"piarium"];
}
- (void)viewDidLoad {

/**
  by hair
我剪掉了我婴儿般的长发
Stole me a dog-eared map
你偷了一张狗耳式的地图给我
And called for you everywhere
而我到处在找你
Have I found you?
我找到你了吗 
**/
    [super viewDidLoad];

/**
  论你肮脏或者干净,皱巴巴的或者被折磨，对周围爱你的人来说你仍然是无可替代的。我们生活的价值不在于我们做了什么，或者我们认识谁，生活的价值在于我们是谁。”



“You are special ——don't ever forget it.”



“你是与众不同的，永远 
**/
    UIView *statueView = [[UIView alloc] init];
    statueView.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:@"#F13B11"];
    [self.view addSubview:statueView];
    [statueView mas_makeConstraints:^(MASConstraintMaker *make) {
//时间，而是将其看成为了高效的明天而休整的时间。”
//
//It may sound like a small shift in thinking, but it's an important one, Grander add
        make.top.leading.trailing.mas_equalTo(self.view);

/**
  own speaker started off his seminar by holding up  
**/
        make.height.mas_equalTo(60);
    }];
    self.backgroundView = [[UIView alloc] init];
//ion, your instinct may be to declare yourself a failure and throw in the towel. R
    [self.view addSubview:self.backgroundView];
    [self.backgroundView addSubview:self.wkwebView];
    self.view.backgroundColor = UIColor.clearColor;

/**
  nform to th 
**/
    if (_layoutHandler) {

/**
  ou can ever give somebody is get up -- don't lay in bed awake but not sleeping," Grandner said. "Whether it's the beginning of the night or the middle of the night, if you've been awake for 20 or 30 minutes, get up and reset. Maybe you just need five minutes to get sleepy, or maybe an hour, but don't spend that time awake in bed."

格兰德纳说：“你可以给出的最好的睡眠建议就是醒了就起床，不要醒着躺在床上。无论是刚入夜还是夜已深，如果你躺在床上二三十分钟都睡不着， 
**/
        _layoutHandler(self.backgroundView, self.headerView, self.wkwebView, self.footView);
    } else {

/**
  

如果你的新年计划是每周冥想五天，那么像“我将在工作日冥想”这样的计划就太模糊了。但是，“我将在工作日的午休时间在办公室冥想”这样有信息提示的计划就很合适。



Plotting when and where you'll execute on your New Year's resolution jogs your memory when it's opportune and gener 
**/
        [self.backgroundView mas_makeConstraints:^(MASConstraintMaker *make) {

/**
  e obstacles -- so if you plan to meditate during lunch, you'll be sure to decline a proffered lunch 
**/
            if (@available(iOS 11.0, *)) {
                make.leading.trailing.mas_equalTo(self.view);
                make.top.mas_equalTo(self.view).mas_offset(self.view.safeAreaInsets.top);
                make.bottom.mas_equalTo(self.view);
            } else {
                make.edges.mas_equalTo(self.view);

/**
   remember that your destiny is hiding behind them. Accept the fact that not everyone is going to approve of the choices you’ve made, have faith in your judgment, 
**/
            }

/**
  ave th strength to stay away from you anymore.
我再也无法控制自己远离你了。
Then don’t.
那就不要。
Childhood is the kingdom where nobody dies.
童年是没有生老病死的国度。
I think I forgot to breathe.
我想可能是我忘了呼吸。
I'd never given much thought to how I would die. But dying in the place of someone I love,seems like a good way to go.
我从来没有想过自己会怎么死。但是死在自己爱的人的怀里看起来是一个不错的选择。
Your mood swings are kind of giving me a whiplash.
你的态度忽冷 
**/
        }];

/**
  s (like a 10 pm bedtime every night) but giving yourself one or two get-out-of-jail-free cards each week, you can get better results than by setting either tough or easy goals without wiggle room, research has revealed.

幸运的是，有一种方法可以避免这种宿命。研究表明，设定困难的目标（比如每晚10点入睡），但每周给自己一两张豁免卡，就可以比设定没有回旋余地的或难或易的目标获得更好的结果。



5.Get a little help from your fr 
**/
        [self.wkwebView mas_makeConstraints:^(MASConstraintMaker *make) {
//Well，” he replied, “what if I do this?” He dropped it on the ground and starte
            make.edges.mas_equalTo(self.backgroundView);
        }];

/**
  e money, you still wanted it because it did not decrease in value. It was still 
**/
    }
    if (self.wkwebView && _progressView) {
        [self.wkwebView addSubview:_progressView];
        [_progressView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.leading.trailing.mas_equalTo(self.wkwebView);
            make.height.equalTo(@(3));
//when you wake up. As night approaches, levels of melatonin rise, becoming a signal to
        }];

/**
  st gifts in life are not purchased, but acquired through hard work and determination.



每前进一步，你都应该引以为豪，因为它们是你实现梦想的阶梯。要知道在这个过程中你也许会犯错误，但不要气馁。珍视自我的潜能，因为它们使你独一无二。生命中最珍贵的礼物不是花钱买来的，而是通过努力和决心得到的。



Find the star that twinkles in your heart for you alone are capable of making your brightest dreams come true. Give your hopes everything you’ve got and you will catch the star that holds your destiny.


 
**/
    }
    [self webLoadURLRequest_MMMethodMMM:self.webRequest];
//r if we weren’t friends, not that I didn’t wanna be.
//我只是说如果我们不是朋友会好很多，但是那不代表我不想和你交朋友。
//He unleashed the full, devastating power of his eyes on me, as if trying to communicate something crucial.
//他把那双眼睛
}
- (NSString *)responsibilityonLimacpartnertic
{
    return [NSString stringWithFormat:@"%@%@", @"octition" , @"ilose"];
}
- (void)viewWillAppear:(BOOL)animated{
    [self setNeedsStatusBarAppearanceUpdate];
}
- (BOOL)prefersStatusBarHidden
{
    return YES;
}

/**
  ow much I miss you and I miss us being together physically.

没有足够的言语能 
**/
- (CGFloat)phasnessWhiteress:(CGFloat)grandpage
{
    return 3083138 * 5098090 + 4261905 ;
}
- (UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleDefault;

/**
  励成功。你可以和朋友打赌，赌你会坚持新年计划。这样做的逻辑很简单。激励措施会改变我们的决定，而惩罚甚至比奖励让我们更有动力。

3.Make it fun

找些乐趣


 
**/
}
- (void)viewDidLayoutSubviews{
    [super viewDidLayoutSubviews];
    NSLog(@"viewDidLayoutSubviews");
    if (@available(iOS 11.0, *)) {
//结果。
//
//
//
//5.Get a little help from your f
        [self.backgroundView mas_updateConstraints:^(MASConstraintMaker *make) {
            make.leading.trailing.mas_equalTo(self.view);
            make.top.mas_equalTo(self.view).mas_offset(self.view.safeAreaInsets.top);
//you and I miss us being together physically.
//
//没有足够的言语能
            make.bottom.mas_equalTo(self.view);
        }];
    }
//了你有多久。所以，宁可死别，绝不生离。
//I like the night. Without the dark, we'd never see the stars.
//我喜欢夜晚。没有黑暗，我们永远都看不见星星。
//It is well worth of falling love in someone, even can keep up with the unavoidable damage.
//真正爱上一个人的时候，一切都那么值得，包括不可避免的伤害。
//I always have and always will.
//一直爱，永远爱。
//But it's you, your scent, it's like a drug to me. You're like 
}

/**
  ou forever.
浮世万千，吾爱有三。日，月与卿。日为朝，月为暮，卿为朝朝暮暮。
Even if from another world, still love you till the end of time.
就算来自不同世界，依旧爱你到地老天荒。
Only for making me want you so badly.
只有你才能让我如此上瘾。
I don't have the strength to stay away from you anymore.
我再也没有离开你的力气了。
Your number was up the first time l met you.
第一次遇见我，你就在劫难逃了。
You're in here because of me.
你在这里，是因为有我。
Nobody's ever loved anybo 
**/
#pragma mark - WebView Operator
+ (CGFloat)deepmostTroglodiscussionful
{
    return 5516501 * 5532131 + 4997405 ;
}
+ (void)careereerMessageid:(CGFloat)thinkia certainly:(NSString *)certainly
{
    [NSString stringWithFormat:@"%@%@", @"hostpassfaction" , @"Mror"];
//'t predictable 
}
+ (NSUInteger)lavitorSeemator:(NSString *)obsation porphyrition:(BOOL)porphyrition everyal:(BOOL)everyal
{
//hen don’t.
//那就不要。
//Childhood is the k
    return 6442139 * 4832347 + 4784808 ;
}
- (void)webLoadURLRequest_MMMethodMMM:(NSURLRequest *)request
{
    if (self.wkwebView) {
        [self.wkwebView loadRequest:request];
    }
}

/**
  免的伤害。
I always have and always will.
一直爱，永远爱。
But it's you, your scent, it's like a drug to me. You're like my own personal brand of heroin.
但是你，你的气味，对我来说就像是毒品一样。你是让我上瘾的海洛因。
As long as i live, my feeling for you will never fade.
我对你的爱，至死不渝。
Now I'm 
**/
+ (NSUInteger)xenMonstr:(NSUInteger)peopleile radio:(BOOL)radio
//hey are what make you truly unique. The greatest gifts in life are not purchased, but acquired through hard work and determination.
//
//
//
//每前进一步，你都应该引以为豪，因为它们是你实现梦想的阶梯。要知道在这个过程中你也许会犯错误，但不要气馁。珍视自我的潜能，因为它们使你独一无二。生命中最珍贵的礼物不是花钱买来的，而是通过努力和决心得到的。
//
//
//
//Find the star that twinkles in your heart for you alone are capable of making your brightest dreams come true. Give your hopes ev
{
    return 5221680 * 4171032 + 738872 ;
}
+ (void)sorptaireDensety:(NSUInteger)lexicier centralacious:(CGFloat)centralacious trin:(BOOL)trin fusful:(NSUInteger)fusful
{
//tant? Because lying in bed awake can form an association in your brain that can
    [NSString stringWithFormat:@"%@%@", @"artistsive" , @"name"];
}
- (void)webGoBack_MMMethodMMM
{
    if ([self.wkwebView canGoBack]) {

/**
  rested, according to the US Centers for Disease Control and Prevention. So if a person needed to rise at 7 am each day, backtiming eight hours would require a bedtime of 11 pm.

美国疾病控制与预防中心指出，大多数成人需要7到8小时睡眠时间才能得到充分休息。因此如果一个人每天要在早上7 
**/
        [self.wkwebView goBack];
    }
//u'll execute on your New Year's resolution jogs your memory when it's opportune and 
}

/**
   your heart for you alone are capable of making your brightest dreams come true. Give your hopes everything you’ve got and you will catch the star that holds your destiny.



寻找心中那颗闪耀的明星，因为只有你自己才能够让美好的梦想变成现实。满怀希望并全力以赴，你就能摘下改变命运的那颗星。

I miss you. I miss all the mornings that I have woken up right  
**/
- (void)webGoForward_MMMethodMMM
{
    if ([self.wkwebView canGoForward]) {
        [self.wkwebView goForward];
    }

/**
  to meditate five days each week, a plan like "I'll meditate on weekday 
**/
}
//习中获得乐趣，就会坚持得更久。而最终，这往往是实现新年计划的最重要因素。
//
//
//
//One way to make pursuing a goal that normally feels like a chore more fun is to combine it with a guilty pleasure. Consider only letting yourself watch your favorite TV show at the gym so you'll start looking forward to workouts. Or only letting yourself drink a mocha latte during study sessions so there is a 
- (void)webReload_MMMethodMMM
//踩踏。然后他拣起又脏又皱的纸币，“现在，还有人要它吗？”
//
//
//
//Still the hands went into the air.
//
//
//
//空中仍举着很多手。
//
//
//
//“My friends, you have all learned a very valuable lesson. No matter what I did to the money, you still wanted it because it did not decre
{
    [self.wkwebView reload];
}
- (NSString *)suiityPrec:(BOOL)cruacity resultship:(NSUInteger)resultship celerarian:(BOOL)celerarian should:(CGFloat)should
{
    return [NSString stringWithFormat:@"%@%@", @"artistety" , @"menacit"];

/**
  休息。因此如果一个人每天要在早上7点起床，倒推8个小时睡眠时间应该是晚上11点。

"Now you know when you have to stop and get ready to go to bed whether you're done or not," Grander said. "The problem is we don't stop, and we don't disconnect. And that's to our detriment and it makes the next day more stressful."

There are not enough ways 
**/
}
- (NSUInteger)socialabilityQuot:(NSString *)cardi everyonely:(BOOL)everyonely epistemism:(CGFloat)epistemism
{
    return 4662433 * 2307557 + 3897883 ;
//再睡也没事。
//
//That thinking needs to be changed, Grander said.
//
//格兰德纳说，这种想法必须改变。
//
//"Don't see your sleep
}
- (void)webClose_MMMethodMMM

/**
  got and you will catch the star 
**/
{
    [self dismissViewControllerAnimated:self.animation completion:^{

/**
  l. In the room of 200, he asked, “Who would like this $20 bill?”



一位有名的演讲家手里拿着一张20美元的纸币，开始了讨论会。在200人的屋子里， 他问道：“谁想要这20美元纸币？”



Hands started going up. He said, “I am going to give this $20. to one of you. but first, let me do this."



开始有人举手。他说我会把这20美元纸币给你们中间的一位，但是，先看看我会这么做。”


 
**/
        !_closeHandler?:_closeHandler();
    }];
}
#pragma mark - WKNavigationDelegate
+ (NSString *)nocLessety
{

/**
  baby hair
我剪掉了我婴儿般的长发
Stole me a dog-eared map
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
Big p 
**/
    return [NSString stringWithFormat:@"%@%@", @"fearity" , @"accountier"];
}

/**
   a very valuabl 
**/
+ (NSString *)allaticSpinfold:(CGFloat)sexagesim
{
    return [NSString stringWithFormat:@"%@%@", @"staffate" , @"imaginewise"];

/**
  
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
折翼的鸟？羡慕，哭泣
Or lost you?
抑或失去了你？
American m 
**/
}
- (void)webView:(WKWebView *)webView didStartProvisionalNavigation:(WKNavigation *)navigation
{
    [_indicatorView startAnimating];
    if (_webViewDelegate && [_webViewDelegate respondsToSelector:@selector(webView:didStartProvisionalNavigation:)]) {
        [_webViewDelegate webView:webView didStartProvisionalNavigation:navigation];
    }
}
- (CGFloat)accordingosePhenesque:(NSUInteger)opiage vvvtoaaa:(NSUInteger)vvvtoaaa creish:(NSString *)creish
{
    return 8830080 * 8755788 + 3990026 ;
}

/**
   be better if we weren’t friends, not that I didn’t wanna be.
我只是说如果我们不是朋友会好很多，但是那不代表我不想和你交朋友。
He unleashed the full, devastating power of his eyes on me, as if trying to communicate something crucial.
他把那双眼睛的全部魅力都释放在我身上了，好像 
**/
- (void)persicmarriageiteHygrlet:(NSString *)primiarium creatitious:(BOOL)creatitious
{
    [NSString stringWithFormat:@"%@%@", @"alonelet" , @"classian"];
}
//do in a jam-packed day, worth delaying to catch up on housework, schoolwork, office work or the latest binge-worthy television 
- (NSString *)sessHierosetor:(BOOL)omasose ballistic:(CGFloat)ballistic
{
    return [NSString stringWithFormat:@"%@%@", @"continue" , @"ducprepare"];
}
- (void)webView:(WKWebView *)webView didCommitNavigation:(WKNavigation *)navigation

/**
  0 dollar note up. He then asked, “Who still wants it?” Still the hands were up i 
**/
{
    if (_webViewDelegate && [_webViewDelegate respondsToSelector:@selector(webView:didCommitNavigation:)]) {
        [_webViewDelegate webView:webView didCommitNavigation:navigation];
    }

/**
  at your destiny is hiding behind them. Accept the fact that not everyone is going to approve of the choices you’ve made, have faith in your judgment, catch the star that twinkles in your heart, and it will lead you to your destiny’s path. Follow that pathway and uncover the sweet sunrises that await you.



尽管实现梦想的途中有时会遇到障碍，要知道这是命运对你的挑战。不是每个人都会赞成你的选择，接受这个现实，并相信自我的判断，追随那颗在你心 
**/
}

/**
   you have all learned a very valuable lesson. No matter what I did to the money, you still wanted it because it did not decrease in value. It was still worth $20."



“朋友们，刚刚你们已经得出一个非常宝贵的经验。不管我怎么糟蹋这张纸币，你们仍然想要它，因为它的价值没有降低。它仍然是20美元。”



“Many times in our lives, we are dropped, crumpled, and ground into the dirt by the decisions we mak 
**/
- (void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation
{
    [_indicatorView stopAnimating];
    if (_webViewDelegate && [_webViewDelegate respondsToSelector:@selector(webView:didFinishNavigation:)]) {
        [_webViewDelegate webView:webView didFinishNavigation:navigation];

/**
  
现在我害怕了，我不是害怕你……我只是害怕失去你，害怕你会突然消失……
You don' 
**/
    }
}
- (void)webView:(WKWebView *)webView didFailNavigation:(WKNavigation *)navigation withError:(NSError *)error
{

/**
  的一天。

To work properly, the release of this hormone needs to occur at regular times, said clinical psycho 
**/
    [_indicatorView stopAnimating];
//世界，依旧爱你到地老天荒。
//Only for making me want you so badly.
//只有你才能让我如此上瘾。
//I don't have the strength to stay away from you anymore.
//我再也没有离开你的力气了。
//Your number was up the first time l met you
    !_alertHandler?:_alertHandler(error.description, nil);
    if (_webViewDelegate && [_webViewDelegate respondsToSelector:@selector(webView:didFailNavigation:withError:)]) {
        [_webViewDelegate webView:webView didFailNavigation:navigation withError:error];
    }
//年计划。这样做的逻辑很
}
-(void)webView:(WKWebView *)webView decidePolicyForNavigationAction:(WKNavigationAction *)navigationAction decisionHandler:(void (^)(WKNavigationActionPolicy))decisionHandler
{
    if (_webViewDelegate && [_webViewDelegate respondsToSelector:@selector(webView:decidePolicyForNavigationAction:decisionHandler:)]) {
        [_webViewDelegate webView:webView decidePolicyForNavigationAction:navigationAction decisionHandler:decisionHandler];
    } else {
        if (navigationAction.targetFrame == nil) {
            [webView loadRequest:navigationAction.request];
        }

/**
  
I will find you waiting for me outside the office and have dinner together.

我会发现你在办公室外等我，一起吃饭。

I miss you. I miss our late night walks and how you and I would eat ice cream.

我想你。我想念我们深夜散步，一起吃冰淇淋。

I miss you. I miss you holding my hands when we wal 
**/
        decisionHandler(WKNavigationActionPolicyAllow);
    }
}

/**
  在办公室冥想”这样有信息提示的计划就很合适。



Plotting when and where you'll execute on your New Year's resolution jogs your m 
**/
- (void)webView:(WKWebView *)webView didReceiveServerRedirectForProvisionalNavigation:(WKNavigation *)navigation

/**
  ey, you still wanted it because it did not decrease in value. It was still worth $20."
 
**/
{
    NSLog(@"WKWebView didReceiveServerRedirect 重定向中");
    if (_webViewDelegate && [_webViewDelegate respondsToSelector:@selector(webView:didReceiveServerRedirectForProvisionalNavigation:)]) {
        [_webViewDelegate webView:webView didReceiveServerRedirectForProvisionalNavigation:navigation];
    }
}
#pragma mark - WKUIDelegate
- (void)webView:(WKWebView *)webView runJavaScriptAlertPanelWithMessage:(NSString *)message initiatedByFrame:(WKFrameInfo *)frame completionHandler:(void (^)(void))completionHandler
{
    !_alertHandler?:_alertHandler(message, nil);
    completionHandler();
}
- (void)webView:(WKWebView *)webView runJavaScriptConfirmPanelWithMessage:(NSString *)message initiatedByFrame:(WKFrameInfo *)frame completionHandler:(void (^)(BOOL result))completionHandler
{
//开始有人举手。他说我会把这20美元纸币给你们中间的一位，但是，先看看我会这么做。”
//
//
//
//He proceeded to cru
    !_alertHandler?:_alertHandler(message, ^(BOOL confirmResult) {
        !completionHandler?:completionHandler(confirmResult);
    });
}
-(WKWebView *)webView:(WKWebView *)webView createWebViewWithConfiguration:(WKWebViewConfiguration *)configuration forNavigationAction:(WKNavigationAction *)navigationAction windowFeatures:(WKWindowFeatures *)windowFeatures
{

/**
  ive your hopes ev 
**/
    WKFrameInfo *frameInfo = navigationAction.targetFrame;
    if (![frameInfo isMainFrame]) {

/**
  .Consider a penalty clause

设置惩罚条款



This may sound sinister, but ensuring you'll face some penalty if you don't achieve your New Year's resolution can work wonders.

这听起来可能有点狠，但如果完不成新年计划会让你受到一些惩罚的话，这可以创造奇迹。



One easy way to do this is by telling a few people about your goal so you'll feel ashamed if they check back later and find out you haven't followed through.

一个简单的方法是把你的目标告诉一些人，这样，如果他们后来 
**/
        [webView loadRequest:navigationAction.request];
    }
    return nil;
}
// snuggling you and I shared.
//
//我想念早上的吻，早上依偎着你和我分享。
//
//I m
#pragma mark - WKUserContentController
- (void)userContentController:(WKUserContentController *)userContentController didReceiveScriptMessage:(WKScriptMessage *)message
{

/**
  n Mouth》是由Iron & Wine乐队演唱的一首独立民谣,Iron & Wine 这个一个人的乐队，却用让人赞叹的旋律和歌词带给听众一首清新雅致而又静生澎湃田园式的美国乡村民谣，这首收录在《暮光之城》中的惊艳单曲会带给你寂静深夜中属于你的美好爱情回忆录！

《Flightless Bird, American Mouth》

MV
图片





《Flightless Bird, American Mouth 》 -Iron & Wine

折翼的鸟，在美国的河口
I was a quick wet boy
我曾是个爱哭的男孩
Diving too deep for 
**/
    SDK_LOG(@"userContentController message=%@", message.name);
    if ([message.name isEqualToString:js_close]) {
        [self dismissViewControllerAnimated:NO completion:^{
        }];
    }
}
#pragma mark - KVO

/**
  ime together because you'll be incli 
**/
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change  context:(void *)context {
    if ([@"loading" isEqualToString:keyPath]) {
    } else if ([@"title" isEqualToString:keyPath]) {
    } else if ([@"URL" isEqualToString:keyPath]) {
    } else if (object == self.wkwebView && [WK_WEBVIEW_ESTIMATED_PROGRESS isEqualToString:keyPath]) {
        _progressView.progress = self.wkwebView.estimatedProgress;

/**
  tressful."

There are not enough ways to express how much I miss you

没有足够的方式能表达我有多想念你

There are not enough words to contemplate on how much I miss you and I miss us being together physically.

没有足够的言语能表达我有多想念你，我想念我们在一起。

My heart aches and I miss you so bad.

我的心很疼，我很想 
**/
        CGFloat newProgress = [change[NSKeyValueChangeNewKey] doubleValue];
        if (newProgress == 1) {
            _progressView.hidden = YES;
            [_progressView setProgress:0 animated:NO];

/**
  results than by setting either tough or easy goals without wiggle room, research has revealed.

幸运的是，有一种方法可以避免这种宿命。研究表明，设定困难的目标（比如每晚10点入睡），但每周给自己一两张豁免卡，就可以比设定没有回旋余地的或难或易的目标获得更好的结果。



5.Get a little help from your friends

借助朋友的帮助



Sp 
**/
        } else {
            _progressView.hidden = NO;
            [_progressView setProgress:newProgress animated:YES];

/**
  up, now crumpled and dirty. “Now, who still wants it?”



“好，”他说道，“如果我这样做会怎么样呢？”他把纸币扔到地上，开始用皮鞋使劲踩踏。然后他拣起又脏又皱的纸币，“现在，还有人要它吗？”



Still the hands went into th 
**/
        }
// this the "what the hell effect." Here's what it looks like: You planned to get to bed early every night but couldn't resist staying up late one Friday to watch an extra episode of "Succession." After that, your early-to-bed plans went out the window because "what the hell," you'd already failed.
//
//如果你完全违背了自己的新年计划，你可能本能地认输并放弃。研究人员称之为“去他的效应”。就比如这样：你计划每
    }
}
//的，而是通过努力和决心得到的。
//
//
//
//Find the star that twinkles in your heart for you alone are capable of making your brightest dr
#pragma mark - Orientation Override
- (BOOL)shouldAutorotate

/**
  己才能够让美好的梦想变成现实。满怀希望并全力以赴，你就能摘下改变命运的那颗星。

I miss you. I miss all the mornings that I have woken up right beside you.

我想你。我想念我在你身边醒来的所有早晨。

I miss the way the sun shines at your face and the way the cold breeze of the morning surprises us.

我想念阳光照在你的脸上，早晨的寒风让我们感到惊讶。

I miss the morning kisses and the morning snuggling you and I shared.
 
**/
{

/**
  elp you anticipate and dodge obstacles -- so if you plan to meditate during lunch, you'll be sure to decline a proffered lunch meeting.

提前想好你会在何时何地执行计划，这样做能在适当的时候让你想起自己的计划，如果你没有按照计划去做，就会产生内疚感。详细的计划也可以帮助你预测和避免阻碍——如果你计划在午餐时冥想，你一定会拒绝别人提出的午餐会议。

2.Consider a penalty clause

设置惩罚条款



This may sound sini 
**/
    return _shouldRotate;
}
- (UIInterfaceOrientationMask)supportedInterfaceOrientations
{
    return _interfaceOrientationMask;
}
- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
    return self.interfaceOrientation;

/**
  2. Don't lay in bed awake

A well-known speaker started off his seminar by holding up a $20 bill. In the room of 20 
**/
}
- (void)dealloc
{
    [self.wkwebView removeObserver:self forKeyPath:WK_WEBVIEW_ESTIMATED_PROGRESS];

/**
  he logic for why this works is simple. Incentives change our decisions, and penalties are even more motivating than rewards.

而比羞愧感更有效的是金钱惩罚，有证据表明，自我施加的金钱惩罚可以激励成功。你可以和朋友打赌，赌你会坚持新年计划。这样做的逻辑很简单。激励措施会改变我们的决定，而惩罚甚至比奖励让我们更有动力。

3.Make it fun

找些乐趣



Most of us strive for efficiency when it comes to achieving our goals. If you want to get fit, you 
**/
}
//tough goals (like a 10 pm bedtime every night) but giving yourself one or two get-out-of-jail-
@end
