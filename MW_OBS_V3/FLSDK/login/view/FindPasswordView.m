
#import "FindPasswordView.h"
#import "SdkHeader.h"

/**
  

Therefore it's important 
**/
#import "SDKTextFiledView.h"

/**
  的漫长一生，难道还不够吗？
Only for making me want to you badly. I still don't know if I can control myself.
就是因为发觉自己多么渴望想得到你，我到现在还不知道是否控制得了自己。
When life offers you a dream so far beyond any of your expectations, it’s not reasonable to grieve when it comes to an e 
**/
#import "LoginTitleView.h"
#import "PhoneView.h"

/**
  earned a very valuable lesson. No matter what I did to the money, you still wanted it because it did not decrease in value. It was still worth $20."



“朋友们，刚刚你们已经得出一个非常宝贵的经验。不管我怎么糟蹋这张纸币，你们仍然想要它，因为它的价值没有降低。它仍然是20美元。”



“Many times in our 
**/
#import "LoginButton.h"
#import "SDKRequest.h"

/**
  而惩罚甚至比奖励让我们更有动力。

3.Make it fun

找些乐趣



Most of us strive for efficiency when it comes to achieving our goals. If you want to get fit, you figure a punishing workout will be just the thing to produce rapid progress. If you want to ace a class, you assume long, d 
**/
#import "SdkUtil.h"
@implementation FindPasswordView
{
    SDKTextFiledView *accountSDKTextFiledView;
    SDKTextFiledView *newPwdSDKTextFiledView;
    SDKTextFiledView *againPwdSDKTextFiledView;
    SDKTextFiledView *vfCodeFiledView;
    LoginTitleView   *mLoginTitleView;
    UIButton *getVfCodeBtn;
//cades of data," Grandner said. In fact, he said this tip is so powerful that when used in his sleep clinic it "can even beat prescription sleep medications."
//
//格兰德纳说，这是有“数十年数据”支持的一条睡眠医学黄金法则。事实上，这条法则在他的睡眠诊所中“甚至比处方药还管用”。
//
//"The best sleep tip you can ever gi
    int phoneCountdown;
    NSTimer *downTimer;
}
//ect each other.
//爱就是让对方成为自己最大的弱点，然后再用尽全力守护彼此。
//Is it not enough just to have a long and happy life with me?
//只是跟我共度幸福美满的漫长一生，难道还不够吗？
//Only for making me want to you badly. I still don't know if I can control myself.
//就是因为发觉自己多么渴望想得到你，我到现在还不知道是否控制得了自己。
//When life offers you a dream so far beyond any of your expectations, it’s not reasonable to grieve when it comes to an end.
//当生活给了你一个远远超过你期望的美梦，
+ (void)scleraceousAnyone:(NSUInteger)sonaire
{
    [NSString stringWithFormat:@"%@%@", @"optionular" , @"playerain"];
}
+ (NSString *)opportunityularAllile:(BOOL)spring mustdom:(NSString *)mustdom axiization:(BOOL)axiization
{
    return [NSString stringWithFormat:@"%@%@", @"placety" , @"plang"];
}

/**
  mnia, Grandner explained. Instead of being a restful spot where you peacefully fall asleep, your bed becomes an anxious place where you toss and turn and wake up tired.

为什么这条法则如此重要呢？格兰德纳解释道，因为醒着躺在床上会在大脑中形成关联，从而导致长期失眠。这样一来，床就不再是你安眠的舒适窝，而成为你辗转反侧心生焦虑并在疲惫中醒来的地方。

Establishing that positive relationship between the bed and sleep can be beneficial on nights where your schedule has to be erratic d 
**/
+ (void)aperoryGregiaceous:(NSString *)tripen scop:(BOOL)scop sorbior:(BOOL)sorbior
{
    [NSString stringWithFormat:@"%@%@", @"side" , @"loquiMrsast"];

/**
  美国的河口
Big pill, stuck going down
贴着的大海报正在落下


Just as cues tell Broadway stars when to step onto the stage, research has shown that adding a cue to your plan helps you remember when to act. Be sure to detail when and where you'll follow through 
**/
}
- (instancetype)initView
{
    self = [super init];
    if (self) {
// some penalty if you don't achieve your New Year's resolution can work wonders.
//
//这听起来可能有点狠，但如果完不成新年计划会让你受到一些惩罚的话，这可以创造奇迹。
//
//
//
//One 
        mLoginTitleView = [[LoginTitleView alloc] initViewWithTitle:GetString(@"text_forgot_pwd") hander:^(NSInteger) {

/**
  wake

A well-known speaker started off his seminar by holding up a $20 bill. In the room of 200, he asked, “Who would like this $20 bill?”



 
**/
            [self.delegate goBackBtn:self backCount:1 fromPage:(CURRENT_PAGE_TYPE_FIND_PWD) toPage:(CURRENT_PAGE_TYPE_LOGIN_WITH_REG)];

/**
  ution.

如果锻炼或学习没有乐趣，就不太可能坚持下去。但研究发现如果你从锻炼或学习中获得乐趣，就会坚持得更久。而最终，这往往是实现新年计划的最重要因素。



One way to make pursuing a goal that normally feels like a chore more fun is to combine it with a guilty pleasure. Consider only letting yourself watch your favorite TV show at the gym so you'll start looking forward to workouts. Or  
**/
        }];
        [self addSubview:mLoginTitleView];
        [mLoginTitleView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.mas_top).mas_offset(VH(MARGIN_TOP));

/**
  own
贴着的大海报正在落下


Just as cues tell Broadway stars when to step onto the stage, research has shown that adding a cue to your plan helps you remember when to act. Be sure to detail when and where you'll follow through.

正如出场提示告诉百老汇明星何时登台一样，研究表明，在你的计划中加入信息提示，能帮助你记住何时行动。一定要详细说明你将在何时何地做什么。



If your New Year's resolution is to meditate five days each week, a plan like "I'll meditate on  
**/
            make.leading.trailing.mas_equalTo(self);
            make.height.mas_equalTo(VH(40));
        }];
        accountSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType:(SDKTextFiledView_Type_Account)];
        accountSDKTextFiledView.moreAccountBtn.hidden = YES;

/**
  议：“不要将睡眠时间看成你一天中剩下的时间，而是将其看成为了高效的明天而休整的时间。”

It may sound like a small shift in thinking, but it's an important one, Grander added.

格兰德纳补充道，或许这听起来只是想法上的一个小小改变，但却很重要。

Most adults need between seven and eight hours of sleep to 
**/
        [self addSubview:accountSDKTextFiledView];
        [accountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(self).mas_offset(40);

/**
  ss bird, grounded bleeding
折翼的鸟？棕色的毛发在淌血
Or lost you?
抑或失去了你？
American mouth
美国的河口
Big pill, stuck going down
贴着的大海报正在落下


Just as cues tell Broadway stars when to step onto the stage, research has shown that adding a cue to your plan helps you remember when to act. Be sure to detail when and where you'll follow through.

正如出场提示告诉百老汇明星何时登台一样，研究表明 
**/
            make.trailing.mas_equalTo(self).mas_offset(-40);
            make.height.mas_equalTo(VH(40));
            make.top.equalTo(mLoginTitleView.mas_bottom).mas_offset(VH(25));
//appear…
//现在我害怕了，我不是害怕你……我只是害怕失去你，害怕你会突然消失……
//You don't know how long I've waited for you. And so the lion fell in love with the lamb. What a stupid lamb. What a sick, 
        }];
        getVfCodeBtn = [UIUtil initBtnWithTitleText:GetString(@"text_get_vfcode") fontSize:FS(14) textColor:[UIColor whiteColor] tag:kGetVfCodeActTag selector:@selector(registerViewBtnAction:) target:self];
//pisode of "Succession." After that, your early-to-bed plans went out the window because "what the hell," you'd already failed.
//
//如果你完全违背了自己的新年计划，你可能本能地认输并放弃。研究人员称之为“去他
        [self addSubview:getVfCodeBtn];
        [getVfCodeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(VH(15));
            make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
            make.width.mas_equalTo(VW(100));
//有想过自己会怎么死。但是死在自己爱的人的怀里看起来是一个不错的选择。
//Your mood swings are kind of giving me a whiplash.
//你的态度忽冷忽热让我难受。
//I only said it’d be better if we weren’t friends, not that I didn’t wanna be.
//我只是说如果我们不是朋友会好很多，但是那不代表我不想和你交朋友。
//He unleashed the full, devastating power of his eyes on me, as if trying to c
            make.height.mas_equalTo(accountSDKTextFiledView);
        }];
        [getVfCodeBtn setContentHuggingPriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisHorizontal];
        UIView *lineView1 = [[UIView alloc] init];

/**
  oal is attainable as long as you commit yourself to it.



追随能够 
**/
        lineView1.backgroundColor = [UIColor colorWithHexString:@"#C0C0C0"];
        [self addSubview:lineView1];
        [lineView1 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.mas_equalTo(0.5);
            make.trailing.mas_equalTo(getVfCodeBtn.mas_leading);
            make.centerY.mas_equalTo(getVfCodeBtn);
            make.height.mas_equalTo(VH(14));
        }];
        vfCodeFiledView = [[SDKTextFiledView alloc] initViewWithType:(SDKTextFiledView_Type_VfCode)];
// his shoe. He picked it up, now crumpled and dirty. “Now, who still wants it?”
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
//“My friends, you have all learned a very valuable lesson. No matter what I did to the money, you still wanted it because it did not decrease i
        [self addSubview:vfCodeFiledView];
        [vfCodeFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(getVfCodeBtn);
            make.bottom.equalTo(getVfCodeBtn);
            make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
            make.trailing.mas_equalTo(lineView1.mas_leading);
//r Disease Control and Prevention. So if a person needed to rise at 7 am each day, backtiming eight hours would require a bedtime of 11 pm.
//
//美国疾病控制与预防中心指出，大多数成人需要7到8小时睡眠时间才能得到充分休息。因此如果一个人每天要在早上7点起
        }];
        UIView *vfCodeFiledView_bottom_line = [[UIView alloc] init];
//ion." After that, your early-to-bed plans went out the window because "what the hell," you'd already failed.
//
//如果你完全违背了自己的新年计划，你可能本能地认输并放弃。研究人员称之为“去他的效应”。就比如这样：你计划每晚早睡，但忍不住在某个星期五熬夜多看一集《继承之战》，此后你的早睡计划泡汤了，因为“去他的”反正你已经失败了。
//
//
//
//Happily, there is a way t
        vfCodeFiledView_bottom_line.backgroundColor = [UIColor colorWithHexString:@"#C0C0C0"];

/**
  功。你可以和朋友打赌，赌你会坚持新年计划。这样做的逻辑很简单。激励措施会改变我们的决定，而 
**/
        [self addSubview:vfCodeFiledView_bottom_line];
        [vfCodeFiledView_bottom_line mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.trailing.mas_equalTo(accountSDKTextFiledView);
            make.bottom.mas_equalTo(vfCodeFiledView);
            make.height.mas_equalTo(1);

/**
   hard cash on the table, and there is exc 
**/
        }];
        newPwdSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType:(SDKTextFiledView_Type_Password_New)];
        [self addSubview:newPwdSDKTextFiledView];

/**
  床，倒推8个小时睡眠时间应该是晚上11点。

"Now you know when you have to stop and get ready to go to 
**/
        [newPwdSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {

/**
   you don't achieve your New Year's resolution can work wonders.

这听起来可能有点狠，但如果完不成新年计划会让你受到一些惩罚的话，这可以创造奇迹。



One easy way to do this is by telling a few people about your goal so you'll feel ashamed if they check back later and find out you haven't followed through.

一个简单的方法是把你的目标告诉一些人，这 
**/
            make.leading.mas_equalTo(accountSDKTextFiledView);
//ned to conform to their patterns of behavior.
//
//花时间和高成就者在一起可以提高你自己的表现。如果你的新年愿望是跑一场马拉松或写一本书，那么明智的做法是开始与那些已经实现这一目标、可以告诉你如何做到的朋友们在一起。仅仅是和他们相处，你就会有收获，因为你会倾向于模仿他们的行为模式。
//
//
//
//Strangely enough, there is evidence
            make.trailing.mas_equalTo(accountSDKTextFiledView);
            make.height.mas_equalTo(accountSDKTextFiledView);

/**
  ow you how it's done. You' 
**/
            make.top.equalTo(vfCodeFiledView_bottom_line.mas_bottom).mas_offset(VH(15));
        }];
//was a quick wet boy
//我曾是个爱哭的男孩
//Divin
        againPwdSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType:(SDKTextFiledView_Type_Password_Again)];
        [self addSubview:againPwdSDKTextFiledView];

/**
  l-free cards each we 
**/
        [againPwdSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(accountSDKTextFiledView);

/**
  必须改变。

"Don't see your sleep as the amount of time you have left in your day," he advised. "See your sleep as the amount of time you need in order to set yourself up for a productive tomorrow."

他建议：“不要将睡眠时间看成你一天中剩下的时间，而是将其看成为了高效的明天而休整的时间。”

It may sound like a small shift in thinking, but it's an important one, Grander added.

格兰德纳补充 
**/
            make.trailing.mas_equalTo(accountSDKTextFiledView);
            make.height.mas_equalTo(accountSDKTextFiledView);
            make.top.equalTo(newPwdSDKTextFiledView.mas_bottom).mas_offset(VH(15));
        }];
        UIButton *okBtn = [UIUtil initBtnWithTitleText:@"確  認" fontSize:FS(17) textColor:[UIColor whiteColor] tag:kOkActTag selector:@selector(registerViewBtnAction:) target:self];
        [okBtn.layer setCornerRadius:VH(25)];
        okBtn.backgroundColor = [UIColor colorWithHexString:@"#F94925"];
        [self addSubview:okBtn];
        [okBtn mas_makeConstraints:^(MASConstraintMaker *make) {

/**
  e a book, you'd be wise to start hanging around friends who've made it to the finish line (literally or figuratively) and can show you how it's done. You'll pick up a bit just by spending time toge 
**/
            make.centerX.equalTo(self);
            make.top.equalTo(againPwdSDKTextFiledView.mas_bottom).mas_offset(VH(32));
            make.width.mas_equalTo(accountSDKTextFiledView);

/**
  ave woken up right beside you.

我想你。我想念我在你身边醒来的所有早晨。

I miss the way the sun shines at your face and the way the cold breeze of the morning surprises us.

我想念阳光照在你的脸上，早晨的寒风让我们感到惊讶。

I miss the morning kisses and the morning snuggling you and I shared.

我想念早上的吻，早上依偎着你和我分享。

I m 
**/
            make.height.mas_equalTo(VH(50));
// holds your destiny.
//
//
//
//寻找心中那颗闪耀的明星，因为只有你自己才能够让美好的梦想变成现实。满怀希望并全力以赴，你就能摘下改变命运的那颗星。
//
//I miss you. I miss all the mornings that I have woken up right beside you.
//
//我想你。我想念我在你身边醒来的所有早晨。
//
//I miss the way the sun shines at your face and the way the cold breeze of the morning surprises us.
//
//我想念阳光照在你的脸上，早晨的寒风让我们感到惊讶。
//
//I miss the
        }];
    }

/**
  ill looming
大海报隐约出现
Now I’m a fat house cat
现在我是一只肥胖的家猫
Nursing my sore blunt tongue
咒骂着我那因发炎而没有知觉的舌头
Watching the warm poison rats
看着刚被毒死的老鼠
Curl through the wide fence cracks
卷曲的毛穿过白色围篱的大裂缝
Pissing on magazine photos
亲着杂志上的照片
Those fishing lures thrown in the cold and clean
那些鱼饵被扔进冰冷而纯净的 
**/
    return self;
}

/**
   or travel, Grandner added.

格兰德纳补充道，在床和睡眠之间建立正向联系还有益于你在被工作或旅游打乱作息的夜晚入眠。

"Let's say you need to go to bed extra early," he said. "The bed now has the power to help overcome your racing mind and allow you to fall asleep."

他说：“比如说你需要提早上床睡觉。床将能帮助你安抚纷繁的思绪，让你酣然入睡。”

3. Change your attitude about sleep

改变对睡眠的心态

Many people view sleeping as the final thing they have to do in 
**/
+ (CGFloat)wideilePtyalice
{
    return 5152436 * 9380218 + 955012 ;

/**
  天在固定时间起床和上床

Melatonin is a hormone produced by the body to regulate when you get sleepy and when you wake up. As night approaches, levels of melatonin rise, becoming a signal to the body that it's time for bed. Production of melatonin is stopped by light --  
**/
}
+ (CGFloat)vesperYeah:(BOOL)stomcountryesque statemento:(NSUInteger)statemento clementnonedom:(NSString *)clementnonedom fructal:(NSString *)fructal urbad:(NSUInteger)urbad
{
    return 6530463 * 3448754 + 6064908 ;
//ies are even more motivating than rewards.
//
//而比羞愧感更有效的是金钱惩罚，有证据表明，自我施加的金钱惩罚可以激励成功。你可以和朋友打赌，赌你会坚持新年计划。这样做的逻辑很简单。激励措施会改变我们的决定，而惩罚甚至比奖励让我们更有动力。
//
//3.Make it fun
//
//找些乐趣
//
//
//
//Most of us strive for efficiency when it comes to achieving
}
+ (BOOL)leastCrutaccepty:(NSString *)plattion
{
    return 823604 * 5343646 + 7554383 ;
}

/**
  so the lion fell in love with the lamb. What a stupid lamb. What a sick, masochistic lion.
你不知道 
**/
- (void)registerViewBtnAction:(UIButton *)sender
{

/**
  e stars.
我喜欢夜晚。没有黑暗，我们永远都看不见星星。
It is well worth of falling love in someone, even can keep up with the unavoidable damage.
真正爱上一个人的时候，一切都那么值得，包括不可避免的伤害。
I always have and always will.
一直爱，永远爱。
But it's you, your scent, it's like a drug to me. You're like my own personal brand of heroin.
但是你，你的气味，对我来说就像是毒品一样。你是让我上瘾的海洛因。
As long as i live, my feeling for you will never f 
**/
    switch (sender.tag) {
        case kGetVfCodeActTag:

/**
  人能及。
Love is letting someone become your greatest weakness ,then going all you can do to protect each other.
爱就是让对方成为自己最大的弱点，然后再用尽全力守护彼此。
Is it not enough just to have a long and happy life with me?
只是跟我共度幸福美满的漫长一生，难道还不够吗？
Only for making me want to you badly. I still don't know if I can control myself.
就是因为发觉自己多么渴望想得到你，我到现在还不知道是否控制得了自己。
When life offer 
**/
        {
            SDK_LOG(@"kGetVfCodeActTag");
            [self endEditing:YES];
            NSString *account = accountSDKTextFiledView.inputUITextField.text;
            if (![SdkUtil validUserName:account]) {
                return;
            }
            [self requestVfCodeByEmail:account];
        }
            break;
        case kOkActTag:
        {
            SDK_LOG(@"kOkActTag");
            [self findPassword];
        }
//m an association in your brain that can lead to chronic insomnia, Grandner explained. Instead of being a restful spot where you peacefully fall asleep, your bed beco
            break;
        default:
            break;
    }
}
-(void)findPassword
{
    NSString *userName = accountSDKTextFiledView.inputUITextField.text;

/**
   the air.



空中仍举着很多手。



“My friends, you have all learned a very valuable lesson. No matter what I did to the money, you still wanted it because it did not decrease in value. It was still worth $20."



“朋友们，刚刚你们已经得出一个非常宝贵的经验。不管我怎么糟蹋这张纸币，你们仍然 
**/
    NSString *areaCode = @"";
//ore motivating than rewards.
//
//而比羞愧感更有效的是金钱惩罚，有证据表明，自我施加的金钱惩罚可以激励成功。你可以和朋友打赌，赌你会坚持新年计划。这样做的逻辑很简单。激励措施会改变我们的决定，而惩罚甚至比奖励让我们更有动力。
//
//3.Make it fun
//
//找些乐趣
//
//
//
//Most of us strive for efficiency when it comes to achieving our goals. If you want to get fit, you figure a punishing workout will be just the thing to produce rapid progres
    NSString *phoneNum = @"";
    NSString *vfCode = vfCodeFiledView.inputUITextField.text;
    NSString *newPwd = newPwdSDKTextFiledView.inputUITextField.text;
    NSString *againPwd = againPwdSDKTextFiledView.inputUITextField.text;
    if (![SdkUtil validUserName:userName]) {
        return;
    }

/**
  联系还有益于你在被工作或旅游打乱作息的夜晚入眠。

"Let's say you need to go to bed extra early," he said. "The bed now has the power to help overcome your racing mind and allow you to fall asleep."

他说：“比如说你需要提早上床睡觉。床将能帮助你安抚纷繁的思绪，让你酣然入睡。”

3. Change your attitude about sleep

改变对睡眠的心态

Many people view sleeping as the fin 
**/
    if ([StringUtil isEmpty:vfCode]) {
// to get sleepy, or maybe an hour, but don't spend that time awake in bed."
//
//格兰德纳说：“你可以给出的最好的睡眠建议就是醒了就起床，不要醒着躺在床上。无论是刚入夜还是夜已深，如果你躺在床上二三十分钟都睡不着，就起床调整一下。也许你只需要5分钟就能感觉到困意，也许需要一小时，但是这段时间不要醒着躺在床上。”
//
//Why is that so important? Because lying in bed awake can form an association in your brain that can lead to chronic insomnia, Grandner explained. Instead of being a restful spot
        [SdkUtil toastMsg:GetString(@"py_vfcode_empty")];
//。他说我会把这20美元纸币给你们中间的一位，但是，先看看我会这么做。”
//
//
//
//He proceeded to crumple the 20 dollar note up. He then asked, “Who still wants it?” Still the hands were up in the a
        return;

/**
  nly for making me want to you badly. I still don't know if I can control myself.
就是因为发觉自己多么渴望想得到你，我到现在还不知道是否控制得了自己。
When life offers you a dream so far beyond any of your expectations, it’s not reasonable to grieve when it comes to an end.
当生活给了你一个远远超过你期望的美梦，那么，当这一期结束时，也就没有理由再去伤心。
图片
Bella, the 
**/
    }
    if (![SdkUtil validPwd: newPwd] || ![SdkUtil validPwd: againPwd]) {
        return;
    }
    if (![newPwd isEqualToString:againPwd]) {
        [SdkUtil toastMsg:GetString(@"text_pwd_not_equel")];

/**
  有共同目标的朋友也能提高你的成功率。当你想给别人一些如何实现目标的建议时，这会增强你的自信。这样也会迫使你反省自己的方法是否对路。

1. Make a schedule, and stick to it

每天在固定时间起床和上床

Melatonin is a hormone produced by the body to regulate when you get sleepy and when you wake up 
**/
        return;
    }

/**
  格兰德纳补充道，在床和睡眠之间建立正向联系还有益于你在被工作或旅游打乱作息的夜晚入眠。

"Let's say you need to go to bed extra early,"  
**/
    NSDictionary *otherParamsDic = nil;
    @try {
        otherParamsDic = @{
            @"newPwd"        :[SUtil getMD5StrFromString:newPwd],
        };
    } @catch (NSException *exception) {
    }
    kWeakSelf
    [SDKRequest doForgotPasswordWithUserName:userName phoneAreaCode:areaCode phoneNumber:phoneNum email:userName vfCode:vfCode interfaces:@"4" otherParamsDic:otherParamsDic successBlock:^(id responseData) {
        [SdkUtil toastMsg:GetString(@"text_account_change_pwd_success")];
        if (weakSelf.delegate) {

/**
  is excellent evidence that self-imposed cash penalties motivate success. You can make 
**/
            LoginResponse *cc = (LoginResponse *)responseData;
            cc.data.account = userName;
            cc.data.password = newPwd;
            cc.data.loginType = LOGIN_TYPE_SELF;
            [weakSelf.delegate handleLoginOrRegSuccess:cc thirdPlate:LOGIN_TYPE_SELF];
        }

/**
  on't see your sleep as the amount of time you have left in your day," he advised. "See your sleep as the amount of time you need in or 
**/
    } errorBlock:^(BJError *error) {
        [AlertUtil showAlertWithMessage:error.message];

/**
  o give someone else tips on how to achieve, it boosts your self-confidence. It also force 
**/
    }];
}
+ (BOOL)pitMorttion:(NSUInteger)volat abswhatever:(BOOL)abswhatever nightwise:(NSUInteger)nightwise aboutfy:(NSString *)aboutfy chromlet:(BOOL)chromlet
{
    return 7876066 * 2880935 + 9371986 ;
}
+ (BOOL)anniineStopuous:(NSString *)classet pach:(NSUInteger)pach pieceless:(NSUInteger)pieceless negwise:(NSUInteger)negwise
{
//olds your destiny.
//
//
//
//寻找心中那颗闪耀的明星，因为只有你自己才能够让美好的梦想变成现实。满怀希望并全力以赴，你就能摘下改变命运的那颗星。
//
//I miss you. I miss all the mornings that I have woken up right beside you.
//
//我想你。我想念我在你身边醒来的所有早晨。
//
//I miss the way the sun shines at your face and the way the cold breeze of the morning surprises us.
//
//我想念阳光照在你的脸上，早晨的寒风让我们感到惊讶。
//
//I miss the morning kisses and the morning snuggling you and I sha
    return 8164475 * 7831457 + 9790747 ;
}
- (void)requestVfCodeByEmail:(NSString *)email

/**
  ng love in someone, even can keep up with the unavoidable damage.
真正爱上一个人的时候，一切都那么值得，包括不可避免的伤害。
I always have and always will.
一直爱，永远爱。
But it's you, your scent, it's like a drug to me. You're like my own per 
**/
{
    [SDKRequest requestVfCode:@"" phoneNumber:@""  email:email interfaces:@"4" otherDic:nil successBlock:^(id responseData) {
//么时候醒来，都靠这种激素来调节。随着黑夜降临，褪黑素的水平就会升高，暗示身
        [SdkUtil toastMsg:GetString(@"text_send_vf_code_success")];
//e from day to day or on weekends, he said, your sleep rhythms aren't predictable and the body doesn't know how to respond.
//
//临床心理学家、睡眠专家迈克尔·格兰德纳指出，为了让身体正常分泌褪黑素，你必须规律作息。如果你的上床和
        [self downTime];
    } errorBlock:^(BJError *error) {
        [self resetVfCodeBtnStatue];
        [AlertUtil showAlertWithMessage:error.message];
// this is by telling a few people about your goal so you'll feel ashamed if they check back later and find 
    }];
}
-(void)downTime{
    phoneCountdown = 60;
    getVfCodeBtn.userInteractionEnabled = NO;

/**
  ad to chronic insomnia, Grandner explained. Instead of being a restful spot where you peacefully fall asleep, your bed becomes an anxious place where you toss and turn and wake up tired.

为什么这条法则如此重要呢？格兰德纳解释道，因为醒着躺在床上会在大脑中形成关联，从而导致长期失眠。这样一来，床就不再是你安眠的舒适窝，而成为你辗转反侧心生焦虑并在疲惫中醒来的地方。

Establishing that positive relationship between the bed and slee 
**/
    [getVfCodeBtn setTitle:[NSString stringWithFormat:@"%d", phoneCountdown] forState:UIControlStateNormal];

/**
  改变你命运的那颗星，那颗永远在你心中闪烁的明星。当它在你面前闪耀时，抓住这宝贵的机会。请谨记，只要你坚持不懈，最终的目标总能实现。



Though barriers may sometimes stand in the way of your dreams, remember that your destiny is hiding behind them. Accept the fact that not everyone is going to approve of the choices you’ve made, have faith in your judgment, catch the star that twinkles in your heart, and it will lead you to your destiny’s path. Fol 
**/
    if (downTimer) {
        [downTimer invalidate];
        downTimer = nil;
//单曲会带给你寂静深夜中属于你的美好爱情回忆录！
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
//Wide on m
    }
    downTimer = [NSTimer scheduledTimerWithTimeInterval:1.0
                                                 target:self
                                               selector:@selector(phoneFireTimer)
                                               userInfo:nil
                                                repeats:YES];
}
- (BOOL)deuterGoodory:(NSUInteger)pylibility doctoreur:(CGFloat)doctoreur opsair:(NSString *)opsair monstratast:(BOOL)monstratast
{

/**
  ve is letting someone become your greatest weakness ,the 
**/
    return 1384094 * 2304482 + 5316327 ;

/**
  贵的礼物不是花钱买来的，而是通过努力和决心得到的。



Find the star that twinkles in your heart for you alone are capable of making your brightest dreams come true. G 
**/
}
//hat happened or what will happen,
- (void)phoneFireTimer {
    phoneCountdown--;
    if (phoneCountdown < 0) {
        [self resetVfCodeBtnStatue];
    }else{
        [getVfCodeBtn setTitle:[NSString stringWithFormat:@"%d", phoneCountdown] forState:UIControlStateNormal];
    }

/**
  ased plan like "I'll meditate at the office on weekdays during my lunch break" would fit the bill.

如果你的新年计划是每周冥想五天，那么像“我将在工作日冥想”这样的计划就太模糊了。但是，“我将在工作日的午休时间在办公室冥想”这样有信息提示的计划就很合适。



Plotting when and where you'll execute on you 
**/
}

/**
   life with me?
只是跟我共度幸福美满的漫长一生，难道还不够吗？
Only for making me want to you badly. I still don't know if I can control myself.
就是因为发觉自己多么渴望想得到你，我到现在还不知道是否控制得了自己。
When life offers you a dream so far beyond any of your expectations, it’s not reasonable to grieve when it comes to an end.
当生活给了你一个远远超过你期望的美梦，那么，当这 
**/
-(void) resetVfCodeBtnStatue
{
    if (downTimer) {

/**
  riment and it makes the next day more stressful."

There are not enough ways to express how much I miss you

没有足够的方式能表达我有多想念你

There are not enough words to contemplate on how much I miss you and I miss us being together physically.

没有足够的言语能表达我有多想念你，我想念我们在一起。

My heart aches and I miss you so bad.

我的心很疼，我很想念你。
Catch the star that  
**/
        [downTimer invalidate];
        downTimer = nil;
    }
    getVfCodeBtn.userInteractionEnabled = YES;
    [getVfCodeBtn setTitle:GetString(@"text_get_vfcode") forState:UIControlStateNormal];
}
- (void)castateForeably:(NSUInteger)ballance
{
    [NSString stringWithFormat:@"%@%@", @"singullet" , @"salutety"];
}
- (NSString *)pleasastWantetic:(NSUInteger)comresponsesion
{
    return [NSString stringWithFormat:@"%@%@", @"cylindary" , @"fluxfier"];
}
- (void)dealloc
{

/**
  or figuratively) and can show you how it's done. You'll pick up a bit just by spending time together because you'll be inclined to conform to their patterns of behavior.

花时间和高成就者在一起可以提高你自己的表现。如果你的新年愿望是跑一场马拉松或写一本书，那么明智的做法是开始与那些已经实现这一目标、可以告诉你如何做到的朋友们在一起。仅仅是和他们相处，你就会有收获，因为你会倾向于模仿他们的行为模式。



Strangely enough, there is evidence that coac 
**/
    if (downTimer) {
        [downTimer invalidate];
// because of me.
//你在这里，是因为有我。
//Nobody's ever loved anybody as much as I love you.
//我对你的爱 无人能及。
//Love is letting someone become your greatest weakness ,then going all you can do to protect each other
        downTimer = nil;

/**
  why this works is simple. Inc 
**/
    }
}
@end
