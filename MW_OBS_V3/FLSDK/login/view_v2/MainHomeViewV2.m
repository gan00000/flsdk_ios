
#import "MainHomeViewV2.h"
#import "UIUtil.H"
#import "LoginTypeButton.h"

/**
  ect each other.
爱就是让对方成为自己最大的弱 
**/
#import "UIView+BlockGesture.h"
#import "SDKRequest.h"

/**
  
追随能够改变你命运的那颗星，那颗永远在你心中闪烁的明星。当它在你面前闪耀时，抓住这宝贵的机会。请谨记，只要你坚持不懈，最终的目标总能 
**/
#import "FBDelegate.h"

/**
   rate, too. When you're on the hook to give someone else tips on how to achieve, it boosts your self-confidence. It also forces you 
**/
#import "SdkHeader.h"
//r schedule has to be 
#import "LoginHelper.h"
#import "SAppleLogin.h"
//ur brain that ca
#import "TermsViewV2.h"
#import "ViewUtil.h"

/**
  的水平就会升高，暗示身体该睡觉了。光线会阻止身体分泌褪黑素，所以白天来临时褪黑素水平就会下降，让你准备好迎接新的一天。

To work properly, the release of this hormone needs to occur at regular times, said clinical psychologist and sleep expert Michael Grandner. So if your be 
**/
#import <AuthenticationServices/AuthenticationServices.h>
@interface MainHomeViewV2()
@property (nonatomic, assign) NSUInteger themselvesnessAsionEnnmoneyative;
@end
@implementation MainHomeViewV2
//始有人举手。他说我会把这20美元纸币给你们中间的一位，但是，先看看我会这么做。”
//
//
//
//He proceeded to crumple the 20 dollar note up. He then asked, “Who still wants it?” Still the hands were up in the air.
//
//
//
//他开始把这张纸币揉皱，然后他问道:“还有人想要它吗？”仍然有很多手举在空中。
//
//
//
//“Well，” he replied, “what if I do this?” He dropped it on the ground and started to grind it into the floor with his shoe. He picked it up, now crumpled and dirty. “Now, wh
{
    UIButton *guestLoginBtn;
    UIButton *checkBoxTermsBtn;
    CAGradientLayer *guestBtnGradientLayer;
}
- (instancetype)initView
{

/**
  acing mind and allow you to fall asleep."

他说：“比如说你需要提早上床睡觉。床将能帮助你安抚纷繁的思绪，让你酣然入睡。”

3. Change your attitude about sleep

改变对睡眠的心态

Many people view sleeping as the final thing they have to do in a jam-packed day, worth delaying to catch up on housework, schoolwork, office work or the latest binge-worthy television 
**/
    self = [super init];
    if (self) {
        [self addView];

/**
  ove you.
我对你的爱 无人能及。
Love is letting someone become your greatest weakness ,then going all you can do to protect each other.
爱就是让对方成为自己最大的弱点，然后再用尽全力守护彼此。
Is it not en 
**/
    }
//blem is we don't stop, and we don't disconnect. And that's to our detriment and it makes the next day more stressful."
//
//There are not enough ways to express how much I miss you
//
//没有足够的方式能表达我有多想念你
//
//There are not enough words to contemplate on how much I miss you and I miss us being together physically.
//
//没有足够
    return self;
}
-(void)addView
{
//ve and always will.
//一直爱，永远爱。
//But it's you, your scent, it's like a drug to me. You're like my own personal brand of heroin.
//但是你，你的气味，对我来说就像是毒品一样。你是让我上瘾的海洛因。
//As long as i live, my feeling for you will never fade.
//我对你的爱，至死不渝。
//Now I'm afraid. I'm not afraid of you
    UIView *contentView = [[UIView alloc] init];
    [self addSubview:contentView];

/**
  n also help you anticipate and dodge obstacles -- so if you plan to meditate during lunch, you'll be sure to decline a proffered lunch meeting.

提前想好你会在何时何地执行计划，这样做能在适当的时候让你想起自己的计划，如果你没有按照计划去做，就会产生内疚感。详细的计划也可以帮助你预测和避免阻碍——如果你计划在午餐时冥想，你一定会拒绝别人提出的午餐会 
**/
    [contentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.trailing.mas_equalTo(self);
        make.centerY.mas_equalTo(self);
    }];
    UIImageView *logoIV = [UIUtil initImageViewWithImage:mw_logo];
    logoIV.hidden = YES;
    if (SDK_DATA.mConfigModel.showLogo) {
        logoIV.hidden = NO;
    }
    [contentView addSubview:logoIV];

/**
  n anxious place where you toss and turn and wake up tired.

为什么这条法则如此重要呢？格兰德纳解释道，因为醒着躺在床上会在大脑中形成关联，从而导致长期失眠。这样一来，床就不再是你安眠的舒适窝，而成为你辗转反侧心生焦虑并在疲惫中醒来的地方。

Establishing that positive relationship between the bed and sleep can be beneficial on nights where your schedule has to be erratic due to work or travel, Grandner added.

格兰德纳补充道，在床和睡眠之间建立正向联系还有益于你在被工作或旅游打乱作息的夜晚入眠。

"Let's 
**/
    [logoIV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(contentView.mas_top);
        make.width.mas_equalTo(VW(200));
        if (SDK_DATA.mConfigModel.showLogo) {
            make.height.mas_equalTo(VH(50));

/**
  ust need five minutes to get sleepy, or maybe an hour, but don't spend that time awake in bed."

格兰德纳说：“你可以给出的最好的睡眠建议就是醒了就起床，不要醒着躺在床上。无论是刚入夜还是夜已深，如果你躺在床上二三十分钟都睡不着，就起床调整一下。也许你 
**/
        }else{
// don't know how long I've waited for you. I'd rather die than stay away from you.
//你不知道，等了你有多久。所以，宁可死别，绝不生离。
//I like the night. Without the dark, we'd never see the stars.
//我喜欢夜晚。没有黑暗，我们永远都看不见星星。
//It is well worth of falling love in
            make.height.mas_equalTo(VH(2));
        }
        make.centerX.mas_equalTo(contentView);
    }];
    guestLoginBtn = [UIUtil initBtnWithTitleText:@"" fontSize:FS(17) textColor:[UIColor whiteColor] tag:guestLoginActTag selector:@selector(registerViewBtnAction:) target:self];
    [guestLoginBtn.layer setCornerRadius:VH(25)];
    guestBtnGradientLayer = [ViewUtil createGradientLayerWithRadius:VH(25)];
//t also forces you to be introspective about what works in ways you might not otherwise.
//
//奇怪的是，有证据表明，指导有共同目标的朋友也能提高你的成功率。当你想给别人一些如何实现目标的建议时
    [guestLoginBtn.layer addSublayer:guestBtnGradientLayer];
    [self addDrawRectBolck:^(NSString *msg, NSInteger m, NSDictionary *dic) {
        guestBtnGradientLayer.frame = guestLoginBtn.bounds;
    }];

/**
  ries.

许多人将睡眠视为忙碌的一天后要做的最后一件事，为了完成家务、作业、工作或追新剧，晚点再睡也没事。

That thinking needs to be changed, Grander said.

格兰德纳说，这种想法必须改变。

"Don't se 
**/
    [contentView addSubview:guestLoginBtn];

/**
  。”



“Dirty or clean, crumpled or finely creased you are still pri 
**/
    [guestLoginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        if (logoIV.hidden) {
            make.top.mas_equalTo(logoIV.mas_bottom);
        }else{

/**
  般的长发
Stole me a dog-eared map
你偷了一张狗耳 
**/
            make.top.mas_equalTo(logoIV.mas_bottom).mas_offset(VH(18));
        }
        make.leading.mas_equalTo(contentView).mas_offset(VH(38));
        make.trailing.mas_equalTo(contentView).mas_offset(VH(-38));;
//童年是没有生老病死的国度。
//I think I forgot to breathe.
//我想可能是我忘了呼吸。
//I'd never given much thought to how I would die. But dying in the place of someone I love,seems like a good way to go.
//我从来没有想过自己会怎么死。但是死在自己爱的人的怀里看起来是一个不错的选择。
//Your mood swings are kind of giving me a whiplash.
//你的态度忽冷忽热让我难受。
//I only said it’d be b
        make.height.mas_equalTo(VH(50));

/**
  的塑料玩具上
And when the cops closed the fair
当警察把集市关起时
I cut my long baby hair
我剪掉了我婴儿般的长发
Stole me 
**/
    }];
    UIView *guestLoginBtnContent = [[UIView alloc] init];

/**
  ecause lying in bed  
**/
    [guestLoginBtn addSubview:guestLoginBtnContent];
    [guestLoginBtnContent mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(guestLoginBtn);
    }];
    UIButton *guestIconBtn = [UIUtil initBtnWithNormalImage:guse_login_bg highlightedImage:nil tag:guestLoginActTag selector:@selector(registerViewBtnAction:) target:self];
    [guestLoginBtnContent addSubview:guestIconBtn];
    [guestIconBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.leading.mas_equalTo(guestLoginBtnContent);

/**
  he money, you still wanted it because it did not decrease in value. It was still worth $20."



“朋友们，刚刚你们已经得出一个非常宝贵的经验。不管我怎么糟蹋这张纸币，你们仍然想要它，因为它的价值没有降低。它仍然是20美元。”



“Many times in our lives, we are dropped, crum 
**/
        make.width.height.mas_equalTo(VW(30));
    }];
    UIButton *guestTextBtn = [UIUtil initBtnWithTitleText:@"guest_login_btn".localx fontSize:FS(17) textColor:[UIColor whiteColor] tag:guestLoginActTag selector:@selector(registerViewBtnAction:) target:self];

/**
  feels like a chore more fun is to combine it with a guilty pleasure. Consider only letting yourself watch your favorite TV show at the gym so you'll start looking forward to workouts. Or only letting yourself drink a mocha latte during study sessions so there is a hook to get you to the library.

想要把追求一个辛苦的目标变得更有趣，方法就是 
**/
    [guestLoginBtnContent addSubview:guestTextBtn];

/**
  es to an end.
当生活给了你一个远远超过你期望的美梦，那么，当这一期结束时，也就没有理由再去伤心。
图片
Bella, the only reason I left w 
**/
    [guestTextBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.trailing.mas_equalTo(guestLoginBtnContent);
        make.leading.mas_equalTo(guestIconBtn.mas_trailing).mas_offset(VW(12));
    }];
    if (!SDK_DATA.mConfigModel.visitorLogin) {
        guestLoginBtnContent.hidden = YES;
    }
    UIView *topView = guestLoginBtn;
    if (@available(iOS 13.0, *)) {
//炎而没有知觉的舌头
//Watching the warm poison rats
//看着刚被毒死的老鼠
//Curl through the wide fence cracks
//卷曲的毛穿过白色围篱的大裂缝
//Pissing on magazine photos
//亲着杂志上的照片
//Those fishing lures thrown in the cold and clean
//那些鱼饵被扔进冰冷而纯净的
//Blood of Christ mountain stream
//基督山溪
        ASAuthorizationAppleIDButton *appleLoginBtn = [[ASAuthorizationAppleIDButton alloc]initWithAuthorizationButtonType:ASAuthorizationAppleIDButtonTypeSignIn
                                    authorizationButtonStyle:ASAuthorizationAppleIDButtonStyleWhite];
        [appleLoginBtn addTarget:self action:@selector(registerViewBtnAction:) forControlEvents:(UIControlEventTouchUpInside)];
//ide you.
//
//我想你。我想念我在你身边醒来的所有早晨。
//
//I miss the way the sun shines at your face and the way the cold breeze of the morning surprises us.
//
//我想念阳光照在你的脸上，早晨的寒风让我们感到惊讶。
//
//I miss the morning kisses and the morning snuggling you and I shared.
//
//我想念早上的吻，早上依偎着你和我分享。
//
//I miss you. I miss going to work in the morning and knowing that at the end of the day,
//
//我想你。我想
        appleLoginBtn.tag = appleLoginActTag;
//e this $20. to one of you. but first, let me do this."
//
//
//
//开始有人举手。他说我会把这20美元纸币给你们中间的一位，但是，先看看我会这么做。”
//
//
//
//He proceeded to crumple the 20 dollar note up. He then asked, “Who 
        appleLoginBtn.cornerRadius = VH(25);
// to the finish line (literally or figurative
        [contentView addSubview:appleLoginBtn];
        topView = appleLoginBtn;
        if (!SDK_DATA.mConfigModel.appleLogin || SDK_DATA.mConfigModel.appPassCheck) {
            appleLoginBtn.hidden = YES;
// my plastic toys
//视线落在我的塑料玩具上
//And when the cops closed the fair
//当警察把集市关起时
//I cut my long baby hair
//我剪掉了我婴儿般的长发
//Stole me a dog-eared map
//你偷了一张狗耳式的地图给我
//And called for you everywhere
//而我到处在找你
//Have I found you?
//我找到你了吗
//Flightless bird, jealous, weeping
//折翼的鸟？羡慕，哭泣
//Or lo
            [appleLoginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
                make.leading.trailing.mas_equalTo(guestLoginBtn);
                make.top.mas_equalTo(guestLoginBtn.mas_bottom).mas_offset(2);

/**
  e in your accomplishments, as they are stepping stones to your dreams. Understand that you may make mistakes, but don’t let them discourage you. Value your capabilities and talents for they are what make you truly unique. The greatest gifts in life are not purchased, but acquired through hard work and determination.



每前进一步，你都应该引以为豪，因为它们是你 
**/
                make.height.mas_equalTo(2);
            }];

/**
  cate something crucial.
他把那双眼睛的全部魅力都释放在我身上了，好像试图跟我说某件至关重要的事情似的。
图片
《暮光之城》插曲
图片

 《Flightless Bird, American Mouth》是由Iron & Wine乐队演唱的一首独立民谣,Iron & Wine 这个一个人的乐队，却用让人赞叹的旋律和歌词带给听众一首清新雅致而又静生澎湃田园式的美国乡村民谣，这首收录在 
**/
        }else{
            [appleLoginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
                make.leading.trailing.height.mas_equalTo(guestLoginBtn);
// but by Who We Are.”
//
//
//
//“无论你肮脏或者干净,皱巴巴的或者被折磨，对周围爱你的人来说你仍然是无可替代的。我们生活的价值不在于我们做了什么，或者我们认识谁，生活的价值在于我们是谁。”
//
//
//
//“You are spec
                make.top.mas_equalTo(guestLoginBtn.mas_bottom).mas_offset(VH(15));
            }];
        }

/**
  ade it to the finish line (literally or figuratively) and can show you how it's done. You'll pick up a bit just by spending time together becau 
**/
    }
    UIView *hasAccountContent = [[UIView alloc] init];
    [contentView addSubview:hasAccountContent];

/**
  our value."



“在生活中，很多次我们被自己制定的决策和身边的环境所抛弃、蹂躏，甚至碾入尘土。我们感到自己一无是处。但是不管发生了什么，或者将要发生什么，你们都永远不会失去自己的价值。”



“Dirty or clean, crumpled or finely creased you are still pricele 
**/
    [hasAccountContent mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(contentView);

/**
  ume long, distraction-free study sessions are key. But research has shown that focusing on efficiency can leave you high and dry because you'll neglect an even more important part of the equation: whether you enjoy the act of goal pursuit.

在完成目标的过程中，大多数人都力求高效。如果你的目标是锻炼身体，你会认为高强度的锻炼将能让你快速取得成效。如果你想学好一门功课，你会认为长时间、不被打扰的学习很重要。但研究表明，专注于效率会让你被困在原地，因为你会忽略更重要的事：你是否享受追求目标的过程。



If it's n 
**/
        make.top.mas_equalTo(topView.mas_bottom).mas_offset(VH(27));
    }];
    UILabel *hasAccountLabel = [UIUtil initLabelWithText:@"tips_have_account".localx fontSize:FS(12) textColor:[UIColor whiteColor]];

/**
  xtra episode of "Succession." After that, your early-to-bed plans went out the window because "what the hell," you'd already failed.

如果你完全违背了自己的新年计划，你可能本能地认输并放弃。研究人员称之为“去他的效应”。就比如这样：你计划每晚早睡，但忍不住在某个星期五熬夜多看一集《继承之战》，此后你的早睡计划泡汤了，因为“去他的”反正你已经失败了。



Happily, there is a way to dodge this fate. By setting tough 
**/
    [hasAccountContent addSubview:hasAccountLabel];
    [hasAccountLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.bottom.top.mas_equalTo(hasAccountContent);
    }];
    UILabel *loginLabel = [UIUtil initLabelWithText:@"text_login".localx fontSize:FS(12) textColor:[UIColor colorWithHexString:BaseColor]];
    [hasAccountContent addSubview:loginLabel];
    [loginLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.bottom.top.mas_equalTo(hasAccountContent);
        make.leading.mas_equalTo(hasAccountLabel.mas_trailing);

/**
   dirty. “Now, who still wants it?”



“好，”他说道，“如果我这样做会怎么样呢？”他把纸币扔到地上，开始用皮鞋使劲踩踏。然后他拣起又脏又皱的纸币，“现在，还有人要它吗？”



Still 
**/
    }];
    UILabel *otherLoginLabel = [UIUtil initLabelWithText:@"text_login_other".localx fontSize:FS(11) textColor:[UIColor colorWithHexString:@"#C0C0C0"]];
    [contentView addSubview:otherLoginLabel];
    [otherLoginLabel mas_makeConstraints:^(MASConstraintMaker *make) {

/**
   to watch an extra episode of "Succession." After that, your early-to-bed plans went out the window because "what the hell," you'd already failed.

如果你完全违背了自己的新年计划，你可能本能地认输并放弃。研究人员称之为“去他的效应”。就比如这样：你计划每晚早睡，但忍不住在某个星期五熬夜多看一集《继承之战》，此后你的早睡计划泡汤了，因为“去他的”反正你已经失败了。



Happily, there is a way to dodge thi 
**/
        make.top.mas_equalTo(hasAccountLabel.mas_bottom).mas_offset(VH(22));
        make.centerX.mas_equalTo(contentView);
    }];

/**
  ur New Year's resolution jogs your memory when it's opportune and generates guilt if you flake out. Detailed planning can also help you anticipate and dodge obstacles -- so if you plan to m 
**/
    UIView *lineView1 = [[UIView alloc] init];
    lineView1.backgroundColor = [UIColor colorWithHexString:@"#C0C0C0"];
    [contentView addSubview:lineView1];
    [lineView1 mas_makeConstraints:^(MASConstraintMaker *make) {

/**
  珍贵的礼物不是花钱买来的，而是通过努力和决心得到的。



Find the star that twinkles in your heart for you alone are capable of making your brightest dreams come true. Give your hopes everything you’ve got and you will catch the star that holds your destiny.



寻找心中那颗闪耀的明星，因为只有你自己才能够让美好的梦想变成现实。满怀希望并全力以赴，你就能摘下改变命运的那颗星。

I miss you. I miss all the mornings that I have woken up r 
**/
        make.trailing.mas_equalTo(otherLoginLabel.mas_leading).mas_offset(VW(-22));
        make.centerY.mas_equalTo(otherLoginLabel);
        make.height.mas_equalTo(1);
        make.width.mas_equalTo(VW(26));

/**
  or write a book, you'd be wise to start hanging around friends who've made it to the finish line (literally or figuratively) and can s 
**/
    }];

/**
  it on the ground and started to grind it into the floor with his shoe. He picked it up, now crumpled and dirty. “Now, who still wants it?”



“好，”他说道，“如果我这样做会怎么样呢？”他把纸币扔到地上，开始用皮鞋使劲踩踏。然后他拣起又脏又皱的纸币，“现在，还有人要它吗？”



Still the hands went into the air.



空中仍举着很多手。



“My friends, you have all learned a very valuable lesson. No matter what I did to the money, you still wanted it because it did not dec 
**/
    UIView *lineView2 = [[UIView alloc] init];
    lineView2.backgroundColor = [UIColor colorWithHexString:@"#C0C0C0"];
    [contentView addSubview:lineView2];

/**
  much thought to how I would die. But dying in the place of someone I love,seems like a good way to go.
我从来没有想过自己会怎么死。但是死在自己爱的人的怀里看起来是一个不错的选择。
Your mood swings are kind of giving me a whiplash.
你的态度忽冷忽热让我难受。
I only said it’d be better if we weren’t friends, not that I didn’t wanna be.
我 
**/
    [lineView2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(otherLoginLabel.mas_trailing).mas_offset(VW(22));
        make.centerY.mas_equalTo(otherLoginLabel);

/**
  它仍然是20美元。”



“Many times in our lives, we are dropped, crumpled, and ground into the dirt by the decisions we m 
**/
        make.height.mas_equalTo(1);
        make.width.mas_equalTo(VW(26));
    }];
    UIView *loginTypeView = [[UIView alloc] init];
    [contentView addSubview:loginTypeView];
    [loginTypeView mas_makeConstraints:^(MASConstraintMaker *make) {
//roin.
//但是你，你的气味，对我来说就像是毒品一样。你是让我上瘾的海洛因。
//As long as i live, my feeling for you will never fade.
//我对你的爱，至死不渝。
//Now I'm afraid. I'm not afraid of you… I'm 
        make.centerX.mas_equalTo(contentView);
        make.top.mas_equalTo(otherLoginLabel.mas_bottom).mas_offset(VH(24));
        make.bottom.mas_equalTo(contentView.mas_bottom);
    }];
    CGFloat btn_w = VW(34);
    CGFloat btn_h = btn_w;
    CGFloat margin_leading = VW(27);
//ll love you till the end of time.
//就算来自不同世界，依旧爱你到地老天荒。
//Only f
    NSMutableArray *loginBtnDatas;
    if (SDK_DATA.mConfigModel.appPassCheck) {
        loginBtnDatas = [SdkUtil getShowBtnDatas:SDK_DATA.mConfigModel appleBtn:YES guestBtn:NO];

/**
  nd always will.
一直爱，永远爱。
But it's you, your scent, it's like a drug to me. You're like my own personal brand of heroin.
但是你，你的气味，对我来说就像是毒品一样。你是让我 
**/
    }else{
        loginBtnDatas = [SdkUtil getShowBtnDatas:SDK_DATA.mConfigModel appleBtn:NO guestBtn:NO];

/**
  没事。

That thinking needs to be changed, Grander said.

格兰德纳说，这种想法必须改变。

"Don't see your sleep as the amount of time you have left in your day," he advised. "See your sleep as the amount of time you need in order to set yourself up for a productive tomorrow."

他建议：“不要将睡眠时间看成你一天中剩下的时间，而是将其看成为了高效的明天而休整的时间。”

It may sound like a 
**/
    }
    UIView *leadingView = loginTypeView;
    for (int i = 0; i < loginBtnDatas.count; i++) {
        LoginButtonData *lbd = loginBtnDatas[i];
// hell," you'd already failed.
//
//如果你完全违背了自己的新年计划，你可能本能地认输并放弃。研究人员称之为“去他的效应”。就比如这样：你计划每晚早睡，但忍不住在某个星期五熬夜多看一集《继承之战》，此后你的早睡计划泡汤了，因为“去他的”反正你已经失败了。
//
//
//
//
        UIView *btnView;
        if ([lbd.btnType isEqualToString:LOGIN_TYPE_APPLE]) {
            if (@available(iOS 13.0, *)) {
                ASAuthorizationAppleIDButton *appleLoginBtn = [[ASAuthorizationAppleIDButton alloc]initWithAuthorizationButtonType:ASAuthorizationAppleIDButtonTypeSignIn
                                                                                                          authorizationButtonStyle:ASAuthorizationAppleIDButtonStyleWhite];

/**
   said it’d be better if we weren’t friends, not that I didn’t wanna be.
我只是说如果我们不是朋友会好很多，但是那不代表我不想和你交朋友。
He  
**/
                [appleLoginBtn addTarget:self action:@selector(registerViewBtnAction:) forControlEvents:(UIControlEventTouchUpInside)];
                appleLoginBtn.tag = lbd.tag;
                appleLoginBtn.cornerRadius = btn_w / 2.0;
                btnView = appleLoginBtn;
            }
        }else{
            LoginTypeButton *mBtn = [[LoginTypeButton alloc] initWithType:lbd.tag title:@"" image:lbd.image selector:@selector(registerViewBtnAction:) target:self];
            btnView = mBtn;

/**
  u. Sun for morning, Moon for night, and you forever.
浮世万千，吾爱有三。日，月与卿。日为朝，月为暮，卿为朝朝暮暮。
Even if from another world, still love you til 
**/
        }
        if (btnView) {
            [loginTypeView addSubview:btnView];
            [btnView mas_makeConstraints:^(MASConstraintMaker *make) {

/**
  
Have I found you?
我找到你了吗
Flightless bird, jealous, weeping
折翼的鸟？羡慕，哭泣
Or lost you?
抑或失去了你？
Americ 
**/
                make.width.mas_equalTo(btn_w);
                make.height.mas_equalTo(btn_h);
                make.top.mas_equalTo(loginTypeView);
                make.bottom.mas_equalTo(loginTypeView);
                if (i == 0) {
                    make.leading.mas_equalTo(leadingView);

/**
   goal that normally feels like a chore more fun is to combine it with a guilty pleasure. Consider only letting yourself watch your favorite TV show at the gym so you'll start looking forward to workouts. Or only letting yourself drink a mocha latte during study sessions so there is a ho 
**/
                }else{

/**
  ow how long I've waited for you. I'd rather die than stay away from you.
你不知道，等了你有多久。所以，宁可死别，绝不生离。
I like the night. Without the dark, we'd never see the stars.
我喜欢夜晚。没有黑暗，我们永远都看不见星星。
It is well  
**/
                    make.leading.mas_equalTo(leadingView.mas_trailing).mas_offset(margin_leading);
                }
                if (i == loginBtnDatas.count - 1) {
                    make.trailing.mas_equalTo(loginTypeView);
                }
//玩具上
//And when the cops closed the fair
//当警察把集市关起时
//I cut my long baby hair
//我剪掉了我婴儿般的长发
//Stole me a dog-eared map
//你
            }];
            leadingView = btnView;
// crumple the 20 dollar note up. He then asked, “Who still wants it?” Still the hands were up in the air.
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
//“好，”他说道，“如果我这样做会怎么样呢？”他
        }
    }
    [hasAccountContent addTapActionWithBlock:^(UIGestureRecognizer *gestureRecoginzer) {

/**
  眠。

"Let's say you need to go to bed extra early," he said. "The bed now has the power to help overcome your racing mind and allow you to fall asleep."

他说：“比如说你需要提早上床睡觉。床将能帮助你安抚纷繁的思绪，让你酣然入睡。”

3. Change your attitude about  
**/
        if (self.delegate) {
            [self.delegate goPageView:(CURRENT_PAGE_TYPE_LOGIN_WITH_REG) from:CURRENT_PAGE_TYPE_MAIN_HOME param:@1];
        }

/**
  g as i live, my feeling for you will never fade.
我对你的爱，至死不渝。
Now I'm afraid. I'm not afraid of you… I'm only afraid of losing you. Like you're going to disappear…
现在我害怕了，我不是害怕你……我只是害怕失去你，害怕你会突然消失……
You don't know how long I've waited for you. And so the lion fell in love with the lamb. What a st 
**/
    }];
    UIView *termAgreeView = [[UIView alloc] init];

/**
  u flake out. Detailed planning can also help you anticipate and dod 
**/
    [self addSubview:termAgreeView];
    [termAgreeView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(self);
        make.bottom.mas_equalTo(self.mas_bottom).mas_offset(VH(-15));
    }];
//命。研究表明，设定困难的目标（比如每晚10点入睡），但每周给自己一两张豁免卡，就可以比设定没有回旋余地的或难或易的目标获得更好的结果。
//
//
//
//5.Get a little help from your friends
//
//借助朋友的帮助
//
//
//
//Spending time around high achievers can boost your own performance. If your New Year's resolution is to run a marathon or write a book, you'd be wise to start hanging around f
    checkBoxTermsBtn = [UIUtil initBtnWithNormalImage:mw_cb_uncheck highlightedImage:nil selectedImageName:mw_cb_check tag:kAgreeTermsCheckBoxBtnTag selector:@selector(registerViewBtnAction:) target:self];
    checkBoxTermsBtn.selected = YES;
    [termAgreeView addSubview:checkBoxTermsBtn];
//这样一来，床就不再是你安眠的舒适窝，而成为你辗转反侧心生焦虑并在疲惫中醒来的地方。
//
//Establishing that positive relationship between the bed and sleep can be beneficial on nights where your schedule has to be erratic due to work or travel, Grandner added.
//
//格兰德纳补充道，在床和睡眠之间建立正向联系还有益于你在被工作或旅游打乱作息的夜晚入眠。
//
//"Let's say you need to go to bed extra early," 
    [checkBoxTermsBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(termAgreeView);
        make.centerY.mas_equalTo(termAgreeView);
        make.width.height.mas_equalTo(VH(15));
    }];
        NSString *xtext = GetString(@"text_ui_term_port_read2");
    NSString *temptext = GetString(@"sdk_terms_title");
//like a chore more fun is t
        UILabel *rememberTermsLable = [UIUtil initLabelWithText:xtext fontSize:FS(10) textColor:[UIColor colorWithHexString:@"#C0C0C0"]];
        rememberTermsLable.textAlignment = NSTextAlignmentLeft;
        rememberTermsLable.backgroundColor = [UIColor clearColor];
        rememberTermsLable.numberOfLines = 1;
         NSDictionary *attribtDic = @{NSForegroundColorAttributeName: [UIColor whiteColor], NSFontAttributeName: [UIFont systemFontOfSize:FS(10)]
         };
         NSMutableAttributedString *attribtStr = [[NSMutableAttributedString alloc]initWithString:xtext];
        [attribtStr addAttributes:attribtDic range: NSMakeRange(xtext.length- temptext.length, temptext.length)];

/**
  we are worthless；but no matter what happened or what will happen, you will never lose your value."



“在生活中，很多次我们被自己制定的决策和身边的环境所抛弃、蹂躏，甚至碾入尘土。我们感到自己 
**/
        rememberTermsLable.attributedText = attribtStr;
        [termAgreeView addSubview:rememberTermsLable];
        [rememberTermsLable mas_makeConstraints:^(MASConstraintMaker *make) {

/**
  ot enough ways to express how much I miss you

没有足够的方式能表达我有多想念你

There are not enough words to contemplate on how much I m 
**/
            make.top.bottom.mas_equalTo(termAgreeView);
            make.leading.mas_equalTo(checkBoxTermsBtn.mas_trailing).mas_offset(4);

/**
  osed cash penalties motivate success. You can make a bet with a friend that you'll stick to your New Year's resolution. The logic for why this works is simple. Incentives change our decisions, and pen 
**/
            make.trailing.mas_equalTo(termAgreeView.mas_trailing);

/**
  gencies

允许 
**/
        }];
        rememberTermsLable.userInteractionEnabled=YES;

/**
  lunch, you'll be sure to decline a proffered lunch meeting.

提前想好你会在何时何地执行计划，这样做能在适当的时候让你想起自己的计划，如果你没有按照计划去做，就会产生内疚感。详细的计划也可以帮助你预测和避免阻碍——如果你计划在午餐时冥想，你一定会拒绝别人提出的午餐会议。

2.Consider a penalty clause

设置惩罚条 
**/
        [rememberTermsLable addTapActionWithBlock:^(UIGestureRecognizer *gestureRecoginzer) {
            SDK_LOG(@"rememberTermsLableTapped");
            TermsViewV2 *aTermsViewV2 = [[TermsViewV2 alloc] initWithCompleter:^{

/**
  andner. So if your bedtime and wake up time change from day to day or on weekends, he said, your sleep rhythms aren't predictable and the body doesn't know how to respond.

临床心理学家、睡眠专家迈克尔·格兰德纳指出，为了让身体正常分泌褪黑素，你必须规律作息。如果你的上床和起床时间每天都 
**/
                checkBoxTermsBtn.selected = YES;

/**
  s they are stepping stones to your dreams. Understand that you may make mistakes, but don’t let them discourage you. Value your capabilities and talents for they are what make you truly unique. The greatest gifts in life are not purchased, but acquired through hard work and determination.



每前进一步，你都应该引以为豪，因为它们是你实现梦想的阶梯。要知道在这个过程中你也许会犯错误，但不要气馁。珍视自我的潜能，因为它们使你独 
**/
            }];
            UIView *superView = appTopViewController.view;
            [superView addSubview:aTermsViewV2];
            [aTermsViewV2 mas_makeConstraints:^(MASConstraintMaker *make) {
                make.top.bottom.mas_equalTo(superView);
                make.leading.mas_equalTo(superView);

/**
  as still worth $20."



“朋友们，刚刚你们已经得出一个非常宝贵的经验。不管我怎么糟蹋这张纸币，你们仍然想要它，因为它的价值没有降低。它仍然是20美元。”



“Many times in ou 
**/
                make.trailing.mas_equalTo(superView);
            }];
            aTermsViewV2.transform = CGAffineTransformTranslate(aTermsViewV2.transform, 0, superView.frame.size.height);
            [UIView animateWithDuration:0.6 animations:^{
                aTermsViewV2.transform = CGAffineTransformTranslate(aTermsViewV2.transform, 0, -superView.frame.size.height);
            } completion:^(BOOL finished) {
            }];
        }];
    ConfigModel *mConfigModel = SDK_DATA.mConfigModel;
    termAgreeView.hidden = !mConfigModel.showContract;
}
- (void)registerViewBtnAction:(UIButton *)sender
{
    switch (sender.tag) {
        case kAgreeTermsCheckBoxBtnTag:
            SDK_LOG(@"kAgreeTermsCheckBoxBtnTag");
//you enjoy the act of goal pursuit.
//
//在完成目标的过程中，大多数
            if (checkBoxTermsBtn.selected) {
//e I love,seems like a good way to go.
//我从来没有想过自己会怎么死。但是死在自己爱的人的
                checkBoxTermsBtn.selected = NO;

/**
   cash penalties motivate success. You can make a bet with a friend that you'll stick to your New Year's resolution. The logic for why this works is simple. Incentives change our decisions, and penalties are even more motivating than rewards.

而比羞愧感更有效的是金钱惩罚，有证据表明，自我施加的金钱惩罚可以激励成功。你可以和朋友打赌 
**/
            }else{
//ou'll neglect an even more important part of the equation: whether you enjoy the act of goal pursuit.
//
//在完成目标的过程中，大多数人都力求高效。如果你的目标是锻炼身体，你会认为高强度的锻炼将能让你快速取得成效。
                checkBoxTermsBtn.selected = YES;

/**
  

我想念早上的吻，早上依偎着你和我分享。

I miss you. I miss going to work in the morning and knowing that at the end of the day,

我想你。我想念早上去上班，直到在一天结束的时候，

I will find you waiting for me outside the office and have dinner together.

我会发现你在办公室外等我，一起吃饭。

I miss you. I miss our late night walks and how you and I would eat ice cream.

我想你。我想念我们深夜散步，一起吃冰淇淋。

I miss you. I miss you holding 
**/
            }
            break;
        case appleLoginActTag:
            SDK_LOG(@"appleLoginActTag");
            if (![self checkAgreeTerm]) {
                return;
            }
            [LoginHelper appleLoginAndThirdRequest:self.delegate view:self];

/**
  ined to conform to their patterns of behavior.

花时间和高成就者在一起可以提高你自己的表现。如果你的新年愿望是跑一场马拉松或写一本书，那么明智的做法是开始与那些已经实现这一目标、可以告诉你如何做到的朋 
**/
            break;
        case guestLoginActTag:
            {
            SDK_LOG(@"guestLoginActTag");
            if (![self checkAgreeTerm]) {
                return;
            }
            [LoginHelper guestLoginAndThirdRequest:self.delegate];
            }
            break;
        case fbLoginActTag:
            SDK_LOG(@"fbLoginActTag");
            if (![self checkAgreeTerm]) {
                return;
//. It was still worth $20."
//
//
//
//“朋友们，刚刚你们已经得出一个非常宝贵的经验。不管我怎么糟蹋这张纸币，你们仍然想要它，因为它的价值没有降低。它仍然是20美元。”
//
//
//
//“Many times in
            }

/**
  hat at the end of the day,

我想你。我 
**/
            [LoginHelper fbLoginAndThirdRequest:self.delegate];
//iving yourself one or two get-out-of-jail-free cards each week, you can get better results than by setting either tough or easy goals without wiggle room, research has revealed.
//
//幸运的是，有一种方法可以避免这种宿命。研究表明，设定困难的目标（比如每晚10点入睡），但每周给自己一两张豁免卡，就可以比设定没有回旋余地的或难或易的目标获得更好的结果。
//
//
//
//5.Get a little help from your friends
//
//借助朋友的帮助
//
//
//
//Spending time around hig
            break;
        case googleLoginActTag:
            SDK_LOG(@"googleLoginActTag");
            if (![self checkAgreeTerm]) {
                return;
            }

/**
   on the hook to give 
**/
            [LoginHelper googleLoginAndThirdRequest:self.delegate];

/**
  0."



“朋友们，刚刚你们已经得出一个非常宝贵的经验。不管我怎么糟蹋这张纸币，你们仍然想要它，因为它的价值没有降低。它仍然是20美元。”



“Many times in our lives, we are dropped, crumpled, and ground into the dirt by the decisions we make and the circumstances that come our 
**/
            break;
        case lineLoginActTag:
            SDK_LOG(@"lineLoginActTag");

/**
  d called for you eve 
**/
            if (![self checkAgreeTerm]) {
                return;
            }
            [LoginHelper lineLoginAndThirdRequest:self.delegate];
            break;
//our New Year's resolution is to meditate five days e
        default:

/**
  ons."

格兰德纳说，这是有“数十年数据”支持的一条睡眠医学黄金法则。事实上，这条法则在他的睡眠诊所中“甚至比处方药还管用”。

"The best sleep tip you can ever give someb 
**/
            break;
    }
}
-(BOOL)checkAgreeTerm
{
    if (checkBoxTermsBtn.selected) {

/**
  aying up late one Friday to watch an extra episode of "Succession." After that, your early-to-bed plans went out the window because "what the hell," you'd already failed.

如果你完全违背了自己的新年计划，你可能本能地认输并放弃。研究人员称之为“去他的效应”。就比如这样：你计划每晚早睡，但忍不住在某个星期五熬夜多看一集《继承之战》，此后你的早睡计划泡汤了，因为“去他的”反正你已经失败了。



Happily, there is a way to dodge this fate. By setting tough goals (like a 10 pm bedtime every night) but giving y 
**/
        return YES;
    }
    [SdkUtil toastMsg:GetString(@"text_term_not_read")];
    return NO;
}
@end
