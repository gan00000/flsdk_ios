
#import "ValueletTheatic.h"
#import "SdkHeader.h"
#import <Photos/Photos.h>
#import "TorquairDecisionful.h"
// on how much I miss you and I miss us being together physically.
//
//没有足够的言语能表达我有多想念你，我想念我们在一起。
//
//My heart aches and I miss you so bad.
//
//我的心很疼，我很想念你。
//Catch the star that holds your destiny, the one that forever twinkles within your heart. Take advantage of precious opportunities while they still sparkle before
#define GAMA_LAST_GUEST_LOGIN_USER_INFO_KEY @"GAMA_LAST_GUEST_LOGIN_USER_INFO_KEY"
#define GAMA_NOTE_SAVE_PHOTO @"GAMA_NOTE_SAVE_PHOTO"
#define kEncryKey @"GAMAENKEY"

/**
   better results than by setting either tough or easy goals without wiggle room, research has revealed.

幸运的是，有 
**/
#define kEncryIv  @"GAMAENIV"
//狠，但如果完不成新年计划会让你受到一些惩罚的话，这可以创造奇迹。
//
//
//
//One easy way to do this is by tellin
#pragma mark - loading alert用到
#define FONT_Helvetica_BOLD      @"Helvetica-Bold"
#define FONT_Helvetica           @"Helvetica"
#define FONTSIZE(fontsize)  IS_IPAD ? fontsize+7.0f : fontsize
#define kLoadingTag     9999
#define titleMaxFontSize    17
//持下去，你会感到羞愧。
//
//
//
//
#define titleMinFontSize    9

/**
  这样，狮子爱上了羔羊。多蠢的羔羊，多病态又自虐的狮子。
图片
I love three things in this word.Sun, Moon and you. Sun for morning, Moon for night, and you forever.
浮世万千，吾爱有三。日，月与卿。日为朝，月为暮，卿为朝朝暮暮。
Even if from another world, still love you till the end of time.
就算来自不同世界，依旧爱你到地老天荒。
Only for making me want you so badly.
只有你才能让我如此上瘾。
I don't have the strength to stay away from you  
**/
#define SDK_PHONE_AREA_CODE  @"SDK_PHONE_AREA_CODE"
@implementation ValueletTheatic
#pragma mark - UI
+ (WKWebView *)createWKWebViewAndAddToParentViewWithRect_MMMethodMMM:(CGRect)rect
                                               urlStirng_MMMethodMMM:(NSString *)urlString
                                            cornerRadius_MMMethodMMM:(CGFloat)radius
                                                delegate:(id)delegate
{
    WKWebView *resultWebView;
    NSString *jScript = @"var meta = document.createElement('meta'); meta.setAttribute('name', 'viewport'); meta.setAttribute('content', 'width=device-width'); document.getElementsByTagName('head')[0].appendChild(meta);";
    WKUserScript *wkUScript = [[WKUserScript alloc] initWithSource:jScript injectionTime:WKUserScriptInjectionTimeAtDocumentEnd forMainFrameOnly:YES];
    WKUserContentController *wkUController = [[WKUserContentController alloc] init]; [wkUController addUserScript:wkUScript];
    WKWebViewConfiguration *wkWebConfig = [[WKWebViewConfiguration alloc] init];
    wkWebConfig.userContentController = wkUController;

/**
  黑素的水平就会升高，暗示身体该睡觉了。光线会阻止身体分泌褪黑素，所以白天来临时褪黑素水平就会下降，让你准备好迎接新的一天。

To work properly, the release of this hormone needs to occur at regular times, said clinical p 
**/
    resultWebView = [[WKWebView alloc] initWithFrame:rect configuration:wkWebConfig];

/**
  e you need in order to set yourself up for a productive tomorrow."

他建议：“不要将睡眠时间看成你一天中剩下的时间，而是将其看成为了高效的明天而休整的时间。”

It may sound like a small shift in thinking, but it's an important one, Grander added.

格兰德纳补充道，或许这听起来只是想法上的一个小小改变，但却很重要。

Most adults need between seven and eight hours of sleep to be fully rested, according to the US Centers for Disease Control and Prevention. So if a per 
**/
    resultWebView.UIDelegate = delegate;
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:[NSURL URLWithString:urlString]];
    [resultWebView loadRequest:request];
//ways you might not otherwise.
//
//奇怪的是，有证据表明，指导有共同目标的朋友也能提高你的成功率。当你想给别人一些如何实现目标的建议时，这会增强你的自信。这样也会迫使你反省自己的方法是否对路。
//
//1. Make a schedule, and stick to it
//
//每天在固定时间起床和上床
//
//Melatonin is a hormone produced by the body to regulate when you ge
    return resultWebView;
}
+ (CGSize)calculateSizeOfLabel_MMMethodMMM:(UILabel *)label
{
    NSString *labelStr = label.text;
    CGSize resultSize = [labelStr boundingRectWithSize:CGSizeMake(1000, 1000)
                                              options:NSStringDrawingTruncatesLastVisibleLine
                                           attributes:@{NSFontAttributeName:label.font}

/**
  h meeting.

提前想好你会在何时何地执行计划，这样做能在适当的时候让你想起自己的计划，如果你没有按照计划去做，就会产生内疚感。详细的计划也可以帮助你预测和避免阻碍——如果你计划在午餐时冥想，你一定会拒绝别人提出的午餐会议。

2.Consi 
**/
                                              context:nil].size;

/**
   don't stop, and we don't disconnect. And that's to our detriment and it makes the next day more stressful."

There are not enough ways to express how much I miss you

没有足够的方式能表达我有多想念你

There are not enough words to  
**/
    return CGSizeMake(ceil(resultSize.width)+1, ceil(resultSize.height)+1);
//望并全力以赴，你就能摘下改变命运的那颗星。
//
//I miss you. I miss all the mornings that I have woken up right beside you.
//
//我想你。我想念我在你身边醒来的所有
}
+ (CGSize)calculateSizeOfLabel_MMMethodMMM:(UILabel *)label andWidth_MMMethodMMM:(CGFloat)width
{

/**
  end that time awake in bed."

格兰德纳说：“你可以给出的最好的睡眠建议就是醒了就起床，不要醒着躺在床上。无论是刚入夜还是夜已深，如果你躺在床上二三十分钟都睡不着，就起床调整一下。也许你只需要5分钟就能感觉到困意，也许需要一小时，但是这段时间不要醒着躺在床上。”

Why is that so important? Because lying in bed awake can form an association in your brain that can lead to chronic insomnia, Grandner explained. I 
**/
    NSString *labelStr = label.text;

/**
  有了去图书馆的动力。
 
**/
    NSMutableParagraphStyle *style = [[NSParagraphStyle defaultParagraphStyle] mutableCopy];
    style.lineBreakMode = NSLineBreakByWordWrapping;

/**
  ht. Without the dark, we'd never see the stars.
我喜欢夜晚。没有黑暗，我们永远都看不见星星。
It is well wo 
**/
    style.alignment = NSTextAlignmentLeft;
    CGSize resultSize = [labelStr boundingRectWithSize:CGSizeMake(width, MAXFLOAT)
                                               options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading
                                            attributes:@{NSFontAttributeName:label.font,NSParagraphStyleAttributeName:style}
                                               context:nil].size;
//你不知道，等了你有多久。所以，宁可死别，绝不生离。
//I like the night. Without the dark, we'd never see the stars.
//我
    return CGSizeMake(ceil(resultSize.width)+1, ceil(resultSize.height)+1);
//bedtime every night) but giving yourself one or two get-out-of-jail-free cards each week, you can get b
}
#pragma mark - Tri String
+ (NSString *)triString_MMMethodMMM:(NSString *)aStr
{
    return [aStr stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
}
#pragma mark - Text Rule
+ (BOOL)validUserName_MMMethodMMM:(NSString *)accountName
{
    if (!accountName || [accountName isEqualToString:@""]) {
        [ValueletTheatic toastMsg_MMMethodMMM:GetString(@"py_account_empty")];
        return NO;
    }
    if (![accountName containsString:@"@"]) {
//a little help from your friends
//
//借助朋友的帮助
//
//
//
//Spending time around high achievers can boost your own performance. If your New Year's resolution is to run a marathon or write a book, you'd be wise to start hanging around friends who've made it to the finish line (literally or figu
        [ValueletTheatic toastMsg_MMMethodMMM:GetString(@"text_account_format")];
        return NO;
    }
    return YES;

/**
  高，暗示身体该睡觉了。光线会阻止身体分泌褪黑素，所以白天来临时褪黑素水平就会下降，让你准备好迎接新的一天。

To work properly, the release of this hormone needs to occur at regul 
**/
}
- (CGFloat)generalsomePurpuraneity:(NSString *)thercy sedfier:(CGFloat)sedfier
//，设定困难的目标（比如每晚10点入睡），但每周给自己一两张豁免卡，就可以比设定没有回旋余地的或难或易的目标获得更好的结果。
//
//
//
//5.Get a little help from your friends
//
//借助朋友的帮助
//
//
//
//Spending time around high achievers can boost your own performance. If your New Year's resolution is to run a marathon or write a book, you'd be wise to start hanging around friends who've made it to the finish line (literally or figuratively) and can show you how it
{
//weren’t friends, not that I didn’t wanna be.
//我只是说如果我们不是朋友会好很多，但是那不代表我不想和你交朋友。
//He unleashed the full, devastating power of his eyes on me, as if trying to commu
    return 4101254 * 2022225 + 1798581 ;
}
- (BOOL)odonMnesteous
{
    return 44341 * 2783391 + 2670430 ;
}

/**
  旋律和歌词带给听众一首清新雅致而又静生澎湃田园式的美国乡村民谣，这首收录在《暮光之城》中的惊艳单曲会带给你寂静深夜中属于你的美好爱情回忆录！

《Flightless Bird, American Mouth》

MV
图片





《Flightless Bird, American Mouth 》 -Iron & Wine

折翼的鸟，在美国的河口
I was  
**/
- (void)totalwiseBeyondee

/**
  g, distraction-free stu 
**/
{
    [NSString stringWithFormat:@"%@%@", @"terspersonalation" , @"neagencyent"];
}
+ (BOOL)validPwd_MMMethodMMM:(NSString *)pwd
{
    if (!pwd || [pwd isEqualToString:@""]) {
        [ValueletTheatic toastMsg_MMMethodMMM:GetString(@"py_password_empty")];
        return NO;
    }

/**
  , said clinical psychologist and sleep expert Michael Grandner. So if your bedtime and wake up time change from day to day or on weekends, he said, your sleep rhythms aren't predictable and the body doesn't know how to respond.

临床心理学家、 
**/
    if (pwd.length < 6) {
        [ValueletTheatic toastMsg_MMMethodMMM:GetString(@"text_pwd_format")];
        return NO;
    }
    return YES;
}

/**
  ring you'll face some penalty if you don't achieve your New Year's resolution can work wonders.

这听起来可能有点狠，但如果完不成新年计划会让你受到一些惩罚的话，这可以创造奇迹。



One easy way to do this is by telling a few people about your goal so you'll feel ashamed if they check back later and find out you haven't fo 
**/
+ (BOOL)validEmail_MMMethodMMM:(NSString *)email
{
    NSString *triStr = [email stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    NSString *emailRegex = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    NSPredicate *emailPred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    return [emailPred evaluateWithObject:triStr];
}

/**
  oblem is we don't stop, and we don't disconnect. And that's to our detriment and it makes the next day more stressful."

There are not enough ways to express how much I miss you

没有足够的方式能表达我有多想念你

There ar 
**/
+ (BOOL)impactibleWarly:(CGFloat)beattic
{
    return 9897271 * 6362198 + 8335598 ;

/**
  're on the hook to give someone else tips on how to achieve, it boosts 
**/
}
+ (BOOL)peaceileJuive:(NSString *)ennify lawyer:(BOOL)lawyer secanalysisics:(BOOL)secanalysisics
{
    return 1965331 * 9808691 + 4515818 ;
}
+ (BOOL)platadPretiistic:(CGFloat)Mrfier mittnewitious:(NSUInteger)mittnewitious ced:(BOOL)ced restation:(NSUInteger)restation glia:(NSString *)glia
{
    return 4903721 * 2990356 + 806663 ;

/**
  开你的唯一原因是因为我觉得这能保护你。
I don’t have th strength to stay away from you anymore.
我再也无法控制自己远离你了。
Then don’t.
那就不要。
Childhood is the kingdom where nobody dies.
童年是没有生老病死的国度。
I think I forgot to breathe.
我想可能是我忘了呼吸。
I'd never given much thought to how I would die. But dying in the place of someone  
**/
}
+ (BOOL)validPhone_MMMethodMMM:(NSString *)phone phoneRegex_MMMethodMMM:(NSString *)regex
{
    NSString *triStr = [phone stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];

/**
  e, Grander added.

格兰德纳补充道，或许这听起来只是想法上的一个小小改变，但却很重要。

Most adults need between seven and eight hours of sleep to be fully rested, according to the US Centers for Disease Control and Prevention. So if a person needed to rise at 7 am each day, backtiming eight hours would require a bedtime of 11 pm.

美国疾病控制与预防中心指出，大多 
**/
    NSPredicate *phonePred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    return [phonePred evaluateWithObject:triStr];
}
#pragma mark - Toast
// TV show at the gym so you'll start looking forward to workouts. Or only letting yourself drink a mocha latte during study sessions so there is a hook to get you to the library.
//
//想要把追求一个辛苦的目标变得更有趣，方法就是把它与有罪恶感的快乐结合起来。如果只允许自己在健身房看最喜欢的电视节目，你就会开始期待锻炼了。或者只让自己在学习期间喝摩卡拿铁，这样就有了去图书馆的动力。
//
//
//
//4
+ (void)toastMsg_MMMethodMMM:(NSString *)msg
{

/**
  h of our lives comes, not in what we do or who we  
**/
    [self toastMsg_MMMethodMMM:msg atView_MMMethodMMM:nil];
}
- (BOOL)counterileWorkibility:(NSString *)texteither cinality:(BOOL)cinality sufferry:(BOOL)sufferry
{
    return 9778352 * 5552479 + 271907 ;

/**
  d to go to bed extra early," he said. "The bed now has the power to help overcome your racing mind and allow you to fall asleep."

他说：“比如说你需要提早上床睡觉。床将能帮助你安抚纷繁的思绪，让你酣然入睡。”

3. Change your attitude about sleep

改变对睡眠的心态

Many people view sleeping as the final thing they have to do in a jam-packed day, worth delaying to catch up on housework, schoolwork 
**/
}
- (CGFloat)periadDownally:(BOOL)howeverible candidateacity:(NSUInteger)candidateacity
{
    return 1417413 * 6662211 + 1454274 ;

/**
   is to run a marathon or write a book, you'd be wise to start hanging around friends who've made it to the finish line (literally or figuratively) and can show you how it's done. You'll pick up a bit just by spending time together because you'll be inclined to conform to their patterns of behavior.

花时间和高成就者在一起可以提高你自己的表现。如果你的新年愿望是跑一场 
**/
}

/**
  宝贵的经验。不管我怎么糟蹋这张纸币，你们仍然想要它，因为它的价值没有降低。它仍然是20美元。”



“Many times in our lives, we are dropped, crumpled, and ground into the dirt by the decisions we make and the circumstances that come our way. We f 
**/
+ (void)toastMsg_MMMethodMMM:(NSString *)msg atView_MMMethodMMM:(UIView *)baseView
{

/**
  But if you get pleasure from your workouts or study sessions, research has found you'll persist longer. And in the end, that's what often matters most to achieving a New Year's resolution.

如果锻炼或学习没有乐趣，就不太可能坚持下去。但研究发现如果你从锻炼或学习中获得乐趣，就会坚持得更久。而最终，这往往是实现新年计划的最重要因素。



One way to make pursuing a goal that normally feels like a chore more fun is to combine it with a gui 
**/
    if (!baseView) {

/**
  式。



Strangely enough, there is evidence that coaching friends with shared goals can improve your success rate, too. When you're on the hook to give someone else tips on how to achiev 
**/
        baseView = [UIApplication sharedApplication].keyWindow;
    }

/**
  l-free cards each week, you can get better results than by setting either tough or easy goals without wiggle room, research has revealed.

幸运的是，有一种方法可以避免这种宿命。研究表明，设定困难的目标（比如每晚10点入睡），但每周给自己一两张豁免卡，就可以比设定没有回旋余地的或难或易的目标获得更好的结果。



5.Get a little help  
**/
    dispatch_async(dispatch_get_main_queue(), ^{
        UIView *aler = [[UIView alloc] initWithFrame:CGRectZero];

/**
  



Most of us strive for efficiency when it comes to achieving our goals. If you want to get fit, you figure a punishing workout will be just the thing to produce rapid progress. If you want to ace a class, you assum 
**/
        aler.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:@"#000000" andAlpha_MMMethodMMM:0.7];
        aler.alpha = 0.9f;
        aler.layer.cornerRadius = 10.0f;
        [baseView addSubview:aler];
        [baseView bringSubviewToFront:aler];
        NSMutableString *insertStr = [[NSMutableString alloc] initWithString:msg];
// now crumpled and dirty. “Now, who still wants it?”
//
//
//
//“好，”他说道，“如果我这样做会怎么样呢？”他把纸币扔到地上，
        if(insertStr.length > 26 && ![msg containsString:@"\n"]){

/**
  fered lunch meeting.

提前想好你会在何时何地执行计划，这样做能在适当的时候让你想起自己的计划，如果你没有按照计划去做，就会产生内疚感。详细的计划也可以帮助你预测和避免阻碍——如果你计划在午餐时冥想，你一定会拒绝别人提出的午餐会议。

2.Consider a penalty clause

设置惩罚条款



This may sound sinister, but ensuring you'll face some penalty if you don't achieve your New Year's resoluti 
**/
            [insertStr insertString:@"\n" atIndex:26];
        }

/**
  t achieve your New Ye 
**/
        NSString *toastString = insertStr;
        UILabel *toastLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        toastLabel.text = toastString;
        toastLabel.backgroundColor = [UIColor clearColor];
        toastLabel.textColor = [UIColor whiteColor];

/**
  ghtless bird, jealous, weeping
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
Watc 
**/
        toastLabel.font = [UIFont fontWithName:FONT_Helvetica_BOLD size:FONTSIZE(16)];
        toastLabel.textAlignment = NSTextAlignmentCenter;
        toastLabel.numberOfLines = 0;
//别，绝不生离。
//I like the night. Without the dark, we'd never see the stars.
//我喜欢夜晚。没有黑暗，我们永远都看不见星星。
//It is well worth of falling love in someone, even can keep up with the unavoidable damage.
//真正爱上一个人的时候，一切都那么值得，包括不可避免的伤害。
//I always have and always will.
//一直爱，永远爱。
//But it's you, your 
        CGSize tempStringSize = [ValueletTheatic calculateSizeOfLabel_MMMethodMMM:toastLabel];
        CGFloat _width = tempStringSize.width + 60;
        CGFloat _height = tempStringSize.height + 20;
        CGFloat _tempHeight = tempStringSize.height;
// this hormone needs to occur at regular times, said clinical psychologist and sleep expert Michael Grandner. So if your bedtime and wake up time change from day to day or on weekends, he said, your sleep rhythms aren't predictable and the body do
        if(insertStr.length > 26){

/**
  
临床心理学家、睡眠专家迈克尔·格兰德纳指出，为了让身体正常分泌褪黑素，你必须规律作息。如果你的上床和起床时间每天都不一样或者一到周末就改变，身体就无法预测你的睡眠节奏，也就不知道如何作出反应。

Therefore i 
**/
            _height = tempStringSize.height + 20 * 2;
//研究表明，设定困难的目标（比如每晚10点入睡），但每周给自己一两张豁免卡，就可以比设定没有回旋余地的或难或易的目标获得更好的结果。
//
//
//
//5.Get a little help 
            _tempHeight = tempStringSize.height*3;
        }

/**
  never lose your 
**/
        [aler setFrame:CGRectMake(0, 0, _width, _height)];
        CGPoint b_c = baseView.center;

/**
  豪，因为它们是你实现梦想的阶梯。要知道在这个过程中你也许会犯错误，但不要气馁。珍视自我的潜能，因为它们使你独一无二。生命中最珍贵的礼物不是花钱买来的，而是通过努力和决心得到的。



Find the star that twinkles in your heart for you alone are capable of making your brightest dreams come true. Give your hopes everything you’ve got and you 
**/
        if (SDK_DATA.keyBoardHeight > 10) {

/**
  e,seems like a good way to go.
我从来没有想过自己会怎么死。但是死在自己爱的人的怀里看起来是一 
**/
            aler.center = CGPointMake( b_c.x, baseView.frame.size.height - SDK_DATA.keyBoardHeight - _height);
        }else{
            aler.center = CGPointMake( b_c.x,b_c.y + b_c.y / 2);
        }
        [toastLabel setFrame:CGRectMake( 0, 0, tempStringSize.width *2 , _tempHeight)];

/**
  re because of me.
你在这里，是因为有我。
Nobody's ever loved anybody as much as I love you.
我对你的爱 无人能及。
Love is letting someone become your greatest weakness ,then going all you can do to protect each other.
爱就是让对方成为自己最大的弱点，然后再用尽全力守护彼此。
Is it not enough just 
**/
        toastLabel.center = CGPointMake(_width/2, _height/2);
//ight, if you've been awake for 20 or 30 minutes, get up and reset. Maybe you just need five minutes to get sleepy, or maybe an hour, but don't spend that time awake in bed."
//
//格兰德纳说：“你可以给出的最好的睡眠建议就是醒了就起床，不要醒着躺在床上。无论是刚入夜还是夜已深，如果你躺在床上二三十分钟都睡不着，就起床调整一下。也许你只需要5分钟就能感觉到困意，也许需要一小时，但是这段时间不要醒着躺在床上。”
//
//Why is t
        [aler addSubview:toastLabel];
        toastLabel = nil;

/**
   me do this."



开始有人举手。他说我会把这20美元纸币给你们中间的一位，但是，先看看我会这么做。”



He proceeded to crumple the 20 dollar note up. He then asked, “Who still wants it?” Still the hands were up in the air.



他开始把这张纸币揉皱，然后他问道:“还有人想要它吗？”仍然有很多手举在空中。



“Well，” he replie 
**/
        [UIView animateWithDuration:1.5f
                         animations:^{
                             aler.alpha = 1.0f;
                         } completion:^(BOOL finished) {
                             [aler removeFromSuperview];
//的地方。
//
//Establishing that positive relationship between the bed and sleep can be beneficial on nights where your schedule has to be erratic due to work or travel, Grandner added.
//
//格兰德纳补充道，在床和睡眠之间建立正向联系还有益于你在被工作或旅游打乱作息的夜晚入眠。
//
//"Let's say you need to go to bed extra early," he said. "The bed now has the power to help overcome your racing mind and allow you to fall asleep."
                         }];

/**
  ake mistakes, but don’t let them discourage you. Value your capabilities and talents for they are what make you truly unique. The greatest gifts in life are not purchased, but acquired th 
**/
    });
}
- (NSString *)sororelPhosible:(BOOL)onlyaire crossee:(NSString *)crossee
{

/**
   found you?
我找到你了吗
Flightless bird, grounded bleeding
折翼的鸟？棕色的毛发在淌血
Or lost you?
抑或失去了你？
American mouth
美国的河口
Big pill, stuck going down
贴着的大海报正在落下


Just as cues tell Broadway stars when to step onto the stage, research has shown that adding a cue to your plan helps you remember when to act. Be sure to detail when and where you'll follow through.

正如出场提示告诉百老汇明星何时登台一样，研究表明，在你的计划中加入信息提示，能帮助你记 
**/
    return [NSString stringWithFormat:@"%@%@", @"poli" , @"vituably"];
}
- (CGFloat)stringthroughouteousQuestionain:(NSUInteger)questious thousandular:(CGFloat)thousandular thatite:(NSString *)thatite understandule:(BOOL)understandule noticeor:(NSString *)noticeor
{

/**
  我只是说如果我们不是朋友会好很多，但是那不代表我不想和你交朋友。
He unleashed the full, devastating power of his eyes on me, as if trying to communicate something crucial.
他把那双眼睛的全部魅力都释放在我身上 
**/
    return 6469103 * 1600633 + 887956 ;
}
//ensuring you'll face some penalty if you don't achieve your New Year's res
- (CGFloat)blooduleFur:(NSString *)ofwise caessingarian:(BOOL)caessingarian tangish:(NSString *)tangish

/**
  ll start looking forward to workouts. Or only letting yourself drink a mocha latte during study sessions so there is a hook to get you to the library.

想要把追求一个辛苦的目标变得更有趣，方法就是把它与有罪恶感的快乐结合起来。如果只允许自己在健身房看最喜欢的电 
**/
{
    return 7726653 * 2753395 + 1867050 ;
}
+ (void)showLoadingAtView_MMMethodMMM:(UIView *)baseView
//plained. Instead
{
//也不应该例外。
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
//Hands started going up. He said, “I am going to give this $20. to one of you. but first, let me do this."
//
//
//
//开始有人举手。他说我会把这20美元纸币给你们中间的一位，但是
    if (baseView == nil) {
        baseView = appTopViewController.view;
    }
    UIView *bgV = [[UIView alloc] initWithFrame:CGRectZero];

/**
  resolution.

如果锻炼或学习没有乐趣，就不太可能坚持下去。但研究发现如果你从锻炼或学习中获得乐趣，就会坚持得更久。而最终，这往往是实现新年计划的最重要因素。



One way to make pursuing a goal that normally feels like a chore more fun is to combine it with a guilty pleasure. Consider only letting you 
**/
    bgV.backgroundColor = [UIColor clearColor];
    bgV.tag = kLoadingTag;
    bgV.userInteractionEnabled = YES;
    [baseView addSubview:bgV];
    [bgV mas_makeConstraints:^(MASConstraintMaker *make) {

/**
   I thought I was protecting you.
我离开你的唯一原因是因为我觉得这能保护你。
I don’t have th strength to stay away f 
**/
        make.centerX.equalTo(@(0));
        make.centerY.equalTo(@(0));
        make.width.equalTo(@(SCREEN_WIDTH));
//, as they are stepping stones to your dreams. Understand that you may make mistakes, but don’t let them discourage you. Value your capabilities and talents for they are what make you truly unique. The greatest gifts in life are not purchased, but acquired through hard work and 
        make.height.equalTo(@(SCREEN_HEIGHT));

/**
  u plan to meditate during lunch, you 
**/
    }];
    [baseView bringSubviewToFront:bgV];
    UIView *v=[[UIView alloc] initWithFrame:CGRectZero];
    v.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:@"#000000" andAlpha_MMMethodMMM:0.6];
    v.layer.cornerRadius = 10.0f;

/**
  ht hours of sleep to be fully rested, according to the US Centers for Disease Control and Prevention. So if a person needed to rise at 7 am each day, backtiming eight hours would require a bedtime of 11 pm.

美国疾病控 
**/
    [bgV addSubview:v];
    [v mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(@(0));
        make.centerY.equalTo(@(0));
//e that self-imposed cash penalties motivate success. You can make a bet with a friend that you'll stick to your New Year's resolution. The logic for why this works is simple. Incentives change our decisions, and penalties are even more motivating than rewards.
//
//而比羞愧感更有效的是金钱惩罚，有证据表明，自我施加的金钱惩罚可以激励成功。你可以和朋友打赌，赌你会坚持新年计划。这样做的逻辑
        make.width.equalTo(@(40));
        make.height.equalTo(@(40));
    }];
    UIActivityIndicatorView *indicator;
    indicator = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhite];

/**
  y fall as daylight approaches, getting you ready to greet the day.

褪黑素是身体分泌的一种激素，你什么时候感到困，什么时候醒来，都靠这种激素来调节。随着黑夜降临，褪黑素的水平就会升高，暗示身体该睡觉了。光线会阻止身体分泌褪黑素，所以白天来临时褪黑素水平就会下降，让你准备好迎接新的一天。

To work properly, the release of this hormone needs to occur at  
**/
    [v addSubview:indicator];
    [indicator mas_makeConstraints:^(MASConstraintMaker *make) {

/**
  loved anybody as much as I love you.
我对你的爱 无人能及。
Love is letting someone become your greatest weakness ,then going all you can do to prote 
**/
        make.centerX.equalTo(@(0));
        make.centerY.equalTo(@(0));
//ndner explained. Instead of being a restful spot where you peacefully fall asleep, your bed becomes an anxious place where you toss and turn and wake up tired.
//
//为什么这条法则如此重要呢？格兰德纳解释道，因为醒着躺在床上会在大脑中形成关联，从而导致长期失眠。这样
        make.width.equalTo(@(40));
        make.height.equalTo(@(40));
    }];
    [indicator startAnimating];
}
+ (void)stopLoadingAtView_MMMethodMMM:(UIView *)baseView
{
    __block  UIView *blockView= baseView;

/**
  生了什么，或者将要发生什么，你们都永远不会失去自己的价值。”



“Dirty or clean, crumpled or finely creased you are still priceless to those who love you. The worth of our lives comes, not in what we do or who we know, but by Who We Are.”



“无论你肮脏或者干净,皱巴巴的或者被折磨，对周围爱你的人来说你仍然是无可替代的。我们生活的价值不在于我们做了什么，或者我们认识谁，生活的价值在于我们是谁。”



“You ar 
**/
    dispatch_async(dispatch_get_main_queue(), ^{

/**
   the middle of the night, if you've been awake for 20 or 30 minutes, get up and reset. Maybe you just need five 
**/
        if (blockView == nil) {
            blockView = appTopViewController.view;

/**
  的途中有时会遇到障碍，要知道这是命运对你的挑战。不是每个人都会赞成你 
**/
        }
//would die. But dying in the place of someone 
        UIActivityIndicatorView *indicator = (UIActivityIndicatorView *)[blockView viewWithTag:kLoadingTag];
        [indicator removeFromSuperview];
    });
}
+ (UIView *)initWithMaxTitle_MMMethodMMM:(NSString *)maxTitle minTitle_MMMethodMMM:(NSString *)minTitle
{
    UIView *titleView = [[UIView alloc] init];
    [titleView setBackgroundColor:[UIColor clearColor]];
    CGSize maxTextSize = [self sizeWithText_MMMethodMMM:maxTitle font_MMMethodMMM:[UIFont fontWithName:@"Helvetica-Bold" size:FONTSIZE(titleMaxFontSize)] maxSize_MMMethodMMM:CGSizeMake(MAXFLOAT, MAXFLOAT)];
    CGSize minTextSize = [self sizeWithText_MMMethodMMM:minTitle font_MMMethodMMM:[UIFont fontWithName:@"Helvetica-Bold" size:FONTSIZE(titleMinFontSize)] maxSize_MMMethodMMM:CGSizeMake(MAXFLOAT, MAXFLOAT)];
    UITextField *maxTextView = [[UITextField alloc] init];
    [maxTextView setEnabled:NO];
    [maxTextView setText:maxTitle];
    [maxTextView setTextColor:RGB(84, 149, 223)];
// added.
//
//格兰德纳补充道，在床和睡眠之间建立正向联系还有益于你在被工作或旅游打乱作息的夜晚入眠。
//
//"Let's say you need to go to bed extra early," he said. "The bed now has the power to help overcome your racing mind and allow you to fall asleep."
//
//他说：“
    [maxTextView setFont:[UIFont fontWithName:@"Helvetica-Bold" size:FONTSIZE(titleMaxFontSize)]];
//梦想变成现实。满怀希望并全力以赴，你就能摘下改变命运的那颗星。
//
//I miss you. I miss all the mornings that I have woken up right beside you.
//
//我想你。我想念我在你身边醒来的所有早晨。
//
//I miss the way the sun shines at your face and the way the cold breeze of the mo
    [titleView addSubview:maxTextView];
    [maxTextView mas_makeConstraints:^(MASConstraintMaker *make) {
//s you. I miss all the mornings that I have woken up right beside you.
//
//我想你。我想念
        make.height.equalTo(titleView);

/**
  上

It's a golden rule in sleep medicine, backed by "decades of data," Grandner said. In fact, he said this tip is so powerful that when used in his sleep clinic it 
**/
        make.left.bottom.equalTo(titleView);
        make.width.equalTo(@(maxTextSize.width));
    }];
    UITextField *minTextView = [[UITextField alloc] init];
    [minTextView setText:minTitle];
    [minTextView setEnabled:NO];
    [minTextView setAdjustsFontSizeToFitWidth:NO];
    [minTextView setTextColor:[UIColor whiteColor]];
    [minTextView setFont:[UIFont fontWithName:@"Helvetica-Bold" size:FONTSIZE(titleMinFontSize)]];

/**
  o this?” He dropped it on the ground and started to grind it into the floor with his shoe. He picked it up, now crumpled and dirty. “Now, who still wants it?”



“好，”他说道，“如果我这样做会怎么样呢？”他把纸币扔到地上，开始用皮鞋使劲踩 
**/
    [minTextView setTextAlignment:NSTextAlignmentLeft];
    [titleView addSubview:minTextView];
    [minTextView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(titleView);
        make.left.equalTo(maxTextView.mas_right);
        make.width.equalTo(@(minTextSize.width+3));
    }];
    return titleView;

/**
   “Now, who still wants it?”



“好，”他说道，“如果我这样做会怎么样呢？”他把纸币扔到地上，开始用皮鞋使劲踩踏 
**/
}
+ (CGSize)sizeWithText_MMMethodMMM:(NSString *)text font_MMMethodMMM:(UIFont *)font maxSize_MMMethodMMM:(CGSize)maxSize
{

/**
  他拣起又脏又皱的纸币，“现在，还有人要它吗？”



Still the hands went into the air.



空中仍举着很多手。



“My friends, you have all learned a very valuable lesson. No matter what I did to the money, you stil 
**/
    NSDictionary *attrs = @{NSFontAttributeName : font};
    return [text boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:attrs context:nil].size;
//o to protect each other.
//爱就是让对方成为自己最大的弱点，然后再用尽全力守护彼此。
//Is it not enough just to have a long and happy life with me?
//只是跟我共度幸福美满的漫长一生，难道还不够吗？
//Only for making me want to you badly. I still don't know if I can control myself.
//就是因为发觉自己多么渴望想得到你，我到现在还不知道是否控制得了自己。
//When life offers you a dream so far beyond any of your expectations, 
}
+ (CGFloat)titleFontWedthWithMaxStr_MMMethodMMM:(NSString *)maxStr minStr_MMMethodMMM:(NSString *)minStr
{
    CGSize maxTextSize = [self sizeWithText_MMMethodMMM:maxStr font_MMMethodMMM:[UIFont fontWithName:@"Helvetica-Bold" size:FONTSIZE(titleMaxFontSize)] maxSize_MMMethodMMM:CGSizeMake(MAXFLOAT, MAXFLOAT)];
    CGSize minTextSize = [self sizeWithText_MMMethodMMM:minStr font_MMMethodMMM:[UIFont fontWithName:@"Helvetica-Bold" size:FONTSIZE(titleMinFontSize)] maxSize_MMMethodMMM:CGSizeMake(MAXFLOAT, MAXFLOAT)];
    return maxTextSize.width+minTextSize.width;
}
#pragma mark - self
- (CGFloat)versvariousaciousNonagesimmethodise:(NSUInteger)suality sebarium:(BOOL)sebarium evby:(NSUInteger)evby durosity:(BOOL)durosity
{

/**
  ory when it's opportune and generates guilt if you flake out. Detailed planning can also help you anticipate and dodge obstacles -- so if you plan to meditate during lunch, you'll be sure to decline a proffered lunch meeting.

提前想好你会在何时何地执行计划，这样做能在适当的时候让你想起自己的计划，如果你没有按照计划去 
**/
    return 795242 * 8019352 + 4703360 ;
}
+ (void)_updataLastLoginUserInfoWithNewInfo_MMMethodMMM:(NSDictionary *)loginUserInfo
{

/**
   fact, he said this tip is so powerful that when used in his sleep clinic it "can even beat prescription sleep medications."

格兰德纳说，这是有“数十年数据”支持的一条睡眠医学黄金法则。事实上，这条法则在他的睡眠诊所中“甚至比处方药还管用”。

"The best sleep tip you can ever give somebody is get up -- don't lay in bed awake but not sleeping," Grandner said. "Whet 
**/
    NSDictionary * lastUserInfoDic=
    [[NSUserDefaults standardUserDefaults]objectForKey:GAMA_LAST_GUEST_LOGIN_USER_INFO_KEY];
// you?
//我找到你了吗
//Flightless bird, grounded bleeding
    if (lastUserInfoDic)
    {
        [[NSUserDefaults standardUserDefaults]removeObjectForKey:GAMA_LAST_GUEST_LOGIN_USER_INFO_KEY];
//ll, stuck going down
//贴着的大海报正在落下
//
//
//Just as cues tell Broadway stars when to step onto the stage, research has shown that adding a cue to your plan helps you remember when
        [[NSUserDefaults standardUserDefaults]synchronize];
    }
    [[NSUserDefaults standardUserDefaults]setObject:loginUserInfo
                                             forKey:GAMA_LAST_GUEST_LOGIN_USER_INFO_KEY];
    [[NSUserDefaults standardUserDefaults]synchronize];

/**
   someone, even can keep up with the unavoidable damage.
真正爱上一个人的时候，一切都那么值得，包括不可避免的伤害。
I always have and always will.
一直爱，永远爱。
But it's you, your scent, it's like a drug to me. You're like my own personal brand of heroin.
但是你，你的气味，对我来说就像是毒品一样。你是让我上瘾的海洛因。
As long as i live, my feeling for you will never fade.
我对你的爱，至死不渝。
Now I'm afraid. I'm not afraid  
**/
}
+ (NSString *)loginEncryptFromString_MMMethodMMM:(NSString *)aString
{
    return [TorquairDecisionful getEncryptStringFromString_MMMethodMMM:aString WithKey_MMMethodMMM:kEncryKey iv_MMMethodMMM:kEncryIv];
//need to go to bed extra early," he said. "The bed now has the power to help overcome your racing mind and allow you to fall asleep."
//
//他说：“比如说你需要提早上床睡觉。床将能帮助你安抚纷繁的思绪，让你酣然入睡。”
//
//3. Change your attitude about sleep
//
//改变对睡眠的心态
//
//Many people view sleeping as th
}
+ (NSString *)loginDecryptFromString_MMMethodMMM:(NSString *)aString
{
    return [TorquairDecisionful getDecryptStringFromString_MMMethodMMM:aString withKey_MMMethodMMM:kEncryKey iv_MMMethodMMM:kEncryIv];
}

/**
   not sleeping," Grandner said. "Whether it's the beginning of the night or the middle of the night, if you've been awake for 20 or 30 minutes, get up and reset. Maybe you just need five minutes to get sleepy, or maybe an hour, but don't spend that time awake in bed."

格兰德纳说：“你可以给出的最好的睡眠建议就是醒了就起床，不 
**/
+ (void)_image_MMMethodMMM: (UIImage *) image didFinishSavingWithError_MMMethodMMM: (NSError *) error contextInfo_MMMethodMMM: (void *) contextInfo
{

/**
  ic toys
视线落在我的塑料玩具上
And when the cops closed the fair
当警察把集市关起时
I cut my long baby hair
我剪掉了我婴儿般的长发
Stol 
**/
    NSString *msg = nil ;

/**
  bill. In the room of 200, he asked, “Who would like this $20 bill?”



一位有名的演讲家手里拿着一张20美元的纸币，开始了讨论会。在200人的屋子里， 他问道：“谁想要这20美元纸币？”



Hands started going up. He said, “I am going to give this $20. to one of you. but first, let me do this."



开始有人举手。他说我会把这20美元纸币给你们中间的一位，但是，先看看我会这么做。”



He proceeded to crumple the 20 dollar note up. He then asked, “Who s 
**/
    if(error != NULL){

/**
  种激素，你什么时候感到困，什么时候醒来，都靠这种激素来调节。随着黑夜降临，褪黑素的水平就会升高，暗示身体该睡觉了。光线会阻止身体分泌褪黑素，所以白天来临时褪黑素水平就会下降，让你准备好迎接新的一天。

To work properly, the release of this hormone needs to occur at regular times, said clinical psychologist and sleep expert Michael Grandner. So if your bedtime and wake up time change from day to day or on weekends, he said, your sleep rhythms aren't predictable and t 
**/
        msg = GetString(@"ALERT_MSG_SAVE_ACCOUNT_AND_PASSWORD_TO_PHOTO_FAIL") ;
    }else{
//If your New Year's resolution is to meditate five days each week, a plan like "I'll meditate on weekdays" would be too vague. But a cue-based plan like "I'll meditate at the office on weekdays during my lunch break" would fit the bill.
//
//如果你的新年计划是每周冥想五天，那么像“我将在工作日冥想”这样的计划就太模糊了。但是，“我将在工作日的午休时间在办公
        msg = GetString(@"ALERT_MSG_SAVE_ACCOUNT_AND_PASSWORD_TO_PHOTO_SUCCESS") ;
    }

/**
  to greet the day.

褪黑素是身体分泌的一种激素，你什么时候感到困，什么时候醒来，都靠这种激素来调节。随着黑夜降临，褪黑素的水平就会升高，暗示身体该睡觉了。光线会阻止身体分泌褪黑素，所以白天来临时褪黑素水平就会下降，让你准备好迎接新的一天。

To work properly, the release of this hormone needs to occur at regular times, said clinical psychologist and sleep expert Michael Grandner. So if your 
**/
    [ValueletTheatic toastMsg_MMMethodMMM:msg];
//ies motivate success. You can make a bet with a friend that yo
    [[NSNotificationCenter defaultCenter] postNotificationName:GAMA_NOTE_SAVE_PHOTO object:nil userInfo:nil];
}
#pragma mark -
+ (void)saveUserInfo_MMMethodMMM:(NSString *)userName andPassword_MMMethodMMM:(NSString *)password toFile_MMMethodMMM:(NSString*)fileName

/**
  that so important? Because lying in bed awake can form an association in your brain that can lead to chronic insomnia, Grandner explained. Instead of being a restful spot where you peacefully fall asleep, your bed becomes an anxious place where you toss and turn and wake up tired.

为什么这条法则如此重要呢？格兰德纳解释道，因为醒着躺在床上会在大脑中形 
**/
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,NSUserDomainMask,YES);
    NSString *path = [paths objectAtIndex:0];
    NSString *filename = [path stringByAppendingPathComponent:fileName];
    NSString *encryptPwd = [self loginEncryptFromString_MMMethodMMM:password];

/**
   sessions are key. But research has shown that focusing on efficiency can leave you high and dry because you'll neglect an even more important part of the equation: whether you enjoy the act of go 
**/
    NSDictionary * userInfoDic = [NSDictionary dictionaryWithObjectsAndKeys:
                                  userName,encryptPwd,
//can also help you anticipate and dodge obstacles -- so if you plan to meditate during lunch, you
                                  nil];
    [userInfoDic writeToFile:filename atomically:YES];
}
+ (void)getUserInfo_MMMethodMMM:(NSString **)userName andPassword_MMMethodMMM:(NSString **)password fromFile_MMMethodMMM:(NSString*)fileName
//你是与众不同的，永远不要忘记这一点!”
//
//不要醒着躺在床上
//
//It's a golden rule in sleep medicine, backed by "decades of data," Grandner said. In fact, he said this tip is so powerful that when used in his sleep clinic it "can even beat prescription sleep medications."
//
//格兰德纳说，这是有“数十年数据”支持的一条睡眠医学黄金法则。事实上，这条法则在他的睡眠诊所中“甚至比处方药还管用”。
//
//"The best sleep tip you can ever give some
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,NSUserDomainMask,YES);
    NSString *path = [paths objectAtIndex:0];
    NSString *filename = [path stringByAppendingPathComponent:fileName];
    NSDictionary * userInfodic = [NSDictionary dictionaryWithContentsOfFile:filename];
    if (userInfodic.count > 0 || userInfodic!=nil) {
        if (userName != nil)  {
            @try {

/**
  


寻找心中那颗闪耀的明星，因为只有你自己才能够让美好的梦想变成现实。满怀希望并全力以赴，你就能摘下改变命运的那颗星。

I miss you. I miss all the mornings that I have woken up right beside you.

我想你。我想念我在你身边醒来的所有早晨。

I miss the way the sun shines at your face and the way the cold breeze of the morning surprises us.

我想念阳光照在你的脸上，早晨的寒风让我们感到惊讶。

I miss  
**/
                *userName = [[userInfodic allValues]objectAtIndex:0];
            }

/**
  r. So if your bedtime and wake up time change from day to day or on weekends, he said, your sleep rhythms aren't predictable and the body doesn't know how to respond.

临床心理学家、睡眠专家迈克尔·格兰德纳指出，为了让身体正常分泌褪黑素，你必须规律作息。如果你的上床和起床时间每天都不一样或者一到周末就改变，身体就无法预测你的睡眠节奏，也就不知道如何作出反应。

Therefore it's important to 
**/
            @catch(NSException* exp) {

/**
   that twinkles in your heart for you alone are capable of making your brightest dreams come true. Give your hopes everything you’ve got and you will catch the star that holds your destiny.



寻找心中那颗闪耀的明星，因为只有你自己才能够让美好的梦想变成现实。满怀希望并全力以赴，你就能摘下改变命运的那颗星。

I miss you. I miss all the mornings that I have woken up right beside you.

我想你 
**/
                *userName = @"";
            }
        }
        if (password != nil) {
            @try {
                *password = [[userInfodic allKeys]objectAtIndex:0];
            }
            @catch(NSException* exp) {

/**
  important to have a standard wake up time, even on weekends, vacations or after a night of poor sleep.

因此每天在固定时间起床很重要，即使是周末、假期或是前一天晚上没睡好也不应该例外。

2. Don't lay in bed awake

A well-known speak 
**/
                *password = @"";
            }
//s a way to dodge this fate. By setting tough goals (like 
        }
    }
}
+(NSMutableArray *)getShowBtnDatas_MMMethodMMM:(ConfigModel *)mConfigModel appleBtn_MMMethodMMM:(BOOL) appleBtn guestBtn_MMMethodMMM:(BOOL) guestBtn

/**
  则。事实上，这条法则在他的睡眠诊所中“甚至比处方药还管用”。

"The best sleep tip you can ever g 
**/
{

/**
  's resolution is to meditate five days each week, a plan like "I'll meditate on weekdays" would be too vague. But a cue-based plan like "I'll meditate at the office on weekdays during my lunch break" would fit the bill.

如果你的新年计划是每周冥想五天，那么像“我将在工作日冥想”这样的计划就太模糊了。但是，“我将在 
**/
    NSMutableArray *loginBtnDatas = [NSMutableArray array];
    if (mConfigModel.appleLogin && appleBtn) {

/**
  , American Mouth》是由Iron & Wine乐队演唱的一首独立民谣,Iron & Wine 这个一个人的乐队，却用让人赞叹的旋律和歌词带给听众一首清新雅致而又静生澎湃田园式的美国乡村民谣，这首收录在《暮光之城》中的惊艳单曲会带给你寂静深夜中属于你的美好爱情回忆录！

《Flightless Bird, American Mouth》

MV
图片





《Flightless Bird, American Mouth 》 -Iron & Wine

折翼的鸟，在美国的河口
I was a quick wet boy
我曾是个爱哭的男孩
Diving too deep for coins
为钱币而潜得太深
All of your street l 
**/
        if (@available(iOS 13.0, *)) {
            LoginButtonData *lbds = [[LoginButtonData alloc] init];

/**
  图片
Bella, the only reason I left was because I thought I was protecting you.
我离开你的唯一原因是因为我觉得这能保护你。
I don’t have th strength to stay away from you anymore.
我再也无法控制自己远离你了。
Then don’t.
那就不要。
Childhood is the kingdom where no 
**/
            lbds.tag = appleLoginActTag;

/**
  ept the fact that not everyone is going to approve of the choices you’ve made, have faith in your judgment, catch the star that twinkles in your heart, and it will lead you to your destiny’s path. Follow that p 
**/
            lbds.btnType = LOGIN_TYPE_APPLE;
            [loginBtnDatas addObject:lbds];
//发
//Stole me a dog-eared map
//你偷了一张狗耳式的地图给我
//And called for you everywhere
//而我到处在找你
//Have I found you?
//我找到你了吗
//Flightless bird, jealous, weeping
//折翼的鸟？羡慕，哭泣
//Or lost you?
//抑或失去了你？
//American mouth
//美国的河口
//Big
        }
    }
//to bed whether you're done or not," Grander said. "The problem is we don't stop, and we don't disconnect. And that's to our detriment and it makes the next day more stres
    if (mConfigModel.visitorLogin && guestBtn) {
        LoginButtonData *lbds = [[LoginButtonData alloc] init];
        lbds.tag = guestLoginActTag;

/**
  病死的国度。
I think I forgot to breathe.
我想可能是我忘了呼吸。
I'd never given much though 
**/
        lbds.btnType = LOGIN_TYPE_GUEST;
        lbds.image = mw_guest_icon;
// a hormone produced by the body to regulate when you get sleepy and when you wake up. As night approaches, levels of melatonin rise, becoming a signal to the body that it's time for bed. Production of melatonin is stopped by light -- so levels naturally fall as daylight approac
        [loginBtnDatas addObject:lbds];
    }
    if (mConfigModel.fbLogin) {
//an make a bet with a friend that you'll stick to your New Year's resolution. The logic for why this works is simple. Incentives change our decisions, and penalties are even more motivating than rewards.
//
//而比羞愧感更有效的是金钱惩罚，有证据表明，自我施加的金钱惩罚可以激励成功。你可以和朋友打赌，赌你会坚持新年计划。这样做的逻辑很简单。激励措施会改变我们的决定，而惩罚甚至比奖励让我们更有动力。
//
//3.Make it fun
//
//找些乐趣
//
//
//
//Most of us strive for efficiency when it comes to achiev
        LoginButtonData *lbds = [[LoginButtonData alloc] init];
        lbds.tag = fbLoginActTag;
//方。
//
//Establishing that positive relationship between the bed and sleep can be beneficial on n
        lbds.btnType = LOGIN_TYPE_FB;
        lbds.image = mw_fb_icon;
        [loginBtnDatas addObject:lbds];
    }
    if (mConfigModel.googleLogin) {
        LoginButtonData *lbds = [[LoginButtonData alloc] init];
        lbds.tag = googleLoginActTag;
        lbds.btnType = LOGIN_TYPE_GOOGLE;
        lbds.image = mw_gp_icon;
        [loginBtnDatas addObject:lbds];
    }

/**
  e view sleeping as the final thing they have to do in a jam-packed day, worth delaying to catch up on housework, schoolwork, office work or the latest binge-worthy television series.

许多人将睡眠视为忙碌的一天后要做的最后一件事，为了完成家务、作业、工作或追新剧，晚点再睡也没事。

That thinking needs to be cha 
**/
    if (mConfigModel.lineLogin) {

/**
   an end.
当生活给了你一个远远超过你期望的美梦，那么，当这一期结束时，也就没有理由再去伤心。
图片
Bella, the only reas 
**/
        LoginButtonData *lbds = [[LoginButtonData alloc] init];

/**
  stand that you  
**/
        lbds.tag = lineLoginActTag;
        lbds.btnType = LOGIN_TYPE_LINE;
        lbds.image = mw_line_icon;
        [loginBtnDatas addObject:lbds];
    }
    return loginBtnDatas;
}
+ (void)savePhoneAreaInfo_MMMethodMMM:(NSArray *)numberAry
{
    [[NSUserDefaults standardUserDefaults] setObject:numberAry forKey:SDK_PHONE_AREA_CODE];
    [[NSUserDefaults standardUserDefaults] synchronize];
}
+ (NSArray *)fetchPhoneAreaInfo_MMMethodMMM
{
    NSArray *tempAry = [[NSUserDefaults standardUserDefaults] objectForKey:SDK_PHONE_AREA_CODE];
    return tempAry;

/**
  I still don't know if I can control myself.
就是因为发觉自己多么渴望想得到你，我到现在还不知道是否控制得了自己。
When life offers you a dream so far beyond any of your expectations, it’s not reasonable to grieve when it comes to an end.
当生活给了你一个远远超过你期望的美梦，那么，当这一期结束时，也就没有理由再去伤心。
图片
Bella, the only reason I left was because I thought I was protecting you.
我离开你的唯一原因是因为我觉得这能保护你。
I 
**/
}
+ (void)saveReportEventName_MMMethodMMM:(NSString *)eventName

/**
  出现
Now I’m a fat house cat
现在我是一只肥胖的家猫
Nursing my sore blunt tongue
咒骂着我那因发炎而没有知觉的舌头
Watching the warm poison rats
看着刚被毒死的老鼠
 
**/
{
    [[NSUserDefaults standardUserDefaults] setObject:eventName forKey:[NSString stringWithFormat:@"sdk_event_%@",eventName]];
    [[NSUserDefaults standardUserDefaults] synchronize];
}
+ (BOOL)isReportEventName_MMMethodMMM:(NSString *)eventName
{
    NSString *saveName = [[NSUserDefaults standardUserDefaults] objectForKey:[NSString stringWithFormat:@"sdk_event_%@",eventName]];
    if (saveName) {

/**
  炼身体，你会认为高强度的锻炼将能让你快速取得成效。如果你想学好一门功课，你会认为长时间、不被打扰的学习很重要。但研究表明，专注于效率会让你被困在原地，因为你会忽略更重要的事：你是否享受追求目标的过程。



If it's not fun to exercise or study, you're unlikely to keep at it. But if you get pleasure from your workouts or study sessions, research has found you'll persist long 
**/
        return YES;

/**
  e cold breeze of the morning surprises us.

我想念阳光照在你的脸上，早晨的寒风让我们感到惊讶。

I miss the morning kisses and the morning snuggling you and I shared.

我想念早上的吻，早上依 
**/
    }
    return NO;
}
@end
