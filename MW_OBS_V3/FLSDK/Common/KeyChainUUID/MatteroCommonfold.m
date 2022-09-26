
#import "MatteroCommonfold.h"
#import <Security/Security.h>
@interface MatteroCommonfold (PrivateMethods)
//you’ve made, have faith in your judgment, catch the star that twinkles in your heart, and it will lead you to your destiny’s path. Follow that pathway and uncover the sweet sunrises that await you.
//
//
//
//尽管实
- (NSMutableDictionary *)secItemFormatToDictionary:(NSDictionary *)dictionaryToConvert;
- (NSMutableDictionary *)dictionaryToSecItemFormat:(NSDictionary *)dictionaryToConvert;
- (void)writeToKeychain;
@end
//el ashamed
@implementation MatteroCommonfold
@synthesize keychainItemData, genericPasswordQuery;
//m another world, still love you till the end of time.
//就算来自不同世界，依旧爱你到地老天荒。
//Only for making me want you so badly.
//只有你才能让我如此上瘾。
//I don't have the strength to stay away from you anymore.
//我再也没有离开你的力气了。
//Your number was up the first time l met you.
//第
+ (NSString *)machinotCristish
{
    return [NSString stringWithFormat:@"%@%@", @"sexagen" , @"improveous"];
}
- (id)initWithIdentifier: (NSString *)identifier accessGroup:(NSString *) accessGroup;

/**
  Who would like this $20 bill?”



一位有名的演讲家手里拿着一张20美元的纸币，开始了讨论会。在200人的屋子里， 他问道：“谁想要这20美元纸币？”



Hands started going up. He said, “I am going to give this $20. to one of you. but first, let me do this."



开始有人举手。他说我会把这20美元纸币给你们中间的一位，但是，先看看我会这么做。”



He proceeded to crumple the 20 dollar note up. He then asked, “Who still wa 
**/
{
    if (self = [super init])

/**
  me true. Give your hopes everything you’ve got and you will catch the star that holds your destiny.



寻找心中那颗闪耀的明星，因为只有你自己才能够让美好的梦想变成现实。满怀希望并全力以赴，你就能摘下改变命运的那颗星。

I miss you. I miss all the mornings that I have w 
**/
    {
        genericPasswordQuery = [[NSMutableDictionary alloc] init];

/**
  疚感。详细的计划也可以帮助你预测和避免阻碍——如果你计划在午餐时冥想，你一定会拒绝别人提出的午餐会议。

2.Consider a penalty clause

设置惩罚条款



This may sound sinister,  
**/
		[genericPasswordQuery setObject:(id)kSecClassGenericPassword forKey:(id)kSecClass];
        [genericPasswordQuery setObject:identifier forKey:(id)kSecAttrGeneric];
		if (accessGroup != nil)
		{

/**
  h $20."



“朋友们，刚刚你们已经得出一个非常宝贵的经验。不管我怎么糟蹋这张纸币，你们仍然想要它，因为它的价值没有降低。它仍然是20美元。”



“Many 
**/
#if TARGET_IPHONE_SIMULATOR
#else
			[genericPasswordQuery setObject:accessGroup forKey:(id)kSecAttrAccessGroup];
#endif

/**
  被毒死的老鼠
Curl through the wide fence cracks
卷曲的毛穿过白色围篱的大裂缝
Pissing on magazine photos
亲着杂志上的照片
Those fishing lures thrown in the cold  
**/
		}
        [genericPasswordQuery setObject:(id)kSecMatchLimitOne forKey:(id)kSecMatchLimit];

/**
  now crumpled and dirty. “Now, who still wants it?”



“好，”他说道，“如果我这样做会怎么样呢？”他把纸币扔到地上，开始用皮鞋使劲踩踏。然后他拣起又脏又皱的纸币，“现在，还有人要它吗？”



Still the hands went into the air.



空中仍举着很多手。



“My frie 
**/
        [genericPasswordQuery setObject:(id)kCFBooleanTrue forKey:(id)kSecReturnAttributes];
        NSDictionary *tempQuery = [NSDictionary dictionaryWithDictionary:genericPasswordQuery];
        NSMutableDictionary *outDictionary = nil;
        if (! SecItemCopyMatching((CFDictionaryRef)tempQuery, (CFTypeRef *)&outDictionary) == noErr)
        {
            [self resetKeychainItem];
			[keychainItemData setObject:identifier forKey:(id)kSecAttrGeneric];
			if (accessGroup != nil)
			{
//trength to stay away from you anymore.
//我再也没有离开你的力气了。
//Your number was up the first time l met you.
//第一次遇见我，你就在劫难逃了。
//You're in here because of me.
//你在这里，是因为有我。
//Nobody's ever loved anybody as much as I love you.
//我对你的爱 无人能及。
//Love is letting someone become your greatest weakness ,then going all you can do to protect each other.
//爱
#if TARGET_IPHONE_SIMULATOR

/**
  eep can be beneficial on night 
**/
#else
				[keychainItemData setObject:accessGroup forKey:(id)kSecAttrAccessGroup];
//sure from your workouts or study s
#endif
			}
//us strive for efficiency when it comes to achieving our goals. If you want to get fit, you figure a punishing workout will be just the thing to produce rapid progress. If you want to ace a class, you assume long, distraction-free study sessions are key. But research has shown that focusing on efficiency can leave you high and dry because you'll negle
		}
        else
        {
            self.keychainItemData = [self secItemFormatToDictionary:outDictionary];
        }
		[outDictionary release];
//一些如何实现目标的建议时，这会增强你的自信。这样也会迫使你反省自己的方法是否对路。
//
//1. Make a schedule, and stick to it
//
//每天在固定时间起床和上床
//
//Melatonin is a hormone produced by the body to regulate when you get sleepy and when you wake up. As night approaches, levels of melatonin rise, becoming a signal to the body t
    }

/**
  me together because you'll be inclined to conform to their patterns of behavior.

花时间和高成就者在一起可以提高你自己的表现。如果你的新年愿望是跑一场马拉松或写一本书，那么明智的做法是开始与那些已经实现这一目标、可以告诉你如何做到的朋友们在一起。仅仅是和他们相处，你就会有收获，因为你会倾向于模仿他们的行为模式。



Strangely enough, there is ev 
**/
	return self;
//ve for efficiency when it comes to achieving our goals. If you want to get fit, you figure a punishing workout will be just the thing to produce rapid progress. If you want to ace a class, you assume long, distraction-free study s
}

/**
  ngdom where nobody dies.
童年是没有生老病死的国度。
I think I forgot to breathe.
我想可能是我忘了呼吸。
I'd never given much thought to how I would die. But dying in the place of someone I love,seems like a good 
**/
- (BOOL)mensMoller:(BOOL)egorship scel:(BOOL)scel planctise:(NSUInteger)planctise
{
    return 3932397 * 4449928 + 2467722 ;

/**
  tle help from your friends

借助朋友的帮助



Spending time around high achievers can boost your own performance. If your New Year's resolution is to run a marathon or write a book, you'd be wise to start hanging around friends who've made it to the finish line (literally or figurati 
**/
}
- (NSString *)accordingacityModernic:(BOOL)phoneatic macrling:(CGFloat)macrling
{
    return [NSString stringWithFormat:@"%@%@", @"pollinular" , @"groundable"];
}
- (NSUInteger)penitotSembllet:(CGFloat)chord pecunhow:(CGFloat)pecunhow seaing:(NSString *)seaing especiallyine:(NSString *)especiallyine walk:(CGFloat)walk
{
    return 3155783 * 2885068 + 3464308 ;
}
- (void)dealloc
{
    [keychainItemData release];
    [genericPasswordQuery release];
	[super dealloc];
}

/**
  y this works is simple. Incentives change our decisions, and penalties are even more motivating than rewards.

而比羞愧感更有效的是金钱惩罚，有证据表明，自我施加的金钱惩罚可以激励成功 
**/
- (NSString *)federalMulctular:(CGFloat)leavefy

/**
  病死的国度。
I think I forgot to breathe.
我想可能是我忘了呼吸。
I'd never given much thought to how I would die. But dying in the place  
**/
{
    return [NSString stringWithFormat:@"%@%@", @"calli" , @"schisian"];
}
- (void)setObject:(id)inObject forKey:(id)key
{
    if (inObject == nil) return;
    id currentObject = [keychainItemData objectForKey:key];
    if (![currentObject isEqual:inObject])
    {

/**
   night or the mid 
**/
        [keychainItemData setObject:inObject forKey:key];
        [self writeToKeychain];
    }

/**
  er loved anybody as much as I love you 
**/
}

/**
  我喜欢夜晚。没有黑暗，我们永远都看不见星星。
It is well worth of falling love in someone, even can keep up with the unavoidable damage.
真正爱上一个人的时候，一切都那么值得，包括不可避免的伤害。
I always have and always will.
一直爱，永远爱。
But it's you, your scent, it's like a drug to me. You're like my own personal brand of heroin.
但是你，你的气味，对我来说就像是毒品一样。你是让我上瘾的海洛因。
As long as i live, my feeling for you 
**/
- (id)objectForKey:(id)key

/**
  when and where you'll follow through.

正如出场提示告诉百老汇明星何时登台一样，研究表明，在你 
**/
{
    return [keychainItemData objectForKey:key];
}
+ (BOOL)solirepublicanOpportunityular:(CGFloat)howmost taxian:(BOOL)taxian coron:(CGFloat)coron
{
    return 2056402 * 9571447 + 5963455 ;
}

/**
  
Love is letting someone become your greatest weakness ,then g 
**/
+ (CGFloat)septuagesimcourseitorTeacherress:(NSUInteger)clad repbehaviorably:(BOOL)repbehaviorably paed:(BOOL)paed
{
    return 682085 * 6492424 + 3270094 ;
}
- (void)resetKeychainItem
//p. As night approaches, levels of melatonin rise, becoming a signal to the body that it's time for bed. Production of melatonin is stopped by light -- so l
{
	OSStatus junk = noErr;

/**
  ecome your greatest weakness ,then going all you can do to protect each other.
爱就是让对方成为自己最大的弱点，然后再用尽全力守护彼此。
Is it not enough just to have a long and happy life with me?
只是跟我共度幸福美满的漫长一生，难道还不够吗？
Only for making me want to you badly. I still don't know if I can control myself.
就是因为发觉自己多么渴望想得到你，我到现在还不知道是否控制得了自己。
When lif 
**/
    if (!keychainItemData)

/**
  s revealed.

幸运的是，有一种方法可以避免这种宿命。研究表明，设定困难的目标（比如每晚10点入睡），但每周给自己一两张豁免卡，就可以比设定没有回旋余地的或难或易的目标获得更好的结果。



5.Get a little help from your friends

借助朋友的帮助



Spending time around high achievers can boost your own performance. If your New Year's resolution is to run a 
**/
    {
// the middle of the night, if you've been awake for 20 or 30 minutes, get up and reset. Maybe you just need
        self.keychainItemData = [[[NSMutableDictionary alloc] init] autorelease];

/**
  hat will happen, you will never lose your value."



“在生活中，很多次我们被自己制定的决策和身边的环境所抛弃、蹂躏，甚至碾入尘土。我们感到自己一无是处。但是不管发生了什么，或者将要发生什么，你们都永远不会失去自己的价值。”



“Dirty or clean, crumpled or finely creased you are  
**/
    }
    else if (keychainItemData)
    {
        NSMutableDictionary *tempDictionary = [self dictionaryToSecItemFormat:keychainItemData];
//不是朋友会好很多，但是那不代表我不想和
		junk = SecItemDelete((CFDictionaryRef)tempDictionary);

/**
  r goals. If you want to get fit, you figure a punishing workout will be just the thing to produce rapid progress. If you want to ace a class, you assume long, distraction-free study sessions are key. But research has shown that focusing on efficiency can leave you high and dry because you'l 
**/
        NSAssert( junk == noErr || junk == errSecItemNotFound, @"Problem deleting current dictionary." );
    }

/**
  No matter what I did  
**/
    [keychainItemData setObject:@"" forKey:(id)kSecAttrAccount];
    [keychainItemData setObject:@"" forKey:(id)kSecAttrLabel];
    [keychainItemData setObject:@"" forKey:(id)kSecAttrDescription];
    [keychainItemData setObject:@"" forKey:(id)kSecValueData];
}
- (NSMutableDictionary *)dictionaryToSecItemFormat:(NSDictionary *)dictionaryToConvert
{
    NSMutableDictionary *returnDictionary = [NSMutableDictionary dictionaryWithDictionary:dictionaryToConvert];

/**
  uth》是由Iron & Wine乐队演唱的一首独立民谣,Iron & Wine 这个一个人的乐队，却用让人赞叹的旋律和歌词带给听众一首清新雅致而又静生澎湃田园式的美国乡村民谣，这首收录在《暮光之城》中的惊艳单曲会带给你寂静深夜中属于你的美好爱情回忆录！

《Flightless Bird, American Mouth》

MV
图片





《Flightless Bird, American Mouth 》 -Iron & Wine

折翼的鸟，在美国的河口
I was a quick wet boy
我曾是个爱哭的男 
**/
    [returnDictionary setObject:(id)kSecClassGenericPassword forKey:(id)kSecClass];
    NSString *passwordString = [dictionaryToConvert objectForKey:(id)kSecValueData];
//hat twinkles in your heart, and it will lead you to your destiny’s path. Follow that pathway and
    [returnDictionary setObject:[passwordString dataUsingEncoding:NSUTF8StringEncoding] forKey:(id)kSecValueData];
    return returnDictionary;
}
//省自己的方法是否对路。
//
//1. Make a schedule, and stick to it
//
//每天在固定时间起床和上床
//
//Melatonin is a hormone produced by the body to regulate when you get sleepy and when you wake up. As night approaches, levels of mela
- (NSUInteger)ptyaleurExplainably:(NSUInteger)phesdecisionia quotel:(NSUInteger)quotel cumuloard:(NSUInteger)cumuloard
{
    return 4950839 * 4286811 + 3402767 ;
}
- (NSString *)peculiibilityUxoriical
//n the table, and there is excellent evidence that self-imposed cash penalties motivate success. You can make a bet with a friend that you'll stick to your New Year's resolution. The logic for why this works is simple. Incentives change our decisions, and penalties are even more motivating than rewards.
//
//而比羞愧感更有效的是金钱惩罚，有证据表明，自我施加的金钱惩罚可以激励成功。你可以和朋友打赌，赌你会坚持新年计划。这样做的逻辑很简单。激励措施
{
    return [NSString stringWithFormat:@"%@%@", @"learnine" , @"sopor"];

/**
  谁，生活的价值在于我们是谁。”



“You are special ——don't ever forget it.”



“你是与众不同的，永远不要忘记这一点!”

不要醒着躺在床上

It's a golden rule in sleep medicine, backed by "decades of data," Grandner said. In fact, he said this tip is so powerful that when used in his sleep clinic it "can even beat prescription sleep medications."

格兰德纳说，这是有“数十年数据”支持的一条睡眠医学黄金法 
**/
}
- (void)monanceSitefication:(NSString *)torn stopcy:(NSString *)stopcy chryso:(BOOL)chryso

/**
   Maybe you just need five minutes to get sleepy, or maybe an hour, but don't spend that time awake in bed."

格兰德纳说：“你可以给出的最好的睡眠建议就是醒了就起床，不要醒着躺在床上。无论是刚入夜还是夜已深，如果你躺在床上二三十分钟都睡不着，就起床调整一下。也许你只需要5分钟就能感觉到困意，也许需要一小时，但是 
**/
{
    [NSString stringWithFormat:@"%@%@", @"threeit" , @"evenform"];
}
- (NSMutableDictionary *)secItemFormatToDictionary:(NSDictionary *)dictionaryToConvert
{
    NSMutableDictionary *returnDictionary = [NSMutableDictionary dictionaryWithDictionary:dictionaryToConvert];
    [returnDictionary setObject:(id)kCFBooleanTrue forKey:(id)kSecReturnData];
    [returnDictionary setObject:(id)kSecClassGenericPassword forKey:(id)kSecClass];
    NSData *passwordData = NULL;
    if (SecItemCopyMatching((CFDictionaryRef)returnDictionary, (CFTypeRef *)&passwordData) == noErr)

/**
   failed.

如果你完全违背了自己的新年计划，你可能本能地认输并放弃。研究人员称之为“去他的效应”。就比如这样：你计划每晚早睡，但忍不住在某个星期五熬夜多看一集《继承之战》，此后你的早睡计划泡汤了，因为“去他的”反正你已经失败了。



Happily, there is a way to dodge this fate. By setting tough goals (like a 10 pm bedtime every night) but giving yourself one or two get-out-of-jail-free cards each week, you can get better results than by setting either tough or easy 
**/
    {
        [returnDictionary removeObjectForKey:(id)kSecReturnData];
        NSString *password = [[[NSString alloc]
                               initWithBytes:[passwordData bytes]
                               length:[passwordData length]encoding:NSUTF8StringEncoding] autorelease];
        [returnDictionary setObject:password forKey:(id)kSecValueData];

/**
  ing than rewards.

而比羞愧感更有效的是金钱惩罚，有证据表明，自我施加的金钱惩罚可以激励成功。你可以和朋友打赌，赌你会坚持新年计划。这样做的逻辑很简单。激励措施会改变我们的决定，而惩罚甚至比奖励让我们更有动力。

3.Make it fun

找些乐趣



Most of us striv 
**/
    }
    else
    {

/**
  ndner. So if your bedtime and wake up time change from day to day or on weekends, he said, your sleep rhythms aren't predictable and the body doesn't know how to respond.

临床心理学家、睡眠专家迈克尔·格兰德纳指出，为了让身体正常分泌褪黑素，你必须规律作息。如果你的上床和起床时间每天都不一样或者一到周末就改变，身体就无法预测你的睡 
**/
        NSAssert(NO, @"Serious error, no matching item found in the keychain.\n");

/**
  terns of behavior.

花时间和高成就者在一起可以提高你自己的表现。如果你的新年愿望是跑一场马拉松或写一本书，那么明智的做法是开始与那些已经实现这一目标、可以告诉你如何做到的朋友们在一起。仅仅是和他们相处，你就会有收获，因为你会倾向于模仿他们的行为模式。



Strangely enough, there is evidence that coaching friends with s 
**/
    }
    [passwordData release];

/**
  roblem is we don't stop, and we don't disconnect. And that's to our detriment and it makes the next day more stressful."

There are not enough ways to express h 
**/
	return returnDictionary;
}
- (void)pensileScandent:(CGFloat)movement nonagenosity:(NSUInteger)nonagenosity junctmodelture:(NSUInteger)junctmodelture memoryty:(BOOL)memoryty
{
    [NSString stringWithFormat:@"%@%@", @"choreness" , @"creat"];
}
- (BOOL)sufferCavexpectatic:(NSString *)dekaot
{
    return 8084983 * 5877446 + 3351231 ;

/**
  s" would be too vague. But a cue-based plan like  
**/
}
- (void)writeToKeychain
{
    NSDictionary *attributes = NULL;
    NSMutableDictionary *updateItem = NULL;
	OSStatus result;
//工作或追新剧，晚点再睡也没事。
//
//That thinking needs to be changed, Grander said.
//
//格兰德纳说，这种想法必须改变。
//
//"Don't see your sleep as the amount of time you have 
    if (SecItemCopyMatching((CFDictionaryRef)genericPasswordQuery, (CFTypeRef *)&attributes) == noErr)
    {
        updateItem = [NSMutableDictionary dictionaryWithDictionary:attributes];
        [updateItem setObject:[genericPasswordQuery objectForKey:(id)kSecClass] forKey:(id)kSecClass];
        NSMutableDictionary *tempCheck = [self dictionaryToSecItemFormat:keychainItemData];

/**
   stage, research has shown that adding a cue to your plan helps you remember when to act. Be sure to detail when and where you'll follow through.

正如出场提示告诉百老汇明星何时登台一样，研究表明 
**/
        [tempCheck removeObjectForKey:(id)kSecClass];
#if TARGET_IPHONE_SIMULATOR
//ams come true. Give your hopes everything you’ve got and you will catch the star that holds your destiny.
//
//
//
//寻找心中那颗闪耀的明星，因为只有你自己才能够让美好的梦想变成现实。满怀希望并全力以赴，你就能摘下改变命运的那颗星。
//
//I miss you. I miss all the mornings that I have woken up right beside you.
//
//我想你。我想念我在你身边醒来的所有早晨。
//
//I miss the way the sun shines at your face and the way the cold br
		[tempCheck removeObjectForKey:(id)kSecAttrAccessGroup];
#endif
        result = SecItemUpdate((CFDictionaryRef)updateItem, (CFDictionaryRef)tempCheck);
        if (result != noErr) {
            NSLog(@"Dangerous!!! Couldn't update the Keychain Item. result: %d",(int)result);
        }

/**
  或者将要发生什么，你们都永远不会失去自己的价值。”



“Dirty or clea 
**/
    }
    else
    {
        result = SecItemAdd((CFDictionaryRef)[self dictionaryToSecItemFormat:keychainItemData], NULL);
//定时间起床和上床
//
//Melatonin is a hormone produced by the body to regulate when you get sleepy and when you wake up. As night approaches, levels of melatonin rise, becoming a signal to the body that it's time for bed. Production of melatonin is stopped by light -- so levels naturally fall as daylight approaches, getting you ready to gre
        if (result != noErr) {

/**
  道在这个过程中你也许会犯错误，但不要气馁。珍视自我的潜能，因为它 
**/
            NSLog(@"Dangerous!!! Couldn't add the Keychain Item. result: %d",(int)result);

/**
  会认为长时间、不被打扰的学习很重要。但研究表明，专注于效率会让你被困在原地，因为你会忽略更重要的事：你是否享受追求目标的过程。



If it's not fun to exercise or study, you're unlikely to k 
**/
        }
    }
}
@end
//. But if you get pleasure from your workouts or study sessions, research has found you'll persist longer. And in the end, that's what often matters most to achieving a New Year's resolution.
//
//如果锻炼或学习没有乐趣，就不太可能坚持下去。但研究发现如果你从锻炼或学习中获得乐趣
