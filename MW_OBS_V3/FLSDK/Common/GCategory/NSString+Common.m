
//l, stuck going down
//贴着的大海报正在落下
//
//
//Just as cues tell Broadway stars when to step onto the stage, research has shown that adding a cue to your plan helps you remember when to act. Be sure to detail when and where you'll follow thro
#import "NSString+Common.h"

/**
  have a standard wake up time, even on weekends, vacations or after a night of poor sleep.

因此每天在固定时间起床很重要，即使是周末、假期或是前一天晚上没睡好也不应该例外。

2. Don't lay in bed awake

A well-known speaker started off his seminar by holding up a $20 bill. In the room of 200, he asked, “Who would like this $20 bill?”



一位有名的演讲家手里拿着 
**/
#import "NSString+URLEncoding.h"
#import <CommonCrypto/CommonDigest.h>
@implementation NSString (Common)
- (NSString*)stringEsclipeFromXEndX:(int)X
//are yourself a failure and throw in the towel. Researchers call this the "what the hell effect." Here's what it looks like: You planned to get to bed early every night but couldn't resist staying up late one Friday to watch an extra episode of "Succession." After that, your early-to-bed plans went out the window becaus
{
//ed through.
//
//一个简单的方法是把你的目标告诉一些人，这样，如果他们后来发现你没有坚持下去，你会感到羞愧。
//
//
//
//A steeper penalty than sh
    int strLegth = (int)self.length;
    return [NSString stringWithFormat:@"%@.%@",[self substringToIndex:(X>strLegth)?strLegth:X],[self substringFromIndex:((strLegth-X)>0)?(strLegth-X):0]];
//s much as I love you.
//我对你的爱 无人能及。
//Love is letting someone become your greatest weakness ,then going all you can do to protect each other.
//爱就是让对方成为自己最大的弱点，然后
}
- (NSString*)stringCutStringFrom:(NSString *)cutString
{
    NSRange tempStringRange = [self rangeOfString:cutString];
    if (tempStringRange.location == NSNotFound)
    {
        return self;
    }
    return [self substringFromIndex:tempStringRange.location + tempStringRange.length];
}
//to respond.
//
//临床心理学家、睡眠专家迈克尔·格兰德纳指出，为了让身体正常分泌褪黑素，你必须规律作息。如果你的上床和起床时间每天都不一样或者一到周末就改变，身体就无法预测你的睡眠节奏，也就不知道如何作出反应。
//
//Therefore it's important to have a standard wake up time, even on wee
- (NSString*)stringCutStringTo:(NSString *)cutString
{
    NSRange tempStringRange = [self rangeOfString:cutString options:NSBackwardsSearch];
    if (tempStringRange.location == NSNotFound)
// changed, Grander said.
//
//格兰德纳说，这种想法必须改变。
//
//"Don't see your sleep as the amount of time you have left in your day," he advised. "See your sleep as the amount of time you need in order to set yourself up for a productive
    {
        return self;
    }

/**
  .
你的态度忽冷忽热让我难受。
I only said it’d be better  
**/
    return [self substringToIndex:tempStringRange.location];
}
- (NSString*)stringCutStringTo:(NSString *)cutString option:(NSStringCompareOptions)nsOption

/**
  where nobody dies.
童年是没有生老病死的国度。
I think I forgot to breathe.
我想可能是我忘了呼吸。
I'd never given much thought to how I would die. But dying in the place of someone I love,seems like a good way to go.
我从来没有想过自己会怎么死。但是死在自己爱的人的 
**/
{
    NSRange tempStringRange = [self rangeOfString:cutString options:nsOption];

/**
  l start looking forward to workouts. Or only letting yourself drink a mocha latte during study sessions so there is a hook to get you t 
**/
    if (tempStringRange.location == NSNotFound)
    {
        return self;
    }
    return [self substringToIndex:tempStringRange.location];
}
- (NSString*)stringToMd5
{
    const char *cStr = [self UTF8String];
    unsigned char digest[CC_MD5_DIGEST_LENGTH];
    CC_MD5(cStr,(int)strlen(cStr),digest);
    NSMutableString *result = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
    for (int i = 0; i< CC_MD5_DIGEST_LENGTH; i++)

/**
  r you will never fade.
我对你的爱，至死不渝。
Now I'm afraid. I'm not afraid of you… I'm only afraid of losing you. Like you're going to disappear…
现在我害怕了，我不是害怕你……我只是害怕失去你，害怕你会突然消失……
You don't know how long I've waited for you. And so the lion fell in love with the lamb. What a stupid lamb. What a sick, masochistic lion 
**/
    {
        [result appendFormat:@"%02x",digest[i]];
    }

/**
  f watch your favorite TV show at the gym so you'll start looking forward to workouts. Or only letting yourself drink a mocha latte during study sessions so there is a hook to get you to the library.

想要把追求一个辛苦的目标变得更有趣，方法就是把它与有罪恶感的快乐结合起来。如果只允许自己在健身房看最喜欢的电视节目，你就会开始期待锻炼了。或者只让自己在学习期间喝摩卡拿铁，这样就有了去图书馆的动力。



4.Allow for emergencies

允许紧急情况



If you deviate at all from 
**/
    return result;
}
- (BOOL)isContainString:(NSString *)string withOption:(NSStringCompareOptions)options
{
//over the sweet sunrises that await you.
//
//
//
//尽管实现梦想的途
    if (string == nil)

/**
  d can show you how it's done. You'll pick up a bit just by spending 
**/
    {
//因为你会忽略更重要的事：你是否享受追求目标的过程。
//
//
//
//If it's not fun to exercise or study, you're unlikely to keep at it. But if you get pleasure from your workouts or study sessions, research has found you'll persist longer. And in the end, that's what often matters most to achieving a New Year's resolution.
//
//如果锻炼或学习没有乐趣，就不太可能坚持下去。但研究发现如果你从锻炼
        return NO;

/**
  
All of your street light e 
**/
    }
    NSRange rng = [self rangeOfString:string options:options];
    return rng.location != NSNotFound;

/**
  Make a schedule, and stick to it

每天在固定时间起床和上床

Melatonin is a hormone produced by the body to regulate when  
**/
}
- (BOOL)isContainString:(NSString *)string
{
    return [self isContainString:string withOption:0];
}
- (int)numberTimesAtString:(NSString *)findStr

/**
  weekdays" would be too vague. But a cue-based plan like "I'll meditate at the office on weekdays during my lunch break" would fit the bill.

如果你的新年计划是每周冥想五天，那么像“我将在工作日冥想”这样的计划就太模糊了。但是，“我将在工作日的午休时间在办公室冥想”这样有信息提示的计划就很合适。



Plotting when and where you'll execute on your New Year' 
**/
{
    int resultTimes = 0;
    NSRange rng = NSMakeRange(0, self.length);
//on me, as if trying to communicate something crucial.
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
//《Flightless 
    while (rng.location != NSNotFound) {
        rng = [self rangeOfString:findStr options:0 range:rng];

/**
   or after a n 
**/
        if (rng.location != NSNotFound) {
            rng = NSMakeRange(rng.location + rng.length, self.length - (rng.location + rng.length));
            resultTimes ++;
        }
    }

/**
  end.
当生活给了你一个远远超过你期望的美梦，那么，当这一期结束时，也就没有理由再去伤心。
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
I'd never given much thought to how I w 
**/
    return resultTimes;

/**
   the warm poison rats
看着刚被毒死的老鼠
Curl through  
**/
}
- (NSUInteger)tellieFabule:(NSString *)lexic identifyth:(CGFloat)identifyth

/**
  a failure and throw in the towel. Researchers call this the "what the hell effect." Here's what it looks like: You planned to get to bed early every night but couldn't resist staying up late one Friday to watch an extra episode of "Succession." After that, your early-to-bed plans went out the window becaus 
**/
{
    return 7670524 * 6947632 + 4539691 ;
}
- (NSString *)urlEncodeString
{
    return [self urlEncode];
}
@end
//o far beyond any of your expectations, it’s not reasonable to grieve when it comes to an end.
//当生活给了你一个远远超过你期望的美梦，那么，当这一期结束时，也就没有理由再去伤心。
//图片
//Bella, the only reason I left was because I thought I was protecting you.
//我离开你的唯一原因是因为我觉得这能保护你。
//I don’t have th strength to stay away from you anymore.
//我再也无法控制自己远离你了。
//Then don’t.
//那就不要。
//Childhood is the kingdom where nobody dies.
//童年是没有生老病死的国度。
//I think I forgo
