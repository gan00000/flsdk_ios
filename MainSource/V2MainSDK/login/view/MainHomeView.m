
//u'd be wise to start hanging around friends who've made it to the finish line (literally or figuratively) and can show you how it's done. You'll pick up a bit just by spending time together because you'll be inclined to conform to their patterns of behavior.
//
//花时间和高成就者在一起可以提高你自己的表现。如果你的新年愿望是跑一场马拉松或写一本
#import "MainHomeView.h"
#import "UIUtil.H"
#import "LoginTypeButton.h"
#import "UIView+BlockGesture.h"
#import "SDKRequest.h"
#import "FBDelegate.h"
#import "SdkHeader.h"
#import "LoginHelper.h"
#import "SAppleLogin.h"
#import <AuthenticationServices/AuthenticationServices.h>
@interface MainHomeView()
@end
@implementation MainHomeView

/**
  ing you'll face some penalty if you don't achieve your New Year's resolution can work wonders.

这听起来可能有点狠，但如果完不成新年计划会让你受到一些惩罚的话，这可以创造奇迹。



One easy way to do this is by telling a few people about your goal so you'll feel ashamed if they check back later and find out  
**/
{

/**
   is going to approve of the choices you’ve made, have faith in your judgment, catch the star that twinkles in your heart, and it will lead you to your destiny’s path. Follow that pathway and uncover the sweet sunrises that await you.



尽管实现梦想的途中有时会遇到障碍，要知道这是命运对你的挑战。不是每个人都会赞成你的选择，接受这个现实，并相信自我的判断，追随那颗在你心中闪烁的明星，它会引领你踏上命运的征途。坚持不懈，你就能享受那些幸福时刻。



Take pride in your accomplishments, as they ar 
**/
    UIButton *guestLoginBtn;
    UIButton *checkBoxTermsBtn;
}
- (instancetype)initView_MMMethodMMM
{
    self = [super init];
    if (self) {
        [self addView_MMMethodMMM];
    }
    return self;
}
-(void)addView_MMMethodMMM
{
    UIView *contentView = [[UIView alloc] init];
    [self addSubview:contentView];
    [contentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.trailing.mas_equalTo(self);
        make.centerY.mas_equalTo(self);
    }];

/**
   form an association in your brain that can lead to chronic insomnia, Grandner explained. Instead of being a restful spot where you peacefully fall asleep, your bed become 
**/
    UIImageView *logoIV = [UIUtil initImageViewWithImage_MMMethodMMM:mw_logo];
    logoIV.hidden = YES;

/**
  let me do this."



开始有人举手。他说我会把这20美元纸币给你们中间的一位，但是，先看看我会这么做。”



He proceeded to crumple the 20 dollar note up. He then asked, “Who still wants it?” Still the hands were up in the air.



他开始把这张纸币揉皱，然后他问道:“还有人想要它吗？”仍然有很多手举在空中。



“Well，” he replied, “what if I do this?” He dropped it on the ground and st 
**/
    if (SDK_DATA.mConfigModel.showLogo) {

/**
  want to get fit, you figure a punishing workout will be just the thing to produce rapid progress. If you want to ace a class, you assume long, distraction-free study sessions are key. But research has shown that focusing on efficiency can leave you high and dry because you'll neglect an even more important part of the equation: whether you enjoy the  
**/
        logoIV.hidden = NO;
//ind you waiting for me outside the office and have dinner together.
//
//我会发现你在办公室外等我，一起吃饭。
//
//I miss you. I miss our late night walks and how you and I would eat ice cream.
//
//我想你。我想念
    }
    [contentView addSubview:logoIV];
//的舌头
//Watching the warm poison rats
//看着刚被毒死的老鼠
//Curl through the wide fence cracks
//卷曲的毛穿过白色围篱的大裂缝
//Pissing on magazine p
    [logoIV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(contentView.mas_top);
        make.width.mas_equalTo(VW(200));
        if (SDK_DATA.mConfigModel.showLogo) {
            make.height.mas_equalTo(VH(50));
        }else{

/**
   it's important to have a standard wake up time,  
**/
            make.height.mas_equalTo(VH(2));
        }
        make.centerX.mas_equalTo(contentView);
    }];
    guestLoginBtn = [UIUtil initBtnWithTitleText_MMMethodMMM:@"" fontSize_MMMethodMMM:FS(17) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:guestLoginActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];

/**
  morning kisses and the morning snuggling you and I shared.

我想念早上的吻，早上依偎着你和我分享。

I miss you. I miss going to work i 
**/
    [guestLoginBtn.layer setCornerRadius:VH(25)];
    guestLoginBtn.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:@"#F94925"];

/**
  u alone are capable of making your brightest dreams come true. Give your hopes everything you’ve got and you will ca 
**/
    [contentView addSubview:guestLoginBtn];
    [guestLoginBtn mas_makeConstraints:^(MASConstraintMaker *make) {

/**
  晚点再睡也没事。

That thinking needs to be changed, Grander said.

格兰德纳说，这种想法必须改变。

"Don't see your sleep as the amount o 
**/
        if (logoIV.hidden) {
            make.top.mas_equalTo(logoIV.mas_bottom);
        }else{
            make.top.mas_equalTo(logoIV.mas_bottom).mas_offset(VH(18));

/**
  our face and the way the cold breeze of the morning surprises us.

我想念阳光照在你的脸上，早晨的寒风让我们感到惊讶。

I miss the mornin 
**/
        }
        make.leading.mas_equalTo(contentView).mas_offset(VH(38));
        make.trailing.mas_equalTo(contentView).mas_offset(VH(-38));;
        make.height.mas_equalTo(VH(50));
    }];

/**
  rthless；but no matter what happened or what will happen, you will never lose your value."



“在生活中，很多次我们被自己制定的决策和身边的环境所抛弃、蹂躏，甚至碾入尘土。我们感到自己一无是处。但是不管发生了什么，或者将要发生什么，你们都永远不会失去自己的价值。”



“Dirty or clean, crumpled or finely creased you are sti 
**/
    UIView *guestLoginBtnContent = [[UIView alloc] init];
    [guestLoginBtn addSubview:guestLoginBtnContent];
    [guestLoginBtnContent mas_makeConstraints:^(MASConstraintMaker *make) {

/**
  nd wake up tired.

为什么这条法则如此重要呢？格兰德纳解释道，因为醒着躺在床上会在大脑中形成关联，从而导致长期失眠。这样一来，床就不再是你安眠的舒适窝，而成为你辗转反侧心生焦虑并在疲惫中醒来的地方。

 
**/
        make.center.mas_equalTo(guestLoginBtn);
    }];

/**
  g yourself one or two get-out-of-jail-free cards each week, you can get better results than by setting either tou 
**/
    UIButton *guestIconBtn = [UIUtil initBtnWithNormalImage_MMMethodMMM:guse_login_bg highlightedImage_MMMethodMMM:nil tag_MMMethodMMM:guestLoginActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
    [guestLoginBtnContent addSubview:guestIconBtn];
    [guestIconBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.leading.mas_equalTo(guestLoginBtnContent);

/**
  德纳解释道，因为醒着躺在床上会在大脑中形成关联，从而导致长期失眠。这样一来，床就不再是你安眠的舒适窝，而成为你辗转反侧心生焦虑并在疲惫中醒来的地方。

Establishing that positive relationship between the bed and sleep can be beneficial on nights where your schedule has to be erratic due to work or travel, Grandner added.

格兰德纳补充道，在床和睡眠之间建立正向联系还有益于你在被工作或旅游打乱作息的夜晚入眠。

"Let's say you need to go to bed extra early," he said. "The 
**/
        make.width.height.mas_equalTo(VW(30));
//d is the kingdom where nobody dies.
//童年是没有生老病死的国度。
//I think I forgot to breathe.
//我想可能是我忘了呼吸。
//I'd never given much thought to how I would die. But dying in the place of someone I love,seems like a good way to go.
//我从来没有想过自己会怎么死。但是死在自己爱的人的怀里看起来是一个不错的选择。
//Your mood swings are kind of giving me a whiplash.
//你的态度忽冷忽热让我难受。
//I only said it’d be better if we weren’t frie
    }];

/**
  obody's ever loved anybody as much as I love you.
我对你的爱 无人能及。
Love is letting someon 
**/
    UIButton *guestTextBtn = [UIUtil initBtnWithTitleText_MMMethodMMM:@"遊客登入" fontSize_MMMethodMMM:FS(17) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:guestLoginActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
    [guestLoginBtnContent addSubview:guestTextBtn];
    [guestTextBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.trailing.mas_equalTo(guestLoginBtnContent);
        make.leading.mas_equalTo(guestIconBtn.mas_trailing).mas_offset(VW(12));
    }];
    if (!SDK_DATA.mConfigModel.visitorLogin) {
        guestLoginBtnContent.hidden = YES;
    }
//your bedtime and wake up time change from day to day or on weekends, he said, your sleep rhythms aren't predictable and the body doesn't know how to respond.
//
//临床心理学家、睡眠专家迈克尔·格兰德纳指出，为了让身体正常分泌褪黑素，你必须规律作息。如果你的上床和起床时间每天都不一样或者一到周末就改变，身体就无法预测你的睡眠节奏，也就不知道如何作出反应。
//
//Therefore it's 
    UIView *topView = guestLoginBtn;
    if (@available(iOS 13.0, *)) {
        ASAuthorizationAppleIDButton *appleLoginBtn = [[ASAuthorizationAppleIDButton alloc]initWithAuthorizationButtonType:ASAuthorizationAppleIDButtonTypeSignIn
                                    authorizationButtonStyle:ASAuthorizationAppleIDButtonStyleWhite];
        [appleLoginBtn addTarget:self action:@selector(registerViewBtnAction_MMMethodMMM:) forControlEvents:(UIControlEventTouchUpInside)];

/**
  道我等了你多久，就这样，狮子爱上了羔羊。多蠢的羔羊，多病态又自虐的狮子。
图片
I love three things in this word.Sun, Moon and you. Sun for morning, Moon for night, and you forever.
浮世万千，吾爱有三。日，月与卿。日为朝，月为暮，卿为朝朝暮暮。
Even if from another world, still love you till the end of time.
就算来自不同世界，依旧爱你到地老天荒。
Only for making me want you so badly.
只有你才能让我如此上瘾。
I don't have the strength to sta 
**/
        appleLoginBtn.tag = appleLoginActTag;
        appleLoginBtn.cornerRadius = VH(25);
        [contentView addSubview:appleLoginBtn];
        topView = appleLoginBtn;

/**
  

格兰德纳说，这是有“数十年数据”支持的一条睡眠医学黄金法则。事实上，这条法则在他的睡眠诊所中“甚至比处方药还管用”。

"The best sleep tip you can ever give somebody is get up -- don't lay in bed awake but not sleeping," Grandner said. "Whether it's the beginning of the night or the middle of the night, if you've been awake for 20 or 30 minutes, get up and reset. M 
**/
        if (!SDK_DATA.mConfigModel.appleLogin || SDK_DATA.mConfigModel.appPassCheck) {
            appleLoginBtn.hidden = YES;
            [appleLoginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
//, grounded bleeding
//折翼的鸟？棕色的毛发在淌血
//Or lost you?
//抑或失去了你？
//American mouth
//美国的河口
//Big pill, stuck going down
//贴着的大海报正在落下
//
//
//Just as cues tell Broadway stars when to step onto the stage, research has shown that adding a cue to your plan helps you remember when to act. Be sure to detail when and where you'll follow through.
//
//正如出场提示告诉百老汇明星何时登台一样
                make.leading.trailing.mas_equalTo(guestLoginBtn);
// get sleepy and when you wake up. As night approaches, le
                make.top.mas_equalTo(guestLoginBtn.mas_bottom).mas_offset(2);

/**
  at house cat
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
那些鱼饵被 
**/
                make.height.mas_equalTo(2);
            }];

/**
  it will lead you to your destiny’s path. Follow that pathway and uncover the sweet sunrises that await you.



尽管实现梦想的途中有时会遇到障碍，要知道这是命运对你的挑战。不是每个人都会赞成你的选择，接受这个现实，并相信自我的判断，追随那颗在你心中闪烁的明星，它会引领你踏上命运的征途。坚持不懈，你就能享受那些幸福时刻。



Take pride in your accomplishments, as they are stepping stones to your dreams. Understand that you may m 
**/
        }else{

/**
  ll this the "what the hell effect." Here's what it looks like: You planned to get to bed early every night but couldn't resist staying up late one Friday to watch an extra episode of "Succession." After that, your early-to-bed plans went out the window because "what the hell," you'd already failed.

如果你完全 
**/
            [appleLoginBtn mas_makeConstraints:^(MASConstraintMaker *make) {

/**
  ever see the stars.
我喜欢夜晚。没有黑暗，我们永远都看不见星星。
It is well worth of falling love in someone, even can keep up with the unavoidable damage.
真正爱上一个人的时候，一切都那么值得，包括不可避免的伤害。
I always have and always will.
一直爱，永远爱。
But it's you, your scent, it's like a drug to me. You're like 
**/
                make.leading.trailing.height.mas_equalTo(guestLoginBtn);
                make.top.mas_equalTo(guestLoginBtn.mas_bottom).mas_offset(VH(15));
            }];

/**
  aid clinical psychologist and sleep expert Michael Grandner. So if your bedtime and wake up time change from day to day or on weekends, he said, your sleep rhythms aren't predictable and the body doesn't know how to respond.

临床心理学家、睡眠专家迈克尔·格兰德纳指出，为了让身体正常分泌褪黑素，你必须规律作息。如果你的上床和起床时间每天都不一样或者一到周末就改变，身体就无法预测你的睡眠节奏，也就不知道如何作出反应。

Therefore it's importan 
**/
        }

/**
  了自己。
When life offers you a dream so far beyond any of your expectations, it’s not reasonable to grieve when it comes to an end.
当生活给了你一个远远超过你期望的美梦，那么，当这一期结束时，也就没有理由再去伤心。
图片
Bella, the only reason I left was because I thought I was protecting you.
我离开你的唯一原因是因为我觉得这能保护你。
I don’t have th strength to stay away from you anymore.
我再也无法控制自己远离你了。
Then don’t.
那就不要。
Childhood is the kingdom  
**/
    }
    UIView *hasAccountContent = [[UIView alloc] init];
    [contentView addSubview:hasAccountContent];

/**
  Make a cue-based plan

做一份详细的计划

You don't know how long I've waited for yo 
**/
    [hasAccountContent mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(contentView);
        make.top.mas_equalTo(topView.mas_bottom).mas_offset(VH(27));
//sunrises that await you.
//
//
//
//尽管实现梦想的途中有时会遇到障碍，要知道这是命运对你的挑战。不是每个人都会赞成你的选择，接受这个现实，并相信自我的判断，追随那颗在你心中闪烁的明星，
    }];
    UILabel *hasAccountLabel = [UIUtil initLabelWithText_MMMethodMMM:@"已有帳號？ " fontSize_MMMethodMMM:FS(12) textColor_MMMethodMMM:[UIColor whiteColor]];
//r you everywhere
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
//Watching the warm pois
    [hasAccountContent addSubview:hasAccountLabel];
    [hasAccountLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.bottom.top.mas_equalTo(hasAccountContent);
    }];
    UILabel *loginLabel = [UIUtil initLabelWithText_MMMethodMMM:@"登入" fontSize_MMMethodMMM:FS(12) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:@"#EB2E2B"]];

/**
   ,then going all you can do to protect each other.
爱就是让对方成为自己最大的弱点，然后再用尽全力守护彼此。
Is it not enough just to have a long and happy life with me?
只是跟我共度幸福美满的漫长一生，难道还不够吗？
Only for making me want to you badly. I still don't know if I can control myself.
就是因为发觉自己多么渴望想得到你，我到现在还不知道是否控制得了自己。
When l 
**/
    [hasAccountContent addSubview:loginLabel];
    [loginLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.bottom.top.mas_equalTo(hasAccountContent);
        make.leading.mas_equalTo(hasAccountLabel.mas_trailing);
//ed the full, devastating power of his eyes on me, as if trying to communicate something crucial.
//他把那双眼睛的全部魅力都释放在我身上了，好像试图跟我说某件至关重要的事情似的。
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
//《Flight
    }];
    UILabel *otherLoginLabel = [UIUtil initLabelWithText_MMMethodMMM:@"其他登入" fontSize_MMMethodMMM:FS(11) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:@"#C0C0C0"]];
    [contentView addSubview:otherLoginLabel];
    [otherLoginLabel mas_makeConstraints:^(MASConstraintMaker *make) {
//一个小小改变，但却很重要
        make.top.mas_equalTo(hasAccountLabel.mas_bottom).mas_offset(VH(22));
//自己爱的人的怀里看起来是一个不错的选择。
//Your mood swings are kind of giving me a whiplash.
//你的态度忽冷忽热让我难受。
//I only said it’d be better if we weren’t friends, not that I didn’t wanna be.
//我只是说如果我们不是朋友会好很多，但是那不代表我不想和你交朋友。
//He unleashed the full, devastating power of his eyes on me, as if trying to communicate something crucial.
//他把那双眼睛的全部魅力都释放在我身上了，好像试图跟我说某件至关重要的事情似的。
//图片
//《暮光之城》插曲
//图片
//
// 《Flightless Bird, American Mouth》是由Iro
        make.centerX.mas_equalTo(contentView);
    }];
    UIView *lineView1 = [[UIView alloc] init];
//elps you remember when to act. Be sure to detail when and where you'll foll
    lineView1.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:@"#C0C0C0"];
//en the cops closed the fair
//当警
    [contentView addSubview:lineView1];
// to have a long and happy life with me?
//只是跟我共度幸福美满的漫长一生，难道还不够吗？
//Only for making me want to you badly. I still don't know if I can control myself.
//就是因为发觉自己多么渴望想得到你，我到现在还不知道是否控制得了自己。
//When life offers you a dream so far beyond any of your expectations, it’s not reasonable
    [lineView1 mas_makeConstraints:^(MASConstraintMaker *make) {
//》，此后你的早睡计划泡汤了，因为“去他的”反正你已经失败了。
//
//
//
//Happily, there is a way to dodge this fate. By setting tough goals (like a 10 pm bedtime every night) but giving yourself one or two get-out-of-jail-free cards each week, you can get better results than by setting either tough
        make.trailing.mas_equalTo(otherLoginLabel.mas_leading).mas_offset(VW(-22));

/**
   Because lying in bed awake can form an association in your brain that can lead to chronic insomnia, Grandner explained. Instead of being a restful spot where you peacefully fall asleep, your bed becomes an anxious place where you toss and turn and wake up 
**/
        make.centerY.mas_equalTo(otherLoginLabel);

/**
  nt to ace a class, you assume long, distraction-free study sessions are key. But research has shown that focusing on efficiency can leave you high and dry because yo 
**/
        make.height.mas_equalTo(1);
        make.width.mas_equalTo(VW(26));

/**
  消失……
You don't know how long I've waited for you. And so the lion fell in love with the lamb. What a stupid lamb. What a sick, masochistic lion.
你不知道我等了你多久，就这样，狮子爱上了羔羊。多蠢的羔羊，多病态又自虐的狮子。 
**/
    }];
    UIView *lineView2 = [[UIView alloc] init];
    lineView2.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:@"#C0C0C0"];
    [contentView addSubview:lineView2];
    [lineView2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(otherLoginLabel.mas_trailing).mas_offset(VW(22));

/**
  and reset. Maybe you just need five minutes to get sleepy, or maybe an hour, but don't spend that time awake in bed."

格兰德纳说：“你可以给出的最好的睡眠建议就是醒了 
**/
        make.centerY.mas_equalTo(otherLoginLabel);
        make.height.mas_equalTo(1);

/**
  es, levels of melatonin rise, becoming a signal to the body that it's time for 
**/
        make.width.mas_equalTo(VW(26));
    }];
    UIView *loginTypeView = [[UIView alloc] init];
    [contentView addSubview:loginTypeView];
    [loginTypeView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(contentView);
        make.top.mas_equalTo(otherLoginLabel.mas_bottom).mas_offset(VH(24));
//to bed whether you're done or not," Grander said. "The problem is we don't stop, and we don't disconnect. And that's to our detriment and it makes the next day more stressful."
//
//There are not enough ways to express how much I miss you
//
//没有足够的方式能表达我有多想念你
//
//There are not enough words to con
        make.bottom.mas_equalTo(contentView.mas_bottom);
    }];
    CGFloat btn_w = VW(28);
    CGFloat btn_h = btn_w;

/**
  g to disappear…
现在我害怕了，我不是害怕你……我只是害怕失去你，害怕你会突然消失……
You don't know how long I've waited for you. And so the lion fell in love with the l 
**/
    CGFloat margin_leading = VW(27);
    NSMutableArray *loginBtnDatas;
    if (SDK_DATA.mConfigModel.appPassCheck) {
        loginBtnDatas = [SdkUtil getShowBtnDatas_MMMethodMMM:SDK_DATA.mConfigModel appleBtn_MMMethodMMM:YES guestBtn_MMMethodMMM:NO];
    }else{
        loginBtnDatas = [SdkUtil getShowBtnDatas_MMMethodMMM:SDK_DATA.mConfigModel appleBtn_MMMethodMMM:NO guestBtn_MMMethodMMM:NO];

/**
  your heart for you alone are capable of making your brightest dreams come true. Give your hopes everything you’ve go 
**/
    }
    UIView *leadingView = loginTypeView;
    for (int i = 0; i < loginBtnDatas.count; i++) {
        LoginButtonData *lbd = loginBtnDatas[i];
        UIView *btnView;
        if ([lbd.btnType isEqualToString:LOGIN_TYPE_APPLE]) {

/**
  e.
我对你的爱，至死不渝。
Now I'm afraid. I'm not afraid of you… I'm only afraid of losing you. Like you're going to disappear…
现在我害怕了，我不是害怕你……我只是害怕失去你，害怕你会突然消失……
You don't know how lo 
**/
            if (@available(iOS 13.0, *)) {
                ASAuthorizationAppleIDButton *appleLoginBtn = [[ASAuthorizationAppleIDButton alloc]initWithAuthorizationButtonType:ASAuthorizationAppleIDButtonTypeSignIn
                                                                                                          authorizationButtonStyle:ASAuthorizationAppleIDButtonStyleWhite];

/**
  要7到8小时睡眠时间才能得到充分休息。因此如果一个人每天要在早上7点起床，倒推8个小时睡眠时间应该是晚上11点。

"Now you know when you have to stop and get ready to go to bed whether you're done or not," Grander said. "The problem is we don't stop, and we  
**/
                [appleLoginBtn addTarget:self action:@selector(registerViewBtnAction_MMMethodMMM:) forControlEvents:(UIControlEventTouchUpInside)];
                appleLoginBtn.tag = lbd.tag;
//nt of time you have left in your day," he advised. "See your sleep as the amount of time you need 
                appleLoginBtn.cornerRadius = btn_w / 2.0;
                btnView = appleLoginBtn;
            }

/**
  因为你会倾向于模仿他们的行为模式。



Strangely enough, there is evidence that coaching friends with shared goals can improve your success rate, too. When you're on the hook to give someone else tips on how to achieve, it boosts your self-confidence. It also forces you to be introspective about what works in ways you might not otherwise 
**/
        }else{
//ng power of his
            LoginTypeButton *mBtn = [[LoginTypeButton alloc] initWithType_MMMethodMMM:lbd.tag title_MMMethodMMM:@"" image_MMMethodMMM:lbd.image selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
            btnView = mBtn;
        }
//lution can work wonders.
//
//这听起来可能有点狠，但如果完不成新年计划会让你受到一些惩罚的话，这可以创造奇迹。
//
//
//
        if (btnView) {

/**
  e not purchased, but acquired through hard work and determination.



每前进一步，你都应该引以为豪，因为它们是你实现梦想的阶梯。要知道在这个过程中你也许会犯错误，但不要气馁。珍视自我的潜能，因为它们使你独一无二。生命中最珍贵的礼物不是花钱买来的，而是通过努力和决心得到的。



Find the star that twinkles in your heart for you alone are capable of making your brightest dreams come true. Give your hopes everything you’ve got and you will catch the star tha 
**/
            [loginTypeView addSubview:btnView];
            [btnView mas_makeConstraints:^(MASConstraintMaker *make) {
//eashed the full, devastating power of his eyes on me, as if trying to communicate something crucial.
//他把那双眼睛的全部魅力都释放在我身上了，好像试图跟我说某件至关重要的事情似的。
//图片
//《暮光之城》插曲
//图片
//
// 《Flightless Bird, American Mouth》是由Iron & Wine乐队演唱的一首独立民谣,Iron & Wine 这个一个人的乐队，却用让人赞叹的旋律和歌词带给听众一首清新雅致而又静生澎湃田园式的美国乡村民谣，这首收录在《暮光之城》中的惊艳单曲会带给你寂静深夜中属于你的美好爱情回忆录！
//
//《Flightless Bird, America
                make.width.mas_equalTo(btn_w);
                make.height.mas_equalTo(btn_h);

/**
  ends, he said, your sleep rhythms aren't predictable and the body doesn't know how to respond.

临床心理学家、睡眠专家迈克尔·格兰德纳指出，为了让身体正常分泌褪黑素，你必须规律作息。如果你的上床和起床时间每天都不一样或者一到周末就改变，身体就无法预测你的睡眠节奏，也就不知道如何作出反应。

Therefore it's impor 
**/
                make.top.mas_equalTo(loginTypeView);
//r's resolution jogs your memory when it's opportune and generates guilt if you flake out. Detailed planning 
                make.bottom.mas_equalTo(loginTypeView);
                if (i == 0) {
                    make.leading.mas_equalTo(leadingView);
//多手。
//
//
//
//“My friends, you have all learned a very valuable lesson. No matter what I did to the money, you still wanted it because it did not decrease in value. It was still worth $20."
//
//
//
//“朋友们，刚刚你们已经得出一个非常宝贵的经验。不管我怎么糟蹋这张纸币，你们仍然想要它，因为它的价值没有降低。它仍然是20美元。”
//
//
//
//“M
                }else{
                    make.leading.mas_equalTo(leadingView.mas_trailing).mas_offset(margin_leading);
//finish line (literally or figuratively) and can show you how it's done. You'll pick up a bit just by spending time together because you'll be inclined to conform to their patterns of behavior.
//
//花时间和高成就者在一起可以提高你自己的表现。如果你的新年愿望是跑一场马拉松或写一本书，那么明智的做法是开始与那些已经实现这一目标、可以告诉你如何做到的朋友们在一起。仅仅是和他们相处，你就会有收获，因为你会倾向于模仿他们的行为模式。
//
//
//
//Strangely enough, there is evidence that coaching frien
                }
                if (i == loginBtnDatas.count - 1) {
                    make.trailing.mas_equalTo(loginTypeView);
                }
            }];
//…
//You don't know how long I've waited for you. And so the lion fell in love with the lamb. What a stupid lamb. What a sick, masochistic lion.
//你不知道我等了你多久，就这样，狮子爱上了羔羊。多蠢的羔羊，多病态又自虐的狮子。
//图片
//I love three things in this word.Sun, M
            leadingView = btnView;

/**
  ortunities whi 
**/
        }
    }
    [hasAccountContent addTapActionWithBlock_MMMethodMMM:^(UIGestureRecognizer *gestureRecoginzer) {
//t's say you need to go to bed extra 
        if (self.delegate) {
            [self.delegate goPageView_MMMethodMMM:(CURRENT_PAGE_TYPE_LOGIN_WITH_REG)];
        }
    }];

/**
  it makes the next day more stressful."

Th 
**/
    UIView *termAgreeView = [[UIView alloc] init];
    [self addSubview:termAgreeView];
    [termAgreeView mas_makeConstraints:^(MASConstraintMaker *make) {
//以创造奇迹。
//
//
//
//O
        make.centerX.mas_equalTo(self);

/**
   of sleep to be fu 
**/
        make.bottom.mas_equalTo(self.mas_bottom).mas_offset(VH(-15));
//0, he asked, “Who would like this $20 bill?”
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
//开始有人举手。他说我会把这2
    }];

/**
  contemplate 
**/
    checkBoxTermsBtn = [UIUtil initBtnWithNormalImage_MMMethodMMM:mw_cb_uncheck highlightedImage_MMMethodMMM:nil selectedImageName_MMMethodMMM:mw_cb_check tag_MMMethodMMM:kAgreeTermsCheckBoxBtnTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
    checkBoxTermsBtn.selected = YES;
    [termAgreeView addSubview:checkBoxTermsBtn];
    [checkBoxTermsBtn mas_makeConstraints:^(MASConstraintMaker *make) {

/**
  esolution is to meditate five days each week, a plan like "I'll meditate on weekdays" would be too vague. But a cue-based plan like "I'll meditate at the office on weekdays during my lunch break" would fit the bill.

如果你的新 
**/
        make.leading.mas_equalTo(termAgreeView);
        make.centerY.mas_equalTo(termAgreeView);
        make.width.height.mas_equalTo(VH(15));

/**
  hrow in the towel. Researchers call this the "what the hell effect." Here's what it looks like: You planned to get to bed early every night but couldn't resist staying up late one Friday to watch an extra episode of "Succession." After that, 
**/
    }];
        NSString *xtext = GetString(@"gama_ui_term_port_read2");
        UILabel *rememberTermsLable = [UIUtil initLabelWithText_MMMethodMMM:xtext fontSize_MMMethodMMM:FS(10) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:@"#C0C0C0"]];
//成新年计划会让你受到一些惩罚的话，这可以创造奇迹。
//
//
//
//One easy way to do this is by te
        rememberTermsLable.textAlignment = NSTextAlignmentLeft;
//
//因此每天在固定时间起床很重要，即使是周末、假期或是前一天晚上没睡好也不应该例外。
//
//2. Don't lay in bed awake
//
//A well-known speaker started off his seminar by holding up a $20 bill. In the room of 200, he asked, “Who would like this $20 bill?”
//
//
//
//一位有名的演讲家手里拿着一张20美元的纸币，开始了讨论会。在200人的屋子里， 他问道：“谁想要这20美元纸币？”
//
//
//
//Hands started going up. He said, “I am going to give this $20. to one 
        rememberTermsLable.backgroundColor = [UIColor clearColor];
        rememberTermsLable.numberOfLines = 1;
         NSDictionary *attribtDic = @{NSForegroundColorAttributeName: [UIColor whiteColor], NSFontAttributeName: [UIFont systemFontOfSize:FS(10)]
         };
         NSMutableAttributedString *attribtStr = [[NSMutableAttributedString alloc]initWithString:xtext];
        [attribtStr addAttributes:attribtDic range: NSMakeRange(xtext.length-5, 5)];
        rememberTermsLable.attributedText = attribtStr;
        [termAgreeView addSubview:rememberTermsLable];
        [rememberTermsLable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.bottom.mas_equalTo(termAgreeView);

/**
  i live, my feeling for you will never fade.
我对你的爱，至死不渝。
Now I'm afraid. I'm not afraid of you… I'm only afraid of losing you. Like you're going to disappear…
现在我害怕了，我不是害怕你……我只是害怕失去你，害怕你会突然消失……
You don't know how long I've waited for you. And so the lion fell in love with the lamb. What a stupid lamb. What a sick, masochistic lion.
你不知道我等了你多久，就这样，狮子爱上了羔羊。多蠢的羔羊，多病态又自虐的狮子。
图片
I love three things in  
**/
            make.leading.mas_equalTo(checkBoxTermsBtn.mas_trailing).mas_offset(4);
            make.trailing.mas_equalTo(termAgreeView.mas_trailing);
        }];
        rememberTermsLable.userInteractionEnabled=YES;
        [rememberTermsLable addTapActionWithBlock_MMMethodMMM:^(UIGestureRecognizer *gestureRecoginzer) {
            SDK_LOG(@"rememberTermsLableTapped");
            if (self.delegate) {
                [self.delegate goPageView_MMMethodMMM:CURRENT_PAGE_TYPE_TEARMS from_MMMethodMMM:(CURRENT_PAGE_TYPE_MAIN_HOME) param_MMMethodMMM:0];

/**
  get-out-of-jail-free cards each week, you can get better results than by setting either toug 
**/
            }
        }];

/**
  ne are capable of making your brightest dreams come true. Give your hopes everything you’ve got and you will catch the star that holds your destiny.



寻找心中那颗闪耀的明星，因为只有你自己才能够让美好的梦想变成现实。满怀希望并全力以赴，你就能摘下改变命运的那颗星。

I miss you. I miss all the mornings that I have wok 
**/
    ConfigModel *mConfigModel = SDK_DATA.mConfigModel;
    termAgreeView.hidden = !mConfigModel.showContract;
}
- (void)registerViewBtnAction_MMMethodMMM:(UIButton *)sender
{
    switch (sender.tag) {

/**
  ss us being together physically.

没有足够的言语能表达我有多想念你，我想念我们在一起。

My heart a 
**/
        case kAgreeTermsCheckBoxBtnTag:
            SDK_LOG(@"kAgreeTermsCheckBoxBtnTag");
            if (checkBoxTermsBtn.selected) {
                checkBoxTermsBtn.selected = NO;
            }else{
                checkBoxTermsBtn.selected = YES;
//.
//你不知道，等了你有多久。所以，宁可死别，绝不生离。
//I like the nig
            }

/**
   that holds your destiny, the one that forever twinkles within your heart 
**/
            break;
//an mouth
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
//Blood of Christ mountain s
        case appleLoginActTag:
            SDK_LOG(@"appleLoginActTag");
            if (![self checkAgreeTerm_MMMethodMMM]) {
                return;
            }
            [LoginHelper appleLoginAndThirdRequest_MMMethodMMM:self.delegate view_MMMethodMMM:self];

/**
  皱巴巴的或者被折磨，对周围爱你的人来说你仍然是无可替代的。我们生活的价值不在于我们做了什么，或者我们认识谁，生活的价值在于我们是谁。”



“You are special ——don't 
**/
            break;

/**
  don't ever forget it.”



“你是与众不同的，永远不要忘记这一点!”

不要醒着躺在床上

It's a golden rule in sleep medicine, backed by "decades of data," Grandner said. In fact, he said this tip is so powerful that when used in his sleep clinic it "can even beat prescription sleep medications."

格兰德纳说，这是有“数十年数据”支持的一条睡眠医学黄金法则。事实上，这条法则在他的睡眠诊所中“甚至比处方药还管用”。

"The best sleep tip you 
**/
        case guestLoginActTag:
//ail when and where you'll follow through.
//
//正如出场提示告诉百老汇明星何时登台一样，研究表明，在你的计划中加入信息提示，能帮助你记住何时行动。一定要详细说明你将在何时何地做什么。
//
//
//
//If your New Year's resolution is to meditate five days each week, a plan like "I'll meditate on weekdays" would be too vague. But a cue-ba
            {
            SDK_LOG(@"guestLoginActTag");
            if (![self checkAgreeTerm_MMMethodMMM]) {
                return;
            }
            [LoginHelper guestLoginAndThirdRequest_MMMethodMMM:self.delegate];
            }
            break;

/**
  nic it "can even beat prescription sleep medications."

格兰德纳说，这是有“数十年数据”支持的一条睡眠医学黄金法则。事实上，这条法则在他的睡眠诊所中“甚至比处方药还管用”。

"The best sleep tip you can ever give somebody is get up -- don't lay in be 
**/
        case fbLoginActTag:

/**
  sted, according to the US Centers for Disease Control and Prevention. So if a person needed to rise at 7 am each day, backtiming eight hours would require a bedtime of 11 p 
**/
            SDK_LOG(@"fbLoginActTag");
            if (![self checkAgreeTerm_MMMethodMMM]) {
                return;

/**
  ange your attitude about sleep

改变对睡眠的心态

Many people view sleeping as the final thing they have to do in a jam-packed day, worth delaying to catch up on housework, schoolwork, office work or the latest binge-worthy television se 
**/
            }
            [LoginHelper fbLoginAndThirdRequest_MMMethodMMM:self.delegate];
            break;
        case googleLoginActTag:
            SDK_LOG(@"googleLoginActTag");
            if (![self checkAgreeTerm_MMMethodMMM]) {

/**
  眠时间看成你一天中剩下的时间，而是将其看成为了高效的明天而休整的时间。”

It may sound like a small shift in thinking, but it's an important one, Grander added.

格兰德纳补充道，或许这听起来只是想法上的一个小小改变，但却很重要。

Most adults need between seven and eight hours of sleep to be fully rested, according to the US Centers for Disease Control and Prevention. So if a person needed to r 
**/
                return;
            }
//elf a failure and throw in the towel. Researchers call this the "what the hell effect." Here's what it looks like: You planned to get to 
            [LoginHelper googleLoginAndThirdRequest_MMMethodMMM:self.delegate];

/**
  t you so badly.
只有你才能让我如此上瘾。
I don't have the strength to stay away from you anymore.
我再也没有离开你的力气了。
Your number was up the first time l met you.
第一次遇见我，你就在劫难逃了。
You're in here because of me.
你在这里，是因为有我。
Nobody's ever loved anybody as much  
**/
            break;
        case lineLoginActTag:
            SDK_LOG(@"lineLoginActTag");
            if (![self checkAgreeTerm_MMMethodMMM]) {
                return;
            }
            [LoginHelper lineLoginAndThirdRequest_MMMethodMMM:self.delegate];
            break;
        default:
            break;
    }
}
-(BOOL)checkAgreeTerm_MMMethodMMM
{
    if (checkBoxTermsBtn.selected) {
        return YES;
    }
//azine photos
//亲着杂志上的照片
//Those fishing lures thrown in the cold and clean
//那些鱼饵被扔进冰冷而纯净的
//Blood of Christ mountain stream
//基督山溪的血里去
//Have I found you?
//我找到你了吗
//Flightless bird, grounded bleeding
//折翼的鸟？棕色的毛发在淌血
//Or lost you?
//抑或失去了你？
//American
    [SdkUtil toastMsg_MMMethodMMM:GetString(@"text_term_not_read")];
// to have a standard wake up time, even on weekends, vacations or after a night of poor sleep.
//
//因此每天在固定时间起床很重要，即使是周末、
    return NO;
}
@end
