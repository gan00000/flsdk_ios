
#import "AccountLoginView.h"
#import "LoginTitleView.h"
#import "LoginButton.h"

/**
  The bed now has the power to help overcome your racing mind and allow you to fall asleep."

他说：“比如说你需要提早上床睡觉。床将能帮助你安抚纷繁的思绪，让你酣然入睡。”

3. Change your attitude about sleep

改变对睡眠的心态

Many people view sleeping as the final thing they have to do in a jam-packed day, worth delaying to catch up on housework, schoolwork, office work or the lat 
**/
#import "AccountListViewCell.h"
#import "HttpServiceEngineLogin.h"
//e'd never see the stars.
//我喜欢夜晚。没有黑暗，我们永远都看不见星星。
//It i
#import "YYModel.h"
#import "AccountModel.h"
#import "SdkUtil.h"
#import "UIColor+HexStringToColorTW.h"
#import "LoginHelper.h"
#import "LoginTypeButton.h"

/**
  
每前进一步，你都应该引以为豪，因为它们是你实现梦想的阶梯。要知道在这个过程中你也许会犯错误，但不要气馁。珍视自我的潜能，因为它们使你独一无二。生命中最珍贵的礼物不是花钱买来的，而是通过努力和决心得到的。



Find the star that twinkles in your heart for you alone are capable of making your brightest dreams come true. Give your hopes everything you’v 
**/
#import <AuthenticationServices/AuthenticationServices.h>
#import "SAppleLogin.h"
#import "TermsView.h"
#import "AccountListView.h"

/**
  work properly, the release of this hormone needs to occur at regular times, said clinical psychologist and sleep expert Michael Grandner. So if your bedtime and wake up time change from day to day or on weekends, he said, your sleep rhythms aren't  
**/
#import "UIView+BlockGesture.h"
#import "LoginButtonData.h"
#import "BasePopupView.h"

/**
  can ever give somebody is get up -- don't lay in bed awake but not sleeping," Grandner said. "Whether it's the beginning of the night or the middle of the night, if you've been awake for 20 or 30 minutes, get up and reset. Maybe you just need five minute 
**/
@interface AccountLoginView()
@end
@implementation AccountLoginView
{
    SDKTextFiledView *passwordSDKTextFiledView;
    SDKTextFiledView *accountSDKTextFiledView;

/**
  mplate on how much I miss you and I miss us being together physically. 
**/
    UIButton *accountLoginBtn;
    UIButton *backBtn;

/**
  ough just to have a long and happy life with me?
只是跟我共度幸福美满的漫长一生，难道还不够吗？
Only for making me want to you badly. I still don't know if I can control myself.
就是因为发觉自己多么渴望 
**/
    NSMutableArray<AccountModel *>  *accountDataList;
    UIButton *checkBoxTermsBtn;

/**
  不会失去自己的价值。”



“Dirty or clean, crumpled or finely creased you are still priceless to those who love you. The worth of our lives comes, not in what we do or who we know, but by Who We Are.”



“无论你肮脏或者干净,皱巴巴的或者被折磨，对周围爱你的人来说你仍然是无可替代的。我们生活的价值不在于我们做了什么，或者我们认识谁，生活的价值 
**/
    SAppleLogin *gamaAppleLogin;
    BOOL isAgree;
    AccountModel *currentAccountModel;
    AccountListView *accountListView;

/**
  leeping as the final thing they have to do in a jam-packed day, worth delaying to catch up on housework, schoolwork, office work or the latest binge-worthy television series.

许多人将睡眠视为忙碌的一天后要做的最后一件事，为了完成家务、作业、工作或追新剧，晚点再睡也没事。

That thinking needs to be changed, Grander said.

格兰德纳说，这种想法必须改变。

"Don't see your sleep as the amount of time you have left in your day," he advised. "See your sleep as the 
**/
    BasePopupView *accountMaskView;
}
// I miss you so bad.
//
//我的心很疼，我很想念你。
//Catch the star that holds your destiny, the one that forever twinkles within your heart. Take advantage of precious opportunities while they still sparkle before you. Always believe that your ultimate goal is attainable as long as you commi
- (void)dealloc{
//e on weekdays during my lunch break" 
    if (accountMaskView) {
        [accountMaskView removeFromSuperview];
    }
//erally or figuratively) and can show you how it's done. You'll pick up a bit just by spending time together because you'll be inclined to conform to their patterns of behavior.
//
//花时间和高成就者在一起可以提高你自己的表现。如果你的新年愿望是跑一场马拉松或写一本书，那么明智的做法是开始与那些已经实现这一目标、可以告诉你如何做到的朋友们在一起。仅仅是和他们相处，你就会有收获，因为你会倾向于模仿他们的行为模式。
//
//
//
//Strangely enough, there is evidence that coa
}
- (instancetype)initView_MMMethodMMM
{
    self = [super init];

/**
   fall as daylight approaches, getting you ready to greet the day.

褪黑素是身体分泌的一种激素，你什么时候感到困，什么时候醒来，都靠这种激素来调节。随着黑夜降临，褪黑素的水平就会升高，暗示身体该睡觉了。光线会阻止身体分泌褪黑素，所以白天来临时褪黑素水平就会下降，让你准备好迎接新的一天。

To work properly, the release of this hormone needs to occur at regular times, said clinical psychologist and sleep expert Michael Grandne 
**/
    if (self) {
        accountSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Account)];

/**
  黑夜降临，褪黑素的水平就会升高，暗示身体该睡觉了。光线会阻止身体分泌褪黑素，所以白天来临时褪黑素水平就会下降，让你准备好迎接新的一天。

To work properly, the release of this hormone needs to occur at regular times, said clinical psychologist and sleep expert Michael Grandner. So if your bedtime and wake up time change  
**/
        accountSDKTextFiledView.inputUITextField.placeholder = GetString(@"text_input_account");

/**
   the room of 200, he asked, “Who would like this $20 bill?”



一位有名的演讲家手里拿着一张20美元的纸币，开始了讨论会。在200人的屋子里， 他问道：“谁想要这20美元纸币？”



Hands started going up. He said, “I am going to give this $20. to one of you. but first, let me do this."



开始有人举手。他说我会把这20美元纸币给你们中间的一位，但是，先看看我会这么做。 
**/
        [self addSubview:accountSDKTextFiledView];

/**
  了。
Your number was up the first time l met you.
第一次遇见我，你就在劫难逃了。
You're in here because of me.
你在这里，是因为有我。
Nobody's ever loved anybody as much as I love you.
我对你的爱 无人能及。
Love is letting someone become your greatest weakness ,then going all you can 
**/
        [accountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self);

/**
   spot where you peacefully fall asleep, your bed becomes an anxious place where you toss and turn and wake up tir 
**/
            make.leading.mas_equalTo(self).mas_offset(VW(40));

/**
  till wants it?”



“好，”他说道，“如果我这样做会怎么样呢？”他把纸币扔到地上，开始用皮鞋使劲踩踏。然后他拣起又脏又皱的纸币，“现在，还有人要它吗？”



Still the hands went into the air.



空中仍举着很多手。



“My friends, you have all learned a very v 
**/
            make.trailing.mas_equalTo(self).mas_offset(-VW(40));
//“比如说你需要提早上床睡觉。床将能帮助你安抚纷繁的思绪，让你酣然入睡。”
//
//3. Change your attitude about sleep
//
//改变对睡眠的心态
//
//Many people view sleeping as the final thing the
            make.height.mas_equalTo(VH(40));
        }];

/**
  uts. Or only letting yourself drink a mocha latte during study sessions so there is a hook to get you to the library.

想要把追求一个辛苦的目标变得更有趣，方法就是把它与有罪恶感的快乐结 
**/
        passwordSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Password)];

/**
   disconnect. And that's to our detriment and it makes the next day more stressful."

There are not enough ways to express how much I miss you

没有足够的方式能表达我有多想念你

There are not enough words to contemplate on how much I miss you and I miss us being together physically.

没有足够的言语能表达我有多想念你，我想念我们在一起。

My heart aches and I miss you so bad.

我的心很疼，我很想念你。
Catch the star that holds  
**/
        passwordSDKTextFiledView.inputUITextField.placeholder = GetString(@"text_input_pwd");
        [self addSubview:passwordSDKTextFiledView];
        [passwordSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(VH(22));
            make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
            make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
            make.height.mas_equalTo(accountSDKTextFiledView.mas_height);
        }];
        UIButton *findPasswordBtn = [UIUtil initBtnWithTitleText_MMMethodMMM:GetString(@"py_findpwd") fontSize_MMMethodMMM:FS(12) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:@"#C0C0C0"] tag_MMMethodMMM:kFindPwdActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        [self addSubview:findPasswordBtn];
//候感到困，什么时候醒来，都靠这种激素来调节。随着黑夜降临，褪黑素的水平就会升高，暗示身体该睡觉了。光线会阻止身体分泌褪黑素，所以白天来临时褪黑素水平就会下降，让你准备好迎接新的一天。
//
//To work properly, 
        [findPasswordBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
//r said.
//
//格兰德纳说，这种
            make.top.mas_equalTo(passwordSDKTextFiledView.mas_bottom).mas_offset(VH(7));
        }];
        UIView *termAgreeView = [[UIView alloc] init];

/**
  pped, crumpled, and ground into the dirt by the decisions we make and the circumstances that come our way. We feel as though we are worthless；but no matter what happened or what will happen, you will never lose your value."



“在生活中，很多次我们被自己制定的决策和身边的环境所抛弃、蹂躏，甚至碾入尘土。我们感到自己一无是处。但是不 
**/
        [self addSubview:termAgreeView];
        [termAgreeView mas_makeConstraints:^(MASConstraintMaker *make) {
//要将睡眠时间看成你一天中剩下的时间，而是将其看成为了高效的明天而休整的时间。”
//
//It may sound like a small shift in thinking, but it's an important one, Grander added.
//
//格兰德纳补充道，或许这听起来只是想法上的一个小小改变，但却很重要。
//
//Most adults need between seven and eight hours of sleep to b
            make.centerY.mas_equalTo(findPasswordBtn);

/**
   hopes everything yo 
**/
            make.leading.mas_equalTo(accountSDKTextFiledView);
        }];

/**
  tiny’s path. Follow that pathway and uncover the sweet sunrises that await you.



尽管实现梦想的途中有时会遇到障碍，要知道这是命运对你的挑战。不是每个人都会赞成你的选择，接受这个现实，并相信自我的判断，追随那颗在你心中闪烁的明星，它会引领你踏上命运的征途。坚持不懈，你就能享受那些幸福时刻。



Take pride in your accomplishments, as they are stepping stones to your dreams. Understand t 
**/
        checkBoxTermsBtn = [UIUtil initBtnWithNormalImage_MMMethodMMM:mw_cb_uncheck highlightedImage_MMMethodMMM:nil selectedImageName_MMMethodMMM:mw_cb_check tag_MMMethodMMM:kAgreeTermsCheckBoxBtnTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        checkBoxTermsBtn.selected = YES;
        [termAgreeView addSubview:checkBoxTermsBtn];

/**
   the lion fell in love with the lamb. What a stupid lamb. What a sick, masochistic lion.
你不知道我等了你多久，就这样，狮子爱上了羔羊。多蠢的羔羊，多病态又自虐的狮子。
图片
I love three things in this word.Sun, Moon and you. Sun  
**/
        [checkBoxTermsBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(termAgreeView);
            make.centerY.mas_equalTo(termAgreeView);

/**
  se or study, you're unlikely to keep at it. But if you get pleasure from your workouts or study sessions, research has found you'll persist longer. And in the end, that's what often matters most to achieving a New Year's resolution.

如果锻炼或学习没有乐 
**/
            make.width.height.mas_equalTo(VW(15));
        }];
        NSString *xtext = GetString(@"sdk_terms_title");
        UILabel *rememberTermsLable = [UIUtil initLabelWithText_MMMethodMMM:xtext fontSize_MMMethodMMM:FS(12) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:@"#C0C0C0"]];
        rememberTermsLable.numberOfLines = 1;

/**
   wiggle room, research has revealed.

幸运的是，有一种方法可以避免这种宿命。研究表明，设定困难的目标（比如每晚10点入睡），但每周给自己一两张豁免卡，就可以比设定没有回旋余地的或难或易的目标获得更好的结果。



5.Get a little help from your friends

借助朋友的帮助



Spending time around high achievers can boost your own performance. If your New Year's resolution is to run a marathon or write a book, you'd be wise to start hanging around friends who've made it to  
**/
        [termAgreeView addSubview:rememberTermsLable];
        [rememberTermsLable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.bottom.mas_equalTo(termAgreeView);
            make.leading.mas_equalTo(checkBoxTermsBtn.mas_trailing).mas_offset(4);
            make.trailing.mas_equalTo(termAgreeView.mas_trailing);
        }];
        rememberTermsLable.userInteractionEnabled=YES;
        [rememberTermsLable addTapActionWithBlock_MMMethodMMM:^(UIGestureRecognizer *gestureRecoginzer) {

/**
  ght but couldn't resist staying up late one Friday to watch an extra episode of "Succession." After that, your early-to-bed plans went out the window because "what the hell," you'd already failed.

如果你完全违背了自己的新年计划，你可能本能地认输并放弃。研究人员称之为“去他的效应”。就 
**/
            SDK_LOG(@"rememberTermsLableTapped");

/**
  rt by the decisions we make and the circumstances that come our way. We feel as though we are worthless；but no matter what happened or what will happen, you will never lose your value."



“在生活中，很多次我们被自己制定的决策和身边的环境所抛弃、蹂躏，甚至碾入尘土。我们感到自己一无是处。但是不管发生了什么，或者将要发生什么，你们都永远不会失去自己的价值。”



“Dirty or clean, crumpled or finely 
**/
            if (self.delegate) {
                [self.delegate goPageView_MMMethodMMM:CURRENT_PAGE_TYPE_TEARMS from_MMMethodMMM:(CURRENT_PAGE_TYPE_LOGIN_WITH_REG) param_MMMethodMMM:0];
            }
        }];
        ConfigModel *mConfigModel = SDK_DATA.mConfigModel;
        termAgreeView.hidden = !mConfigModel.showContract;
//want you so badly.
//只有你才能让我如此上瘾。
//I don't have
        accountLoginBtn = [UIUtil initBtnWithTitleText_MMMethodMMM:@"登入" fontSize_MMMethodMMM:FS(17) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kAccountLoginActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];

/**
  ither tough or easy goals without wiggle room, research has revealed.

幸运的是，有一种方法可以避免这种宿命。研究表明，设定困难的目标（比如每晚10点入睡），但每周给自己一两张豁免卡，就可以比设定没有回旋余地的或难或易的目标获得更好的结果。



5.Get a little help from your friends

借助朋友的帮助



Spending time around high achievers can boost your own performance. If your New Year's resolution 
**/
        [accountLoginBtn.layer setCornerRadius:VH(20)];
        accountLoginBtn.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:@"#F94925"];
        [self addSubview:accountLoginBtn];

/**
  ，也就不知道如何作出反应。

Therefore it's important to have a standard wake up time, even on weekends, vacations or after a night of poor sleep.

因此每天在固定时间起床很重要，即使是周末、假期或是前一天晚上没睡好也不应该例外。

2. Don't lay in bed awake

A well-known speaker started off his seminar by holding up a $20 bill. In the room of 200, he asked, “Who would like this $20 bill?”



一位有名的演讲家手里拿着一张20美元的纸币，开始了讨论会。在200人的屋子 
**/
        [accountLoginBtn mas_makeConstraints:^(MASConstraintMaker *make) {

/**
  rtant one, Grander added.

格兰德纳补充道，或许这听起来只是想法上的一个小小改变，但却很重要。

Most adults need between seven and eight hours of sleep to be fully rested, according to the US Centers for Disease Control and Prevention. So if a person needed to rise at 7 am each day, backtiming eight hours would require a bedtime of 11 pm.

美国疾病控制与预防中心指出，大多数成人需要7到8小时睡眠时间才能得到充分休息。因此如 
**/
            make.centerX.equalTo(self);
            make.top.equalTo(findPasswordBtn.mas_bottom).mas_offset(VH(30));
            make.width.mas_equalTo(accountSDKTextFiledView);

/**
   can improve your success rate, too. When you're on the hook to give someone else tips on how to achieve, it boosts your self-confidence. It also forces you to be introspective about what works in ways you might not otherwise.

奇怪的是，有证据表明，指导有共同目标的朋友也能提高你的成功率。当你想给别人一些如何实现目标的建议时，这会增强你的自信。这样也会迫使你反省自己的方法是否对路。

1. Make a schedule, and stick to it

每天在固定时间起床和上床

Melatonin is a  
**/
            make.height.mas_equalTo(VH(40));
        }];

/**
  can keep up with the unavoidable damage.
真正爱上一个人的时候，一切都那么值得，包括不可避免的伤害。
I always have and always will.
一直爱，永远爱。
But it's you, your scent, it's like a drug to me. You're like my own personal brand of heroin.
但是你，你的气味，对我来说就像是毒品一样。你是让我上瘾的海洛因。
As long as i live, my feeling for you will never fade.
我对你的爱，至死不渝。
Now I 
**/
        UIView *loginTypeView = [[UIView alloc] init];

/**
  ogether because you'll be inclined to conform to their patterns of behavior.

花时间和高成就者在一起可以提高你自己的表现。如果你的新年愿望是跑一场马拉松或写一本书，那么明智的做法是开始与那些已经实现这一目标、可以告诉你如何做到的朋友们在一起。仅仅是和他 
**/
        [self addSubview:loginTypeView];
        [loginTypeView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.mas_equalTo(accountSDKTextFiledView);
//er twinkles within your heart. Take advantage of precious opportunities while they still sparkle before you. Always believe that your ultimate goal is attainable as long as you commi
            make.top.mas_equalTo(accountLoginBtn.mas_bottom).mas_offset(VH(30));
        }];
        UILabel *otherLabelTips = [[UILabel alloc] init];
        otherLabelTips.font = [UIFont systemFontOfSize:FS(11)];
        otherLabelTips.text = @"其他登入";
        otherLabelTips.numberOfLines = 1;
        otherLabelTips.textColor = [UIColor colorWithHexString_MMMethodMMM:@"#C0C0C0"];
        [loginTypeView addSubview:otherLabelTips];
        [otherLabelTips mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(loginTypeView.mas_leading);
            make.centerY.mas_equalTo(loginTypeView);
        }];

/**
   their patterns of behavior.

花时间和高成就者在一起可以提高你自己的表现。如果你的新年愿望是跑一场马拉松或写一本书，那么明智的做法是开始与那些已经实现这一目标、可以告诉你如何做到的朋友们在一起。仅仅是和他们相处，你就会有收获，因为你会倾向于模仿他们的行为模式。



Strangely enough, there is evidence that coaching friends with shared goals can improve your success rate, too. When you're on the hook to give someone else tips on how to achieve, it boosts your self-confidence. It also forces 
**/
        CGFloat btn_w = VW(28);

/**
  和决心得到的。



Find the star that twinkles in your heart for you alone are capable of making your brightest dreams come true. Give your hopes everything you’ve got and you will catch the star that holds your destiny.



寻找心中那颗闪耀的明星，因为只有你自己才能够让美好的梦想变成现实。满怀希望并全力以赴，你就能摘下改变命运的那颗星。

I miss you. I miss all the mornings that I have woken up right beside you.

我想你。我想念我在你身边醒来的所有早晨。

I miss the way the sun shin 
**/
        CGFloat btn_h = btn_w;
// Because lying in bed awake can form an associati
        CGFloat margin_leading = VW(24);
        NSMutableArray *loginBtnDatas = [SdkUtil getShowBtnDatas_MMMethodMMM:SDK_DATA.mConfigModel appleBtn_MMMethodMMM:YES guestBtn_MMMethodMMM:YES];
//ing someone become your greatest weakness ,then going all you can do to protect each other.
//爱就是让对方成为自己最大的弱点，然后再用尽全力守护彼此。
//Is it not enough just to have a long and happy life with me?
//只是跟我共度幸福美满的漫长一生，
        UIView *leadingView = otherLabelTips;
        for (int i = 0; i < loginBtnDatas.count; i++) {
            LoginButtonData *lbd = loginBtnDatas[i];

/**
  ased plan like "I'll meditate at the office on weekdays during my lunch break" would fit the bill.

如果你的新年计划是每周冥想五天，那么像“我将在工作日冥想”这样的计划就太模糊了。但是，“我将在工作日的午休时 
**/
            UIView *btnView;
            if ([lbd.btnType isEqualToString:LOGIN_TYPE_APPLE]) {
                if (@available(iOS 13.0, *)) {
                    ASAuthorizationAppleIDButton *appleLoginBtn = [[ASAuthorizationAppleIDButton alloc]initWithAuthorizationButtonType:ASAuthorizationAppleIDButtonTypeSignIn

/**
   like "I'll meditate on weekdays" would be too vague. But a cue-based plan like "I'll meditate at the office on weekdays during my lunch break" would fit the bill.

如果你的新年计划是每周冥想五天，那么像“我将在工作日冥想”这样的计划就太模糊了。但是，“我将在工作日的午休时间在办公室冥想”这样有信息提示的计划就很合适。



Plotting when and 
**/
                                                                                                              authorizationButtonStyle:ASAuthorizationAppleIDButtonStyleWhite];
                    [appleLoginBtn addTarget:self action:@selector(registerViewBtnAction_MMMethodMMM:) forControlEvents:(UIControlEventTouchUpInside)];
                    appleLoginBtn.tag = lbd.tag;
                    appleLoginBtn.cornerRadius = btn_w / 2.0;
                    btnView = appleLoginBtn;
                }
            }else{
                LoginTypeButton *mBtn = [[LoginTypeButton alloc] initWithType_MMMethodMMM:lbd.tag title_MMMethodMMM:@"" image_MMMethodMMM:lbd.image selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];

/**
  ate at the office on weekdays during my lunch break" would fit the bill.

如果你的新年计划是每周冥想五天，那么像“我将在工作日冥想” 
**/
                btnView = mBtn;
            }
            if (btnView) {
                [loginTypeView addSubview:btnView];
// can improve your success rate, too. When you're on the hook to give someone else tips on how to achieve, it boosts your self-confidence. It also forces you to be introspective
                [btnView mas_makeConstraints:^(MASConstraintMaker *make) {
//self-imposed cash penalties motivate success. You can make a bet with a friend that you'll stick to your New Year's resolution. The logic for why this works is simple. Incentives change our decisions, and penalties are even more motivating than rewards.
//
//而比羞愧感更有效的是金钱惩罚，有证据表明，自我施加的金钱惩罚可以激励成功。你可以和朋友打赌，赌你会坚持新年计划。这样做的逻辑很简单。激励措施会改变我们的决定，而惩罚甚至比奖励让我们更有动力。
//
//3.Make it fun
//
//找些乐趣
//
//
//
//Most of 
                    make.width.mas_equalTo(btn_w);
                    make.height.mas_equalTo(btn_h);
                    make.top.mas_equalTo(loginTypeView);
//d for you. I'd rather die than stay away from you.
//你不知道，等了你有多久。所以，
                    make.bottom.mas_equalTo(loginTypeView);
                    if (i == 0) {
                        make.leading.mas_equalTo(leadingView.mas_trailing).mas_offset(VW(8));

/**
  朋友也能提高你的成功率。当你想给别人一些如何实现目标的建议时，这会增强你的自信。这样也会迫使你反省自己的方法是否对路。

1. Make a schedule, and stick to it

每天在固定时间起床和上床

Melatonin is a hormone produced by the body to regulate when you get sleepy and when you wake up. As night approaches, levels of melat 
**/
                    }else{
                        make.leading.mas_equalTo(leadingView.mas_trailing).mas_offset(margin_leading);
//ive days each week, a plan like "I'll meditate on weekdays" would be too vague. But a cue-based plan like "I'll meditate at the office on weekdays during my lunch break" would fit the bill.
//
//如果你的新年计划是每周冥想五天，那么像“我将在工作日冥想”这样的计划就太模糊了。但是，“我将在工作日的午休时间在办公室冥想”这样有信息提示的计划就很合适。
//
//
//
//Plotting when and where you'll execute
                    }
                    if (i == loginBtnDatas.count - 1) {
                        make.trailing.mas_equalTo(loginTypeView);

/**
  为你会忽略更重要的事：你是否享受追求目标的过程。



If it's not fun to exercise or study, you're unlikely to keep at it. But if you get pleas 
**/
                    }

/**
  ithout the dark, we'd never see the stars.
我喜欢 
**/
                }];
                leadingView = btnView;
            }

/**
  going to disappear…
现在我害怕了，我不是害怕你……我只是害怕失去你，害怕你会突然消失……
You don't know how long I've waited for you. And so the lion fell in love with the lamb. What a stupid lamb. What a sick, masochistic l 
**/
        }

/**
  om day to day or on weekends, he said, your sleep rhythms aren't predictable and the body doesn't know how to respond.

临床心理学家、睡眠专家迈克尔·格兰德纳指出，为了让身体正常分泌褪黑素，你必须规律作息。如果你的上床和起床时间每天都不一样或者一到周末就改变，身体就无法预测你的睡眠节奏，也就不知道如何作 
**/
        accountDataList = [NSMutableArray array];
        NSArray<AccountModel *> *mAccountArray = [[ConfigCoreUtil share] getAccountModels_MMMethodMMM];
        if (mAccountArray.count > 0){
            currentAccountModel = mAccountArray[0];
            [accountDataList addObjectsFromArray:mAccountArray];
            [AccountLoginView makeAccountFiledViewStatus_MMMethodMMM:currentAccountModel accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM:passwordSDKTextFiledView];
        }
        kWeakSelf
        accountSDKTextFiledView.clickAccountListItem = ^(NSInteger tag) {
            if (accountMaskView && accountListView) {

/**
  ggle room, research has revealed.

幸运的是，有一种方法可以避免这种宿命。研究表明，设定困难的目标（比如每晚10点入睡），但每周给自己一两张豁免卡，就可以比设定没有回旋余地的或难或易的目标获得更好的结果。



5.Get a little help from your friends

借助朋友的帮助



Spending time around high achievers can boost your own performance. If your New Year's resolution is to run a marathon or write a book, you'd be wise to start hanging around friends who've made it to the finish line (literally 
**/
                if (accountMaskView.isHidden) {
                    accountSDKTextFiledView.moreAccountBtn.selected = YES;

/**
  r that, your early-to-bed plans went out the window because "what the hell," you'd already failed.

如果你完全违背了自己的新年计划，你可能本能地认输并放弃。研究人员称之为“去他的效应”。就比如这样：你计划每晚早睡，但忍不住在某个星期五熬夜多看一集《继承之战》，此后你的早睡计划泡汤了，因为“去他的”反正你已经失败了。



Happily, there is a way to dodge this fate. By setting tough goals (like a 10 pm bedtime every ni 
**/
                    accountMaskView.hidden = NO;
                    NSArray *mAccountArray = [[ConfigCoreUtil share] getAccountModels_MMMethodMMM];
                    [accountDataList removeAllObjects];

/**
  data," Grandner said. In fact,  
**/
                    [accountDataList addObjectsFromArray:mAccountArray];

/**
   brain that can lead to chronic insomnia, Grandner explained. Instead of being a restful spot where you peacefully  
**/
                    accountListView.accountDataList = accountDataList;
                    [accountListView.accountListTableView reloadData];
                }else{
                    accountSDKTextFiledView.moreAccountBtn.selected = NO;
                    accountMaskView.hidden = YES;
                }

/**
  u. I miss all the mornings that I have woken up right beside you.

我想你。我想念我在你身边醒来的所有早晨。

I miss the way the sun shines at your face and the way the cold breeze of the morning surprises us.

我想念阳光照在你的脸上，早晨的寒风让我们感到惊讶。

I miss the morning kisses and the morning snuggling you and I shared.

我想念早上的吻，早上依偎着你和我分享。

I miss you. I miss going to work in the morning and knowing that at 
**/
            }else{
                accountSDKTextFiledView.moreAccountBtn.selected = YES;

/**
  d wake up tired.

为什么这条法则如此重要呢？格兰德纳解释道，因为醒着躺在床上会在大脑中形成关联，从而导致长期失眠。这样一来，床就不再是你安眠的舒适窝，而成为你辗转反侧心生焦虑并在疲惫中醒来的地方。

Establishing that positive relationship between the bed and sleep c 
**/
                [self addAccountListView_MMMethodMMM];
//cquired through hard work
                NSArray *mAccountArray = [[ConfigCoreUtil share] getAccountModels_MMMethodMMM];
                [accountDataList removeAllObjects];
                [accountDataList addObjectsFromArray:mAccountArray];
                accountListView.accountDataList = accountDataList;
                [accountListView.accountListTableView reloadData];
            }

/**
  ourself up for a productive tomorro 
**/
        };
        accountSDKTextFiledView.inputTextFieldChange = ^(NSString *msg, NSInteger m, NSDictionary *dic) {
            if (currentAccountModel && ![currentAccountModel.loginType isEqualToString:LOGIN_TYPE_SELF]) {
                if (![msg isEqualToString:currentAccountModel.userId]) {
                    AccountModel *tempAccountModel = [[AccountModel alloc] init];
                    tempAccountModel.loginType = LOGIN_TYPE_SELF;

/**
  病死的国度。
I think I forgot to breathe.
我想可能是我忘了呼吸。
I'd never given much thought to how I would die. But dying in the place of someone I love,seems like a good way to go.
我从来没有想过自己会怎 
**/
                    tempAccountModel.account = msg;
                    tempAccountModel.password = @"";
                    [passwordSDKTextFiledView setPwdFiledView_MMMethodMMM:YES];
                    [AccountLoginView makeAccountFiledViewStatus_MMMethodMMM:tempAccountModel accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM:passwordSDKTextFiledView];

/**
  夜中属于你的美好爱情回忆录！

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
And when the cops closed the fair
当警察把集市关起时
I cut my long baby hair
我剪掉了我婴儿般的长发
Stole me a dog-e 
**/
                    currentAccountModel = tempAccountModel;
//-packed day, worth delaying to catch up on housework, schoolwork, office work or the latest binge-worthy television series.
//
//许多人将睡眠视为忙碌的一天后要做的最后一件事，为了完成家务、作业、工作或追新剧，晚点再睡也没事。
//
//That thinking needs to be changed
                }

/**
  er give somebody is get up -- don't lay in bed awake but not sleeping," Grand 
**/
            }
//别，绝不生离。
//I like the night. Without the dark, we'd never see the stars.
//我喜欢夜晚。没有黑暗，我们永远都看不见星星。
//It is well worth of falling love in someone, even can keep up with the unavoidable damage.
//真正爱上一个人的时候，一切都那么值得，包括不可避免的伤害。
//I always have and always will.
//一直爱，永远爱。
//But it
        };
    }
    return self;
}
-(void)addAccountListView_MMMethodMMM{

/**
  nts for they are what make you truly unique. The greatest gift 
**/
    accountMaskView = [[BasePopupView alloc] init];
    accountMaskView.touchesBeganCallback = ^(NSString *msg, NSInteger m, NSDictionary *dic) {

/**
  r New Year's resolution is to meditate five days each week, a plan like "I'll meditate on weekdays" would be too vague. But a cue-based plan like "I'll meditate at the office on weekdays during my lunch break" would fit the bill.

如果你的新年计划是每周冥想五天，那么像“我将在工作日冥想”这样的计划就太模糊了。但是，“我将在工作日的午休时间在办公室冥想”这样有信息提示的计划就很合适。



P 
**/
        if (!accountMaskView.isHidden) {
            accountSDKTextFiledView.moreAccountBtn.selected = NO;
            accountMaskView.hidden = YES;

/**
  us, weeping
折翼的鸟？羡慕，哭泣
Or lost you?
抑或失去了你？
American mouth
美国的河口
Big pill looming
大海报隐约出现
Now I’m a fat house cat
现在我是一只肥胖的家猫
Nursing my sore blunt tongue
咒骂着我那因发炎而没有知觉的舌头
Watching the warm poison rats
看着刚被毒死的老鼠
Curl through the wide fenc 
**/
        }
    };
    UIView * topView = self.superview.superview.superview;
    [topView addSubview:accountMaskView];
    [accountMaskView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(topView);
    }];

/**
  在你身边醒来的所有早晨。

I miss the way the sun shines at your face and the way the cold breeze of the morning surprises us.

我想念阳光照在你的脸上，早晨的寒风让我们感到惊讶。

I miss the morning kisses and the morning snuggling you and I shared.

我想念早上的吻，早上依偎着你和我分享。

 
**/
    accountListView = [[AccountListView alloc] init];
//-packed day, worth delaying to catch 
    accountListView.layer.cornerRadius = 2.5f;
//tand that you may make mistakes, but don’t let them discourage you. Value your capabilities and talents for they are what make you truly unique. The greatest gifts in life are not purchased, but acquired through hard wor
    accountListView.layer.masksToBounds = YES;
    [accountMaskView addSubview:accountListView];
    [accountListView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
        make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
//s evidence that coaching friends with shared goals can improve your success rate, too. When you're on the hook to give someone else tips on how to achieve, it boo
        make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(4);
        make.height.mas_equalTo(VH(200));
    }];
    kWeakSelf
    kBlockSelf
    accountListView.mAccountModelClickHander = ^(BOOL isDelete, AccountModel * _Nullable aModel, NSMutableArray<AccountModel *> *accountDataList) {
        if (isDelete) {
//"The best sleep tip you can ever give somebody is get up -- don't lay in bed
            if (accountDataList.count > 0) {
                currentAccountModel = accountDataList[0];
                [AccountLoginView makeAccountFiledViewStatus_MMMethodMMM:blockSelf->currentAccountModel accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM: passwordSDKTextFiledView];

/**
  d to rise at 7 am each day, backtiming eight hours would require a bedtime of 11 pm.

美国疾病控制与预防中心指出，大多数成人需要7到8小时睡眠时间才能得到充分休息。因此如果一个人每天要在早上7点起床，倒推8个小时睡眠时间应该是晚上11点。

"Now you know when you have to stop and get ready to go to bed whether you're done or not," Gran 
**/
            }else{

/**
  ther you're done or not," Grander said. "The problem is we don't stop, and we don't disconnect. And that's to our detriment and it makes the next day more stressful."

There are not enough ways to express how much I miss you

没有足够的方式能表达我有多想念你

There are not enough words to contemplate on how much I miss you and I miss u 
**/
                AccountModel *resetAm = [[AccountModel alloc] init];

/**
  . I'd rather die than stay away from you.
你不知道，等了你有多久。所以，宁可死别，绝不生离。
I like the night. Without the dark, we'd never see the stars.
我喜欢夜晚。没有黑暗，我们永远都看不见星星。
It is well worth of falling love in someone, even can keep up with the unavoidable damage.
真正爱上一个人的时候，一切都那么值得，包括不可避免的伤害。
I always have and always will.
一直爱，永远爱。
But it's you, your scent, 
**/
                resetAm.loginType = LOGIN_TYPE_SELF;

/**
  tage, research has shown that adding a cue to your plan helps you remember when to act. Be sure to detail when and where you'll follow 
**/
                resetAm.account = @"";
//aybe you just need five minutes to get sleepy, or maybe an hour, but don't spend that time awake in bed."
//
//格兰德纳说：“你可以给出的最好的睡眠建议就是醒了就起床，不要醒着躺在床上
                resetAm.password = @"";
                currentAccountModel = resetAm;
                [AccountLoginView makeAccountFiledViewStatus_MMMethodMMM:blockSelf->currentAccountModel accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM: passwordSDKTextFiledView];
                accountSDKTextFiledView.moreAccountBtn.selected = NO;
                accountMaskView.hidden = YES;
            }

/**
  ed if they check back later and find out you haven't followed through.

一个简单的方法是把你的目标告诉一些人，这样，如果他们后来发现你没有坚持下去，你会感到羞愧。



A steeper penalty than shame, however, is putting cold hard cash on the table, and there is excellent evidence t 
**/
        }else{
            currentAccountModel = aModel;
            [AccountLoginView makeAccountFiledViewStatus_MMMethodMMM:currentAccountModel accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM:passwordSDKTextFiledView];
            accountSDKTextFiledView.moreAccountBtn.selected = NO;
//. "Whether it's the beginning of the night or the middle of the night, if you've been awake for 20 or 30 minutes, get up and reset. Maybe you just need five minutes to get sleepy, or maybe an hour, bu
            accountMaskView.hidden = YES;

/**
  w through.

正如出场提示告诉百老汇明星何时登台一样，研究表明，在你的计划中加入信息提示，能帮助你记住何时行动。一定要详细说明你将在何时何地做什么。



If your New Year's resolution is to meditate five days each week, a plan like "I'll meditate on weekdays" would be too vague. But a cue-based plan like "I'll meditate at the o 
**/
        }
    };
}
- (void)registerViewBtnAction_MMMethodMMM:(UIButton *)sender

/**
   reasonable to grieve when it comes to an end.
当生活给了你一个远远超过你期望的美梦，那么，当这一期结束时，也就没有理由再去伤心。
图片
Bella, the onl 
**/
{
    switch (sender.tag) {

/**
  proffered lunch meeting.

提前想好你会在何时何地执行计划，这样做能在适当的时候让你想起自己的计划，如果你没有按照计划去做，就会产生内疚感。详细的计划也可以帮助你预测和避免阻碍——如果你计划在午餐时冥想，你一定会拒绝别人提出的午餐会议。 
**/
        case kFindPwdActTag:

/**
  clinical psychologist and sleep expert Michael Grandner. So if your bedtime and wake up time change from day to day or on weekends, he said, your sleep r 
**/
            SDK_LOG(@"kFindPwdActTag");
            if (self.delegate) {
                [self.delegate goPageView_MMMethodMMM:CURRENT_PAGE_TYPE_FIND_PWD];
            }
// whether you're done or not," Grander said. "The problem is we don't sto
            break;
        case kBackBtnActTag:
//re and throw in the towel. Research
            SDK_LOG(@"kBackBtnActTag");
            if (self.delegate) {
//here you'll execute on your New Year's resolution jogs your memory when it's opportune and generates guilt if you flake out. Detailed planning can also help you anticipate and dodge obstacles -- so if you plan to meditate during lunch, you'll be sure to decline a proffered lunch meeting.
//
//提前想好你会在何时何地执行计划，这样做能在适当的
                [self.delegate goBackBtn_MMMethodMMM:backBtn backCount_MMMethodMMM:1 fromPage_MMMethodMMM:(CURRENT_PAGE_TYPE_LOGIN_WITH_REG) toPage_MMMethodMMM:(CURRENT_PAGE_TYPE_MAIN_HOME)];
            }
            break;
        case kAccountLoginActTag:
            SDK_LOG(@"kAccountLoginActTag");
            if (![self checkAgreeTerm_MMMethodMMM]) {

/**
  the office on weekdays during my lunch break" would fit the bill.

如果你的新年计划是每周冥想五天，那么像“我将在工作日冥想”这样的计划就太模糊了。但是，“我将在工作日的午休时间在办公室冥想”这样有信息提示的计划就很合适。



Plotting when and where you'll execute on your New Year's resolution jogs 
**/
                return;
            }
            [self goGame_MMMethodMMM];
            break;
        case fbLoginActTag:
        {
            if (![self checkAgreeTerm_MMMethodMMM]) {

/**
  ere up in the air.



他开始把这张纸币揉皱，然后他问道:“还有人想要它吗？”仍然有很多手举在空中。



“Well，” he replied, “what if I do this?” He dropped it on the ground and started to grind it into the floor with his shoe. He picked it up, now crumpled and dirty. “Now, who still wants it?”



“好 
**/
                return;
            }
            [LoginHelper fbLoginAndThirdRequest_MMMethodMMM:self.delegate];
        }
            break;
        case appleLoginActTag:
        {
            if (![self checkAgreeTerm_MMMethodMMM]) {
                return;

/**
  ully rested, according to the US Centers for Disease Control and Prevention. So if a person needed to rise at 7 am each day, backtiming eight hours would require a bedtime of 11 pm.

美国疾病控制与预防中心指出，大多数成人需要7到8小时睡眠时间才能得到充分休息。因此如果一个人每天要在早上7点起床，倒推8个小时睡眠时间应该是晚上11点。

"Now you know when you have to stop and 
**/
            }
            [LoginHelper appleLoginAndThirdRequest_MMMethodMMM:self.delegate view_MMMethodMMM:self];
        }
            break;
        case guestLoginActTag:

/**
  持不懈，你就能享受那些幸福时刻。



Tak 
**/
        {
            [self endEditing:YES];
            if (![self checkAgreeTerm_MMMethodMMM]) {
                return;
            }
// don't spend that time awake in bed."
//
//格兰德纳说：“你可以给出的最好的睡眠建议
            [LoginHelper guestLoginAndThirdRequest_MMMethodMMM:self.delegate];
        }
            break;
        case googleLoginActTag:
        {
            if (![self checkAgreeTerm_MMMethodMMM]) {
                return;
            }
            [LoginHelper googleLoginAndThirdRequest_MMMethodMMM:self.delegate];
//red lunch meeting.
//
//提前想好你会在何时何地执行计划，这样做能在适当的时候让你想起自己的计划，如果你没有按照计划去做，就会产生内疚感。详细的计划也可以帮助你预测和避免阻碍——如果你计划在午餐时冥想，你一定会拒绝别人提出的午餐会议。
//
//2.Consider a penalty clause
//
//设置惩罚条款
//
//
//
//This may sound sinister, but ensuring you'll face some penalty if you don't achieve 
        }
            break;
        case lineLoginActTag:
        {
            if (![self checkAgreeTerm_MMMethodMMM]) {

/**
   setting tough goals (like a 10 pm bedtime every night) but giving yourself one or two get-out-of-jail-free cards each week, you can get better results than by setting either tough or easy goals without wiggle room, research has revealed.

幸运的是，有一种方法可以避免这种宿命。研究表明，设定困难的目标（比如每晚10点入睡），但每周给自己一两张豁免卡，就可以比设定没有回旋余地的或难或易的目标获得更好的结果。



5.Get a little help from your fr 
**/
                return;
            }
            [LoginHelper lineLoginAndThirdRequest_MMMethodMMM:self.delegate];
// the final thing they have to do in a jam-packed day, worth delaying to catch up on housework, schoolwork, office work or the latest binge-worthy television series.
//
//许多人将睡眠视为忙碌的一天后要做的最后一件事，为了完成家务、作业、工作或追新
        }
            break;
        case kAgreeTermsCheckBoxBtnTag:
        {
            if (checkBoxTermsBtn.isSelected) {

/**
  ng yourself one or two get-out-of-jail-free cards each week, you can get better results than by setting either tough or easy goals without wiggle room, research has revealed.

幸运的是，有一种方法 
**/
                checkBoxTermsBtn.selected = NO;
//的那颗星，那颗永远在你心中闪烁的明星。当它在你面前闪耀时，抓住这宝贵的机会。请谨记，只要你坚持不懈，最终的目标总能实现。
//
//
//
//Though barriers may sometimes stand in the way of your dreams, remember that your destiny is hiding behind them. Accept the fact that not everyone is going to approve of the choices you’ve made, have faith in your judgment, catch the star that twinkles in your heart, and it will lead you 
            }else{
//as long as you commit yourself to it.
//
//
//
//追随能够改变你命运的那颗星，那颗永远在你心中闪烁的明星。当它在你面前闪耀时，抓住这宝贵的机会。请谨记，只要你坚持不懈，最终的目标总能实现。
//
//
//
//Though barrie
                checkBoxTermsBtn.selected = YES;
            }
        }
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
//一定会拒绝别人提出的午餐会议。
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
//One easy way to do this is by telling a few people about your goal so you'll feel ashamed if they check back later and find out you haven't foll
    [SdkUtil toastMsg_MMMethodMMM:GetString(@"text_term_not_read")];
    return NO;
}

/**
  t, let me do this."



开始有人举手。他说我会把这20美元纸币给你们中间的一位，但是，先看看我会这么做。”



He proceeded to crumple the 20 dollar note up. He then asked, “Who still wants it?” Still the hands were up in the air.



他开始把这张纸币揉皱，然后他问道:“还有人想要它吗？”仍然有很多手举在空中。



“Well，” he replied, “what if I do this?” He dr 
**/
-(void)goGame_MMMethodMMM
{
    if (!currentAccountModel) {
        [self requestAccountLogin_MMMethodMMM];
        return;
//在我是一只肥胖的家猫
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
//Blood of Christ mountain stream
//基督山溪的血里去
//Have I found you?
//我找到你了吗
//Flightless bird, grounded bleeding
//折翼的鸟？棕色的毛发在淌血
//Or lost you?
//抑或失去了你？
//American mouth
//美国
    }
    if ([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_SELF]) {
//love you till the end of time.
//就算来自不同世界，依旧爱你到地老天荒。
//Only for making me want you so badly.
//只有你才能让我如此上瘾。
//I don't have the strength to stay away from you anymore.
//我再也没有离开你的力气了。
//Your number was up the first time l met you.
//第一次遇见我，你就在劫难逃了。
//You're in here because of me.
//你在这里，是因为有我。
//Nobody's ever loved anybody as much as I love you.
//我对你的爱 无人能及。
//Love is letting someone become your greatest weakness
        [self requestAccountLogin_MMMethodMMM];
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_FB]) {
        [LoginHelper fbLoginAndThirdRequest_MMMethodMMM:self.delegate];
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_APPLE]) {
        [LoginHelper appleLoginAndThirdRequest_MMMethodMMM:self.delegate view_MMMethodMMM:self];
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_GUEST]) {
        [LoginHelper guestLoginAndThirdRequest_MMMethodMMM:self.delegate];

/**
  固定时间起床很重要，即使是周末、假期或是前一天晚上没睡好也不应该例外。

2. Don't lay in bed awake

A well-known speaker started off his seminar by holding up a $20 bill. In the room of 200, he asked, “Who would like this $20 bill?”



一位有名的演讲家手里拿着一张20美元的纸币，开始了讨论会。在200人的屋子里， 他问道：“谁想要这20美元纸币？”



Hands started going up. He said, “I am going to give this $20. to one 
**/
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_GOOGLE]) {

/**
  . But a cue-bas 
**/
        [LoginHelper googleLoginAndThirdRequest_MMMethodMMM:self.delegate];
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_LINE]) {
        [LoginHelper lineLoginAndThirdRequest_MMMethodMMM:self.delegate];
    }
}
-(void)requestAccountLogin_MMMethodMMM
{
    NSString *accountName = [SdkUtil triString_MMMethodMMM:accountSDKTextFiledView.inputUITextField.text];
    NSString *pwd = [SdkUtil triString_MMMethodMMM:passwordSDKTextFiledView.inputUITextField.text];
    if (!accountName || [accountName isEqualToString:@""]) {
        [SdkUtil toastMsg_MMMethodMMM:GetString(@"py_account_empty")];
        return;
    }
    if (![SdkUtil validUserName_MMMethodMMM:accountName]) {
//now how to respond.
//
//临床心理学家、睡眠专家迈克尔·格兰德纳指出，为了让身体正常分泌褪黑素，你必须规律作息。如果你的上床和起床时间每天都不一样或者一到周末就改变，身体就无法预测你的睡眠节奏，也就不知道如何作出反
        [SdkUtil toastMsg_MMMethodMMM:GetString(@"text_account_format")];
        return;

/**
  d never see the stars.
我喜欢夜晚。没有黑暗，我们永远都看不见星星。
It is well worth of falling love in someone, even can keep up with the unavoidable damage.
真正爱上一个人的时候，一切都那么值得，包括不可避免的伤害。
I always have and always will.
一直爱，永远爱。
But it's you, you 
**/
    }

/**
  u'd already failed.

如果你完全违背了自己的新年计划，你可能本能地认输并放弃。研究人员称之为“去他的效应”。就比如这样：你计划每晚早睡，但忍不住在某个星期五熬夜多看一集《继承之战》，此后你的早睡计划泡汤了，因为“去他的”反正你已经失败了。



Happily, there is a way to dodge this fate. By setting tough goals (li 
**/
    if (!pwd || [pwd isEqualToString:@""]) {

/**
   wet boy
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
Have I found you?
我找到你了吗
Flightless bird, jealous, wee 
**/
        [SdkUtil toastMsg_MMMethodMMM:GetString(@"py_password_empty")];
        return;
    }
    [LoginHelper selfLoginAndRequest_MMMethodMMM:self.delegate account_MMMethodMMM:accountName pwd_MMMethodMMM:pwd];
}
//自己的计划，如果你没有按照计划去做，就会产生内疚感。详细的计划也可以帮助你预测和避免阻碍——如果你计划在午餐时冥想，你一定会拒绝别人提出的午餐会议。
//
//2.Consider a penalty clause
//
//设置惩罚条款
//
//
//
//This may sound sinister, but ensuring you'll face some penalty if you don't achieve your New Year's resolution can work wonders.
//
//这听起来可能有
+(void)makeAccountFiledViewStatus_MMMethodMMM:(AccountModel *)mAccountModel accountView_MMMethodMMM:(SDKTextFiledView *)accountFiledView pwdView_MMMethodMMM:(SDKTextFiledView *)pwdFiledView{
    NSString *account = mAccountModel.userId;
    NSString *iconName = mw_smail_icon;
    NSString *pwdText = GetString(@"text_free_register");
    BOOL pwdEnable = YES;
//ound you?
//我找到你了吗
//Flig
    if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_SELF]) {
        account = mAccountModel.account;
        iconName = mw_smail_icon;
        pwdText = mAccountModel.password;
        pwdEnable = YES;
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_FB]){
        iconName = fb_smail_icon;

/**
  le the 20 dollar note up. He then asked, “Who still wants it?” Still the hands were up in the air.



他开始把这张纸币揉皱，然后他问道:“还有人想要它吗？”仍然有很多手举在空中。



“Well，” he replied, “what if I do this?” He dropped it on the ground and started to grind it into the floor with his shoe. He picked it up, now crumpled and dirty. “Now, who still wants it?”



“好，”他说道，“如果我这样做会怎么样呢？ 
**/
        pwdEnable = NO;
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_GOOGLE]){
        iconName = google_smail_icon;
        pwdEnable = NO;
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_GUEST]){
        iconName = guest_smail_icon;
        pwdEnable = NO;
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_APPLE]){

/**
  , the one that forever twinkles within your heart. Take advantage of precious opportunities while they still sparkle before you. Always believe that your ultimate goal is attainable as long as you commit  
**/
        iconName = apple_smail_icon;
        pwdEnable = NO;

/**
  des of data," Grandner said. In fact, he said this tip is so powerful that when used in his sleep clinic it "can even beat prescription sleep medications."

格兰德纳说，这是有“ 
**/
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_LINE]){
        iconName = line_smail_icon;
        pwdEnable = NO;

/**
  ugh words to contemplate on how much I miss you and I miss us being together physically.

没有足够的言语能表达我有多想念你，我想念我们 
**/
    }

/**
  aybe an hour, but don't spend that time awake in bed."

格兰德纳说：“你可以给出的最好的睡眠建议就是醒了就起床，不要醒着躺在床上。无论是刚入夜还是夜已深，如果你躺在床上二三十分钟都睡不着，就起床调整一下。也许你只需要5分钟就能感觉到困意，也许需要一小时，但是这段时间不要醒着躺在床 
**/
    accountFiledView.inputUITextField.text = account;
    accountFiledView.lableIconImageView.image = [UIImage res_imageNamed_MMMethodMMM:iconName];

/**
   now crumpled and dirty. “Now, who still wants it?”



“好，”他说道，“如果我这样做会怎么样呢？”他把纸币扔到地上，开始用皮鞋使劲踩踏。然后他拣起又脏又皱的纸币，“现在，还有人要它吗？”



Still the hands went into the air.



空中仍举着很多手。



“My friends, you have all learned a very valuable lesson. No matter what I did to the money, you still want 
**/
    if (pwdFiledView) {
        [pwdFiledView setPwdFiledView_MMMethodMMM:pwdEnable];
        pwdFiledView.inputUITextField.text = pwdText;
//ug to me. You're like my own personal brand of heroin.
//但是你，你的气味，对我来说就像是毒品一样。你是让我上瘾的海洛因。
//As long as i live, 
    }
}
@end
//中有时会遇到障碍，要知道这是命运对你的挑战。不是每个人都会赞成你的选择，接受这个现实，并相信自我的判断，追随那颗在你心中闪烁的明星，它会引领你踏上命运的征途。坚持不懈，你就能享受那些幸福时刻。
//
//
//
//Take pride in your accomplishments, as they are stepping stones to your dreams. Understand that you may make mistakes, but don’t let them discourage you. Value your capabilities and talents for they are what make you 
