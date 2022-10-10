
#import "SDKTextFiledView.h"

/**
  eatest gifts in life are not purchased, but acquired through hard work and determination.



每前进一步，你都应该引以为豪，因为它们是你实现梦想的阶梯。要知道在这个过程中你也许会犯错误，但不要气馁。珍视自我的潜能，因为它们使你独一无二。生命中最珍贵 
**/
#import "UIUtil.h"

/**
  辑很简单。激励措施会改变我们的决定，而惩罚甚至比奖 
**/
#import <Foundation/Foundation.h>

/**
   you may make mistakes, but don’t let them discourage you. Value your capabilities and talents for they are what make you truly unique. The greatest gifts in life are not purchased, but acquired through hard work and determination.



每前进一步，你都应该引以为豪，因为它们是你实现梦想的阶梯。要知道在这个过程中你也许会犯错误，但不要气馁。 
**/
#import <UIKit/UIKit.h>
@implementation SDKTextFiledView
{
    UITextField *mUITextField;
    UIButton *eyeBtn;

/**
   so you'll feel ashamed if they check back later and find out you haven't f 
**/
}
- (instancetype)initViewWithType_MMMethodMMM:(SDKTextFiledView_Type) type

/**
   start hanging around friends who've made it to the finish line (literally or figuratively) and can show you how it's done. You'll  
**/
{

/**
  ne are capable o 
**/
    self = [super init];
    if (self) {

/**
  I left was because I thought I was protecting you.
我离开你的唯一原因是因为我觉得这能保护你。
I don’t have th strength to stay away from you anymore.
我再也无法控制自己远离你了。
Then don’t.
那就不要。
Childhood is the kingdom where nobody dies.
童年是没有生老病死的国度。
I think I forgot to breathe.
我想可能是我忘了呼吸。
I'd never given much thought to how I would die. But dying in the place of s 
**/
        if (is_Version2) {
            [self addContentView_v2_MMMethodMMM:type];
        }else{
            [self addContentView_MMMethodMMM:type];
        }
    }
    return self;
//check back later and find out you haven't followed through.
//
//一个简单的方法是把你的目标告诉一些人，这样，如果他们后来发现你没有坚持下去，你会感到羞愧。
//
//
//
//A steeper penalty than shame, however, is putting cold hard cash on the table, and there is excellent evidence that self-imposed cash penalties motiv
}

/**
  s.

我想念阳光照在你的脸上，早晨的寒风让我们感到惊讶。
 
**/
-(void)setPwdFiledView_MMMethodMMM:(BOOL)enable{
    eyeBtn.hidden = !enable;
    mUITextField.enabled = enable;
    if (enable) {
        self.lableIconImageView.image = [UIImage res_imageNamed_MMMethodMMM:mw_passowrd_icon];

/**
  you are still priceless to those who love you. The worth of our lives comes, not in what we do or who we know, but by Who We Are.”



“无论你肮脏或者干净,皱巴巴的或者被折磨，对周围爱你的人来说你仍然是无可替代的。我们生活的价值不在于我们做了什么，或者我们认识谁，生活的价值在于我们是谁。”



“You are special ——don't ever forget it.”



“你是与众不同的，永远不要忘记这一点!”

不要醒着躺在床上

It's a gol 
**/
        mUITextField.secureTextEntry = YES;
        mUITextField.text = @"";
        eyeBtn.selected = YES;
        mUITextField.textColor = [UIColor whiteColor];
    }else{
        self.lableIconImageView.image = [UIImage res_imageNamed_MMMethodMMM:mw_passowrd_disable_icon];
        mUITextField.secureTextEntry = NO;
        mUITextField.text = GetString(@"text_free_register");
        mUITextField.textColor = [UIColor colorWithHexString_MMMethodMMM:@"#848484"];
        eyeBtn.selected = NO;
    }
}
- (void) addContentView_MMMethodMMM:(SDKTextFiledView_Type) type

/**
  low you to fall asleep."

他说：“比如说你需要提早上床睡觉。床将能帮助你安抚纷繁的思绪，让你酣然入睡。”

3. Change your atti 
**/
{
    NSString *iconName;
    NSString *lableName;

/**
  
I like the night. Without the dark, we'd never see the stars.
我喜欢夜晚。没有黑暗，我们永远都看不见星星。
It is well worth of falling love in someone, even can keep up with the unavoidable damage.
真正爱上一个人的时候，一切都那么值得，包括不可避免的伤害。
I always have and always will.
一直爱，永远爱。
But it's you, your scent, it's like a drug to me. You're like my own personal brand of heroin.
但是你，你的气味，对我来说就像是毒品一样。你是让我 
**/
    BOOL showEye = NO;

/**
  id, your sleep rhythms aren't predictable and the body doesn't know how to respond.

临床心理学家、睡眠专家迈克尔·格兰德纳指出，为了让身体正常分泌褪黑素，你必须规律作息。如果你的上床和起床时间每天都不一样或者一到周末就改变，身体就无法预测你的睡眠节奏，也就不知道如何作出反应。

Therefore it's important  
**/
    BOOL addMoreAccountBtn = NO;
    UIKeyboardType mUIKeyboardType = UIKeyboardTypeDefault;
    NSString *placeholderText = @"";
    BOOL showLableIcon = YES;
    switch (type) {
        case SDKTextFiledView_Type_VfCode:

/**
  nin is a hormone produced by the body to regulate when you get sleepy and when you wake up. As night approaches, levels of melatonin rise, becoming a signal to the body that it's time for bed. Production of melatonin is stopped by light -- so level 
**/
            iconName = @"fl_sdk_dx.png";
            lableName = @"驗證碼";
//条款
//
//
//
//This may sound sinister, but ensuring you'll face some penalty if you don't achieve your New Year's resolution can work wonders.
//
//这听起来可能有点狠，但如果完不成新年计划会让你受到一些惩罚的话，这可以创造奇迹。
//
//
//
//One easy way to do t
            mUIKeyboardType = UIKeyboardTypeNumberPad;
            placeholderText = @"請輸入驗證碼";

/**
  价值。”



“Dirty or clean, crumpled or finely creased you are still priceless to those who love you. The worth of our lives comes, not in what we do or who we know, but by Who We Are.”



“无论你肮脏或者干净,皱巴巴的或者被折磨，对周围爱你的人来说你仍然是无可替代的。我们生活的价值不在于我们做了什么，或者我们认识谁，生活的价值在于我们是谁。”



“You are special ——don't ever forget it.”



“你是与众不同的 
**/
            showLableIcon = NO;
//学习中获得乐趣，就会坚持得更久。而最终，这往往是实现新年计划的最重要因素。
//
//
//
//One way to make pursuing a goal that normally feels like a chore
            break;
        case SDKTextFiledView_Type_Account:

/**
   may sound sinister, but ensuring you'll face some penalty if you don't achieve your New Year's resolution can work wonders.

这听起来可能有点狠，但如果完不成新年计划会让你受到一些惩罚的话，这可以创造奇迹。



One easy way to do this is by telling a few people about your goal 
**/
            iconName = mw_account_icon;
            lableName = @"帳號";
            placeholderText = @"請輸入您的常用信箱";
//ion is to run a marathon or write a book, you'd be wise to start hanging around friends who've made it to the finish line (literally or figuratively) and can sh
            addMoreAccountBtn = YES;
            break;
        case SDKTextFiledView_Type_Password:
            iconName = mw_passowrd_icon;
            lableName = @"密碼";
            placeholderText = @"請輸入6-20字元";
            showEye = YES;
            break;

/**
  又静生澎湃田园式的美国乡村民谣，这首收录在《暮光之城》中的惊艳单曲会带给你寂静深夜中属于你的美好爱情回忆录！

《Flightless Bird, America 
**/
        case SDKTextFiledView_Type_Password_Again:
//s still worth $20."
//
//
//
//“朋友们，刚刚你们已经得出一个非常宝贵的经验。不管我怎么糟蹋这张纸币，你们仍然想要它，因为它的价值没有降低。它仍然是20美元。”
//
//
//
//“Many times in our lives, we are dropped, crumpled, and ground into the dirt by the decisions we make and the circumstances that come our way. We feel as though we a
            iconName = mw_passowrd_icon;

/**
  u.



尽管实现梦想的途中有时会遇到障碍，要知道这是命运对你的挑战。不是每个人都会赞成你的选择，接受这个现实，并相信自我的判断，追随那颗在你心中闪烁的明星，它会引领你踏上命运的征途。坚持不懈，你就能享受那些幸福时刻。



Take pride in your accomplishments, as they are stepping stones to your dreams. Understand that you may make mistakes, but don’t let them discourage you. Value your capabilities and talents 
**/
            lableName = @"密碼";
            placeholderText = @"確認新密碼";
// enough, there is evidence that coaching friends with shared goals can improve your success rate, too. When you're on the hook to give someone else tips on how to achieve, it boosts your self-confidence. It also forces you to be introspective about what works in ways you might not otherwise.
//
//奇怪的是，有证据表明，指导有共同目标的朋友也能提高你
            showEye = YES;
            break;
        case SDKTextFiledView_Type_Password_New:
            iconName = mw_passowrd_icon;

/**
  stiny.



寻找心中那颗闪耀的明星，因为只有你自己才能够让美好的梦想变成现实。满怀希望并全力以赴，你就能摘下改变命运的那颗星。

I miss you. I miss all the mornings that I have woken up right besi 
**/
            lableName = @"請輸入新密碼";
            placeholderText = @"請輸入新密碼";
            showEye = YES;
            break;

/**
  ctations, it’s not reasonable to grieve when it comes to an end.
当生活给了你一个远远超过你期望的美梦，那么，当这一期结束时，也就没有理由再去伤心。
图片
Bella, the only reason I left was because I thought I was protecting you.
我离开你的唯一原因是因为我觉得这能保护你。
I don’t have th strength to stay away from you anymore.
我再也无法控制自己远离你了。
Then don’t.
那就不要。
Childhood is the kingdo 
**/
        case SDKTextFiledView_Type_Password_Old:
            iconName = mw_passowrd_icon;
            lableName = @"輸入舊密碼";
            placeholderText = @"輸入舊密碼";

/**
  
为什么这条法则如此重要呢？格兰德纳解释道，因为醒着躺在床上会在大脑中形成关联，从而导致长期失眠。这样一来，床就不再是你安眠的舒适窝，而成为你辗转反侧心生焦虑并在疲惫中醒来的地方。

Establishing that positive relationship between the bed and sleep can be beneficial on nights w 
**/
            showEye = YES;
            break;
        default:
            break;
    }

/**
  ime of 11 pm.

美国疾病控制与预防中心指出，大多数成人需要7到8小时睡眠时间才能得到充分休息。因此如果一个人每天要在早上7点起床，倒推8个小时睡眠时间应该是晚上11点。

"Now you know when you have to stop and get ready to go to bed whether you're done or not," Grander said. "The problem is we don't stop, and we don't disconnect. And that's to our detriment and it makes the next day more stressful."

There are not enough ways to expres 
**/
    self.lableIconImageView = [[UIImageView alloc] initWithImage:[UIImage res_imageNamed_MMMethodMMM:iconName]];
    self.lableIconImageView.contentMode = UIViewContentModeScaleAspectFit;

/**
  is to meditate five days each week, a plan like "I'll 
**/
    [self addSubview:self.lableIconImageView];
    [self.lableIconImageView mas_makeConstraints:^(MASConstraintMaker *make) {

/**
  can also help you anticipate and dodge obstacles -- so if you plan to meditate during lunch, you'll be sure to decline a proffered lunch meeting.

提前想好你会在何时何地执行计划，这样做能在适当的时候让你想起自己的计划，如果你没有按照计划去做，就会产生内疚感。详细的计划也可以帮助你预测和避免阻碍——如果你计划在午餐时冥想，你一定会拒绝别人提出的午餐会议。

2.Consider a penalty clause

设置惩罚条款



 
**/
        make.leading.equalTo(self.mas_leading);
        make.centerY.mas_equalTo(self);
        make.height.mas_equalTo(VH(21));
        make.width.mas_equalTo(self.lableIconImageView.mas_height);
    }];
    UIView *lineView1 = [[UIView alloc] init];
    lineView1.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:@"#C0C0C0"];
    [self addSubview:lineView1];
//st adults need between seven and eight hours of sleep to be fully rested, according to the US Centers for Disease Control and Prevention. So if a person needed to rise at 7 am each day, backtiming eight hou
    [lineView1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(0.5);
        make.leading.mas_equalTo(self.lableIconImageView.mas_trailing).mas_offset(VW(8));
        make.centerY.mas_equalTo(self);
        make.height.mas_equalTo(VH(14));

/**
  led, and ground into the dirt by the decisions we make and the circumstances that come our way. We feel as though we are worthless；but no matter what happened or what will happen, you will never lose your value."



“在生活中，很多次我们被自己制定的决策和身边的环境所抛弃、蹂躏，甚至碾入尘土。我们感到自己一无是处。但是不管发生了什么，或者将要发生什么，你们都永远不会失去自己的价值。”



“Dirty or clean, crumpled or  
**/
    }];
    int trailing_offset = -10;
    if (addMoreAccountBtn || showEye) {

/**
  declare yourself a failure and throw in the towel. Researchers call this the "what the hel 
**/
        trailing_offset = -VW(30);
    }
    mUITextField = [[UITextField alloc] init];
    self.inputUITextField = mUITextField;
    if (mUIKeyboardType) {
        [mUITextField setKeyboardType:mUIKeyboardType];
    }

/**
  ught I was protecting you.
我离开你的唯一原因是因 
**/
    mUITextField.textColor = [UIColor whiteColor];
//不同的，永远不要忘记这一点!”
//
//不要醒着躺在床上
//
//It's a golden rule in sleep medicine, backed by "decades of data," Grandner said. In fact, he said th
    mUITextField.font = [UIFont systemFontOfSize:FS(14)];
    if (SDK_DATA.mUITextFieldDelegate) {
        mUITextField.delegate = SDK_DATA.mUITextFieldDelegate;
    }
    int placeHolderTextSize = FS(14);

/**
  适。



Plotting when and where you'll execute on your New Year's resolution jogs your memory when it's opportune and generates guilt if you flake out. Detailed planning can also help you anticipate and dodge obstacles --  
**/
    NSAttributedString *attrStr = [[NSAttributedString alloc] initWithString:placeholderText
                                                                  attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:placeHolderTextSize],NSForegroundColorAttributeName: [UIColor colorWithHexString_MMMethodMMM:@"#848484"]}];
    mUITextField.attributedPlaceholder = attrStr;

/**
  ough barri 
**/
    [self addSubview:mUITextField];

/**
  的朋友也能提高你的成功率。当你想给别人一些如何实现目标的建议时，这会增强你的自信。这样也会迫使你反省自己的方法是否对路。

1. Make a schedule, and stick to it

每天在固定时间起床和上床

Melatonin is a hormone produced by the body to regulate when you get sleepy and when you wake up. As night approaches, levels of melatonin rise, becoming a signal to the body that it's time for bed. Production of me 
**/
    [mUITextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(lineView1.mas_trailing).mas_offset(VW(8));
        make.top.mas_equalTo(self).offset(2);
        make.bottom.mas_equalTo(self).offset(-2);
        make.trailing.mas_equalTo(self.mas_trailing).mas_offset(trailing_offset);

/**
  before you. Always believe that your ultimate goal is attainable as long as you commit yourself to it.



追随能够改变你命运的那颗星，那颗永远在你心中闪烁的明星。当它在你面前闪耀时，抓住这宝贵的机会。请谨记，只要你坚持不懈，最终的目标总能实现。 
**/
    }];
// setting tough goals (like a 10 pm bedtime eve
    if (addMoreAccountBtn) {
        self.moreAccountBtn = [UIUtil initBtnWithNormalImage_MMMethodMMM:sdk_list_down highlightedImage_MMMethodMMM:sdk_list_down selectedImageName_MMMethodMMM:sdk_list_up tag_MMMethodMMM:kMoreAccountListActTag selector:@selector(clickItemBtn_MMMethodMMM:) target_MMMethodMMM:self];

/**
  his hormone needs to occur at regular times, said clinical psychologist and sleep expert Michael Grandner. So if your bedtime and wake 
**/
        self.moreAccountBtn.imageView.contentMode = UIViewContentModeScaleAspectFit;

/**
  it.



追随能够改变你命运的那颗星，那颗永远在你心中闪烁的明星。当它在你面前闪耀时，抓住这宝贵的机会。请谨记，只要你坚持不懈，最终的目标总能实现。



Though barriers may sometimes 
**/
        [self addSubview:self.moreAccountBtn];
        [self.moreAccountBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.mas_equalTo(self).mas_offset(VW(-8));;

/**
   deviate at all from your New Year's resolution, your instinct may be to declare yourself a failure and throw in the towel. Researchers call this the "what the hell effect." Here's what it looks like: You planned to get to bed early every night but couldn't resist staying up late one Friday to watch an extra episode of "Succession." After that, your early-to- 
**/
            make.centerY.mas_equalTo(self);
            make.height.mas_equalTo(self.mas_height);
            make.width.mas_equalTo(VW(17));

/**
  我，你就在劫难逃了。
You're in here because of me.
你在这里，是因为有我。
Nobody's ever loved anybody as much as I love you.
我对你的爱 无人能及。
Love is letting someone become your greatest weakness ,then go 
**/
        }];
    }
    if (showEye) {
        mUITextField.secureTextEntry = NO;
        eyeBtn = [UIUtil initBtnWithNormalImage_MMMethodMMM:fl_sdk_ky highlightedImage_MMMethodMMM:fl_sdk_ky selectedImageName_MMMethodMMM:fl_sdk_by tag_MMMethodMMM:22 selector:@selector(eyeViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        eyeBtn.selected = YES;
        mUITextField.secureTextEntry = YES;
        eyeBtn.imageView.contentMode = UIViewContentModeScaleAspectFit;
        [self addSubview:eyeBtn];
        [eyeBtn mas_makeConstraints:^(MASConstraintMaker *make) {

/**
   there is excellent evidence that self-imposed cash penalties motivate success. You can make a bet with a friend that you'll stick to your New Year's resolution. The logic for why this works is simple. Incentives change our decisions, and penalties are even more motivating than rewards.

而比羞愧感更有效的是金钱惩罚，有证据表明，自我施加的金钱惩罚可以激励成功。你可以和朋友打赌，赌你会坚持新年计划。这样做的逻辑很简单。激励措施会改变我们的决定，而惩罚甚至比奖励让我们更有动力 
**/
            make.trailing.mas_equalTo(self).mas_offset(VW(-8));
//s or study sessions, research has found you'll persist longer. And in the end, that's what often matters most to achieving a New Year's resolution.
//
//如果锻炼或学习没有乐趣，就不太可能坚持下去。但研究发现如果你从锻炼或学习中获得乐趣，就会坚持得更久。而最终，这往往是实现新年计划的最重要因素。
//
//
//
//One way to make pursuing a goal that
            make.centerY.mas_equalTo(self);
            make.height.mas_equalTo(self.mas_height);
            make.width.mas_equalTo(VW(17));
        }];
//l wants it?” Still the hands were up in the air.
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
//“好，”他说道，“如果我这样做会怎么样呢？”他把纸币扔到地上，开始用皮鞋使劲踩踏。然后他拣起又脏又皱的纸币，“现在，还有
    }
    UIView *lineView2 = [[UIView alloc] init];
    lineView2.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:@"#C0C0C0"];
    [self addSubview:lineView2];
    [lineView2 mas_makeConstraints:^(MASConstraintMaker *make) {

/**
  ？”



Hands started going up. He said, “I am going to give this $20. 
**/
        make.leading.trailing.mas_equalTo(self);

/**
  通过努力和决心得到的。



Find the star that twinkles in your heart for you alone are capable of making your brightest dreams come true. Give your hopes everything you’ve got and you will catch the star that holds your destiny.



寻找心中那颗闪耀的明星，因为只有你自己才能够让美好的梦想变成现实。满怀希望并全力以赴，你就能摘下改变命运的那颗星。

I miss you. I miss all the mornings that I have woken up right beside you.

 
**/
        make.bottom.mas_equalTo(self);
        make.height.mas_equalTo(1);
//ings are kind of giving me a whiplash.
//你的态度忽冷忽热让我难受。
//I only said it’d be better if we weren’t friends, not that I didn’t wanna be.
//我只是说如果我们不是朋友会好很多，但是那不代表我不想和你交朋友。
//He unleashed the full, devastating power of his eyes on me, as if trying to communicate something crucial.
//他把那双眼睛的全部魅力都释放在我身上了，好像试图跟我说某件至关重要的事情似的。
//图片
//《暮光之城》插曲
//图片
//
// 《Flightless Bird, Ame
    }];
    if (!showLableIcon) {
        self.lableIconImageView.hidden = YES;
//nd wake up tired.
//
//为什么这条法则如此重要呢？格兰德纳解释道，因为醒着躺在床上会在大脑中形成关联，从而导致长期失眠。这样一来，床就不再是你安眠的舒适窝，而成为你辗转反侧心生焦虑并在疲惫中醒来的地方。
//
//Establishing that positive relationship between the bed and sleep can be beneficial on nights where your schedule has to be erratic due to work or travel, Grandner added.
//
//格兰德纳补充道，在床和睡眠之间建立正向联系还有益于你在被工作或旅
        lineView1.hidden = YES;
        lineView2.hidden = YES;
    }

/**
  way the cold breeze of the morning surprises us 
**/
    if (self.inputUITextField) {
        [self.inputUITextField addTarget:self action:@selector(textChanged_MMMethodMMM:) forControlEvents:(UIControlEventEditingChanged)];
    }
}
+ (CGFloat)arbecomelyRangeish
{

/**
   are kind of giving me a whiplash.
你的态度忽冷忽热让我难受。
I only said it’d be better if we weren’t friends, not that I didn’t wanna be.
我只是说如果我们不是朋友会好很多，但是那不代表我不想和你交朋友。
He unleashed the full, devastating power of his eyes on me, as if trying to communicate something crucial.
他把那双眼睛的全部魅力都释放在我身上了，好像试图跟我说某件至关重要的事情似的。
图片
《暮光之城》插曲
图片 
**/
    return 3437234 * 7300102 + 2986243 ;

/**
  k in the morning and knowing that at the end of the day,

我想你。我想念早上去上班，直到在一天结束的时候，

I will find you waiting for me outside the office and have dinner together.

我会发现你在办公室外等我，一起吃饭。

I miss you. I miss our late night walks and how you and I would eat ice cream.

我想你。我想念我们深夜散步，一起吃冰淇淋。

I miss you. I miss you holding my hands when we walk down the busy streets of the city.

我想你 
**/
}
- (void) addContentView_v2_MMMethodMMM:(SDKTextFiledView_Type) type
{

/**
  chievers can boost your own performance. If your New Year's resolution is to run a marathon or write a book, you'd be wise to start hanging around friends who've made it to 
**/
    self.layer.cornerRadius = VH(20);
    self.layer.borderWidth = 0.5;
    self.layer.borderColor = [UIColor whiteColor].CGColor;
    NSString *iconName;
    BOOL showEye = NO;
    BOOL addMoreAccountBtn = NO;
    UIKeyboardType mUIKeyboardType = UIKeyboardTypeDefault;
    NSString *placeholderText = @"";

/**
  hing they have to do in a jam-packed day, worth delaying to catch up on housework, schoolwork, office work or the latest binge-worthy television series.

许多人将睡眠视为忙碌的一天后要做的最后一件事，为了完成家务、作业、工作或追新剧，晚点再睡也没事。

T 
**/
    BOOL showLableIcon = YES;
//f it's not fun to exercise or study, you're unlikely to keep at it. But if you get pl
    switch (type) {
        case SDKTextFiledView_Type_VfCode:

/**
  re and throw in the towel. Researchers call this the "what the hell effect." Here's what it looks like: You planned to get to bed early every night but couldn't re 
**/
            iconName = @"fl_sdk_dx.png";
            mUIKeyboardType = UIKeyboardTypeNumberPad;
            placeholderText = @"py_msg_vfcode_hint".localx;
            showLableIcon = NO;
            break;
        case SDKTextFiledView_Type_Account:
// the full, devastating power of his eyes on me, as if trying to co
            iconName = mw_account_icon;
            placeholderText = @"py_register_account_hit".localx;

/**
  ngue
咒骂着我那因发炎而没有知觉的舌头
Watching the warm poison rats
看着刚被毒死的老鼠
Curl through the wide fence cracks
卷曲的毛穿过白色围篱的大裂缝
Pissing on magazine photos
亲着杂志上的照片
Those fishing lures thrown in the cold and clean
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
 
**/
            addMoreAccountBtn = YES;
            break;
        case SDKTextFiledView_Type_Password:

/**
   to act. Be sure to detail when and where you'll follow through.

正如出场提示告诉百老汇明星何时登台一样，研究表明，在你的计划中加入信息提示，能帮助你记住何时行动。一定要详细说明你将在何时何地做什么。



If your New Year's resolution is to meditate five days each week, a plan like "I'll meditate on weekdays" would be too vague. But a cue-based plan lik 
**/
            iconName = mw_passowrd_icon;
            placeholderText = @"py_register_password_hit".localx;
            showEye = YES;

/**
  rk, office work or the latest binge-worthy television seri 
**/
            break;
        case SDKTextFiledView_Type_Password_Again:

/**
  ought to how I would die. But dying in the place of someone I love,seems like a good way to go.
我从来没有想过自己会怎么死。但是死在自己爱的人的怀里看起来是一个不错的选择。
Your mood swings are kind of giving me a whiplash.
你的态度忽冷忽热让我难受。
I only said it’d be better if we weren’t friends, not that I didn’ 
**/
            iconName = mw_passowrd_icon;
            placeholderText = @"text_input_new_pwd_confire".localx;
            showEye = YES;
            break;
//hes, getting you ready to greet the day.
//
//褪黑素是身体分泌的
        case SDKTextFiledView_Type_Password_New:
            iconName = mw_passowrd_icon;
            placeholderText = @"text_input_new_pwd".localx;
            showEye = YES;
            break;
        case SDKTextFiledView_Type_Password_Old:

/**
  

"Let's say yo 
**/
            iconName = mw_passowrd_icon;
            placeholderText = @"py_input_old_password".localx;

/**
  t works in ways you might not otherwise.

奇怪的是，有证据表明，指导有共同目标的朋友也能提高你的成功率。当你想给别人一些如何实现目标的建议时，这会增强你的自信。这样也会迫使你反省自己的方法是否对路。

1. Make a schedule, and stick to it

每天在固定时间起床和上床

Melatonin is a hormone produced by the body to regulate when you get sleepy and when you wake up. As night approaches, levels of melatonin rise, becoming a signal to the body that it 
**/
            showEye = YES;
            break;
        default:
            break;
    }
    self.lableIconImageView = [[UIImageView alloc] initWithImage:[UIImage res_imageNamed_MMMethodMMM:iconName]];
//不同世界，依旧爱你到地老天荒。
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
//Love is letting so
    self.lableIconImageView.contentMode = UIViewContentModeScaleAspectFit;
    [self addSubview:self.lableIconImageView];

/**
  ime change from day to day or on weekends, he  
**/
    [self.lableIconImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.mas_leading).mas_offset(VW(18));
        make.centerY.mas_equalTo(self);
//eed to go to bed extra early," he said. "The bed now has the power to help overcome your racing mind and allow you to fall asleep."
//
//他说：“比如说你需要提早上床睡觉。床将能帮助你安抚纷繁的思绪，让你酣然入睡。”
//
//3. Change your attitude about sleep
//
//改变对睡眠的心态
//
//Many people view sleeping as the final thing they have to do in a jam-packed day, worth delaying to catch up on housew
        make.height.mas_equalTo(VH(21));
        make.width.mas_equalTo(self.lableIconImageView.mas_height);
    }];
    UIView *lineView1 = [[UIView alloc] init];
//划中加入信息提示，能帮助你记住何时行动。一定要详细说明你将在何时何地做什么。
//
//
//
//If your New Year's resolution is to meditate five days each week, a plan like "I'll meditate on weekdays" would be too vague. But a cue-based plan like "I'll meditate at the office on weekdays during my lunch break" would fit the bill.
//
//如果你的新年计划是每周冥想五天，那么像“我将在工作日冥想”这样的计划就太模糊了。但是，“我将在工作日的午休时间在办公室冥想”这样有信息提示的计划就很合适。
    lineView1.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:@"#C0C0C0"];
    [self addSubview:lineView1];
    [lineView1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(0.5);
        make.leading.mas_equalTo(self.lableIconImageView.mas_trailing).mas_offset(VW(8));
        make.centerY.mas_equalTo(self);
        make.height.mas_equalTo(VH(14));
    }];

/**
   are kind of giving me a whiplash.
你的态度忽冷忽热让我难受。
I only said it’d be better if we weren’t friends, not that I didn’t wanna be.
我只是说如果我们不是朋友会好很多，但是那不代表我不想和你交朋友。
He unleashed the full, devastating power of his eyes on me, as if trying to communicate somethi 
**/
    int trailing_offset = -10;
    if (addMoreAccountBtn || showEye) {
// it.
//
//
//
//追随能够改变你命运的那颗星，那颗永远在你心中闪烁的明星。当它在你面前闪耀时，抓住这宝贵的机会。请谨记，只要你坚持不懈，最终的目标总能实现。
//
//
//
//Though barriers may sometimes stand in the way
        trailing_offset = -VW(30);
    }
    mUITextField = [[UITextField alloc] init];
    self.inputUITextField = mUITextField;

/**
  hy is that so important? Because lying in bed awake can form an association in your brain that can lead to chronic insomnia, Grandner explained. Instead of being a restful spot where you peacefully fall asleep, your bed becomes an anxious place where you toss and turn and wake up tired.

为什么这条法则如此重要呢？格兰德纳解释 
**/
    if (mUIKeyboardType) {
        [mUITextField setKeyboardType:mUIKeyboardType];
//，为了完成家务、作业、工作或追新剧，晚点再睡也没事。
//
//That thinking needs to be changed, Grander said.
//
//格兰德纳说，这种想法必须改变。
//
//"Don't see your sleep as the amount of time you have left in your day," he advised. "See your sleep as the amount of time you need in order to set yourself up for a productive tomorrow."
//
//他建议：“不要将睡眠
    }
//t. Be sure to detail when and where you'll follow through.
//
//正如出场提示告诉百老汇明星何时登台一样，研究表明，
    mUITextField.textColor = [UIColor whiteColor];

/**
  nd eight hours of sleep to be fully rested 
**/
    mUITextField.font = [UIFont systemFontOfSize:FS(14)];
    if (SDK_DATA.mUITextFieldDelegate) {
// don't spend that time awake in 
        mUITextField.delegate = SDK_DATA.mUITextFieldDelegate;
    }
    int placeHolderTextSize = FS(14);
    NSAttributedString *attrStr = [[NSAttributedString alloc] initWithString:placeholderText
                                                                  attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:placeHolderTextSize],NSForegroundColorAttributeName: [UIColor colorWithHexString_MMMethodMMM:@"#848484"]}];
    mUITextField.attributedPlaceholder = attrStr;
    [self addSubview:mUITextField];

/**
  at holds your destiny, the one that forever twinkles within your heart. Take advantage of precious opportunities while they still sparkle before you. Always believe that your ultimate goal is attainable as long as you commit yourself to it.



追随能够改变你命运的那颗星，那颗永远在你心中闪烁的明星。当它在你面前闪耀时，抓住这宝贵的机会。请谨记，只要你坚持不懈，最终的目标总能实现。



Though barriers ma 
**/
    [mUITextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(lineView1.mas_trailing).mas_offset(VW(8));
        make.top.mas_equalTo(self).offset(2);
        make.bottom.mas_equalTo(self).offset(-2);
        make.trailing.mas_equalTo(self.mas_trailing).mas_offset(trailing_offset);
    }];

/**
  lightless Bird, American Mouth 》 -Iron & Wine

折翼的鸟，在美国的河口
I was a quick wet boy
我曾是个爱哭的男孩
Diving too deep for coins
为钱币而潜得太深
All of your street light eyes
你那直视前方的盲目双眼
W 
**/
    if (addMoreAccountBtn) {

/**
  ，那么，当这一期结束时，也就没有理由再去伤心。
图片
Bella, the only reason I left was because I thought I was protecting you.
我离开你的唯一原因 
**/
        self.moreAccountBtn = [UIUtil initBtnWithNormalImage_MMMethodMMM:sdk_list_down highlightedImage_MMMethodMMM:sdk_list_down selectedImageName_MMMethodMMM:sdk_list_up tag_MMMethodMMM:kMoreAccountListActTag selector:@selector(clickItemBtn_MMMethodMMM:) target_MMMethodMMM:self];
// Give your hopes everything you
        self.moreAccountBtn.imageView.contentMode = UIViewContentModeScaleAspectFit;

/**
   want to get fit, you f 
**/
        [self addSubview:self.moreAccountBtn];
        [self.moreAccountBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.mas_equalTo(self).mas_offset(VW(-15));;
            make.centerY.mas_equalTo(self);
            make.height.mas_equalTo(self.mas_height);
            make.width.mas_equalTo(VW(17));

/**
  热让我难受。
I only said it’d be better if we weren’t friends, not that I didn’t wanna be.
我只是说如果我们不是朋友会好很多，但是那不代表我不想和你交朋友。
He unleashed the full, devastating power of his eyes 
**/
        }];
    }
    if (showEye) {
        mUITextField.secureTextEntry = NO;
        eyeBtn = [UIUtil initBtnWithNormalImage_MMMethodMMM:fl_sdk_ky highlightedImage_MMMethodMMM:fl_sdk_ky selectedImageName_MMMethodMMM:fl_sdk_by tag_MMMethodMMM:22 selector:@selector(eyeViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        eyeBtn.selected = YES;
        mUITextField.secureTextEntry = YES;
        eyeBtn.imageView.contentMode = UIViewContentModeScaleAspectFit;
        [self addSubview:eyeBtn];
        [eyeBtn mas_makeConstraints:^(MASConstraintMaker *make) {

/**
  ze of the morning surprises us.

我想念阳光照在你的脸上，早晨的寒风让我们感到惊讶。

I miss the morning kisses and the morning snuggling you and I shared.

我想念早上的吻，早上依偎着你和我分享。

I miss you. I miss going to work in the morning and knowing that at the end of the day,

我想你。我想念早上去上班，直到在一天结束的时候，

I will find you waiting for me outside the office and have dinner toge 
**/
            make.trailing.mas_equalTo(self).mas_offset(VW(-15));
//t I did to the money, you still wanted it because it did not decrease in value. It was still worth $20."
//
//
//
//“朋友们，刚刚你们已经得出一个非常宝贵的经验。不管我怎么糟蹋这张纸币，你们仍然想要它，因为它的价值没有降低。它仍然是20美元。”
//
//
//
//“Many times in our lives, we are dropped, crumpled, and ground into the dirt by the decisions we make and the circumst
            make.centerY.mas_equalTo(self);
            make.height.mas_equalTo(self.mas_height);
            make.width.mas_equalTo(VW(17));
        }];
    }

/**
  的
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
贴着的大海报正在落下


Just as cues tell Broadway stars when to step onto the stage, research has shown that adding a cue to your plan help 
**/
    UIView *lineView2 = [[UIView alloc] init];
    lineView2.hidden = YES;
    lineView2.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:@"#C0C0C0"];
    [self addSubview:lineView2];
    [lineView2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.trailing.mas_equalTo(self);

/**
  leep to be fully rested, according to the US Centers for Disease Control an 
**/
        make.bottom.mas_equalTo(self);
//The problem is we don't stop, and we don't disconnect. And that's to our detriment and it makes the next day more stressful."
//
//There are not enough ways to express how much I miss you
//
//没有足够的方式能表达我有多想念你
//
//There are not eno
        make.height.mas_equalTo(1);
    }];
//hinking, but it's an important one, Grander added.
//
//格兰德纳补充道，或许这听起来只是想法上的一个小小改变，但却很重要。
//
//Most adults need between seven and eight hours of sleep to be fully rested, according to the US Centers for Disease Control and Prevention. So if a person needed to rise at 7 am each day, backtiming eight hours 
    if (!showLableIcon) {
        self.lableIconImageView.hidden = YES;
        lineView1.hidden = YES;
        lineView2.hidden = YES;
    }
    if (self.inputUITextField) {
        [self.inputUITextField addTarget:self action:@selector(textChanged_MMMethodMMM:) forControlEvents:(UIControlEventEditingChanged)];
    }
}
- (void)eyeViewBtnAction_MMMethodMMM:(UIButton *)sender

/**
  f the day,

我想你。我想念早上去上班，直到在一天结束的时候，

I will find you waiting for me outside the office and have dinner together.

我会发现你在办公室外等我，一起吃饭。

I miss you. I miss our late night walks and how you and I would eat ice cream.

我想你。我想念我们深夜散步，一起吃冰淇淋。

I miss you. I miss you holding my hands when we walk down the busy streets of the city.

我想你。我想念当我们走在繁忙的街道上时，你牵着我的手。

I miss you. I miss coming home to you. I m 
**/
{
    if (sender.selected) {
        NSString *tempPwdStr = mUITextField.text;
        mUITextField.text = @"";
        mUITextField.secureTextEntry = NO;

/**
  fall asleep."

他说：“比如说你需要提早上床睡觉。床将能帮助你安抚纷繁的思绪，让你酣然入睡。”

3. Change your attitude about sleep

改变对睡眠的心态

Many people view sleeping as the final thing they have to do in a jam-packed day, worth delaying to catch up on housework, schoolwork, office work or the latest binge-worthy television series.

许多人将 
**/
        mUITextField.text = tempPwdStr;

/**
  ul that when used in his sleep clinic it "can even beat prescr 
**/
    } else {
        NSString *tempPwdStr = mUITextField.text;

/**
  ut a cue-based plan like "I'll meditate at the office on weekdays during my lunch break" would fit the bill.

如果你的新年计划是每周冥想五天，那么像“我将在工作日冥想”这样的计划就太模糊了。但是，“我将在工作日的午休时间在办公室冥想”这样有信息提示的计划就很合适。



Plotting when and where you'll execute on your New Year's resolution jogs your memory when it's opportune and generates guilt if you flake out. Detailed planning can also help you anticipate an 
**/
        mUITextField.text = @"";
        mUITextField.secureTextEntry = YES;
        mUITextField.text = tempPwdStr;
    }

/**
  n is a hormone produced by the body to regulate when you get sleepy and 
**/
    sender.selected = !sender.selected;
}
//connect. And that's to our detriment and it makes the next day more stressful."
//
//There are not enough ways to express how much I miss you
//
//没有足够的
- (void)clickItemBtn_MMMethodMMM:(UIButton *)sender
{

/**
  it, you figure a punishing workout will be just the thing to produce rapid progress. If you want to ace a class, you assume long, distraction-free study sessions are key. But research has shown that focusing on efficiency can leave you high and  
**/
    if (self.clickAccountListItem) {
        self.clickAccountListItem(sender.tag);
    }
}

/**
  ou. Sun for morning, Moon for night, and you forever.
浮世万千，吾爱有三。日，月与卿。日为朝，月为暮，卿为朝朝暮暮。
Even if from another world, still love you till the end of time.
就算来自不同世界，依旧爱你到地老天荒。
Only for making me want you so badly.
只有你才能让我如此上瘾。
I don't have the strength to stay away from you anymore.
我再也没有离开你的力气了。
Y 
**/
+ (BOOL)brachioingCollegeable

/**
  你。我想念早上去上班，直到在一天结束的时候，

I will find you waiting for me outside the office and have dinner together.

我会发现你在办公室外等我，一起吃饭。

I miss you. I miss our late night walks and how you and I 
**/
{
    return 8625184 * 7533812 + 6276934 ;
}
- (void)textChanged_MMMethodMMM:(UITextField *)sender
{
    SDK_LOG(@"textChanged=>%@",sender.text);
    if (sender.text && [sender.text containsString:@" "]) {
        NSString *tempStr = [sender.text stringByReplacingOccurrencesOfString:@" " withString:@""];
        self.inputUITextField.text = tempStr;
//eep can be beneficial on nights where your schedule has to be erratic due to work or travel, Grandner added.
//
//格兰德纳
    }

/**
  样一来，床就不再是你安眠的舒适窝 
**/
    if (self.inputTextFieldChange) {

/**
   life offers you a dream so far beyond any of your expectations, it’s not reasonable to grieve when it comes to a 
**/
        self.inputTextFieldChange(self.inputUITextField.text,0,nil);
//制定的决策和身边的环境所抛弃、蹂躏，甚至碾入尘土。我们感到自己一无是处。但是不管发生了什么，或者将要发生什么，你们都永远不会失去自己的价值。”
//
//
//
//“D
    }
}

/**
  don’t.
那就不要。
Childhood is the kingdom where nobody dies.
童年是没有生老病死的国度。
I think I forgot to breathe.
我想可能是我忘了呼吸。
I'd never given much thought to how I would die. But dying in the place of someone I love,seems like a good way to go.
我从来没有想过自己会怎么死。但是死在自己爱的人的怀里看起来是一个不错的选择。
Your mood swings are kind of giving me a whiplash.
你的态度忽冷忽热让我难受。
I only said it’d be better if we weren’t  
**/
@end
