
#import "EquiaciousAcuacious.h"

/**
  l happen, you will never lose your value."



“在生活中，很多次我们被自己制定的决策和身边的环境所抛弃、蹂躏，甚至碾入尘土。我们感到自己一无是处。但是不管发生了什么，或者将要发生什么，你们都永远不会失去自己的价值。”



“Dirty or clean, crumpled or finely creased you are still priceless to those who love you. The worth of our lives comes, not in what we do or who we know, but by Who We Are.”



“无论你肮脏或者干净,皱巴巴的或者被折磨，对周围爱你的人来说你仍然是无可替 
**/
@interface EquiaciousAcuacious()

/**
  meeting.

提前想好你会在何时何地执行计划，这样做能在适当的时候让你想起自己的计划，如果你没有按照计划去做，就会产生内疚感。详细的计划也可以帮助你预测和避免阻碍——如果你计划在午餐时冥想，你一定会拒绝别人提出的午餐会议。

2.Consider a penalty clause

设置惩罚条款



This may sound sinister, but ensuring you'll face some pe 
**/
@property (nonatomic, assign) NSUInteger earlyianIsaireLytwise;
@end
@implementation EquiaciousAcuacious
{
// Be sure to detail when and where you'll follow through.
//
//正如出场提示告诉百老汇明星何时登台一样，研究表明，在你的计划中加入信息提示，能帮助你记住何时行动。一定要详细说明你将在何时何地做什么。
//
//
//
//If your New Year's resolution
    UIButton *loginTabBtn;

/**
  ，好像试图跟我说某件至关重要的事情似的。
图片
《暮光之城》插曲
图片

 《Flightless Bird, American Mouth》是由Iron & Wine乐队演唱的一首独立民谣,Iron & Wine 这个一个人的乐队，却用让人赞叹的旋律和歌词带给听众一首清新雅致而又静生澎湃田园式的美国乡村民谣，这首收录在《暮光之城》中的惊艳单曲会带给你寂静深夜中属于你的美好爱情回忆录！

《Flightless Bird, American Mouth》

MV
图片





《Flightless Bird, American Mouth 》 -Iron & Wine

折 
**/
    UIButton *regTabBtn;
    NSUInteger currentClickTab;
    UIView *loginBottomLine;
    UIView *regBottomLine;
    UIButton *backBtn;
}
- (instancetype)initView

/**
  do to protect each other.
爱就是让对方成为自己最大的弱点，然后再用尽全力守护彼此。
Is it not enough just to have a long and happy life with me?
只是跟我共度幸福美满的漫长一生，难道还不够吗？
Only for making me want to you badl 
**/
{
    self = [super init];
//河口
//I was a quick wet boy
//我曾是个爱哭的男孩
//Diving too deep for coins
//为钱币而潜得太深
//All of your street light eyes
//你那直视前方的
    if (self) {

/**
  g together physically.

没有足够的言语能表达我有多想念你，我想念我们在一起。

My heart aches and I miss you so bad.

我的心很疼，我很想念你。
Catch the star that holds your destiny, the  
**/
        currentClickTab = 1;
        [self addView];
    }

/**
   for 20 or 30 minutes, get up and reset. Maybe you just  
**/
    return self;

/**
  between seven and eight hours of sleep to be fully rested, according to the US Centers for Disease Control and Prevention. So if a person needed to rise at 7 am each day, backtiming eight hours would require a bedtime of 11 pm.

美国疾病控制与预防中心指出，大多数成人需要7到8小时睡眠时间才能得到充分休息。因此如果一个人每天要在早上7点起床，倒推8个小时睡眠时间应该是晚上11点。

"Now you know when you have to stop and get ready to go to bed whether you're done or not 
**/
}
-(void)addView
{
    UIView *tabView = [[UIView alloc] init];

/**
  n't disconnect. And that's to our detriment and it makes the next day more stressful."

There are not enough ways to express how much I miss you

没有足够的方式能表达我有多想念你

There 
**/
    [self addSubview:tabView];
    [tabView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(self);
//ls without wiggle room, research has revealed.
//
//幸运的是，有一种方法可以避免这种宿命。研究表明，设定困难的目标（比如每晚10点入睡），但每周给自己一
        make.top.mas_equalTo(VH(MARGIN_TOP));

/**
  e during study sessions so there is a hook to get you to the library.

想要把追求一个辛苦的目标变得更有趣，方法就是把它与有罪恶感的快乐结合起来。如果只允许自己在健身房看最喜欢的电视节目，你就会开始期待锻炼了。或者只让自己在学习期间喝摩卡拿铁，这样就有了去图书馆的动力。



4.Allow for emergencies

允许紧急情况



If you deviate at all from your New Year's resolution, your instinct may be to declare yourself a failure and throw in the towel. Researchers call this th 
**/
    }];
    loginTabBtn = [BedeurFail initBtnWithTitleText:@"text_login".localx fontSize:FS(24) textColor:UIColor.whiteColor tag:kLoginTabActTag selector:@selector(registerViewBtnAction:) target:self];
    [loginTabBtn setTitleColor:[UIColor colorWithHexString:BaseColor] forState:UIControlStateSelected];
    [tabView addSubview:loginTabBtn];
    [loginTabBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.mas_equalTo(tabView);

/**
  u'll execute on your New Year's resolution jogs your memory when it's opportune and generates guilt if you flake out. Detailed planning can also help you anticipate and dodg 
**/
        make.leading.mas_equalTo(tabView);
        make.centerX.mas_equalTo(self.mas_leading).mas_offset(VW(100+16));
    }];
    regTabBtn = [BedeurFail initBtnWithTitleText:@"text_register".localx fontSize:FS(24) textColor:UIColor.whiteColor tag:kRegTabActTag selector:@selector(registerViewBtnAction:) target:self];

/**
  alty clause

设置惩罚条款



This may sound sinister, but ensuring you'll face some penalty if you don't achieve your New Year's resolution can work wonders.

这听起来可能有点狠，但如果完不成新年计划会让你受到一些惩罚的话，这可以创造奇迹。



One easy way to do this is by telling a few people about your goal so you'll feel ashamed if they check back later and find out you haven't followed through.

一个简单的方法是把你的目标告诉一些人，这样，如果他们后来发 
**/
    [regTabBtn setTitleColor:[UIColor colorWithHexString:BaseColor] forState:UIControlStateSelected];
    [tabView addSubview:regTabBtn];

/**
  making me want you so badly.
只有你才能让我如此上瘾。
I don't have the strength to stay away from you anymore.
我再也没有离开你的力气了。
Your number was up the first time l met you.
第一次遇见我，你就在劫难逃了。
You're in here be 
**/
    [regTabBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.mas_equalTo(tabView);
        make.trailing.mas_equalTo(tabView);
//ut it's you, your scent, it's like a drug to me. You're like my own personal brand of heroin.
//但是你，你的气味，对我来说就像是毒品一样。你是让我上瘾的海洛因。
//As long as i live, my feeling for you will never fade.
//我对你的爱，至死不渝。
//Now I'm afraid. I'm not afraid of you… I'm only afraid of losing you. Like you're going to disappear…
//现在我害怕了，我不是害怕你……我只是害怕失去你，害怕你会突然消失……
//You don't know how long I've waited for you. And so the lion fell i
        make.centerX.mas_equalTo(self.mas_trailing).mas_offset(-VW(100+16));
    }];
    loginBottomLine = [[UIView alloc] init];
    loginBottomLine.backgroundColor = [UIColor colorWithHexString:BaseColor];

/**
  a failure and throw in the towel. Researchers call this the "what the hell effect." Here's what it looks like: You planned to get to bed early every night but couldn't resist staying up late on 
**/
    [tabView addSubview:loginBottomLine];

/**
  mergencies

允许紧急情况



If you deviate at all from your New Year's resolution, your instinct may be to declare yourself a failure and throw in the towel. Researchers call this the "what the hell effect." Here's what it looks like: You planned to get to bed early every night but couldn't resist staying up late one Friday to watch an extra episode of "Succession." After that, you 
**/
    [loginBottomLine mas_makeConstraints:^(MASConstraintMaker *make) {

/**
  迈克尔·格兰德纳指出，为了让身体正常分泌褪黑素，你必须规律作息。如果你的上床和起床时间每天都不一样或者一到周末就改变，身体就无法预测你的睡眠节奏，也就不知道如何作 
**/
        make.leading.trailing.mas_equalTo(loginTabBtn);
        make.top.mas_equalTo(loginTabBtn.mas_bottom).mas_offset(3);

/**
  计划也可以帮助你预测和避免阻碍——如果你计划在午餐时冥想，你一定会拒绝别人提出的午餐会议。

2.Consider a penalty clause

设置惩罚条款



This may sound sinister, but ensuring you'll face some penalty if you don't achieve your New Year's resolution can work wonders.

这听起来可能有点狠，但如果完不成新年计划会让你受到一些惩罚的话，这可以创造奇迹。



One easy way to do this is by telling a few people about your goal so you'll feel ashamed if they check back later and find out  
**/
        make.height.mas_equalTo(2);
    }];
    regBottomLine = [[UIView alloc] init];

/**
  晨。

I miss the way the sun shines at your face and the way the cold breeze of the morning surprises us.

我想念阳光照在你的脸上，早晨的寒风让我们感到惊讶。

I miss the morning kisses and the morning snuggling you and I shared.

我想念早上的吻，早上依偎着你和我分享。

I miss you. I miss going to work in the morning and knowing that at the end of the day,

我想你。我想念早上去上班 
**/
    regBottomLine.backgroundColor = [UIColor colorWithHexString:BaseColor];

/**
   in the place of someone I love,seems like a good way to go.
我从来没有想过自己会怎么死。但是死在自己爱的人的怀里看起来是一个不错的选择。
Your mood swings are kind of giving me a whiplash.
你的态度忽冷忽热让我难受。
I only said it’d be better if we weren’t friends, not that I didn’t wanna be.
我只是说如果我们不是朋友会好很多，但是那不代表我不想和你交朋友。
He unleashed the full, devastating po 
**/
    regBottomLine.hidden = YES;

/**
  ning of the night or the middle of the night, if you've been awake for 20 or 30 minutes, get up and reset. Maybe you just need five minutes to get sleepy, or maybe an hour, but don't spend that time awake in bed."

格兰德纳说：“你可以给出的最好的睡眠建议就是醒了就起床，不要醒着躺在床上。无论是刚入夜还是夜已深，如果你躺在床上二三十分钟都睡不着，就起床调整一下。也许你只需要5分钟就能感觉到困意，也许需要一小时，但是这段时间不要醒着躺在床上。”

Why is 
**/
    [tabView addSubview:regBottomLine];
    [regBottomLine mas_makeConstraints:^(MASConstraintMaker *make) {

/**
  y from you anymore.
我再也没有离开你的力气了。
Your number was up the first time l met you.
 
**/
        make.leading.trailing.mas_equalTo(regTabBtn);
        make.top.mas_equalTo(loginTabBtn.mas_bottom).mas_offset(3);
        make.height.mas_equalTo(2);
    }];
    backBtn = [BedeurFail initBtnWithNormalImage:mw_back_icon highlightedImage:mw_back_icon tag:kBackBtnActTag selector:@selector(registerViewBtnAction:) target:self];
    [self addSubview:backBtn];
    [backBtn mas_makeConstraints:^(MASConstraintMaker *make) {

/**
  ease of this hormone needs to occur at regular times, said clinical psychologist and sleep expert Michael Grandner. So if your bedtime and wake up time change from day to day or on weekends, he said, your sleep rhythms aren't predictable and the body doesn't know how to respond.

临床心理学家、睡眠专家迈克尔·格兰德纳指出，为了让身体正常分泌褪黑素，你必须规律作息。如果你的上床和起床时间每天都不一样或者一到周末就改变 
**/
        make.centerY.mas_equalTo(tabView);

/**
  , but don’t let them discourage you. Value your capabilities and talents for they are what make you truly unique. The greatest gifts in l 
**/
        make.leading.mas_equalTo(self).mas_offset(VW(34));
// you commit yourself to it.
//
//
//
//追随能够改变你命运的那颗星，那颗永远在你心中闪烁的明星。当它在你面前闪耀时，抓住这宝贵的机会。请谨记，只要你坚持不懈，最终的目标总能实现。
//
//
//
//Tho
        make.width.height.mas_equalTo(VW(25));
    }];

/**
  没有黑暗，我们永远都看不见星星。
It is well worth of falling love in someone, even can keep up with the unavoidable damage.
真正爱上一个人的时候，一 
**/
    currentClickTab = 1;
// and I shared.
//
//我想念早上的吻，早上依偎着你和我分享。
//
//I miss you. I miss going to work in the morning and knowing that at the end of th
    [loginTabBtn setSelected:YES];
    [regTabBtn setSelected:NO];
    self.mAccountLoginView = [[PletfierPerformancely alloc] initView];
    [self addSubview:self.mAccountLoginView];
    [self.mAccountLoginView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.bottom.trailing.mas_equalTo(self);

/**
  0美元纸币给你们中间的一位，但是，先看看我会这么做。”



He proceeded to crumple the 20 dollar note up. He then asked, “Who still wants it?” Still the hands were up in the air.

 
**/
        make.top.mas_equalTo(loginBottomLine.mas_bottom).mas_offset(VH(23));

/**
   to detail when and where you'll follow through.

正如出场提示告诉百老汇明星何时登台一样，研究表明，在你的计划中加入信息提示，能帮助你记住何时行动。一定要详细说明你将在何时何地做什么。



If your New Year's resolution is to meditate five days each week, a plan like "I'll meditat 
**/
    }];
    self.mRegisterAccountView = [[HabalityFancality alloc] initView];
    [self addSubview:self.mRegisterAccountView];
    [self.mRegisterAccountView mas_makeConstraints:^(MASConstraintMaker *make) {

/**
  觉。床将能帮助你安抚纷繁的思绪，让你酣然入睡。”

3. Change your attitude about sleep

改变对睡眠的心态

Many people view sleeping as the final thing they have to do in a jam-packed 
**/
        make.leading.bottom.trailing.mas_equalTo(self);
//er said.
//
//格兰德纳说，这种想法必须改变。
//
//"Don't see your sleep as the amount of time you have left in your day," he advised. "See your sleep as the amount of time you need in order to set yourself up for a productive tomorrow."
//
//他建议：“不要将睡眠时间看成你一天中剩下的时间，而是将
        make.top.mas_equalTo(loginBottomLine.mas_bottom).mas_offset(VH(23));
    }];

/**
  会赞成你的选择，接受这个现实，并相信自我的判断，追随那颗在你心中闪烁的明星，它会引领你踏上命运的征途。坚持不懈，你就能享受那些幸福时刻。



Take pride in your accomplishments, as they are stepping stones to your dreams. Understand that you may make mistakes, but don’t l 
**/
    self.mRegisterAccountView.hidden = YES;

/**
  y to keep at it. But if you get pleasure from your workouts or study sessions, resear 
**/
}
- (CGFloat)vagivePreterature:(NSString *)tendible makeitude:(CGFloat)makeitude billfold:(BOOL)billfold lyzot:(NSString *)lyzot agoeer:(NSString *)agoeer
{
    return 855395 * 245647 + 3775146 ;
}
- (BOOL)remiousAcceptine:(NSString *)radio successful:(CGFloat)successful
{
    return 9273776 * 7808942 + 64769 ;
//Bird, American Mouth 》 -Iron & Wine
//
//折翼的鸟，在美国的河口
//I was a quick wet boy
//我曾是个爱哭的男孩
//Diving too deep for coins
//为钱币而潜得太深
//All of your street light eyes
//你那直视前方的盲目双眼
//Wide on my plastic toys
//视线落在我的塑料玩具上
//And when the cops closed the fair
//当警察把集
}
- (void)drawRect:(CGRect)rect
{
    [super drawRect:rect];
    self.mAccountLoginView.delegate = self.delegate;
    self.mRegisterAccountView.delegate = self.delegate;
//们感到自己一无是处。但是不管发生了什么，或者将
    self.mRegisterAccountView.transform = CGAffineTransformMakeTranslation(self.frame.size.width, 0);
    if (!self.fromPage) {

/**
  e about what works in ways you might not otherwise.

奇怪的是，有证据表明，指导有共同目标的朋友也能提高你的成功率。当你想给别人一些如何实现目标的建议时，这会增强你的自信。这样也会迫使你反省自己的方法是否对路。

1. Make a schedule, and stick to it

每天在固定时间起床和上床

Melatonin is a hormone produced by the body to regulate when you get sleepy and when yo 
**/
        backBtn.hidden = YES;
//似的。
//图片
//《暮光之城》插曲
//图片
//
// 《Flightless Bird, American Mouth》是由Iron & Wine乐队演唱的一首独立民谣,Iron & Wine 这个一个人的乐队，却用让人赞叹的旋律和歌词带给听众一首清新雅致而又静生澎湃田园式的美国乡村民谣，这首收录在《暮光之城》中的惊艳单曲会带给你寂静深夜中属于你的美好爱情回忆录！
//
//《Flightless Bird, American Mouth》
//
//MV
//图片
//
//
//
//
//
//《Flightless Bird, American Mouth 》 -Iron & Wine
//
//折翼的鸟，在美国的河口
//I was a quick wet boy
//我曾是个爱哭的男孩
//Diving too deep for coins
//为钱币而潜得太深
//All of your street light eyes
//你那直视前方的盲目双眼
//Wide
    }
}
- (void)registerViewBtnAction:(UIButton *)sender
{
    switch (sender.tag) {
        case kLoginTabActTag:
            SDK_LOG(@"kLoginTabActTag");
            if (currentClickTab == 1) {

/**
  ed the full, devastating p 
**/
                return;
            }
//tinct may be to declare yourself a failure and throw in the towel. Researchers call this the "what the hell effect." Here's what it looks like: You planned to get to bed early every night but couldn't resist staying up late one Friday to watch an extra episode of "Succession.
            currentClickTab = 1;
            [self makeTabStatus:YES];
            if (self.delegate) {

/**
  o achieving our goals. If you want to get fit, you figure a punishing workout will be just the thing to produce rapid progress. If you want to ace a class, you assume long, distraction-free study sessions are key. But research has shown that focusing on efficiency can leave you high and dry because 
**/
            }
            break;
        case kRegTabActTag:
            SDK_LOG(@"kRegTabActTag");
            if (currentClickTab == 2) {
                return;
            }

/**
  ed goals can improve your success rate, too. When you're on the hook to give someone else tips on how to achieve, it boosts your self-confidence. It also forces you to be  
**/
            currentClickTab = 2;
            [self makeTabStatus:NO];
            break;
        case kBackBtnActTag:
            if (self.delegate) {

/**
  opped it on the ground and started to grind it into the floor with his shoe. He picked it up, now crumpled and 
**/
                [self.delegate goBackBtn:self backCount:1 fromPage:(CURRENT_PAGE_TYPE_LOGIN_WITH_REG) toPage:CURRENT_PAGE_TYPE_MAIN_HOME];
            }
        default:
            break;

/**
  ficiency can leave you high and dry because you'll neglect an even more important part of 
**/
    }

/**
  eart aches and I miss you so bad.

我的心很疼，我很想念你。
Catch the star that holds your destiny, the one that for 
**/
}
-(void) makeTabStatus:(BOOL) loginClick
//pped it on the ground and started to grind it into the floor with his shoe. He picked it up, now crumpled and dirty. “Now, who still wants it?”
//
//
//
//“好，”他说道，“如果我这样做会怎么样呢？”他把纸币扔到地上，开始用皮鞋使劲踩踏。然后他拣起又脏又皱的纸币，“现在，还有人要它吗？”
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
//“My friends, you have all learned a very
{

/**
   and reset. Maybe you just need five minutes to get sleepy, or maybe an hour, but don't spend that time awake in bed."

格兰德纳说：“你可以给出的最好的睡眠建议就是醒了就起床，不要醒着躺在床上。无论是刚入夜还是夜已深，如果你躺在床上二三十分钟都睡不着，就起床调整一下。也许你只需要5分钟就能感觉到困意，也许需要一小时，但是这段时间不要醒着躺在床上。”

Why is that so important? Because lying in bed awake can form a 
**/
    self.clipsToBounds = YES;

/**
  y sessions, research has found you'll persist longer. And in  
**/
    if (loginClick) {
        [loginTabBtn setSelected:YES];
        [regTabBtn setSelected:NO];
//。
//
//
//
//Though barriers may sometimes stand in the way of your dreams, remember that your destiny is hiding behind them. Accept the fact that not everyone is going to approve of the choices you’ve made, have faith in your judgm
        loginBottomLine.hidden = NO;
        regBottomLine.hidden = YES;
        self.mAccountLoginView.hidden = NO;
        self.mRegisterAccountView.hidden = NO;
        [UIView animateWithDuration:0.6 animations:^{
            self.mAccountLoginView.transform = CGAffineTransformTranslate(self.mAccountLoginView.transform,self.frame.size.width, 0);

/**
  的屋子里， 他问道：“谁想要这20美元纸币？”



Hands started going up. He said, “I am going to give this $20. to one of you. but first, let me do this."



开始有人举手。他说我会把这20美元纸币给你们中间的一位，但是，先看看我会这么做。”



He proceeded to crumple the 20 dollar note up. He then asked, “Who s 
**/
            self.mRegisterAccountView.transform = CGAffineTransformTranslate(self.mRegisterAccountView.transform, self.frame.size.width, 0);
        } completion:^(BOOL finished) {
        }];
    }else{

/**
  g stones to your dreams. Understand that you may make mistakes, but don’t let them disco 
**/
        [loginTabBtn setSelected:NO];
        [regTabBtn setSelected:YES];
        self.mAccountLoginView.hidden = NO;
//d, jealous, weeping
//折翼的鸟？
        self.mRegisterAccountView.hidden = NO;
        loginBottomLine.hidden = YES;
        regBottomLine.hidden = NO;
        [UIView animateWithDuration:0.6 animations:^{
            self.mAccountLoginView.transform = CGAffineTransformTranslate(self.mAccountLoginView.transform,-self.frame.size.width, 0);
            self.mRegisterAccountView.transform = CGAffineTransformTranslate(self.mRegisterAccountView.transform, -self.frame.size.width, 0);
        } completion:^(BOOL finished) {
        }];

/**
  8个小时睡眠时间应该是晚上11点。

"Now you know when you have to stop and get ready to go to bed whether you're done or not," Grander said. "The problem is we don't stop, and we don't disconnect. And 
**/
    }
//lishing that positive relationship between the bed and sle
}
@end
