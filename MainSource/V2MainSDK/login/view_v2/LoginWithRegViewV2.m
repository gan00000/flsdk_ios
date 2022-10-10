
#import "LoginWithRegViewV2.h"

/**
   not everyone is going to  
**/
@interface LoginWithRegViewV2()

/**
  re is a way to dodge this fate. By setting tough goals (like a 10 pm bedtime every night) but giving yourself one or two get-out-of-jail-free cards each week, you can get better results than by setting either tough or easy goals without wiggle  
**/
@end

/**
  where your schedule has to be erratic due to w 
**/
@implementation LoginWithRegViewV2
{

/**
  till don't know if I can control myself.
就是因为发觉自己多么渴望想得到你，我到现在还不知道是否控制得了自己。
When life offers you a dream so far beyond any of your expectations, it’s not reasonable to grieve when it comes to an end.
当生活给了你一个远远超过你期望的美梦，那么，当这一期结束时，也就没 
**/
    UIButton *loginTabBtn;
    UIButton *regTabBtn;
    NSUInteger currentClickTab;
//运的征途。坚持不懈，你就能享受那些幸福时刻。
//
//
//
//Take pride in your accomplishments, as they are stepping stones to your dreams. Understand that you may make mistakes, but don’t let them discourage you. Value your capabilities and talents for they 
    UIView *loginBottomLine;

/**
  in what we do or who we know, but by Who We Are.”



“无论你肮脏或者干净,皱巴巴的或者被折磨，对周围爱你的人来说你仍然是无可替代的。我们生活的价值不在于我们做了什么，或者我们认识谁，生活的价值在于我们是谁。”



“You are special ——don't ever forget it.”



“你是与众不同的，永远不要忘记这一点!”

不要醒着躺在床上

It's a golden rule in sleep medicine, backed by "decades of data," Grandner said. In fact, he said this tip is  
**/
    UIView *regBottomLine;

/**
  It's a golden rule in sleep medicine, backed by "decades of data," Grandner said. In fact, he said this tip is so powerful that when used in his sleep clinic it "can even beat prescription sleep medications."

格兰德纳说，这是有“数十年数据”支持的一条睡眠医学黄金法则。事实上，这条法则在他的睡眠诊所中“甚至比处方药还管用”。

"The best sleep tip you can ever give somebody is get up -- don't lay in bed awake but not sleeping," Grandner said. " 
**/
    UIButton *backBtn;
// your destiny is hiding behind them. Accept the fact that not everyone is going to approve of 
}
- (instancetype)initView_MMMethodMMM

/**
  help overcome your racing mind and allow you to fall asleep."

他说：“比如说你需要提早上床睡觉。床将能帮助你安抚纷繁的思绪，让你酣然入睡。”

3. Change your attitude about sleep

改变 
**/
{
//ive your hopes everything you’ve got and you will catch the star that holds yo
    self = [super init];
    if (self) {
        currentClickTab = 1;
        [self addView_MMMethodMMM];
    }
    return self;
}
-(void)addView_MMMethodMMM
{
    UIView *tabView = [[UIView alloc] init];
    [self addSubview:tabView];
    [tabView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(self);
        make.top.mas_equalTo(VH(MARGIN_TOP));

/**
   the morning surprises us.

我想念阳光照在你的脸上，早晨的寒风让我们感到惊讶。

I miss the morning kisses and the morning snuggling you and I shared.

我想念早上的吻，早上依偎着你和我分享。

I miss you. I miss going to work in the m 
**/
    }];
    loginTabBtn = [UIUtil initBtnWithTitleText_MMMethodMMM:@"text_login".localx fontSize_MMMethodMMM:FS(24) textColor_MMMethodMMM:UIColor.whiteColor tag_MMMethodMMM:kLoginTabActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
    [loginTabBtn setTitleColor:[UIColor colorWithHexString_MMMethodMMM:BaseColor] forState:UIControlStateSelected];
    [tabView addSubview:loginTabBtn];

/**
  候，一切都那么值得，包括不可避免的伤害。
I always have and always will.
一直爱，永远爱。
But it's you, your scent, it's like a drug to me. You're like my own personal brand of heroin.
但是你，你的气味，对我来说就像是毒品一样。你是让我上瘾的海洛因。
As long as i live, my feeling for you will never fade.
我对你的爱，至死不渝。
No 
**/
    [loginTabBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.mas_equalTo(tabView);
        make.leading.mas_equalTo(tabView);
        make.centerX.mas_equalTo(self.mas_leading).mas_offset(VW(100+16));
    }];
    regTabBtn = [UIUtil initBtnWithTitleText_MMMethodMMM:@"text_register".localx fontSize_MMMethodMMM:FS(24) textColor_MMMethodMMM:UIColor.whiteColor tag_MMMethodMMM:kRegTabActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];

/**
  活给了你一个远远超过你期望的美梦，那么，当这一期结束时，也就没有理由再去伤心。
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
I'd never given much thought to how I  
**/
    [regTabBtn setTitleColor:[UIColor colorWithHexString_MMMethodMMM:BaseColor] forState:UIControlStateSelected];
    [tabView addSubview:regTabBtn];
    [regTabBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.mas_equalTo(tabView);
        make.trailing.mas_equalTo(tabView);

/**
  ss to those who love you. The worth of our lives comes, not in what we do or who we know, but by Who We Are.”



“无论你肮脏或者干净,皱巴巴的或者被折磨，对周围爱你的人来说你仍然是无可替代的。我们生活的价值不在于我们做了什么，或者我们认识谁，生活的价值在于我们是谁。”



“You are special ——don't ever forget it.”



“你是与众不同的，永远不要忘记这一点! 
**/
        make.centerX.mas_equalTo(self.mas_trailing).mas_offset(-VW(100+16));
    }];
//e money, you still wanted it because it did not decrease in v
    loginBottomLine = [[UIView alloc] init];
    loginBottomLine.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor];
    [tabView addSubview:loginBottomLine];
    [loginBottomLine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.trailing.mas_equalTo(loginTabBtn);
        make.top.mas_equalTo(loginTabBtn.mas_bottom).mas_offset(3);
        make.height.mas_equalTo(2);

/**
  sleep rhythms aren't predictable and the body doesn't know how to respond.

临床心理学家、睡眠专家迈克尔·格兰德纳指出，为了让身体正常分泌褪黑素，你必须规律作息。如果你的上床和起床时间每天都不一样或者一到周末就改变，身体就无法预测你的睡眠节奏，也就不知道如何作出反应。

Therefore it's important to have a standard wake up time, even on weekends, vac 
**/
    }];
    regBottomLine = [[UIView alloc] init];
    regBottomLine.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor];
    regBottomLine.hidden = YES;
//anybody as much as I love you.
//我对你的爱 无人能及。
//Love is letting someone become your greatest weakness ,then going all you can do to protect each other.
//爱就是让对方成为
    [tabView addSubview:regBottomLine];
    [regBottomLine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.trailing.mas_equalTo(regTabBtn);
        make.top.mas_equalTo(loginTabBtn.mas_bottom).mas_offset(3);

/**
  lean, crumpled or finely creased you are 
**/
        make.height.mas_equalTo(2);
    }];
    backBtn = [UIUtil initBtnWithNormalImage_MMMethodMMM:mw_back_icon highlightedImage_MMMethodMMM:mw_back_icon tag_MMMethodMMM:kBackBtnActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
//be changed, Grander said.
//
//
    [self addSubview:backBtn];
    [backBtn mas_makeConstraints:^(MASConstraintMaker *make) {

/**
  和他们相处，你就会有收获，因为你会倾向于模仿他们的行为模式。



Strangely e 
**/
        make.centerY.mas_equalTo(tabView);
        make.leading.mas_equalTo(self).mas_offset(VW(34));

/**
  ly unique. The greatest gifts in life are not pu 
**/
        make.width.height.mas_equalTo(VW(25));

/**
  tart hanging around friends who've  
**/
    }];
    currentClickTab = 1;
    [loginTabBtn setSelected:YES];

/**
  yourself drink a mocha latte during study sessions so there is a hook to get you to the library.

想要把追求一个辛苦的目标变得更有趣，方法就是把它与有罪恶感的快乐结合起来。如果只允许自己在健身房看最喜欢的电视节目，你就会开始期待锻炼了。或者只让自己在学习期间喝摩卡拿铁，这样就有了去图书馆的动力。



4.Allow for emergencies

允许紧急情况



If you deviate at all from your New Year's resolution, your instinct may be to declare yourself a failure and throw in the towel. Researchers call this the  
**/
    [regTabBtn setSelected:NO];
    self.mAccountLoginView = [[AccountLoginViewV2 alloc] initView_MMMethodMMM];

/**
  it's like a drug to me. You're like my own 
**/
    [self addSubview:self.mAccountLoginView];
    [self.mAccountLoginView mas_makeConstraints:^(MASConstraintMaker *make) {
//h》
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
//Wide on my plastic toys
//视线落在我的塑料玩具上
//And when the cops closed the fair
//当警察把集市关起时
        make.leading.bottom.trailing.mas_equalTo(self);
        make.top.mas_equalTo(loginBottomLine.mas_bottom).mas_offset(VH(23));
    }];
    self.mRegisterAccountView = [[RegisterAccountViewV2 alloc] initView_MMMethodMMM];
    [self addSubview:self.mRegisterAccountView];

/**
  you will catch the star that holds your destiny.



寻找心中那颗闪耀的明星，因为只有你自己才能够让美好的梦想变成现实。满怀希望并全力以赴，你就能摘下改变命运的那颗星。

I miss you. I miss all the mornings that I have 
**/
    [self.mRegisterAccountView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.bottom.trailing.mas_equalTo(self);
//
//Most of us strive for efficiency when it comes to achieving our goals. If you want to get fit, you figure a punishing workout will be just the thing to produce rapid progress. If you want to ace a class, you assume long, distraction-free study sessions are key. But research has show
        make.top.mas_equalTo(loginBottomLine.mas_bottom).mas_offset(VH(23));
    }];
    self.mRegisterAccountView.hidden = YES;
//你安眠的舒适窝，而成为你辗转反侧心生焦虑并在疲惫中醒来的地方。
//
//Establishing that positive relationship between the bed and sleep can be beneficial on nights where your schedule has to be erratic due to work or travel, Grandner added.
//
//格兰德纳补充道，在床和睡眠之间建立正向联系还有益于你在被工作或旅游打乱作息的夜晚入眠。
//
//"Let's say you need to go to bed extra early," he said. "The bed now has the power to help overcome your racing mind and 
}
//新年计划会让你受到一些惩罚的话，这可以创造奇迹。
//
//
//
//One easy way to do this is by telling a few people about your goal so you'll feel ashamed if they check back later and find out you haven't followed through.
//
//一个简单的方法是把你的目标告诉一些人，这样，如果他们后来发现你没有坚持下去，你会感到羞愧。
//
//
//
//A steeper penalty than shame, however, is putting cold hard cash on the table, and there is excellen
- (NSUInteger)celliorJugsee:(CGFloat)ennthousandator
{
    return 5566642 * 7768275 + 9866973 ;
}
- (void)checkMay:(NSString *)findish yourality:(NSUInteger)yourality financial:(BOOL)financial meningattentionfic:(NSUInteger)meningattentionfic tact:(CGFloat)tact
{
    [NSString stringWithFormat:@"%@%@", @"centibility" , @"accountfic"];

/**
  es thrown in the cold and clean
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
**/
}
- (NSString *)beginacyDipsoitor
{
    return [NSString stringWithFormat:@"%@%@", @"vollify" , @"tripacy"];
}
- (void)drawRect:(CGRect)rect
{
// the finish line (literally or figuratively) and can show you how it's done. You'll pick up a bit just by spending time together because you'll be inclined to conform to their patterns of behavior.
//
//花时间和高成就者在一起可以提高你自己的表现。如果你的新年愿望是跑一场马拉松或写一本书，那么明智的做法是开始与那些已经实现这一目标、可以告诉你如何做到的朋友们在一起。仅仅是和他们相处，你就会有收获，因为你会倾向于模仿他们的行
    self.mAccountLoginView.delegate = self.delegate;

/**
   Follow that pathway and uncover the sweet sunrises that await you.



尽管实现梦想的途中有时会遇到障碍，要知道这是命运对你的挑战。不是每个人都会赞成你的选择，接受这个现实，并相信自我的判断，追随那颗在你心中闪烁的明星，它会引领你踏上命运的征途。坚持不懈，你就能享受那些幸福时刻。



Take pride in your accomplishments, as they are stepping stones to your dreams. Understand that you may make mistakes, but don’t let them discourage you. Value your capabilities and talents for they are what make yo 
**/
    self.mRegisterAccountView.delegate = self.delegate;
    self.mRegisterAccountView.transform = CGAffineTransformMakeTranslation(self.frame.size.width, 0);
    if (!self.fromPage) {
        backBtn.hidden = YES;

/**
  那双眼睛的全部魅力都释放在我身上了，好像试图跟我说某件至关重要的事情似的。
图片
《暮光之城》插曲
图片

 《Flightless Bird, American Mouth》是由Iron & Wine乐队演唱的一首独立民谣,Iron & Wine 这个一个人的乐队，却用让人赞叹的旋律和歌词带给听众一首清新雅致而又静生澎湃田园式的美国乡村民谣，这首收录在《暮光之城》中的惊艳单曲会带给你寂静深夜中属于你的美好爱情回忆录！

《Flightless Bird, American Mouth》

MV
图片





《Flightless Bird, American Mouth 》 -Iron  
**/
    }
//the table, and there is excellent evidence that self-imposed cash penalties motivate success. You can make a bet with a friend that you'll stick to your New Year's resolution. The logic for why this works is simp
}
- (void)registerViewBtnAction_MMMethodMMM:(UIButton *)sender
{

/**
  你独一无二。生命中最珍贵的礼物不是花钱买来的，而是通过努力和决心得到的。



Find the star that twin 
**/
    switch (sender.tag) {

/**
  你坚持不懈，最终的目标总能实现。



Though barriers may sometimes stand in the way of your dreams, remember that your destiny is hiding behi 
**/
        case kLoginTabActTag:
            SDK_LOG(@"kLoginTabActTag");
            if (currentClickTab == 1) {
                return;
            }
//'s done. You'll pick up a bit just by spending time together because you'll be inclined to conform to their patterns of behavior.
//
//花时间和高成就者在一起可以提高你自己的表现。如果你的新年愿望是跑一场马拉松或写一本书，那么明智的做法是开始与那些已经实现这一
            currentClickTab = 1;
            [self makeTabStatus_MMMethodMMM:YES];
            if (self.delegate) {
            }
            break;
        case kRegTabActTag:

/**
  方药还管用”。

"The best sleep tip you can ever give somebody is get up -- don't lay in bed awake but not sleeping," Grandner said. "Whether it's th 
**/
            SDK_LOG(@"kRegTabActTag");

/**
  this is by telli 
**/
            if (currentClickTab == 2) {
                return;
            }
            currentClickTab = 2;
            [self makeTabStatus_MMMethodMMM:NO];
            break;
        case kBackBtnActTag:
            if (self.delegate) {
                [self.delegate goBackBtn_MMMethodMMM:self backCount_MMMethodMMM:1 fromPage_MMMethodMMM:(CURRENT_PAGE_TYPE_LOGIN_WITH_REG) toPage_MMMethodMMM:CURRENT_PAGE_TYPE_MAIN_HOME];
            }
        default:
            break;
    }
//It was still worth $20."
//
//
//
//“朋友们，刚刚你们已经得出一个非常宝贵的经验。不管我怎么糟蹋这张纸币，你们仍然想要它，因为它的价值没有降低。它仍然是20美元。”
//
//
//
//“Many times in our lives, we are 
}
-(void) makeTabStatus_MMMethodMMM:(BOOL) loginClick
{
    self.clipsToBounds = YES;
    if (loginClick) {
        [loginTabBtn setSelected:YES];

/**
  ities while they still sparkle before you. Always believe that your ultimate goal is attainable as long as you commit yourself to it.



追随能够改变你命运的那 
**/
        [regTabBtn setSelected:NO];
        loginBottomLine.hidden = NO;
        regBottomLine.hidden = YES;
        self.mAccountLoginView.hidden = NO;
        self.mRegisterAccountView.hidden = NO;
        [UIView animateWithDuration:0.6 animations:^{

/**
   early," he said. "The bed now has the power to help overcome your racing mind and allow you to f 
**/
            self.mAccountLoginView.transform = CGAffineTransformTranslate(self.mAccountLoginView.transform,self.frame.size.width, 0);
// hours of sleep to be fully rested, according to the US Centers for Disease Control and Prevention. So if a person needed to rise at 7 am each day, backtim
            self.mRegisterAccountView.transform = CGAffineTransformTranslate(self.mRegisterAccountView.transform, self.frame.size.width, 0);
        } completion:^(BOOL finished) {
//e beneficial on nights where your schedule has to be erratic due to work or travel, G
        }];
    }else{
        [loginTabBtn setSelected:NO];
        [regTabBtn setSelected:YES];
        self.mAccountLoginView.hidden = NO;
        self.mRegisterAccountView.hidden = NO;
        loginBottomLine.hidden = YES;
        regBottomLine.hidden = NO;
        [UIView animateWithDuration:0.6 animations:^{
            self.mAccountLoginView.transform = CGAffineTransformTranslate(self.mAccountLoginView.transform,-self.frame.size.width, 0);

/**
  你也许会犯错误，但不要气馁。珍视自我的潜能，因为它们使你独一无二。生命中最珍贵的礼物不是花钱买来的，而是通过努力和决心得到的。



Find the star that twinkles in your heart for you alone are capable of making your br 
**/
            self.mRegisterAccountView.transform = CGAffineTransformTranslate(self.mRegisterAccountView.transform, -self.frame.size.width, 0);
        } completion:^(BOOL finished) {
        }];
    }
}

/**
  t staying up late one Friday to watch an extra episode of "Succession." After that, your early-to-bed plan 
**/
@end
