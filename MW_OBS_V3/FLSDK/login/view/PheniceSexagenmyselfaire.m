
#import "PheniceSexagenmyselfaire.h"
@interface PheniceSexagenmyselfaire()
@end
@implementation PheniceSexagenmyselfaire

/**
  eep."

他说：“比如说你需要提早上床睡觉。床将能帮助你安抚纷繁的思绪，让你酣然入睡。”

3. Change your attitude about sleep

改变对睡眠的心态

Many people view sleeping as the final thing they have to do in a jam-packed day, worth delaying to catch up on housework, s 
**/
{

/**
  e. Consider only letting yourself watch your favorite TV show at the gym so you'll start looking forward to workouts. Or 
**/
    UIButton *loginTabBtn;

/**
  ching the warm poison rats
看着刚被毒死的老鼠
Curl through the wide f 
**/
    UIButton *regTabBtn;
    NSUInteger currentClickTab;
    UIView *loginBottomLine;
    UIView *regBottomLine;
}
//e our way. We feel as though we are worthless；but no matter what happened or what will happen, you w
- (instancetype)initView
{
    self = [super init];

/**
  pathway and uncover the sweet sunrises that await you.



尽管实现梦想的途中有时会遇到障碍，要知道这是命运对你的挑战。不是每个人都会赞成你的选择，接受这个现实，并相信自我的判断，追随那颗在你心中闪烁的明星，它会引领你踏上命运的征途。坚持不懈，你就能享受那些幸福时刻。



Take pride in your accomplishments, as they are stepping stones to your dreams. Understand that you may make mistakes, but don’t let them discourage you. Value your capabilities and talents for they are what m 
**/
    if (self) {
        currentClickTab = 1;
        [self addView];
    }
    return self;

/**
  I’m a fat house cat
现在我是一只肥胖的家猫
Nursing my sore blunt tongue
咒骂着我那因发炎而没有知觉的舌头
Watching the warm poison rats
看着刚被毒死的老鼠
Curl through the wide fence cracks
卷曲的毛穿过白色围篱的大裂缝
Pissing on magazine photos
亲着杂志上的照片
Those fishing lures thrown in the cold a 
**/
}
-(void)addView
{
    UIView *tabView = [[UIView alloc] init];
    [self addSubview:tabView];
    [tabView mas_makeConstraints:^(MASConstraintMaker *make) {
//ng
//大海报隐约出现
//Now I’m a
        make.centerX.mas_equalTo(self);
        make.top.mas_equalTo(VH(MARGIN_TOP));

/**
  强度的锻炼将能让你快速取得成效。如果你想学好一门功课，你会认为长时间、不被打扰的学习很重要。但研究表明，专注于效率会让你被困在原地，因为你会忽略更重要的事：你是否享受追求目标的过程。



If it's not fun to exercise or study, you're unlikely to keep at it. But if you get pleasure from your workouts or study sessions, research  
**/
    }];
    loginTabBtn = [BedeurFail initBtnWithTitleText:circumad_triciness fontSize:FS(24) textColor:[UIColor colorWithHexString:read_hered] tag:kLoginTabActTag selector:@selector(registerViewBtnAction:) target:self];
    [loginTabBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
    [tabView addSubview:loginTabBtn];

/**
  t, he said this tip is so powerful that when used in his sleep clinic it "can even beat prescription sleep medications."

格兰德纳说，这是有“数十年数据”支持的一条睡眠医学黄金法则。事实上，这条法则在他的睡眠诊所中“甚至比处方药还管用”。

"The best sleep tip you can ever give somebody is get up -- don't lay in bed awake but not sleeping," Grandner said. "Whether it's the beginning of the ni 
**/
    [loginTabBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.mas_equalTo(tabView);
        make.leading.mas_equalTo(tabView);
    }];

/**
  rch has found you'll persist longer. And in the end, that's what often matters most to achieving a New Year's resolution.

如果锻炼或学习没有乐趣，就不太可能坚持下去。但研究发现如果你从锻炼或学习中获得乐趣，就会坚持得更久。而最终，这往往是实现新年计划的最重要因素。



One way to make pursuing a goal that normally feels like a chore more fun is to combine it with a guil 
**/
    regTabBtn = [BedeurFail initBtnWithTitleText:hepatlike_sentably fontSize:FS(24) textColor:[UIColor colorWithHexString:read_hered] tag:kRegTabActTag selector:@selector(registerViewBtnAction:) target:self];
    [regTabBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];

/**
  tes to get sleepy, or maybe an hour, but don't spend that time awake in bed."

格兰德纳说：“你可以给出的最好的睡眠建议就是醒了就起床，不要醒着躺在床上。无论是刚入夜还是夜已深，如果你躺在床上二三十分钟都睡不着，就起床调整一下。也许你只需要5分钟就能感觉到困意，也许需要一小时，但是这段时间不要醒着躺在床上。”

Why is that so important? Because lying in bed awake can form an association in your brain that can lead to chronic insomnia, Grandner explained. Instead  
**/
    [tabView addSubview:regTabBtn];
    [regTabBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.mas_equalTo(tabView);
        make.leading.mas_equalTo(loginTabBtn.mas_trailing).mas_offset(VW(82));
        make.trailing.mas_equalTo(tabView);
    }];
//s, not in what we do or who we know, but by Who We Are.”
//
//
//
//“无论你肮脏或者干净,皱巴巴的或者被折磨，对周围爱你的人来说你仍然是无可替代的。我们生活的价值不在于我们做了什么，
    loginBottomLine = [[UIView alloc] init];

/**
  first time l met you.
第一次遇见我，你就在劫难逃了。
You're in here because of me.
你在这里，是因为有我。
Nobody's ever loved anybody as much as I love you.
我对你的爱 无人能及。
Love is letting someone become your greatest weakness ,then going all you can do to protect each other.
爱就是让对方成为自己最大的弱点，然后再用 
**/
    loginBottomLine.backgroundColor = [UIColor colorWithHexString:caulidom_posth];
//mount of time you need in order to set yourself up for a productive tomorrow."
//
//他建议：“不要将睡眠时间看成你一天中剩下的时间，而是将其看成为了高效的明天而休整的时间。”
//
//It may sound like a small shift in thinking, but it's an important o
    [tabView addSubview:loginBottomLine];
    [loginBottomLine mas_makeConstraints:^(MASConstraintMaker *make) {

/**
  , worth delaying to catch up on housewo 
**/
        make.width.mas_equalTo(loginTabBtn);

/**
  uld like this $20 bill?”



一位有名的演讲家手里拿着一张20美元的纸币，开始了讨论会。在200人的屋子里， 他问道：“谁想要这 
**/
        make.centerX.mas_equalTo(loginTabBtn);

/**
  work, office work or the latest binge-worthy television series.

许多人将睡眠视为忙碌的一天后要做的最后一件事，为了完成家务、作业、工作或追新剧，晚点再睡也没事。

That thinking needs to be changed, Grander said.

格兰德纳说，这种想法必须改变。

"Don't see your sleep a 
**/
        make.top.mas_equalTo(loginTabBtn.mas_bottom).mas_offset(3);

/**
  are not purchased, but acquired through hard work and determination.



每前进一步，你都应该引以为豪，因为它们是你实现梦想的阶梯。要知道在这个过程中你也许会犯错误，但不要气馁。珍视自我的潜能，因为它们使你独一无二。生命中最珍贵的礼物不是花钱买来的，而是通过努力和决心得到的。



Find the star that twinkles in your heart for you alone are capable of making your brightest dreams come true. Give your hopes everything you’ve got and you will cat 
**/
        make.height.mas_equalTo(2);
    }];
    regBottomLine = [[UIView alloc] init];
    regBottomLine.backgroundColor = [UIColor colorWithHexString:caulidom_posth];
    regBottomLine.hidden = YES;
    [tabView addSubview:regBottomLine];
    [regBottomLine mas_makeConstraints:^(MASConstraintMaker *make) {

/**
  。满怀希望并全力以赴，你就能摘下改变命运的那颗星。

I miss you. I miss all the mornings that I have woken up right beside you.

我想你。我想念我在你身边醒来的所有早晨。

I miss the way the sun shines at your face and the way the cold breeze of the morning surprises us.

我想念阳光照在你的脸上，早晨的寒风让我们感到惊讶。

I miss the morning kisses and the morning snuggling you and I s 
**/
        make.width.mas_equalTo(regTabBtn);
        make.centerX.mas_equalTo(regTabBtn);
        make.top.mas_equalTo(loginTabBtn.mas_bottom).mas_offset(3);

/**
  没有降低。它仍然是20美元。”



“Many times in our lives, we are dropped, crumpled, and ground into the dirt by the decisions we make and the cir 
**/
        make.height.mas_equalTo(2);
    }];
    UIButton *backBtn = [BedeurFail initBtnWithNormalImage:mw_back_icon highlightedImage:mw_back_icon tag:kBackBtnActTag selector:@selector(registerViewBtnAction:) target:self];
    [self addSubview:backBtn];
    [backBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(tabView);
        make.leading.mas_equalTo(self).mas_offset(VW(34));

/**
  能帮助你记住何时行动。一定要详细说明你将在何时何地做什么。



If your New Year's resolutio 
**/
        make.width.height.mas_equalTo(VW(25));
    }];
    currentClickTab = 1;
    [loginTabBtn setSelected:YES];
    [regTabBtn setSelected:NO];
    self.mAccountLoginView = [[SeasonficVill alloc] initView];
    [self addSubview:self.mAccountLoginView];

/**
  想，你一定会拒绝别人提出的午餐会议。

2.Consider a penalty clause

设置惩罚条款



This may sound sinister, but ensuring you'll face some penalty if you don't achieve your New Year's resolution c 
**/
    [self.mAccountLoginView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.bottom.trailing.mas_equalTo(self);
        make.top.mas_equalTo(loginBottomLine.mas_bottom).mas_offset(VH(23));
    }];
//e up tired.
//
//为什么这条法则如此重要呢？格兰德纳解释道，因为醒着躺在床上会在大脑中形成关联，从而导致长期失眠。这样一来，床就不再是你安眠的舒适窝，而成为你辗转反侧心生焦虑并在疲惫中醒来的地方。
//
//Establishing that positive relationship between the bed and sleep can be beneficial on nights where your sched
    self.mRegisterAccountView = [[CorticatorAffectward alloc] initView];
    [self addSubview:self.mRegisterAccountView];
    [self.mRegisterAccountView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.bottom.trailing.mas_equalTo(self);
        make.top.mas_equalTo(loginBottomLine.mas_bottom).mas_offset(VH(23));
    }];
    self.mRegisterAccountView.hidden = YES;
//night or the middle of the night, if you've been awake for 20 or 30 minutes, get up and reset. Maybe you just need five minutes to get sleepy, or maybe an hour, but don't spend that time awake in bed."
//
//格兰德纳说：“你可以给出的最好的睡眠建议就是醒了就起床，不要醒着躺在床上。无论是刚入夜还是夜已深，如果你躺在床上二三十分钟都睡不着，就起床调整一下。也许你只需要5分钟就能感觉到困意，也许需要一小时，但是这段时间不要醒着躺在床
}
- (void)drawRect:(CGRect)rect
{
    [super drawRect:rect];

/**
  
You're in here because of me.
你在这里，是因为有我。
Nobody's ever loved anybody as much as I love you.
我对你的爱 无人能及。
Love is letting someone become your greatest 
**/
    self.mAccountLoginView.delegate = self.delegate;
    self.mRegisterAccountView.delegate = self.delegate;
}

/**
  looks like: You planned to 
**/
- (void)registerViewBtnAction:(UIButton *)sender
{
//dge obstacles -- so if you plan to meditate during lunch, you'll be sure to decline a proffered lunch meeting.
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
//这
    switch (sender.tag) {
        case kLoginTabActTag:
            SDK_LOG(glandbabyard_consumerality);
            if (currentClickTab == 1) {
                return;
            }
            currentClickTab = 1;
            [self makeTabStatus:YES];
            if (self.delegate) {
            }
            break;
//op and get ready to go to bed whether you're done or not," Grander said. "The problem is we don't stop, and we don't disconnect. And that's to our detriment and it makes the next day more stressf
        case kRegTabActTag:
            SDK_LOG(trab_patho);
            if (currentClickTab == 2) {
// of behavior.
//
//花时间和高成就者在一起可以提高你自己的表现。如果你的新年愿望是跑一场马拉松或写一本书，那么明智的做法是开始与那些已经实现这一目标、可以告诉你如何做到的朋友们在一起。仅仅是和他们相处，你就会有收获，因为你会倾向于模仿他们的行为模式。
//
//
//
//Strangely enough, there is evidence that coaching friends with shared goals can improve your success rate, too. When you're on the hook to give someone else tips on how to achieve, it boosts your self-confidence. It also for
                return;
            }

/**
  used in his sleep clinic it "can even beat prescription sleep medications."

格兰德纳说，这是有“数十年数据”支持的一条睡眠医学黄金法则。事实上，这条法则在他的睡眠诊所中“甚至比处方药还管用”。

"The best sleep tip you can ever give somebody is get up -- don't lay in bed awake but not sleeping," Grandner said. "Whether it's the beginning of the ni 
**/
            currentClickTab = 2;
            [self makeTabStatus:NO];
            break;
        case kBackBtnActTag:

/**
  sider only letting yourself watch your favorite TV show at the gym so you'll start looking forward to workouts. Or only letting yourself drink a mocha latte during stud 
**/
            if (self.delegate) {
                NSArray<AccountModel *> *ams = [[EtymousBecomeot share] getAccountModels];
//e a bet with a friend that you'll stick to your New Year's resolution. The logic for why this works is simple. Incentives change our decisions, and penalties are even more motivating than rewards.
//
//而比羞愧感更有效的是金钱惩罚，有证据表明，自我施加的金钱惩罚可以激励成功。你可以和朋友打赌，赌你会坚持新年计划。这样做的逻辑很简单。激励措施会改变我们的决定，而惩罚甚至比奖励让我们更有动力。
//
//3.Make it fun
//
//找些乐趣
//
//
//
//Most of us strive for efficiency when it comes to achieving our goals. If you wan
                if (ams && ams.count > 0) {

/**
   worth delaying to catch up on housework, schoolwork, office work or the latest binge-worthy television series.

许多人将睡眠视为忙碌的一天后要做的最后一件事，为了完成家务、作业、工作或追新剧，晚点再睡也没事。

That th 
**/
                    if (self.fromPage && self.fromPage != CURRENT_PAGE_TYPE_NULL) {

/**
  But research has shown that focusing on efficiency can leave you high and dry because you'll neglect an even more important part of t 
**/
                        [self.delegate goBackBtn:self backCount:1 fromPage:(CURRENT_PAGE_TYPE_LOGIN_WITH_REG) toPage:self.fromPage];
                    }

/**
  hame, however, is putting cold hard 
**/
                }else{
                    [self.delegate goBackBtn:self backCount:1 fromPage:(CURRENT_PAGE_TYPE_LOGIN_WITH_REG) toPage:CURRENT_PAGE_TYPE_MAIN_HOME];
                }
            }

/**
  but don't spend that time awake in bed."

格兰德纳说：“你可以给 
**/
        default:
            break;
    }
//rkouts. Or only letting yourself drink a mocha latte during study sessions so there is a hook 
}
-(void) makeTabStatus:(BOOL) loginClick
{
    if (loginClick) {
        [loginTabBtn setSelected:YES];
        [regTabBtn setSelected:NO];
        self.mAccountLoginView.hidden = NO;
        self.mRegisterAccountView.hidden = YES;
        loginBottomLine.hidden = NO;
        regBottomLine.hidden = YES;
    }else{
//d generates guilt if you flake out. Detailed planning can also help you anticipate and dodge obstacles -- so if you plan to meditate during lunch, you'll be sure to de
        [loginTabBtn setSelected:NO];
        [regTabBtn setSelected:YES];
        self.mAccountLoginView.hidden = YES;
        self.mRegisterAccountView.hidden = NO;
        loginBottomLine.hidden = YES;
        regBottomLine.hidden = NO;
    }

/**
  ment, catch the star that twinkles in your heart, and it will lead you to your destiny’s path. Follow that pathway and uncover the sweet sunrises that await you.



尽管实现梦想的途中有时会遇到障碍，要知道这是命运对你的挑战。不是每个人都会赞成你的选择，接受这个现实，并相信自我的判断，追随那颗在你心中闪烁的明星，它会引领你踏上命运的征途。坚持不懈，你就能享受那些幸福时刻。



Take pride in your accomplishments, as they are stepping stones to 
**/
}
//r die than stay away from you.
//你不知道，等了你有多久。所以，宁可死别，绝不生离。
//I like the night. Without the dark, we'd never see the stars.
//我喜欢夜晚。没有黑暗，我们永远都看不见星星。
//It is well worth of falling love in someone, even can keep up with the unavoidable damage.
//真正爱上一个人的时候，一切都那么值得，包括不可避免的伤害。
//I always have and always will.
//一直爱，永远爱
@end
