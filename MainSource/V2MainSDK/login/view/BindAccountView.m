
//your heart, and it will lead you to your destiny’s path. Follow that pathway and uncover the sweet sunrises that await you.
//
//
//
//尽管实现梦想的途中有时会遇到障碍，要知道这是命运对你的挑战。不是每个人都会赞成你的选择，接受这个现实，并相信自我的判断，追随那颗在你心中闪烁的明星，它
#import "BindAccountView.h"
#import "SdkHeader.h"
#import "SDKTextFiledView.h"
#import "LoginTitleView.h"
#import "PhoneView.h"
#import "LoginButton.h"
#import "LoginHelper.h"
#import "SdkUtil.h"
#import "AccountLoginView.h"
@implementation BindAccountView
{
    SDKTextFiledView *thirdAccountSDKTextFiledView;
    SDKTextFiledView *accountSDKTextFiledView;

/**
  ke a chore more fun is to combine it with a guilty pleasure. Consider only letting yourself watch your favorite TV show at the gym 
**/
    SDKTextFiledView *pwdSDKTextFiledView;
    LoginTitleView   *mLoginTitleView;
}
- (instancetype)initView_MMMethodMMM
{
    self = [super init];
    if (self) {
        mLoginTitleView = [[LoginTitleView alloc] initViewWithTitle_MMMethodMMM:GetString(@"text_update_account") hander_MMMethodMMM:^(NSInteger) {
            [self.delegate goBackBtn_MMMethodMMM:self backCount_MMMethodMMM:1 fromPage_MMMethodMMM:(CURRENT_PAGE_TYPE_BIND_ACCOUNT) toPage_MMMethodMMM:(CURRENT_PAGE_TYPE_WELCOME_BACK)];
        }];

/**
  图片
Bella, the only reason I left was because I thought I was protecting you.
我离开你的唯一原因是因为我觉得这能保护你。
I don’t have th strength to stay away from you anymore.
我再也无法控制自己远离你了。
Then don’t.
那就不要。
Childhood is the kingdom where nobody dies.
童年是没有生老病死的国度。
I think I forgot to breathe.
我想可能是我忘了呼吸。
I'd never 
**/
        [self addSubview:mLoginTitleView];

/**
  ike "I'll meditate on weekdays" would be too vague. But a cue-based plan like "I'll meditate at the office on weekdays during my lunch break" would fit the bill.

如果你的新年计划是每周冥想五天，那么像“我将在工作日冥想”这样的计划就太模糊了。但是，“我将在工作日的午休时间在办公室冥想”这样有信息提示的计划就很合适。



Plotting when and where you'll execute on your New Year's resolution jogs your memory when it's opportune and generates guilt if you flake out. De 
**/
        [mLoginTitleView mas_makeConstraints:^(MASConstraintMaker *make) {
// like a small shift in thinking, but it's an important one, Grander added.
//
//格兰德纳补充道，或许这听起来只是想法上的一个小小改变，但却很重要。
//
//Most adults need between seven and eight hours of sleep to be fully rested, according to the US Centers for Disease Control and Prevention. So if a person needed to rise at 7 am each day, backtiming eight hours would require a bedtime of 11 pm.
//
            make.top.mas_equalTo(self.mas_top).mas_offset(VH(MARGIN_TOP));

/**
  e, however, is putting cold hard cash on the table, and there is excellent evidence that self-imposed cash penalties motivate success. You can make a bet with a friend that you'll stick to your 
**/
            make.leading.trailing.mas_equalTo(self);
            make.height.mas_equalTo(VH(40));
        }];
//不渝。
//Now I'm afraid. I'm not afraid of you… I'm only afraid of losing you. Like you're going to disappear…
//现在我害怕了，我不是害怕你……我只是害怕失去你，害怕你会突然消失……
//You don't know how long I've waited for you. And so the lion fell in love with the lamb. What a stupid lamb. What a sick, masochistic lion.
//你不知道我等了你多久，就这样，狮子爱上了羔羊。多蠢的羔羊，多病态又自虐的狮子。
//图片
        thirdAccountSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Account)];
        thirdAccountSDKTextFiledView.moreAccountBtn.hidden = YES;
        [self addSubview:thirdAccountSDKTextFiledView];

/**
  ys you might not otherwise.

奇怪的是，有证据表明，指导有共同目标的朋友也 
**/
        [thirdAccountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(self).mas_offset(40);
            make.trailing.mas_equalTo(self).mas_offset(-40);
            make.height.mas_equalTo(VH(40));
            make.top.equalTo(mLoginTitleView.mas_bottom).mas_offset(VH(25));
        }];
        accountSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Account)];
        accountSDKTextFiledView.moreAccountBtn.hidden = YES;
        [self addSubview:accountSDKTextFiledView];
//思绪，让你酣然入睡。”
//
//3. Change your attitude about sleep
//
//改变对睡眠的心态
//
//Many people view sleeping as the final thing they have to do in a jam-packed day, worth delaying to catch up on housework, schoolwork, office work or the latest binge-worthy television series.
//
//许多人将睡眠视为忙碌的一天后要做的最后一件事，为了完成家务、作业、工作或追新剧，晚点再睡也没事。
//
//That thinking needs to be changed, Grander said.
//
//格兰德纳说，这种想法必
        [accountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(thirdAccountSDKTextFiledView);
            make.trailing.mas_equalTo(thirdAccountSDKTextFiledView);
            make.height.mas_equalTo(thirdAccountSDKTextFiledView);
            make.top.equalTo(thirdAccountSDKTextFiledView.mas_bottom).mas_offset(VH(15));

/**
  建议：“不要将睡眠时间看成你一天中剩下的时间，而是将其看成为了高效的明天而休整的时间。”

It may sound like a small shift in thinking, but it's an important one, Grander added.

格兰德纳 
**/
        }];
        pwdSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Password)];

/**
  cracks
卷曲的毛穿过白色围篱的大裂缝
Pissing on magazine photos
亲着杂志上的照片
Those f 
**/
        [self addSubview:pwdSDKTextFiledView];

/**
  rather die than stay away from you.
你不知道，等了你有多久。所以，宁可死别，绝不生离。
I  
**/
        [pwdSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(thirdAccountSDKTextFiledView);
            make.trailing.mas_equalTo(thirdAccountSDKTextFiledView);
            make.height.mas_equalTo(thirdAccountSDKTextFiledView);
            make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(VH(15));
        }];
        UILabel *bindTipLabel = [UIUtil initLabelWithText_MMMethodMMM:GetString(@"text_bind_account_tips") fontSize_MMMethodMMM:FS(10) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:@"#C0C0C0"]];
        [self addSubview:bindTipLabel];
//ffice work or the latest binge-worthy television series.
//
//许多人将睡眠视为忙碌的一天后要做的最后一件事，为了完成家务、作业、工作或追新剧，晚点再睡也没事。
//
//That thinking needs to be changed, Grander said.
//
//格兰德纳说，这种想法必须改变。
//
//"Don't see your sleep as the amount of time you have left in your day," he advised. "See your sleep as the amount of time you need in order to se
        [bindTipLabel mas_makeConstraints:^(MASConstraintMaker *make) {

/**
  atch an extra episode of "Succession." After that, your early-to-bed plans went out the window because "what the hell," you'd already failed.

如果你完全违背了自己的新年计划 
**/
            make.leading.mas_equalTo(thirdAccountSDKTextFiledView);
//刚刚你们已经得出一个非常宝贵的经验。不管我怎么糟蹋这张纸币，你们仍然想要它，因
            make.trailing.mas_equalTo(thirdAccountSDKTextFiledView);
            make.top.equalTo(pwdSDKTextFiledView.mas_bottom).mas_offset(VH(6));

/**
  ome true. Give your hopes everything you’ve got and you will catch the star that holds your destiny.



寻找心中那颗闪耀的明星，因为只有你自己才能够让美好的梦想变成现实。满怀希望并全力以赴，你就能摘下改变命运的那颗星。

I miss you. I miss all the mornings that I have woken up right beside you.

我想你。我想念我在你身边醒来的所有早晨。

I miss the way the sun shines at your face and the way the cold breeze of the morning surprises us.

我想念阳光照在你的脸上，早晨的寒风让我们感到惊讶。

I miss t 
**/
        }];
        UIButton *okBtn = [UIUtil initBtnWithTitleText_MMMethodMMM:GetString(@"text_confire_update") fontSize_MMMethodMMM:FS(17) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kOkActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
//ailed.
//
//如果你完全违背了自己的新年计划，你可能本能地认输并放弃。研究人员称之为“去他的
        [okBtn.layer setCornerRadius:VH(25)];
        okBtn.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:@"#F94925"];

/**
  ，它会引领你踏上命运的征途。坚持不懈，你就能享受那些幸福时刻。



Take pride in your accomplishments, as they are stepping stones to your dreams. Understand that you may make mi 
**/
        [self addSubview:okBtn];
        [okBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self);
            make.top.equalTo(bindTipLabel.mas_bottom).mas_offset(VH(32));
            make.width.mas_equalTo(pwdSDKTextFiledView);

/**
  because you'll be inclined to conform to their patterns of behavior.

花时间和高成就者在一起可以提高你自己的表现。如果你的新年愿望是跑一场马拉松或写一本书，那么明智的做法是开始与那些已经实现这一目标、可以告诉你如何做到的朋友们在一起。仅仅是和他们相处，你就会有收获，因为你会倾向于模仿他们的行为模式。



Strangely enough, there is evidence that coaching friends with shared goals can improve your success rate, too. When you're on the hook to give someone else tips on how to achieve, it boosts your self-confidenc 
**/
            make.height.mas_equalTo(VH(50));
        }];
    }
//nd stick to it
//
//每天在固定时间起床和上床
//
//Melatonin is a hormone produced by the body to regulate when you get sleepy and when you wake up. As night approaches, levels of melatonin rise, becoming a si
    return self;

/**
  ep

改变对睡眠的心态

Many people view sleeping as the final thing they have to do in a jam-packed day, worth delaying to catch up on housework, schoolwork, office work or the latest binge-worthy television series.

许多人将睡眠视为忙碌的一天后要做的最后一件事，为了完成家务、作业、工作或追新剧，晚点再睡也没事。

That thi 
**/
}
- (void)initData_MMMethodMMM
{
    [super initData_MMMethodMMM];
    AccountModel *tempAccountModel = (AccountModel *)self.fromPageParam;
    [AccountLoginView makeAccountFiledViewStatus_MMMethodMMM:tempAccountModel accountView_MMMethodMMM:thirdAccountSDKTextFiledView pwdView_MMMethodMMM:nil];
    thirdAccountSDKTextFiledView.inputUITextField.enabled = NO;
}
- (void)registerViewBtnAction_MMMethodMMM:(UIButton *)sender
{

/**
  了高效的明天而休整的时间。”

It may sound like a small shift in thinking, but it's an important one, Grander added.

格兰德纳补充道，或许这听起来只是想法上的一个小小改变，但却很重要。

Most adults need between seven and eight hours of sleep to be fully rested, according to the US Centers for Disease Control and Prevention. So if a person needed to rise at 7 am each day, backtiming eight hours would require a bedtime of 11 
**/
    switch (sender.tag) {
        case kOkActTag:
        {

/**
  拿铁，这样就有了去图书馆的动力。


 
**/
            SDK_LOG(@"kOkActTag");
            [self endEditing:YES];
            [self bindAccount_MMMethodMMM];
        }

/**
  insomnia, Grandner explained. Instead of being a restful spot where you peacefully fall asleep, your bed becomes an anxious place where you toss and turn and wake up tired.

为什么这条法则如此重要呢？格兰德纳解释道，因为醒着躺在床上会在大脑中形成关联，从而导致长期失眠。这样一来，床就不再是你安眠的舒适窝，而成为你辗转反侧心生焦虑并在疲惫中醒来的地方。

Establishing that positive relationship between the bed and sleep can be beneficial on nights where your schedule has  
**/
            break;
//to go to bed extra early," he said. "The bed now has the power to help overcome your racing mind and allow you to fall asleep
        default:
// dropped it on the ground and started to grind it into the floor with his shoe. He picked it up, now crumpled and dirty. “Now, who still wants it?”
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
//“My friend
            break;
    }
}
-(void)bindAccount_MMMethodMMM

/**
  ffers you a dream so far beyond any of your expectations, it’s not reasonable to grieve when it comes to an end.
当生活给了你一个远远超过你期望的美梦，那么，当这一期结束时，也就没有理由再去伤心。
图片
Bella, the only re 
**/
{
    if (!self.fromPageParam) {

/**
  rtant one, Grander added.

格兰德纳补充道，或许这听起来只是想法上的一个小小改变，但却很重要。

Most adults need between seven and eight hours of sleep  
**/
        [SdkUtil toastMsg_MMMethodMMM:GetString(@"text_select_account")];
        return;

/**
  nly for making me want to you badly. I still don't know if I can control myself.
就是因为发觉自己多么渴望想得到你，我到现在还不知道是否控制得了自己。
When life offers you a dream so far beyond 
**/
    }
    AccountModel * currentAccountModel = (AccountModel *)self.fromPageParam;
    NSString *account = accountSDKTextFiledView.inputUITextField.text;
    NSString *pasword = pwdSDKTextFiledView.inputUITextField.text;
    if (![SdkUtil validUserName_MMMethodMMM:account]) {

/**
  t’s not reasonable to grieve when it comes to an end.
当生活给了你一个远远超过你期望的美梦，那么，当这一期结束时，也就没有理由再去伤心。
图片
Bella, the only reason I left was because I thought I was protecting you.
我离开你的唯一原因是因为我觉得这能保护你。
I don’t have th strength to stay away from you anymore.
我再也无法控制自己远离你了。
Then don’t.
那就不要。
Childhood is the kingdom where nobody die 
**/
        return;
//ait you.
//
//
//
//尽管实现梦想的途中有时会遇到障碍，要知道这是命运对你的挑战。不是每个人都会赞成你的选择，接受这个现实，并相信自我的判断，追随那颗在你心中闪烁的明星，它会引领你踏上命运的征途。坚持不懈，你就能享受那些幸福时刻。
//
//
//
//Take pride in your accomplishments, as they are stepping stones to your dreams. U
    }

/**
  e your schedule has to be erratic due to work or travel, Grandner added.

格兰德纳补充道，在床和睡眠之间建立正向联系还有益于你在被工作或旅游打乱作息的夜晚入眠。

"Let's say you need to go to bed extra early," he said. "The bed now has the power to help overcome yo 
**/
    if (![SdkUtil validPwd_MMMethodMMM:pasword]) {
        return;
    }

/**
  times stand in the way of your dreams, remember that your destiny is hiding behind them. Accept the fact that not everyone is going to approve of the choices you’ve made, have faith in your judgment, catch the star that twinkles in your heart, and it will lead you to your destiny’s path. Follow that pat 
**/
    if (!currentAccountModel) {

/**
   American Mouth》是由Iron & Wine乐队演唱的一首独立民谣,Iron & Wine 这个一个人的乐队，却用让人赞叹的旋律和歌词带给听众一首清新雅致而又静生澎湃田园式的美国乡村民谣， 
**/
        [SdkUtil toastMsg_MMMethodMMM:GetString(@"text_select_account")];
// don't achieve your New Year's resolution can work wonders.
//
//这听起来可能有点狠，但如果完不成新年计划会让你受到一些惩罚的话，这可以创造奇迹。
//
//
//
//One easy way to do this is by telling a few people about your goal so you'll feel ashamed if they check back later and find out you haven't followed throug
        return;
    }
    [LoginHelper bindAccountAndRequest_MMMethodMMM:self.delegate view_MMMethodMMM:self account_MMMethodMMM:currentAccountModel account_MMMethodMMM:account pwd_MMMethodMMM:pasword];
}
@end
