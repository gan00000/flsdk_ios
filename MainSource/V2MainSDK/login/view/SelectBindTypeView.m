

/**
  s were up in the air.



他开始把这张纸币揉皱，然后他问道:“还有人想要它吗？”仍然有很多手举在空中。



“Well，” he replied, “what if I do this?” He dropped it on the ground and started to grind it into the floor with his shoe. He picked it up, now crumpled and dirty. “Now, who still wants it?”



“好，”他说道，“如果我这样做会怎么样呢？”他把纸币扔到地上，开始用皮鞋使劲踩踏。然后他拣起又脏又皱的纸币，“现在，还有人要它吗？”



Still the hands went into the air.



空中仍举着很多手。



“My 
**/
#import "SelectBindTypeView.h"
//st and sleep expert Michael Grandner. So if your bedtime and wake up time change from day to day or on weekends, he said, your sleep rhythms aren't predictable and the body doesn't know how to respond.
//
//临床心理学家、睡眠专家迈克尔·格兰德纳指出，为了让身体正常分泌褪黑素，你必须规律作息。如果你的上床和起
#import "SdkHeader.h"
#import "LoginTitleView.h"
#import "LoginButton.h"
//at positive relationship between the bed and sleep can be beneficial on nights where your schedule has to be erratic due to work or travel, Grandner added.
//
//格兰德纳补充道，在床和睡眠之间建立正向联系还有益于你在被工作或旅游打乱作息的夜晚入眠。
//
//"Let's say you need to go to bed extra early," he said
#import "SDKIconTitleButton.h"
//y television series.
//
//许多人将睡眠视为忙碌的一天后要做的最后一件事，为了完成家务、作业、工作或追新剧，晚点再睡也没事。
//
//That thinking needs to be changed, Grander said.
//
//格兰德纳说，这种想法必须改变。
//
//"Don't see your sle
#import <AuthenticationServices/AuthenticationServices.h>
@implementation SelectBindTypeView{

/**
  ontrol and Prevention. So if a person needed to rise at 7 am each day, backtiming eight hours would require a bedtime of 11 pm.

美国疾病控制与预防中心指出，大多数成人需要7到8小时睡眠时间才能得到充分休息。因此如果一个人每天要在早上7点起床，倒推8个小时睡眠时间应该是晚上11点。

"Now you know when you h 
**/
    LoginTitleView *mLoginTitleView;
    UIView *appleBindView;
}
- (instancetype)initView_MMMethodMMM

/**
  写一本书，那么明智的做法是开始与那些已经实现这一目标、可以告诉你如何做到的朋友们在一起。仅仅 
**/
{
    self = [super init];
    if (self) {
        UIColor *color = [UIColor colorWithHexString_MMMethodMMM:ContentViewBgColor];
        self.backgroundColor = color;
        self.layer.cornerRadius = 10;

/**
  ll lead you to your destiny’s path. Follow that pathway and uncover the sweet sunrises that await you.



尽管实现梦想的途中有时会遇到障碍，要知道这是命运对你的挑战。不是每个人都会赞成你的选择，接受这个现实，并相信自我的判断，追随那颗在你心中闪烁的明星，它会引领你踏上命运的征途。 
**/
        self.layer.masksToBounds = YES;
        mLoginTitleView = [[LoginTitleView alloc] initViewWithTitle_MMMethodMMM:@"綁定會員帳號" hander_MMMethodMMM:^(NSInteger) {
        }];

/**
  ound high achievers can boost your own performance. If your New Year's resolution is to run a marathon or write a book, you'd be wise to start hanging around friends who've made it to the finish line (literally or figuratively) and can show you how it's done. You'll pick up a bit just by spending time together because you'll be inclined to conform to their  
**/
        [self addSubview:mLoginTitleView];
        [mLoginTitleView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.mas_top).mas_offset(VH(32));
            make.centerX.mas_equalTo(self);
            make.width.mas_equalTo(self).mas_offset(-VW(55));
            make.height.mas_equalTo(VH(56));
        }];
//nd any of your expectations, it’s not reasonable to grieve when it comes to an end.
//当生活给了你一个远远超过你期望的美梦，那么，当这一期结束时，也就没有理由再去伤心。
//图片
//Bella, the only reason I left was because I thought I was protecting yo
        UIView *guestBindBtn = [[SDKIconTitleButton alloc] initBtnViewWithType_MMMethodMMM:(SDK_ICON_TITLE_BUTTON_TYPE_BIND_GEUST) tag_MMMethodMMM:kBindGuestActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        [self addSubview:guestBindBtn];
        [guestBindBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self);

/**
  opes everything you’ve got and you will catch the star that holds your destiny.



寻找心中那颗闪耀的明星，因为只有你自己才能够让美好的梦想变成现实。满怀希望并全力以赴，你就能摘下改变命运的那颗星。

I miss you. I miss all the mornings that I ha 
**/
            make.top.equalTo(mLoginTitleView.mas_bottom).mas_offset(VH(40));
            make.height.mas_equalTo(VH(70));
// offers you a dream so far beyond any of your expectations, it’s not reasonable to grieve when it comes to an end.
//当生活给了你一个远远超
            make.width.mas_equalTo(mLoginTitleView);
        }];
              UIView *fbBindBtn = [[SDKIconTitleButton alloc] initBtnViewWithType_MMMethodMMM:(SDK_ICON_TITLE_BUTTON_TYPE_BIND_FB) tag_MMMethodMMM:kBindFBActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
              [self addSubview:fbBindBtn];

/**
  目，你就会开始期待锻炼了。或者只让自己在学习期间喝摩卡拿铁，这样就有了去图书馆的动力。



4.Allow for emergencies

允许紧急情况



If you deviate at all from your New Year's resolution, your instinct may be to declare yourself a failure an 
**/
              [fbBindBtn mas_makeConstraints:^(MASConstraintMaker *make) {
                  make.centerX.equalTo(self);
                  make.top.equalTo(guestBindBtn.mas_bottom).mas_offset(20);
                  make.width.mas_equalTo(guestBindBtn);
                  make.height.mas_equalTo(guestBindBtn);
              }];
//pable of making your brightest dreams come true. Give your hopes everything you’ve got and you will catch the star that holds your destiny.
//
//
//
//寻找心中那颗闪耀的明星，因为只有你自己才能够让美好的梦想变成现实。满怀希望并全力以赴，你就能摘下改变命运的那颗星。
//
//I miss you. I miss all the mornings that I have woken up right beside you.
//
//我想你。我想念我在你身边醒来的所有早晨。
//
//I miss the way the sun shines at yo
        if (@available(iOS 13.0, *)) {
            appleBindView = [[UIView alloc] init];

/**
  t." Here's what it looks like: You planned to get to bed early every night but couldn't resist staying up late one Friday to watch an extra episode of "Succession." After that, your early-to-bed plans went out the window because "what the hell," you'd already failed.

如果你完全违背了自己的新年计划，你可能本能地认输并放弃。研究人员称之为“去他的效应”。就比如这样：你计划每晚早睡，但忍不住在某个星期五熬夜多看一集《继承之战》，此后你的早睡计划泡汤了，因为“去他的”反正你已经失败了。



Happil 
**/
            appleBindView.layer.cornerRadius = 4;

/**
  em discourage you. Value your capabilities and talents for they are what make you truly unique. The greatest gifts in life are not purchased, but acquired through hard work and determination.



每前进一步，你都应该引以为豪，因为它们是你实现梦想的阶梯。要 
**/
            appleBindView.tag = kBindAppleActTag;
            appleBindView.backgroundColor = [UIColor blackColor];
            appleBindView.userInteractionEnabled = YES;
            UITapGestureRecognizer *tapGr = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(appleViewTapped_MMMethodMMM:)];
            [appleBindView addGestureRecognizer:tapGr];

/**
  oadway stars when to step onto the stage, research has shown that adding a cue to your plan helps you remember when to act. Be sure to detail when and where you'll follow through.

正如出场提示告诉百老汇明星何时登台一样，研究表明，在你的计划中加入信息提示，能帮助你记住何时行动。一定要详细说明你将在何时何地做什么。



If your New Year's resolution is to meditate five days each week, a pl 
**/
            [self addSubview:appleBindView];
            [appleBindView mas_makeConstraints:^(MASConstraintMaker *make) {

/**
  逻辑很简单。激励措施会改变我们的决定，而惩罚甚至比奖励让我们更有动力。

3.Make it fun

找些乐趣



Most of us strive for efficiency when it comes to achieving our goals. If you w 
**/
                make.centerX.equalTo(self);

/**
  , you figure a punishing workout will be just the thing to produce rapid progress. If you want to ace a class, you assume long, distraction-free study sessions are  
**/
                make.top.equalTo(fbBindBtn.mas_bottom).mas_offset(20);

/**
  on needed to rise at 7 am each day, backtiming eight hours would require a bedtime of 11 pm.

美国疾病控制与预防中心指出，大多数成人需要7到8小时睡眠时间才能得到充分休息。因此如果一个人每天要在早上7点起床，倒推8个小时睡眠时间应该是晚上11点。

"Now you know when you have to stop and get ready to go to bed whether you're done or not," Grander said. "The problem is we don't stop, and we don't disconnect. And that's to our det 
**/
                make.width.mas_equalTo(guestBindBtn);
                make.height.mas_equalTo(guestBindBtn);
            }];
//'s you, your scent, it's like a drug to me. You're like my own personal brand of heroin.
//但是你，你的气味，对我来说就像是毒品一样。你是让我上瘾的海洛因。
//As long as i live, my feeling for you will never fade.
//我对你的爱，至死不渝。
//Now I'm afraid. I'm not afraid of you… I'm only afraid of losing you. Like you're going to disappear…
//现在我害怕了，我不是害怕你……我只是害怕失去你，害怕你会突然消失……
//You don't know h
               ASAuthorizationAppleIDButton *appleBindBtn = [[ASAuthorizationAppleIDButton alloc]initWithAuthorizationButtonType:ASAuthorizationAppleIDButtonTypeSignIn
                                                                                                         authorizationButtonStyle:ASAuthorizationAppleIDButtonStyleBlack];
            [appleBindBtn addTarget:self action:@selector(registerViewBtnAction_MMMethodMMM:) forControlEvents:(UIControlEventTouchUpInside)];
            appleBindBtn.tag = kBindAppleActTag;
            [appleBindView addSubview:appleBindBtn];
                   [appleBindBtn mas_makeConstraints:^(MASConstraintMaker *make) {
                       make.top.mas_equalTo(appleBindView);
                       make.leading.mas_equalTo(appleBindView).mas_offset(VW(30));
                       make.height.mas_equalTo(guestBindBtn);
                       make.width.mas_equalTo(guestBindBtn.mas_height);

/**
   said. "The problem is we don't stop, and we don't disconnect. And that's to our detriment and it makes the next day more stressful."

There are not enough ways to express how much I miss you

没有足够的方式能表达我有多想念你

There are not enough words to contemplate on how much I miss you and I miss us being together physically.
 
**/
                   }];
//ear's resolution.
//
//如果锻炼或学习没有乐趣，就不太可能坚持下去。但研究发现如果你从锻炼或学习中获得乐趣，就会坚持得更久。而最终，这往往是实现新年计划的最重要因素。
//
//
//
//One way to make pursuing a goa
            UILabel *titleLable = [[UILabel alloc] init];
           titleLable.text = @"Apple帳號綁定";

/**
  oming a signal to the body that it's time for bed. Prod 
**/
           titleLable.font = [UIFont systemFontOfSize:VH(32)];
//n keep up with the unavoidable damage.
//真正爱上一个人的时候，一切都那么值得，包括不可避免的伤害。
//I always have and always will.
//一直爱，永远爱。
//But it's you, your scent, it's like a drug to me. You're like my own personal brand of heroin.
//但是你，你的气味，对我来说就像是毒品一样。你是让我上瘾的海洛因。
//As long as i live, my feeling for you will never fade.
//我对你的爱，至死不渝。
//Now I'm afraid. I'm not afraid of you… I'm only afraid of losing you. Like you're going to d
           titleLable.textAlignment = NSTextAlignmentCenter;
           titleLable.backgroundColor = [UIColor clearColor];

/**
  Love is letting someone become your greatest weakness ,then going all you can do to protect each other.
爱就是让对方成为自己最大的弱点，然后再用尽全力守护彼此。
Is it not enough just to have a long and happy life with me?
只是跟我共度幸福美满的漫长一生，难道还不够吗？
Only for making me want to you badly. I still don't know if I can control myself.
就是因为发觉自己多么渴望想得到你，我到现在还不知道是否控制得了自己。
When life offers you 
**/
            titleLable.numberOfLines = 1;
           titleLable.textColor = [UIColor whiteColor];
            titleLable.adjustsFontSizeToFitWidth = YES;
            [appleBindView addSubview:titleLable];
            [titleLable mas_makeConstraints:^(MASConstraintMaker *make) {
                make.top.mas_equalTo(appleBindView);
                make.bottom.mas_equalTo(appleBindView);
                make.leading.mas_equalTo(appleBindBtn.mas_trailing);
                make.trailing.mas_equalTo(appleBindView);
            }];

/**
  人举手。他说我会把这20美元纸币给你们中间的一位，但是，先看看我会这么做。”



He proceeded to crumple the 20 dollar note up. He then asked, “Who still wants it?” Still the hands were up in the air.



他开始把这张纸币揉皱，然后他问道:“还有人想要它吗？”仍然有很多手举在空中。



“Well，” he replied, “what if I do this?” He dropped it on the ground and started to grind it into the floor with his shoe. He picked it up, now crum 
**/
           } else {

/**
  r that twinkles in your heart for you alone are capable of making your brightest dreams come true. Give your hopes everything you’ve got and you will catch the star that holds your destiny.



寻找心中那颗闪耀的明星，因为只有你自己才能够让美好的梦想变成现实。满怀希望 
**/
           }
//memory when it's opportune and generates guilt if you flake out. Detailed planning can also help you anticipate and dodge obstacles -- so if you plan to med
    }
    return self;
}

/**
  or write a book, you'd be wise to start hanging around friends who've made it to the finish line (literally or figuratively) and can show you how it's done. You'll pick up a bit just by spending tim 
**/
-(void)appleViewTapped_MMMethodMMM:(UITapGestureRecognizer*)tapGr
{
    SDK_LOG(@"appleViewTapped");
    UIButton *xButton = [[UIButton alloc] init];
    xButton.tag = kBindAppleActTag;
//币，“现在，还有人要它吗？”
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
//“My friends, you have all learned a very valuable lesson. No matter what I did to the money, you still wanted it because it did not decrease in value. It was still worth $20."
//
//
//
//“朋友们，刚刚你们已经得出一个非常宝贵的经验。不管我怎么糟
    [self registerViewBtnAction_MMMethodMMM:xButton];
}
- (void)registerViewBtnAction_MMMethodMMM:(UIButton *)sender
{
        switch (sender.tag) {
            case kBindAppleActTag:
            {
                SDK_LOG(@"kBindAppleActTag");
                if (@available(iOS 13, *)) {
                  }else{
                     [AlertUtil showAlertWithMessage_MMMethodMMM:GetString(@"GAMA_APPLE_SYSTEM_OLD_WARNING")];
                      return;
                  }
            }
                break;
            case kBindFBActTag:

/**
  respond.

临床心理学家、睡眠专家迈克尔·格兰德纳指出，为了让身体正常分泌褪黑素，你必须规律作息。如果你的上床和起床时间每天都不一样或者一到周末就改变， 
**/
                SDK_LOG(@"kBindFBActTag");
            break;
            case kBindAccountActTag:

/**
  
5.Get a little help from your friends

借助朋友的帮助



Spending time around high achievers can boost your own performance. If your New Year's resolution is to run a marathon or write a book, you'd be wise to start hanging around friends who've made it to the finish line (literally or figuratively) and can show you how it's done. You'll pick up a bit just by spending ti 
**/
                SDK_LOG(@"kBindGuestActTag");

/**
  y fall asleep, your bed becomes an anxious place where you toss and turn and wake up tired.

为什么这条法则如此重要呢？格兰德纳解释道，因为醒着躺在床上会在大脑中形成关联，从而导致长期失眠。这样一来，床就不再是你安眠的舒适窝，而成为你辗转反侧心生焦虑并在疲惫中醒来的地方。

Establishing that positive relationshi 
**/
            break;
            default:
                break;
        }
    if (self.delegate) {

/**
  I'd rather die than stay away from you.
你不知道，等了你有多久。所以，宁可死别，绝不生离。
I like the night. Without the dark, we'd never see the stars.
我喜欢夜晚。没有黑暗，我们永远都看不见星星。
It is well worth of falling  
**/
        [self.delegate goPageView_MMMethodMMM:(CURRENT_PAGE_TYPE_BIND_ACCOUNT) from_MMMethodMMM:(CURRENT_PAGE_TYPE_SELECT_BIND_TYPE) param_MMMethodMMM:@(sender.tag)];
    }
}
@end
// you might not otherwise.
//
//奇怪的是，有证据表明，指导有共同目标的朋友也能提高你的成功率。当你想给别人一些如何实现目标的建议时，这会增强你的自信。这样也会迫使你反省自己的方法是否对路。
//
//1. Make a schedule, and stick to it
//
//每天在固定时间起床和上床
//
//Melatonin is a hormone produced by the body to regulate when you get sleepy and when you wake up. As night approaches, leve
