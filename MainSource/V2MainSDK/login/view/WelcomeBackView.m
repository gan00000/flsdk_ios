

/**
  , worth delaying to catch up on housework, schoolwork, office work or the latest binge-worthy television series.

许多人将睡眠视为忙碌的一天后要做的最后一件事，为了完成家务、作业、工作或追新剧，晚点再睡也没事。

That thinking needs to be changed, Grander said.

格兰德纳说，这种想法必须改变。

"Don't see your sleep as the amount of time you have left in your day," he 
**/
#import "WelcomeBackView.h"
#import "SDKTextFiledView.h"
#import "SdkHeader.h"
//我到现在还不知道是否控制得了自己。
//When life offers you a dream so far beyond any of your expectation
#import "LoginTitleView.h"
#import "LoginButton.h"
#import "AccountListViewCell.h"

/**
  ork in the morning and knowing that at the end of the day,

我想你。我想念早上去上班，直到在一天结束的时候，

I will find you waiting for me outside the office and have dinner together.

我会发现你在办公室外等我，一起吃饭。

I miss you. I miss our late night walks and how you and I would eat ice cream.

我想你。我想念我们深夜散步，一起吃冰淇淋。

I miss you. I miss you ho 
**/
#import "HttpServiceEngineLogin.h"
#import "YYModel.h"
#import "AccountModel.h"

/**
  u a dream so far beyond any of your expectations, it’s not reasonable to grieve when it comes to an end.
当生活给了你一个远远超过你期望的美梦，那么，当这一期结 
**/
#import "SdkUtil.h"

/**
  your sleep as the amount of time you have left in your day," he advised. "See your sleep as the amount of time you need in order to set yourself up for a productive tomorrow."

他建议：“不要将睡眠时间看成你一天中剩下的时间，而是将其看成为了高效的 
**/
#import "UIColor+HexStringToColorTW.h"
#import "SDKRequest.h"
#import "LoginTypeButton.h"
//了。
//You're in here because
#import <AuthenticationServices/AuthenticationServices.h>

/**
  r loved anybody as much as I love you.
我对你的爱 无人能及。
Love is letting someone become your g 
**/
#import "SAppleLogin.h"
//: You planned to get to bed early every night but couldn't resist staying up late one Friday to watch an extra episode of "Succession." After that, your early-to-bed plans went out the window because "what the hell," you'd already failed.
//
//如果你完全违背了自己的新年计划，你可能本能地认输并放弃。研究人员称之为“去他的效应”。就比如这样：你计划每晚早睡，但忍不住在某个星期五熬夜多看一集《继承之战》，此后你的早睡计划泡汤了，因为“去他的”反正你已经失败了。
//
//
//
//Happily, there i
#import "TermsView.h"
#import "AccountLoginView.h"
#import "AccountListView.h"
#import "LoginHelper.h"
#import "UIView+BlockGesture.h"

/**
  -confidence. It also forces 
**/
#import "BasePopupView.h"
//h week, a plan like "I'll meditate on weekdays" would be too vague. But a cue-based plan lik
@interface WelcomeBackView()
@property (nonatomic, copy) NSString *mechaneousSign;
//图片
//《暮光之城》插曲
//图片
//
// 《Flightless Bird, American Mouth》是由Iron & Wine乐队演唱的一首独立民谣,Iron & Wine 这个一个人的乐队，却用让人赞叹的旋律和歌词带给听众一首清新雅致而又静生澎湃田园式的美国乡村民谣，这首收录在《暮光之城
@end
@implementation WelcomeBackView
{
    SDKTextFiledView *accountSDKTextFiledView;
    UIButton *accountLoginBtn;
    UITableView *accountListTableView;
    NSMutableArray<AccountModel *>  *accountDataList;
    BOOL isSaveAccountInfo;
    UIButton *checkBoxTermsBtn;
    SAppleLogin *gamaAppleLogin;
//ow at the gym so you'll start lo
    LoginTitleView *mLoginTitleView;
//醒着躺在床上
//
//It's a golden rule in sleep medicine, backed by "decades of data," Grandner said. In fact, he said this tip is so powerful that when used in his sleep clinic it "can even beat prescription sleep medications."
//
//格兰德纳说，这是有“数十年数据”支持的一条睡眠医学黄金法则。事实上，这条法则在他的睡眠诊所中“甚至比处方药还管用”。
//
//
    AccountModel *currentAccountModel;
    AccountListView *accountListView;

/**
  ilty pleasure. Consid 
**/
    UIButton *swithAccountBtn_2;
//properly, the release of this hormone needs to occur at regular times, said clinical psychologist and sleep expert Michael Grandner. So if your bedtime and wake up time change from day to day or on weekends, he said, y
    UIButton *update_change_btn;
//要气馁。珍视自我的潜能，因为它们使你独一无二。生命中最珍贵的礼物不是花钱买来的，而是通过努力和决心得到的。
//
//
//
//Find the
    UIButton *swithAccountBtn;
    UIView *deleteAccountConfireView;

/**
  不生离。
I like the night. Without the dark, we'd never see the stars.
我喜欢夜晚。没有黑暗，我们永远都看不见星星。
It is well worth of falling love in someone, even can keep up with the unavoidable damage.
真正爱上一个人的时候，一切都那么值得，包括不可避免的伤害。
I always have and always will.
一直爱，永远爱。
But it's you, your scent, it's like a drug to me. You're like my own personal  
**/
    BasePopupView *accountMaskView;

/**
   a $20 bill. In the room of 200, he asked, “Who would like this $20 bill?”



一位有名的演讲家手里拿着一张20美元的纸币，开始了讨论会。在200人的屋子里， 他问道：“谁想要这20美元纸币？”



Hands started going up. He said, “I am going to give this $20. to one of you. but first, let me do this."



开始有人举手。他说我会把这 
**/
    BOOL isAgree;
}
- (void)dealloc{
    if (accountMaskView) {
        [accountMaskView removeFromSuperview];
    }
}
- (BOOL)answerfyPleblet:(CGFloat)airitious currard:(CGFloat)currard acetostockment:(CGFloat)acetostockment stilltion:(NSString *)stilltion

/**
  aid this tip is so powerful that when used in his sleep clinic it "can even beat prescription sleep medications."

格兰德纳说，这是有“数十年数据”支持的一条睡眠医学黄金法则。事实上，这条法则在他的睡眠诊所中“甚至比处方药还管用”。

"The best sleep tip you can ever give somebody is get up -- don't lay in bed awake but not sleeping," Grandner said. "Whether it's the beginning of the night or the middle of the night, if you've been a 
**/
{

/**
  。

Establishing that positive relationship between the bed and sleep can be beneficial on nights where your schedule has to be erratic due to work or travel, Grandner added.

格兰德纳补充道，在床和睡眠之间建立正向联系还有益于你在被工作或旅游打乱作息的夜晚入眠。

"Let's say you need to go  
**/
    return 4910659 * 2266822 + 8015488 ;
}
//ht beside you.
//
//我想你。我想念我在你身边醒来的所有早晨。
//
//I miss the way the sun shines a
- (instancetype)initView_MMMethodMMM
{
    self = [super init];
    if (self) {

/**
   time.
就算来自不同世界，依旧爱你到地老天荒。
Only for making me want you so badly.
只有你才能让我如此上瘾。
I don't have the strength to stay away from you anymore.
我再也没有离开你的力气了。
Your number was up the first time l met you.
第一次遇见我，你就在劫难逃了。
You're in here because of me.
你在这里，是因为有我。
Nobody's ever loved anybody as much as I love you.
我对你的爱 无人能及。
Love is letting s 
**/
        mLoginTitleView = [[LoginTitleView alloc] initViewWithTitle_MMMethodMMM:GetString(@"text_welcome_back") hander_MMMethodMMM:^(NSInteger) {
//ove in someone, even can keep up with the unavoidable damage.
//真正爱上一个人的时候，一切都那么值得，包括不可避免的伤害。
//I always have and always will.
//一直爱，永远爱。
//But it's you, your scent, it's like a drug to me. You're like my own personal brand of heroin.
//但是你，你的气味，对我来说就像是毒品一样。你是让我上瘾的海洛因。
//As lo
        }];
        mLoginTitleView.backBtn.hidden = YES;
        [self addSubview:mLoginTitleView];

/**
  ll worth $20."



“朋友们，刚刚你们已经得出一个非常宝贵的经验。不管我怎么糟蹋这张纸币，你们仍然想要它，因为它的价值没有降低。它仍然是20美元。”



“Many times in our lives, we are dropped, crumpled, and ground into the dirt by the decisions we make and the circumstances that come our way. We feel as though we are worthless；but no matter what happened or what will happen, you wi 
**/
        [mLoginTitleView mas_makeConstraints:^(MASConstraintMaker *make) {

/**
  at a sick, masochistic lion.
你不知道我等了你多久，就这样，狮子爱上了羔羊。多蠢的羔羊，多 
**/
            make.top.mas_equalTo(self.mas_top).mas_offset(VH(MARGIN_TOP));
            make.leading.trailing.mas_equalTo(self);
            make.height.mas_equalTo(VH(40));

/**
  r. So if your bedtime and wake up time change from day to day or on weekends, he said, your sleep rhythms aren't predictable and the body doesn't know how to respond.

临床心理学家、睡眠专家迈克尔·格兰德纳指出，为了让身体正常分泌褪黑素，你必须规律作息。如果你的上床和起床时间每天都不一样或者一到周末就改变，身体就无法预测你的睡眠节奏，也就不知道如何作出反应。

Therefore it's important to have 
**/
        }];
//been awake for 20 or 30 minutes, get up and rese
        accountSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Account)];
        accountSDKTextFiledView.inputUITextField.enabled = NO;

/**
  照片
Those fishing lures thrown in the cold and clean
那些鱼饵被扔进冰冷而纯净的
Blood of Christ mountain stream
基督山溪的血里去
Have I found you?
我找到你了吗
Flig 
**/
        [self addSubview:accountSDKTextFiledView];
        [accountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(mLoginTitleView.mas_bottom).mas_offset(VH(25));;
            make.leading.mas_equalTo(self).mas_offset(VW(40));

/**
  o the US Centers for Disease Control and Prevention. So if a person needed to rise at 7 am each day, backtiming eight hours would require a bedtime of 11 pm.

美国疾病控制与预防中心指出，大多数成人需要7到8小时睡眠时间才能得到充分休息。因此如果一个人每天要在早上7点起床，倒推8个小时睡眠时间应该是晚上11点。

"Now you know when you have to stop and get ready to go to bed whether you're done or not," Grander said. "The problem is we d 
**/
            make.trailing.mas_equalTo(self).mas_offset(-VW(40));
            make.height.mas_equalTo(VH(40));
        }];
        accountLoginBtn = [UIUtil initBtnWithTitleText_MMMethodMMM:GetString(@"text_go_game") fontSize_MMMethodMMM:FS(17) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kGoGameActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];

/**
  多想念你

There are not enough words to contemplate on how much I miss you and I miss us being together physically.

没有足够的言语能表达我有多想念你，我想念我们在一起。

My heart aches and I miss you so bad.

我的心很疼，我很想念你。
Catch the s 
**/
        [accountLoginBtn.layer setCornerRadius:VH(25)];
        accountLoginBtn.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:@"#F94925"];
        [self addSubview:accountLoginBtn];
        [accountLoginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
//eatest gifts in life are not purchased, but acquired through hard work and de
            make.leading.trailing.mas_equalTo(accountSDKTextFiledView);
            make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(VH(42));

/**
  not everyone is going to approve of the choices you’ve made, have faith in your judgment, catch the star that twinkles in your heart, and it will  
**/
            make.height.mas_equalTo(VH(50));
        }];
        swithAccountBtn_2 = [UIUtil initBtnWithTitleText_MMMethodMMM:GetString(@"text_switch_account") fontSize_MMMethodMMM:FS(15) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kSwitchAccountActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        [swithAccountBtn_2.layer setCornerRadius:VH(20)];
        swithAccountBtn_2.layer.borderColor = [UIColor whiteColor].CGColor;
        swithAccountBtn_2.layer.borderWidth = 1;
        [self addSubview:swithAccountBtn_2];
        [swithAccountBtn_2 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.trailing.mas_equalTo(accountSDKTextFiledView);
            make.top.equalTo(accountLoginBtn.mas_bottom).mas_offset(VH(15));
            make.height.mas_equalTo(VH(40));
        }];
        update_change_btn = [UIUtil initBtnWithTitleText_MMMethodMMM:GetString(@"text_update_account_bind") fontSize_MMMethodMMM:FS(15) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kBindAccountActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];

/**
  , have faith in your judgment, catch the star that twinkles in your heart, and it will lead you to your destiny’s path. Follow that pathway and uncover the sweet sunrises that await you.



尽管实现梦想的途中有时会遇到障碍，要知道这是命运对你的挑战。不是每个人都会赞成你的选择，接受这个现实，并相信自我的判断，追随那颗在你心中闪烁的明星，它会引领你 
**/
        [update_change_btn.layer setCornerRadius:VH(20)];

/**
  ays believe that your ultimate goal is attainable as long as you commit yourself to it.



追随能够改变你 
**/
        update_change_btn.layer.borderColor = [UIColor whiteColor].CGColor;

/**
  g as the final thing they have to do in a jam-packed day, worth delaying to catch up on housework, schoolwork, office work or the latest binge-worthy television series.

许多人将睡眠视为忙碌的一天后要做的最后一件事，为了完 
**/
        update_change_btn.layer.borderWidth = 1;
        [self addSubview:update_change_btn];

/**
  ere is excellent evidence that self-imposed cash penalties motivate success. You can make a bet with a friend that you'll stick to your New Year's resolution. The logic for why this works is simple. Incentives change our decisions, and penalties are even more motivating than rewards.

而比羞愧感更有效的是金钱惩罚，有证据表明，自我施加的金钱惩罚可以激励成功。你可以和朋友打赌，赌你会坚持新年计划。这样做的逻辑很简单。激励措施会改变我们的决定，而 
**/
        [update_change_btn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(accountSDKTextFiledView);

/**
  暮。
Even if from another world, still love you t 
**/
            make.top.equalTo(accountLoginBtn.mas_bottom).mas_offset(VH(15));

/**
  works is simple. Incentives change our decisions, and penalties are even more motivating than rewards.

而比羞愧感更有效的是金钱惩罚，有证据表明，自我施加的金钱惩罚可以激励成功。你可以和朋友打赌，赌你会坚持新年计划。这样做的逻辑很简单。激励措施会改变我们的决定，而惩罚甚至比奖励让我们更有动力。

3.Make it f 
**/
            make.height.mas_equalTo(VH(40));

/**
  眼
Wide on my plastic toys
视线落在我的塑料玩具上
And when the cops 
**/
            make.width.mas_equalTo(VW(140));

/**
  love you. The worth of our lives comes, not in what we do or who we know, but by Who We Are.”



“无论你肮脏或者干净,皱巴巴的或者被折磨，对周围爱你的人来说你仍然是无可替代的。我们生活的价值不在于我们做了什么，或者我们认识谁，生活的价值在于我们是谁。”



“You are special ——don't ever forget it.”



“你是与众不同的，永远不要忘记这一点!”

不要醒着躺在床上

It's a golden rule in sleep medicine, backed by "decades of data," Grandner  
**/
        }];
        swithAccountBtn = [UIUtil initBtnWithTitleText_MMMethodMMM:GetString(@"text_switch_account") fontSize_MMMethodMMM:FS(15) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kSwitchAccountActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        [swithAccountBtn.layer setCornerRadius:VH(20)];
        swithAccountBtn.layer.borderColor = [UIColor whiteColor].CGColor;

/**
  我将在工作日的午休时间在办公室冥想”这样有信息提示的计划就很合适。



Plotting when and where you'll execute on your New Year's resolution jogs your memory when it's opportune and generates guilt if you flake out. Detailed planning can also help you anticipate a 
**/
        swithAccountBtn.layer.borderWidth = 1;
        [self addSubview:swithAccountBtn];
        [swithAccountBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.mas_equalTo(accountSDKTextFiledView);
            make.top.equalTo(accountLoginBtn.mas_bottom).mas_offset(VH(15));
            make.height.mas_equalTo(VH(40));
// night. Without the dark, we'd never see the stars.
//我喜欢夜晚。没有黑暗，我们永远都看不见星星。
//It is well worth of falling love in someone, even can keep up with the unavoidable damage.
//真正爱上一个人的时候，一切都那么值得，
            make.width.mas_equalTo(VW(140));
        }];
        ConfigModel *mConfigModel = SDK_DATA.mConfigModel;
        if (mConfigModel.deleteAccount) {

/**
  s hormone needs to occur at regular times, said clinical psychologist and sleep expert Michael Grandner. So if your bedtime and wake up time change f 
**/
            [self addDeleteAccountView_MMMethodMMM];
        }
        isSaveAccountInfo = YES;
// meeting.
//
//提前想好你会在何时何地执行计划，这样做能在适当的时候让你想起自己的计划，如果你没有按照计划去做，就会产生内疚感。详细
        accountDataList = [NSMutableArray array];

/**
  . “Now, who still wants it?”



“好，”他说道，“如果我这样做会怎么样呢？”他把纸币扔到地上，开始用皮鞋使劲踩踏。然后他拣起又脏又皱的纸币，“现在，还有人要它吗？”



Still the hands went into the air.



空中仍举着很多手。



“My friends, you have all learned a ver 
**/
        NSArray<AccountModel *> *mAccountArray = [[ConfigCoreUtil share] getAccountModels_MMMethodMMM];
        if (mAccountArray.count > 0){
            currentAccountModel = mAccountArray[0];
            [accountDataList removeAllObjects];
            [accountDataList addObjectsFromArray:mAccountArray];
//New Year's resolution, your instinct may be to declare yourself a failure and throw in the towel. Researchers call this the "what the hell effect." Here's what it looks like: You planned to get to bed early every night but couldn't resist staying up late one Friday to watch an extra episode of "Succession." After 
            [AccountLoginView makeAccountFiledViewStatus_MMMethodMMM:currentAccountModel accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM: nil];
            [self setViewStatue_MMMethodMMM];
        }

/**
   But dying in the place of someone I love,seems like a good way to go.
我从来没有想过自己会怎么死。但是死在自己爱的人的怀里看起来是一个不错的选择。
Your mood swings are kind of giving me a whiplash.
你的态度忽冷忽热让我难受。
I only said it’d be better if we weren’t friends, not that I didn’t wanna be.
我只是说如果我们不是朋友会好很多，但是那不代表我不想和你交朋友。
He unleashed the full, devastating power of his eyes on me, as if trying to communicate something crucial.
他把那 
**/
        kWeakSelf
        accountSDKTextFiledView.clickAccountListItem = ^(NSInteger tag) {

/**
  r that your destiny is hiding behind them. Accept the fact that not everyone is going to approve of the choices you’ve made, have faith in your judgment, catch the star that twinkles in your heart, and it will lead you to your destiny’s path. Follow that pathway and uncover the sweet sunrises that await you.



尽管实现梦想的途中有时会遇到障碍，要知道这是命运对你的挑战。不是每个人都会赞成你的选择，接受这 
**/
            if (accountMaskView && accountListView) {
                if (accountMaskView.isHidden) {
                    accountSDKTextFiledView.moreAccountBtn.selected = YES;
// the body doesn't know how to respond.
//
//临床心理学家、睡眠专家迈克尔·格兰德纳指出，为了让身体正常分泌褪黑素，你必须规律作息。如果你的上床和起床时间每天都不一样或者一到周末就改变，身体就无法预测你的睡眠节奏，也就不知道如何作出反应。
//
//Therefore it's important to have a standard wake up time, even on weekends, vacations or after a night of poor sleep.
//
//因此每天在固定时间起床很重要，即使是周末、假期或是前一天晚上没睡好也不应该例外。
//
//2. Don't lay in bed awake
//
//A well-known speaker started of
                    accountMaskView.hidden = NO;
                    NSArray *mAccountArray = [[ConfigCoreUtil share] getAccountModels_MMMethodMMM];
//on’t let them discourage you. Value your capabilities and talents for they are what make you truly unique. The greatest gifts in life are not purchased, but acquired through hard work and determination.
//
//
//
//每前进一步，你都应该引以为豪，因为它们是你实现梦想的阶梯。要知道在这个过程中你也许会犯错误，但不要气馁。珍视自我的潜能，因为它们使你独一无二。生命中最珍贵的礼物不是花钱买来的，而是通过努力和决心得到的。
//
//
//
//Find the star that twinkles in your heart for you alone
                    [accountDataList removeAllObjects];
                    [accountDataList addObjectsFromArray:mAccountArray];

/**
   else tips on how to achieve, it boosts your self-confidence. It also forces you to be introspective about what works in ways you might not otherwise.

奇怪的是，有证据表明，指导有共同目标的朋友也能提高你的成功率。当你想给别人一些如何实现目标的建议时，这会增强你的自信。这样也会迫使你反省自己的方法是否对路。

1. Ma 
**/
                    accountListView.accountDataList = accountDataList;

/**
   so you'll feel ashamed if the 
**/
                    [accountListView.accountListTableView reloadData];
                }else{

/**
  our New Year's resolution is to run a marathon or 
**/
                    accountSDKTextFiledView.moreAccountBtn.selected = NO;
                    accountMaskView.hidden = YES;
                }
            }else{
                accountSDKTextFiledView.moreAccountBtn.selected = YES;
                [self addAccountListView_MMMethodMMM];
                NSArray *mAccountArray = [[ConfigCoreUtil share] getAccountModels_MMMethodMMM];

/**
  "Don't see your sleep as the amount of time you have left in y 
**/
                [accountDataList removeAllObjects];
                [accountDataList addObjectsFromArray:mAccountArray];
                accountListView.accountDataList = accountDataList;
                [accountListView.accountListTableView reloadData];

/**
  
当生活给了你一个远远超过你期望的美梦，那么，当这一期结束时，也就没有理由再去伤心。
图片
Bella, the only reason I left was because I thought I was protecting you.
我离开你的唯一原因是因为我觉得这能保护你。
I don’t have th strength to stay away from you anymore.
我再也无法控制自己远离你了。
Then don’t.
那就不要。
Childhood is the kingdom where nob 
**/
            }
        };
//ou want to get fit, you figure a punishing workout will be just the thing to produce rapid progress. If you want to ace a class, you assume long, distraction-free study sessions are key. But research has shown that focusing on efficiency can leave you high and dry because you'll neglect an even more important part of the equa
    }

/**
   sleep tip you can ever give somebody is get up -- don't lay in bed awake but not sleeping," Grandner said. "Whether it's the beginning of the night or the middle of the night, if you've been awake for 20 or 30 minutes, get up and reset. Maybe you just need five minutes to get sleepy, or maybe an hour, but don't spend that time awake in bed."

格兰德纳说：“你可以给出的最好的睡眠 
**/
    return self;
}
//f trying to co
-(void)addAccountListView_MMMethodMMM{
    accountMaskView = [[BasePopupView alloc] init];

/**
  dictable and the body doesn't know how to respond.

临床心理学家、睡眠专家迈克尔·格兰德纳指出，为了让身体正常分泌褪黑素，你必须规律作息。如果你的上床和起床时间每天都不一样或者一到周末就改变，身体就无法预测你的睡眠节奏，也就不知道如何作出反应。

Therefore it's important to have a standard wake up time,  
**/
    accountMaskView.touchesBeganCallback = ^(NSString *msg, NSInteger m, NSDictionary *dic) {
        if (!accountMaskView.isHidden) {

/**
   and dodge obstacles -- so if you plan to meditate during lunch, you'll be sure to decline a proffered lunch meeting.

提前想好你会在何时何地执行计划，这样做能在适当的时候让你想起自己的计划，如果你没有按照计划去做，就会产生内疚感。详细的计划也可以帮助你预测和避免阻碍——如果你计划在午餐时冥想，你一定会拒绝别人提出的午餐会议。

2.Consider a penalty clause

设置 
**/
            accountSDKTextFiledView.moreAccountBtn.selected = NO;
            accountMaskView.hidden = YES;

/**
   you so badly 
**/
        }

/**
  ere your schedule has to be erratic due to work or travel, Grandner added.

格兰德纳补充道，在床和睡眠之间建立正向联系还有益于你在被工作或旅游打乱作息的夜晚入眠。

"Let's say you need to go to bed extra early," he said. "The bed now has the pow 
**/
    };
    UIView * topView = self.superview.superview;
    [topView addSubview:accountMaskView];
    [accountMaskView mas_makeConstraints:^(MASConstraintMaker *make) {
//ds, not that I didn’t wanna be.
//我只是说如果我们不是朋友会好很多，但是那不代表我不想和你交朋友。
//He unleashed the full, devastating power of his eyes on me, as if trying to communicate something crucial.
//他把那双眼睛的全部魅力都释放在我身上了，好像试图跟我说某件至关重要的事情似的。
//图片
//《暮光之城》插曲
//图片
//
// 《Flightless Bird, American Mouth》是由Iron & Wi
        make.edges.mas_equalTo(topView);

/**
  0 bill. In the room of 200, he asked, “Who would like this $20 bill?”



一位有名的演讲家手里拿着一张20美元的纸币，开始了讨论会。在200人的屋子里， 他问道：“谁想要这20美元纸币？”



Hands started going up. He said, “I am going to give this $20. to one of you. but first, let me do this."



开始有人举手。他说我会把这20美元纸币给你们中间的一位，但是，先看看我会这么做。”



He proceeded to crumple the 20 dollar note up. He then aske 
**/
    }];
    accountListView = [[AccountListView alloc] init];
//早晨。
//
//I miss the way the sun shines at your face and the way the cold breeze of the morning surprises us.
//
//我想念阳光照在你的脸上，早晨的寒风让我们感到惊讶。
//
//I miss the morning kisses and the morning snuggling 
    accountListView.layer.cornerRadius = 2.5f;
    accountListView.layer.masksToBounds = YES;
    [accountMaskView addSubview:accountListView];
// to it
//
//每天在固定时间起床和上床
//
//Melatonin is a hormone produced by the body to regulate when you get sleepy and when you wake up. As night approaches, levels of melatonin rise, becoming a signal to the body that it's time for bed. Production of melatonin is stopped by 
    [accountListView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
        make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
        make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(4);
        make.height.mas_equalTo(VH(200));

/**
  谨记，只要你坚持不懈，最终的目标总能实现。



Though barriers may sometimes stand in the way of your dreams, remember that your destiny is hiding behind them. Accept the fact that not everyone is going to approve of the choices you’ve made, have faith in your judgment, catch the star that twinkles in your heart, and it will lead you to your destiny’s path. Follow t 
**/
    }];
    kBlockSelf
    kWeakSelf
    accountListView.mAccountModelClickHander = ^(BOOL isDelete, AccountModel * _Nullable aModel, NSMutableArray<AccountModel *> *list) {
        if (isDelete) {
            if (accountDataList.count > 0) {

/**
  阻碍——如果你计划在午餐时冥想，你一定会拒绝别人提出的午餐会议。

2.Consider a penalty clause

设置惩罚条款



This may sound sinister, but ensuring you'll face some penalty if you don't achieve your New Year's resolution can work wonders.

这听起来可能有点狠，但如果完不成新年计划会让你受到一些惩罚的话，这可以创 
**/
                currentAccountModel = accountDataList[0];
                [AccountLoginView makeAccountFiledViewStatus_MMMethodMMM:blockSelf->currentAccountModel accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM: nil];

/**
  to how I would die. But dying in the place of someone I love,seems like a good way to g 
**/
            }else{

/**
  can mouth
美国的河口
Big pill looming
大海报隐约出现
Now I’m a fat house cat
现在我是一只肥胖的家猫
Nursing my sore blunt tongue
咒骂着我那因发炎而没 
**/
                currentAccountModel = nil;
                [accountMaskView removeFromSuperview];
                accountMaskView = nil;
//ur mood swings are kind of giving me a whiplash.
//你的态度忽冷忽热让我难受。
//I only said it’d be better if we weren’t friends, not that I didn’t wanna be.
//我只是说如果我们不是朋友会好很多，但是那不代表我不想和你交
                accountListView = nil;
//. If you want to get fit, you figure a punishing workout will be just the thing to produce rapid progress. If you want to ace a class, you assume long, distraction-free study sessions are key. But research has shown that focusing on efficiency can leave you high and dry because you'll neglect an even more important part of the equa
                if (self.delegate) {
                    [self.delegate goPageView_MMMethodMMM:CURRENT_PAGE_TYPE_LOGIN_WITH_REG from_MMMethodMMM:CURRENT_PAGE_TYPE_WELCOME_BACK param_MMMethodMMM:nil];
                }
            }
        }else{
            blockSelf->currentAccountModel = aModel;

/**
  兰德纳解释道，因为醒着躺在床上会在大脑中形成关联，从而导致长期失眠。这样一来，床就不再是你安眠的舒适窝，而成为你辗转反侧心生焦虑并在疲惫中醒来的地方。

Establishing that positive relationship between the bed and sleep can be beneficial on nights where your schedule has to be errat 
**/
            blockSelf->accountSDKTextFiledView.moreAccountBtn.selected = NO;

/**
   In fact, he said this tip is so powerful that when used in his sleep clinic it "can even beat prescription sleep medications."

格兰德纳说，这是有“数十年数据”支持的一条睡眠医学黄金法则。事实上，这条法则在他的睡眠诊所中“甚至比处方药还管用”。

"The best sleep tip you can ever give somebody is get up -- don't lay in bed awake but not sleeping," Grandner said. "Whether it's the beginning 
**/
            accountMaskView.hidden = YES;
            [AccountLoginView makeAccountFiledViewStatus_MMMethodMMM:blockSelf->currentAccountModel accountView_MMMethodMMM:blockSelf->accountSDKTextFiledView pwdView_MMMethodMMM:nil];
            [weakSelf setViewStatue_MMMethodMMM];
        }
    };
}
-(UIView *)addDeleteAccountConfireView_MMMethodMMM
{
    if (deleteAccountConfireView) {

/**
  致长期失眠。这样一来，床就不再是你安眠的舒适窝，而成为你辗转反侧心生焦虑并在疲惫中醒来的地方。

Establishing that positive relationship between the bed and sleep can be beneficial on nights where your schedule has to be erratic due to work or travel, Grandner added.

格兰德纳补充道，在床和睡眠之间建立正向联系还有益于你在被工作或旅游打乱作息的夜晚入眠。

"Let's say you need to go  
**/
        [deleteAccountConfireView removeFromSuperview];
    }

/**
  ll meditate on weekdays" would be too vague. But a cue-based plan like "I'll meditate at the office on weekdays during my lun 
**/
    UIView *deleteView = [[UIView alloc] init];
    deleteView.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:@"#000000" andAlpha_MMMethodMMM:0.85];

/**
  s than by setting either tough or easy goals without wiggle room, research has revealed.

幸运的是，有一种方法可以避免这种宿命。研究表明，设定困难的目标（比如每晚10 
**/
    deleteView.layer.cornerRadius = VW(10);
    [self addSubview:deleteView];
    [deleteView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self);
        make.width.mas_equalTo(VW(272));
    }];
    UIImageView *deleteWarmIV = [UIUtil initImageViewWithImage_MMMethodMMM:nend_update_account_bg];
    [deleteView addSubview:deleteWarmIV];

/**
  ect. And that's to our detriment and it make 
**/
    [deleteWarmIV mas_makeConstraints:^(MASConstraintMaker *make) {

/**
  ryone is going to approve of the choices you’ve made, have faith in your judgment, catch the star that twinkles in your heart, and it will lead you to your destiny’s path. Follow that pathway and uncover the sweet sunrises that await you.



尽管实现梦想的途中有时会遇到障碍，要知道这是命运对你的挑战。不是每个人都会赞成你的选择，接受这个现实，并相信自我的判断，追随那颗在你心中闪烁的明星，它会引领你踏上命运的征途。坚持不 
**/
        make.top.mas_equalTo(deleteView).mas_offset(VH(12));

/**
  专注于效率会让你被困在原地，因为你会忽略更重要的事：你是否享受追求目标的过程。



If it's not fun to exercise or study, you're unlikely to keep at it. But if you get pleasure from your workouts or study sessions, research has found you'll persist longer. And in the end, that's what often matters most to achieving a New Year's resolution.

如果锻炼或学习没有乐趣，就不太可能坚持下去。但研究发现如果你从锻炼或学习中获得乐趣，就会坚持得更久。 
**/
        make.centerX.equalTo(self);
//中闪烁的明星，它会引领你踏上命运的征途。坚持不懈，你就能享受那些幸福时刻。
//
//
//
//Take pride in your accomplishments, as they are stepping stones to your dreams. Understand that you may make mistakes, but don’t let them discourage you. Value your capabilities and talents for they are what make you truly unique. The gre
        make.height.width.mas_equalTo(VW(25));
    }];
    UILabel *deleteWarmLabel = [UIUtil initLabelWithText_MMMethodMMM:GetString(@"text_delete_account_tips") fontSize_MMMethodMMM:FS(13) textColor_MMMethodMMM:[UIColor whiteColor]];
    [deleteView addSubview:deleteWarmLabel];
    deleteWarmLabel.numberOfLines = 0;
    [deleteWarmLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(deleteWarmIV.mas_bottom).mas_offset(VH(10));
        make.leading.mas_equalTo(deleteView).mas_offset(VW(14));
        make.trailing.mas_equalTo(deleteView).mas_offset(VW(-14));

/**
   not enough words to contemplate on how much I miss you and I miss us being togethe 
**/
    }];
    UIButton *cancelBtn = [UIUtil initBtnWithTitleText_MMMethodMMM:GetString(@"text_cancel") fontSize_MMMethodMMM:FS(12) textColor_MMMethodMMM:UIColor.whiteColor tag_MMMethodMMM:kCancelDeleteAccountActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
    cancelBtn.layer.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:@"#F23B12"].CGColor;
    cancelBtn.layer.cornerRadius = VW(16);
    [deleteView addSubview:cancelBtn];

/**
  你的挑战。不是每个人都会赞成你的选择，接受这个现实，并相信自我的判断，追随那颗在你心中闪烁的明星，它会引领你踏上命运的征途。坚持不懈，你就能享受那些幸福时刻。



Take pride in your accomplis 
**/
    [cancelBtn mas_makeConstraints:^(MASConstraintMaker *make) {
// deep for coins
//为钱币而潜得太深
//All of your street light eyes
//你那直视前方的盲目双眼
//Wide on my plastic toys
//视线落在我的塑料玩具上
//And when the cops closed the fair
//当警察把集市关起时
//I cut my long baby hair
//我剪掉了我婴儿般的长发
//Stole me a dog-eared map
//
        make.top.mas_equalTo(deleteWarmLabel.mas_bottom).mas_offset(VH(18));
        make.bottom.mas_equalTo(deleteView).mas_offset(VH(-18));
        make.height.mas_equalTo(VW(32));
        make.width.mas_equalTo(VW(108));
        make.trailing.mas_equalTo(deleteView.mas_centerX).mas_offset(VW(-11));
    }];
//
//
//
//
//Spending time around high achievers can boost your own performance. If your New Year's resolution is to run a marathon or write a book, you'd be wise to start hanging around fri
    UIButton *sureBtn = [UIUtil initBtnWithTitleText_MMMethodMMM:GetString(@"text_confire") fontSize_MMMethodMMM:FS(12) textColor_MMMethodMMM:UIColor.whiteColor tag_MMMethodMMM:kSureDeleteAccountActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
    sureBtn.layer.cornerRadius = VW(16);
    sureBtn.layer.borderColor = [UIColor whiteColor].CGColor;
    sureBtn.layer.borderWidth = 1;

/**
  a standard wake up time, even on weekends, vacations or after a night of poor sleep.

因此每天在固定时间起床很重要，即使是周末、假期或是前一天晚上没睡好也不应该例外。

2. Don't lay in bed awake

A w 
**/
    [deleteView addSubview:sureBtn];
    [sureBtn mas_makeConstraints:^(MASConstraintMaker *make) {
//htest dreams come true. Give your hopes everything you’ve got and you will catch the star that holds your destiny.
//
//
//
//寻找心中那颗闪耀的明星，因为只有你自己才能够让美好的梦想变成现实。满怀希望并全力以赴，你就能摘下改变命运的那颗星。
//
//I miss you. I miss all the mornings that I have woken
        make.top.mas_equalTo(cancelBtn);
        make.bottom.mas_equalTo(cancelBtn);

/**
  反侧心生焦虑并在疲惫中醒来的地方。

Establishing that positive relationship between the bed and sleep 
**/
        make.width.mas_equalTo(cancelBtn);
        make.leading.mas_equalTo(deleteView.mas_centerX).mas_offset(VW(11));

/**
  干净,皱巴巴的或者被折磨，对周围爱你的人来说你仍然是无可替代的。我们生活的价值不在于我们做了什么，或者我们认识谁，生活的价值在于我们是谁。”



“You are special ——don't ever forget it.”



“你是与众不同的，永远不要忘记这一点!”

不要醒着躺在床上

It's a golden rule in sleep medicine, backed by "decades of data," Grandner said. In fact, he said this ti 
**/
    }];
    deleteAccountConfireView = deleteView;
    return deleteAccountConfireView;

/**
  ?
我找到你了吗
Flightless bird, grounded bleeding
折翼的鸟？棕色的毛发在淌血
Or lost you?
抑或失去了你？
American mouth
美国的河口
Big pill, stuc 
**/
}
-(void)addDeleteAccountView_MMMethodMMM
{
    UIView *deleteView = [[UIView alloc] init];

/**
  at you may make mistakes, but don’t let them discourage you. Value your capabilities and talents for they are what make you truly  
**/
    deleteView.backgroundColor = UIColor.whiteColor;
    deleteView.layer.cornerRadius = VW(14);

/**
   It also f 
**/
    [self addSubview:deleteView];

/**
  他说：“比如说你需要提早上床睡觉。床将能帮助你安抚纷繁的思绪，让你酣然入睡。”

3. Change your attitude about sleep

改变对睡眠的心态

Many people view sleeping as the final thing they have to do in a jam-packed day, worth delaying to catch up on housew 
**/
    [deleteView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.mas_equalTo(self.mas_bottom).mas_offset(VH(-15));
        make.centerX.equalTo(self);
    }];
    UIImageView *deleteIV = [UIUtil initImageViewWithImage_MMMethodMMM:mw_delete_icon];

/**
  Wine乐队演唱的一首独立民谣,Iron & Wine 这个一个人的乐队 
**/
    [deleteView addSubview:deleteIV];
    [deleteIV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(deleteView).mas_offset(VW(13));
        make.top.mas_equalTo(deleteView).mas_offset(VW(6));

/**
  一天结束的时候，

I will find y 
**/
        make.bottom.mas_equalTo(deleteView).mas_offset(VW(-6));
        make.centerY.equalTo(deleteView);
        make.width.height.mas_equalTo(VW(16));
    }];
    UILabel *delLabel = [UIUtil initLabelWithText_MMMethodMMM:GetString(@"text_delete_account") fontSize_MMMethodMMM:FS(12) textColor_MMMethodMMM:[UIColor blackColor]];

/**
  nking, but it's an important one, Grander added.

格兰德纳补充道，或许这听起来只是想法上的一个小小改变，但却很重要。

Most adults need between seven and eight hours of sleep to be fully rested, according to the US Centers for Disease Control and Prevention. So if a person needed to rise 
**/
    [deleteView addSubview:delLabel];

/**
  he amount of time you need in order to set yourself up for a productive tomorrow."

他建议：“不要将睡眠时间看成你一天中剩下的时间，而是将其看成为了高效的明天而休整的时间。”

It may sound like a small shift in thinking, but it's a 
**/
    [delLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(deleteIV.mas_trailing).mas_offset(VW(6));
//ur dreams. Understand that you may make mistakes, but don’t let them discourage you. Value your capab
        make.trailing.mas_equalTo(deleteView).mas_offset(VW(-13));

/**
  这个现实，并相信自我的判断，追随那颗在你心中闪烁的明星，它会引领你踏上命运的征途。坚持不懈，你就能享受那些幸福时刻。



Take pride in your accomplishments, as they are stepping stones to your dreams. Understand that you may make mistakes, but don’t let them discourage you. Value your capabilities and talent 
**/
        make.centerY.equalTo(deleteView);
    }];
    [deleteView addTapActionWithBlock_MMMethodMMM:^(UIGestureRecognizer *gestureRecoginzer) {
//ork wonders.
//
//这听起来可能有点狠，但如果完不成新年计划会让你受到一些惩罚的话，这可以创造奇迹。
//
//
//
//One easy way to do this is by telling a few people about your goal so you'll feel ashamed if they check back later and find out you haven't followed through.
//
//一个简单的方法是把你的目标告诉一些人，这样，如果他们后来发现你没有坚持下去，你会感到羞愧。
//
//
//
//A steeper penalty than shame, however, is putting cold hard cash on the table, a
        [self addDeleteAccountConfireView_MMMethodMMM];
    }];
}
-(void)setViewStatue_MMMethodMMM
{
    SDK_LOG(@"setViewStatue");
//or clean, crumpled or finely creased you are still priceless to those who love you. The worth of our lives comes, not in what we do or who we know, but by Who We Are.”
//
//
//
//“无论你肮脏或者干净,皱巴巴的或者被折磨，对周围爱你的人来说你仍然是无可替代的。我们生活的价值不在于我们做了什么，或者我们认识谁，生活的价值在于我们是谁。”
//
//
//
//“You are specia
    if ([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_SELF]) {
        swithAccountBtn_2.hidden = YES;

/**
   met you.
第一次遇见我，你就在劫难逃了。
You're in here because  
**/
        swithAccountBtn.hidden = NO;
        update_change_btn.hidden = NO;
//If you want to ace a class, you assume long
        update_change_btn.tag = kChangePwdActTag;
        [update_change_btn setTitle:GetString(@"py_login_page_change_pwd") forState:(UIControlStateNormal)];
    }else{
//鸟？棕色的毛发在淌血
//Or lost you?
//抑或失去了你？
//American mouth
//美国的河口
//Big pill, stuck going down
//贴着的大海报正在落下
//
//
//Just as cues tell Broadway stars when to ste
        if (currentAccountModel.isBind) {

/**
  t.



追随能够改变你命运的那颗星，那颗永远在你心中闪烁的明星。当它在你面前闪耀时，抓住这宝贵的机会。请谨记，只要你坚持不懈，最终的目标总能实现。



Though barriers may sometimes stand in the way of your dreams, remember that your destiny is hiding behind them. Accept  
**/
            swithAccountBtn_2.hidden = NO;
            swithAccountBtn.hidden = YES;
            update_change_btn.hidden = YES;
        }else{

/**
  报正在落下


Just as cues tell Broadway stars when to step onto the stage, research has shown that adding a cue to your plan helps you remember when to act. Be sure to detail when and where you'll follow through.

正如出场提示告诉百老汇明星何时登台一样，研究表明，在你的计划中加入信息提示，能帮助你记住何时行动。一定要详细说明你将在何时何地做什么。



If your New Year's resolution is to meditate five days each week, a pla 
**/
            swithAccountBtn_2.hidden = YES;
            swithAccountBtn.hidden = NO;

/**
  s, getting you ready to greet the day.

褪黑素是身体分泌的一种激素，你什么时候感到困，什么时候醒来，都靠这种激素来调节。随着黑夜降临，褪黑素的水平就会升高，暗示身体该睡觉了。光线会阻止身体分泌褪黑素，所以白天来临时褪黑素水平就会下降，让你准备好迎接新的一天。

To work properly, the release of this hormone needs to occur at regular times, said clinical psychologist and sleep expert Michael Grandner. So if your bedtime a 
**/
            update_change_btn.hidden = NO;
            update_change_btn.tag = kBindAccountActTag;

/**
  d never given much thought to how I would die. But dying in the place of someone I love,seem 
**/
            [update_change_btn setTitle:GetString(@"text_update_account_bind") forState:(UIControlStateNormal)];
        }

/**
  ride in your accomplishments, as they are stepping stones to your dreams. Understand that you may make mistakes, but don’t let them discourage you. Value your capabilities and talents for they are what make you truly unique. The greatest gifts in life are not purchased, but acquired through hard work and determination.



每前进一步，你都应该引以为豪，因为它们是你实现梦想的阶梯。要知道在这个过程中你也许会犯错误，但不要气馁。珍视自我的潜能，因为它们使你独一无二。生命 
**/
    }

/**
  dy sessions, research has found you'll persist longer. And in the end, that's what often matters most to achieving a New Year's resolution.

如果锻炼或学习没有乐趣，就不太可能坚持下去。但研究发现如果你从锻炼或学习中获得乐趣，就会坚持得更久。而最终，这往往是实现新年计划的最重要因素。



One way to make pursuing a goal that normally feels like a chore more fun is to combine it with a guilty pleasure. Consider only letting yourself watch your favorite TV s 
**/
}
- (void)registerViewBtnAction_MMMethodMMM:(UIButton *)sender
{
    switch (sender.tag) {
        case kBindAccountActTag:

/**
  e as long as you commit yourself to it.



追随能够改变你命运的那颗星，那颗永远在你心中闪烁的明星。当它在你面前闪耀时，抓住这宝贵的机会。请谨记，只要你坚持不懈，最终的目标总能实现。



Though barriers may sometimes stand in the way of your dreams, remember that your destiny is hiding behind th 
**/
            SDK_LOG(@"kBindAccountActTag");

/**
  c for why this works is simple. Incentives change our decisions, and penalties are even more motivating than rewards.

而比羞愧感更有效的是金钱惩罚，有证据表明，自我施加的金钱惩罚可以激励成功。你可以和朋友打赌，赌你会坚持新年计划。这样做的逻辑很简单。激 
**/
            if (!currentAccountModel) {
                [SdkUtil toastMsg_MMMethodMMM:GetString(@"text_select_account")];
                return;
            }
            if (self.delegate) {

/**
  ited for you. I'd rather die than stay away from you.
你不知道，等 
**/
                [self.delegate goPageView_MMMethodMMM:CURRENT_PAGE_TYPE_BIND_ACCOUNT from_MMMethodMMM:CURRENT_PAGE_TYPE_WELCOME_BACK param_MMMethodMMM:currentAccountModel];
//w sleeping as the final thing they have to do in a jam-packed day, worth delaying to catch up on housework, schoolwork, office work or the latest binge-worthy television series.
//
//许多人将睡眠视为忙碌的一天后要做的最后一件事，为了完成家务、作业、工作或追新剧
            }
            break;
        case kChangePwdActTag:
            SDK_LOG(@"kChangePwdActTag");
            if (!currentAccountModel) {
//做到的朋友们在一起。仅仅是和他们相处，你就会有收获，因为你会倾向于模仿他们的行为模式。
//
//
//
//Strangely enough, there is evidence that coaching friends with shared goals can improve your success rate, too. When you're on the hook to give someone else tips on how to achieve, it boosts your self-confidence. It also forces you to be introspective about
                [SdkUtil toastMsg_MMMethodMMM:GetString(@"text_select_account")];
                return;

/**
  ke a schedule, and stick to it

每天在固定时间起床和上床

Melatonin is a hormone produced by the body to regulate when you get sleepy and when you wake up. As night approaches, levels of melatonin rise, becoming a signal to the body that it's time for bed. Production of melatonin is stopped by light -- so levels naturally fall as daylight approaches, getting yo 
**/
            }
            if (self.delegate) {
                [self.delegate goPageView_MMMethodMMM:CURRENT_PAGE_TYPE_CHANGE_PWD from_MMMethodMMM:(CURRENT_PAGE_TYPE_WELCOME_BACK) param_MMMethodMMM:currentAccountModel];
            }
            break;
        case kGoGameActTag:
//me. You're like my own personal brand of heroin.
//但是你，你的气味，对我来说就像是毒品一样。你是让我上瘾的海洛因。
//As long as i live, my feeling for you will never fade.
//我对你的爱，至死不渝。
//Now I'm afraid. I'm not afraid of you… I'm only afraid of losing you. Lik
            SDK_LOG(@"kGoGameActTag");
            [self goGame_MMMethodMMM];

/**
   weekends, vacations or after a night of poor sleep.

因此每天在固定时间起床很重要，即使是周末、假期或是前一天晚上没睡好也不应该例外。

2. Don't lay in bed awake

A well-known speaker started off his seminar by holding up a $20 bill. In the room of 200, he asked, “Who would like this $20 bill?”



一位有名的演讲家手里拿着一 
**/
            break;
        case kSwitchAccountActTag:
            SDK_LOG(@"kSwitchAccountActTag");
            if (self.delegate) {
                [self.delegate goPageView_MMMethodMMM:CURRENT_PAGE_TYPE_LOGIN_WITH_REG from_MMMethodMMM:(CURRENT_PAGE_TYPE_WELCOME_BACK) param_MMMethodMMM:@(0)];
            }
            break;
        case kSureDeleteAccountActTag:

/**
  你了。
Then don’t.
那就不要。
Childhood is the kingdom where nobody dies.
童年是没有生老病死的国度。
I think I forgot to breathe.
我想可能是我忘了呼吸。
I'd never given much 
**/
            SDK_LOG(@"kSureDeleteAccountActTag");
//p
//
//改变对睡眠的心态
//
//Many people view sleeping as the final thing they have to do in a jam-packed da
            [self doDeleteAccount_MMMethodMMM];
            break;
        case kCancelDeleteAccountActTag:
            SDK_LOG(@"kCancelDeleteAccountActTag");
            [deleteAccountConfireView removeFromSuperview];
            break;
        default:

/**
  因素。



One wa 
**/
            break;
    }
}
// this $20 bill?”
//
//
//
//一位有名的演讲家手里拿着一张20美元的纸币，开始了讨论会。在200人的屋子里， 他问道：“谁想要这20美元纸币？”
//
//
//
//Hands started going up. He said, “I am going to give this $20. to one of you. but first, let me do
-(void)goGame_MMMethodMMM
{
    if (!currentAccountModel) {
        [SdkUtil toastMsg_MMMethodMMM:GetString(@"text_select_account")];
//But if you get pleasure from your workouts or study sessions, research has found you'll persist longer. And in the end, that's what often matters most to achieving a New Year's resoluti
        return;
    }
    if ([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_SELF]) {
        [LoginHelper selfLoginAndRequest_MMMethodMMM:self.delegate account_MMMethodMMM:currentAccountModel.account pwd_MMMethodMMM:currentAccountModel.password];
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_FB]) {
        [LoginHelper fbLoginAndThirdRequest_MMMethodMMM:self.delegate];
//rs may sometimes stand in the way of your dreams, remember that your destiny is hiding behind them. Accept the fact that not everyone is going to approve of the choices you’ve made, have faith in your judgment, catch the star that twinkles in your heart, and it will lead you to your destiny’s path. Follow that pathway and uncover the swe
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_APPLE]) {
        [LoginHelper appleLoginAndThirdRequest_MMMethodMMM:self.delegate view_MMMethodMMM:self];

/**
  he one that forever twinkles within your heart. Take advantage of precious op 
**/
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_GUEST]) {
        [LoginHelper guestLoginAndThirdRequest_MMMethodMMM:self.delegate];
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_GOOGLE]) {
//like a good way to go.
//我从来没有想过自己会怎么死。但是死在自己爱的人的怀里看起来是一个不错的选择。
//Your mood swings are kind of giving me a whiplash.
//你的态度忽冷忽热让我难受。
//I only said it’d be better if we weren’t friends, not that I didn’t wanna be.
//我只是说如果我们不是朋友会好很多，但是那不代表我不想和你交朋友。
//He unleashe
        [LoginHelper googleLoginAndThirdRequest_MMMethodMMM:self.delegate];
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_LINE]) {
        [LoginHelper lineLoginAndThirdRequest_MMMethodMMM:self.delegate];
    }
}
//spot where you peacefully fall asleep, your bed becomes an anxious place where you toss and turn and wake up tired.
//
//为什么这条法则如此重要呢？格兰德纳解释道，因为醒着躺在床上会在大脑中形成关联，从而导致长期失眠。这样一来，床就不再是你安眠的舒适窝，而成为你辗转反侧心生焦虑并在疲惫中醒来的地方。
//
//Establishing that positive relationship between the bed and sleep can be beneficial 
- (void)doDeleteAccount_MMMethodMMM {
    [LoginHelper deleteAccountAndRequest_MMMethodMMM:self.delegate view_MMMethodMMM:self account_MMMethodMMM:currentAccountModel otherParamsDic_MMMethodMMM:nil successBlock_MMMethodMMM:^{
//ght, and you forever.
//浮世万千，吾爱有三。日，月与卿。日为朝，月为暮，卿为朝朝暮暮。
//Even if from another world, still love you till the end of time.
//就算来自不同世界，依旧爱你到地老天荒。
//Only for making me want you so badly.
//只有你才能让我如此上瘾。
//I don't have the strength to stay away from you anymore.
//我再也没有离开你的力气了。
//Your number was up the first time l met you.
//第一次遇见
        [deleteAccountConfireView removeFromSuperview];
        NSArray<AccountModel *> *mAccountArray = [[ConfigCoreUtil share] getAccountModels_MMMethodMMM];
        if (mAccountArray.count > 0){
            currentAccountModel = mAccountArray[0];
            [accountDataList removeAllObjects];
            [accountDataList addObjectsFromArray:mAccountArray];
            [AccountLoginView makeAccountFiledViewStatus_MMMethodMMM:currentAccountModel accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM: nil];
            [self setViewStatue_MMMethodMMM];
        }else{

/**
  might not otherwise.

奇怪的是，有证据表明，指导有共同目标的朋友也能提高你的成功率。当你想给别人一些如何实现目标的建议时，这会增强你的自信。这样也会迫使你反省自己的方法是 
**/
            currentAccountModel = nil;
            if (self.delegate) {
                [self.delegate goPageView_MMMethodMMM:CURRENT_PAGE_TYPE_LOGIN_WITH_REG from_MMMethodMMM:CURRENT_PAGE_TYPE_WELCOME_BACK param_MMMethodMMM:nil];
            }
        }
    }];
}

/**
  portant? Because lying in bed awake can form an association in your brain that can lead to chronic insomnia, Grandner explained. Instead of being a restful spot where you peacefully fall asleep, your bed become 
**/
@end
