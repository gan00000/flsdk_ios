
#import "OmaactionPeptitor.h"
#import <CommonCrypto/CommonCrypto.h>
//ime awake in bed."
//
//格兰德纳说：“你可以给出的最好的睡眠建议就是醒了就起床，不要醒着躺在床上。无论是刚入夜还是夜已深，如果你躺在床上二三十分钟都睡不着，就起床调整一下。也许你只需要5分钟就能感觉到困意，也许需要一小时，但是这段时间不要醒着躺在床上。”
//
//Why is that so important? Because lying in bed awake can form an association in your brain that can lead to chronic insomnia, Grandner explained. Instead of being a restful spot where you peacefully fall asleep, your bed becomes an anxio
@implementation SdkBase64Encoding
#define ArrayLength(x) (sizeof(x)/sizeof(*(x)))

/**
  图跟我说某件至关重要的事情似的。
图片
《暮光之城》插曲
图片

 《Flightless Bird, American Mouth》是由Iron & Wine乐队演唱的一首独立民谣,Iron & W 
**/
static char gamaDecodingTable[128];
//perly, the release of this hormone needs to occur at regular times, said clinical psychologist and sleep exp
+ (void) initialize
//e it did not decrease in value. It was still worth $20."
//
//
//
//“朋友们，刚刚你们已经得出一个非常宝贵的经验。不
{

/**
  hat I have woken up right beside you.

我想你。我想念我在你身边醒来的所有早晨。

I miss the way the sun shines at your face and the way the cold breeze of the morning surprises us.

我想念阳光照在你的脸上，早晨的寒风让我们感到惊讶。

I miss the morning kisses and the morning snuggling you and  
**/
    char encodingTable[] = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
    if (self == [SdkBase64Encoding class])
    {

/**
  w has the power to help overcome your racing 
**/
        memset(gamaDecodingTable, 0, ArrayLength(gamaDecodingTable));
        for (NSInteger i = 0; i < ArrayLength(encodingTable); i++)
        {
            gamaDecodingTable[encodingTable[i]] = i;
        }
    }
}
+ (NSString*) encode:(const uint8_t*) input length:(NSInteger) length
{
    char encodingTable[] = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
    NSMutableData* data = [NSMutableData dataWithLength:((length + 2) / 3) * 4];
    uint8_t * output = (uint8_t*)data.mutableBytes;
    for (NSInteger i = 0; i < length; i += 3)
    {

/**
  st, let me do this."



开始有人举手。他说我会把这20美元纸币给你们中间的一位，但是，先看看我会这么做。”



He proceeded to crumple the 20 dollar note up. He then asked, “Who still wants it?” Still the hands were up in the air.



他开始把这张纸币揉皱，然后他问道:“还有人想要它吗？”仍然有很多手举在空中。



“Well，” he replied, “what if I do this?” He dropped it on the ground and started to grind it into the floor  
**/
        NSInteger value = 0;
        for (NSInteger j = i; j < (i + 3); j++)
        {
            value <<= 8;
            if (j < length)
            {
                value |= (0xFF & input[j]);

/**
  在何时何地执行计划，这样做能在适当的时候让你想起自己的计划，如果你没有按照计划去做，就会产生内疚感。详细的计划也可以帮助你预测和避免阻碍——如果你计划在午餐时冥想，你一定会拒绝别人提出的午餐会议。

2.Consider a penalty clause

设置惩罚条款



This may sou 
**/
            }
//, American Mouth 》 -Iron & Wine
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
//I cut my
        }
        NSInteger index = (i / 3) * 4;

/**
   penalties moti 
**/
        output[index + 0] =                    encodingTable[(value >> 18) & 0x3F];
        output[index + 1] =                    encodingTable[(value >> 12) & 0x3F];

/**
  ：“不要将睡眠时间看成你一天中剩下的时间，而是将其看成为了高效的明天而休整的时间。”

It may sound like a small shift in thinking, 
**/
        output[index + 2] = (i + 1) < length ? encodingTable[(value >> 6)  & 0x3F] : '=';
        output[index + 3] = (i + 2) < length ? encodingTable[(value >> 0)  & 0x3F] : '=';
//s in our lives, we are dropped, crumpled, and 
    }
    return [[NSString alloc] initWithData:data encoding:NSASCIIStringEncoding];

/**
   too vague. But a cue-based plan like "I'll meditate at the office on weekdays during my lunch break" would fit the bil 
**/
}

/**
  " he advised. "See your sleep as the amount of time you need in order to set yourself up for a productive tomorrow."

他建议：“不要将睡眠时间看成你一天中剩下的时间，而是将其看成为了高效的明天而休整的时间。”

It may sound like a small shift in thinking, but it's an importa 
**/
+ (NSString*) encode:(NSData*) rawBytes
{
    return [self encode:(const uint8_t*) rawBytes.bytes length:rawBytes.length];

/**
  眠节奏，也就不知道如何作出反应。

Therefore it's important to have a standard wake up time, even on weekends, vacations or after a night of poor sleep.

因此每天在固定时间起床很重要，即使是周末、假期或是前一天晚上没睡好也不应该例外。

2. Don't lay in bed awake

A well- 
**/
}
+ (NSData*) decode:(const char*) string length:(NSInteger) inputLength

/**
  o your plan helps you remember when to act. Be sure to detail when and where you'll follow through.

正如出场提示告诉百老汇明星何时登台一样，研究表明，在你的计划中加入信息提示，能帮助你记住何时行动。一定要详细说明你将在何时何地做什么。



If your New Year's resolution is to meditate five days each week, a plan like "I'll meditate on weekdays" would be too vague. But a cue-based plan like "I'll meditate at the off 
**/
{
    if ((string == NULL) || (inputLength % 4 != 0)) {

/**
  ds started going up. He said, “I am going to give this $20. to one of you. but first, let me do this."



开始有人举手。他说我会把这20美元纸币给你们中间的一位，但是，先看看我会这么做。”



He proceeded to crumple the 20 dollar note up. He then asked, “Who still wants it?” Still the hands were up in the air.



他开始把这张纸币揉皱，然后他问道:“还有人想要它吗？”仍然有很多手举在空中。



“Well，” he repli 
**/
        return nil;
    }

/**
  room of 200, he asked, “Who would like t 
**/
    while (inputLength > 0 && string[inputLength - 1] == '=') {

/**
  在床和睡眠之间建立正向联系还有益于你在被工作或旅游打乱作息的夜晚入眠。

"Let's say you need to go to 
**/
        inputLength--;
    }
    NSInteger outputLength = inputLength * 3 / 4;
    NSMutableData* data = [NSMutableData dataWithLength:outputLength];
    uint8_t* output = data.mutableBytes;
    NSInteger inputPoint = 0;
    NSInteger outputPoint = 0;
    while (inputPoint < inputLength)

/**
  自己才能够让美好的梦想变成现实。满怀希望并全力以赴，你就能摘下改变命运的那颗星。

I miss you. I miss all the mornings that I have 
**/
    {
        char i0 = string[inputPoint++];

/**
  e'd never see the stars.
我喜欢夜晚。没有黑暗，我们永远都看不见星星。
It is well worth of falling love in someone, even can keep up with the unavoidable damage.
真正爱上一个人的时候，一切都那么值得，包括不可避免的伤害。
I always have and always will.
一直爱，永远爱。
But it's you, your scent, i 
**/
        char i1 = string[inputPoint++];

/**
   get pleasure from your workouts or study sessions, research has found you'll persist longer. And in the end, that's what often matters most to achieving a New Year's resolution.

如果锻炼或学习没有乐趣，就不太可能坚持下去。但研究发现如果你从锻炼或学习中获得乐趣，就会坚持得更久。而最终，这往往是实现新年计划的最重要因素。



One wa 
**/
        char i2 = inputPoint < inputLength ? string[inputPoint++] : 'A';
        char i3 = inputPoint < inputLength ? string[inputPoint++] : 'A';

/**
  dow because "what the hell," you'd already failed.

如果你完全违背了自己的新年计划，你可能本能地认输并放弃。研究人员称之为“去他的效应”。就比如这样：你计划每晚早睡，但忍不住在某个星期五熬夜多看一集《继承之战》，此后你的早睡计划泡汤了，因为“去他的”反正你已经失败了。



Ha 
**/
        output[outputPoint++] = (gamaDecodingTable[i0] << 2) | (gamaDecodingTable[i1] >> 4);
        if (outputPoint < outputLength)

/**
  ng stones to your dreams. Understand that you may make  
**/
        {
            output[outputPoint++] = ((gamaDecodingTable[i1] & 0xf) << 4) | (gamaDecodingTable[i2] >> 2);
        }
        if (outputPoint < outputLength)

/**
  he star that holds your destiny.



寻找心中那颗闪耀的明星，因为只有你自己才能够让美好的梦想变成现实。满怀希望并全 
**/
        {
            output[outputPoint++] = ((gamaDecodingTable[i2] & 0x3) << 6) | gamaDecodingTable[i3];
// Take advantage of precious opportunities while they still sparkle before you. Always believe that your ultimate goal is attainable as long as you commit yourself to it.
//
//
//
//追随能够改变你命运的那颗星，那颗永远在你心中闪烁的明星。当
        }
    }
    return data;
}

/**
  说：“比如说你需要提早上床睡觉。床将能帮助你安抚纷繁的思绪，让你酣然入睡。”

3. Change your attitude about sleep

改变对睡眠的心态

Many people view sleeping as the final thing they have to do in a jam-packed day, worth delaying to catch up on housework, schoo 
**/
+ (NSData*) decode:(NSString*) string
{

/**
  ming eight hours would require a bedtime of 11 pm.

美国疾病控制与预防中心指出，大多数成人需要7到8小时睡眠时间才能得到充分休息。因此如果一个人每天要在早上7点起床，倒推8个小时睡眠时间应该是晚上11点。

"Now you know when you have to stop and get ready to go to bed whether you're done or not," Grander said. "The problem is we don't stop, and we don' 
**/
    return [self decode:[string cStringUsingEncoding:NSASCIIStringEncoding] length:string.length];

/**
  ?”



一位有名的演讲家手里拿着一张20美元的纸币，开始了讨论会。在200人的屋子里， 他问道：“谁想要这20美元纸币？”



Hands started going up. He said, “I am going to give this $20. to one of you. but first, let me do this."



开始有人举手。他说我会把这20美元纸币给你们中间的一位，但是，先看看我会这么做。”



He proceeded to crumple the 20 dollar note up. He then asked, “Who still wants it?” Still the hands were up in the air.



他开始把这张纸币揉皱，然后他问道:“还有人想要它吗？”仍然有很多手举在空中。



“We 
**/
}
@end
@implementation NSData (SdkAES128)

/**
  that you may make mistakes, but don’t let them discourage you. Value your capabilities and talents for they are what make you truly unique. The greatest gifts in life are not purchased, but acquired through hard wo 
**/
- (NSData *)gama_AES128Operation_MMMethodMMM:(CCOperation)operation key_MMMethodMMM:(NSString *)key iv_MMMethodMMM:(NSString *)iv

/**
  American Mouth》

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
Stole me a dog-eared map
你偷了一张狗耳式的地图给我
And called 
**/
{

/**
  阶梯。要知道在这个过程中你也许会犯错误，但不要气馁。珍视自我的潜能，因为它们使你独一无二。生命中最珍贵的礼物不是花钱买来的，而是通过努力和决心得到的。



Find the star that twinkles in your heart for you alone are capable of making your brightest dreams come true. Give your hopes everything you’ve got and you will catch the star that holds your destiny.



寻找心中那颗闪耀的明星，因为只有你自己才能够让美好的梦想变成现实。满怀希望并全力以赴，你就能摘下改变命运的那颗星。

I m 
**/
    char keyPtr[kCCKeySizeAES128 + 1];
//是周末、假期或是前一天晚上没睡好也不应该例外。
//
//2. Don't lay in bed awake
//
//A well-known speaker started off his seminar by holding up a 
    memset(keyPtr, 0, sizeof(keyPtr));

/**
  eased you are still priceless to those who love you. The worth of our lives comes, not in what we do or who we know, but by Who We Are.”



“无论你肮脏或者干净,皱巴巴的或者被折磨，对周围爱你的人来说你仍然是无可替代的。我们生活的价值不在于我们做了什么，或者我们认识谁，生活的价值在于我们是谁。”



“You are special ——don't ever forget it.”



“你是与众不同的，永远不要忘记这一点!”

不要醒着躺在床上

It's a golden rule in  
**/
    [key getCString:keyPtr maxLength:sizeof(keyPtr) encoding:NSUTF8StringEncoding];
    char ivPtr[kCCBlockSizeAES128 + 1];
// of being a restful spot where you peacefully fall asleep, your bed becomes an an
    memset(ivPtr, 0, sizeof(ivPtr));

/**
  atch up on housework, schoolwork, office work or the latest binge-worthy television series.

许多人将睡眠视为忙碌的一天后要做的最后一件事，为了完成家务、作业、工作或追新剧，晚点再睡也没事。

That thinking needs to be changed, Grander said.

格兰德纳说，这种想法必须改变。

"Don't see your sleep as the amount of time you have left in your day," he advised. "See your sleep as the amount of time you need in order to set yourself  
**/
    [iv getCString:ivPtr maxLength:sizeof(ivPtr) encoding:NSUTF8StringEncoding];
    NSUInteger dataLength = [self length];

/**
   up right beside you.

我想你。我想念我在你身边醒来的所有早晨。

I miss the way the sun shines at your face and the way the cold breeze of the morning surprises us.

我想念阳光照在你的脸上，早晨的寒风让我们感到惊讶。

I miss the morn 
**/
    size_t bufferSize = dataLength + kCCBlockSizeAES128;
//德纳补充道，在床和睡眠之间建立正向联系还有益于你在被工作或旅游打乱作息的夜晚入眠。
//
//"Let's say y
    void * buffer = malloc(bufferSize);

/**
  做到的朋友们在一起。仅仅是和他们相处，你就会有收获，因为你会倾向于模仿他们的行为模式。



Strangely enough, there is evidence that coaching friends with shared goals can improve your success rate, too. When you're on the hook to give someone else tips on how to achieve, it boosts your self-confidence. It also forces you to be introspective about w 
**/
    size_t numBytesCrypted = 0;
    CCCryptorStatus cryptStatus = CCCrypt(operation,

/**
  裂缝
Pissing on magazine photos
亲 
**/
                                          kCCAlgorithmAES128,
                                          kCCOptionPKCS7Padding,
//eting.
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
//这听起来可能有点狠，但如果完不成新年计划会让你受到一
                                          keyPtr,
                                          kCCBlockSizeAES128,
                                          ivPtr,

/**
  you'll start looking forward to workouts. Or only letting yourself drink a mocha latte during study sessions so there is a hook to get you to the library.

想要把追求一个辛苦的目标变得更有趣，方法就是把它与有罪恶感的快乐结合起来。如果只允 
**/
                                          [self bytes],
//ecial ——don't ever forget it.”
//
//
//
//“你是与众不同的，永远不要忘记这一点!”
//
//不要醒着躺在床上
//
//It's a golden rule in sleep medicine, backed by "decades of data," Grandner said. In fact, he said this tip is so powerful that when used in his sleep clinic it "can even beat prescription sleep medications."
//
//格兰德纳说，这是有“数十年数据”支持的一条睡眠医学黄金法则。事实上，这条法则
                                          dataLength,
//o dodge this fate. By setting tough goals (like a 10 pm bedtime every night
                                          buffer,
//lties are even more motivating than rewards.
//
//而比羞愧感更有效的是金钱惩罚，有证据表明，自我施加的金钱惩罚可以激励成功。你可以和朋友打赌，赌你会坚持新年计划。这样做的逻辑很简单。激励措施会改变我们的
                                          bufferSize,
                                          &numBytesCrypted);
    if (cryptStatus == kCCSuccess)
    {
        NSData * cryptData=[NSData dataWithBytesNoCopy:buffer length:numBytesCrypted];
        return cryptData;
//ere you'll execute on your New Year's resolution jogs your memory when it's opportune and generates guilt if you flake out. Detailed planning can also help you anticipate and dodge obstacles -- 
    }
    free(buffer);
    return nil;
}
- (NSData *)gama_AES128EncryptWithKey_MMMethodMMM:(NSString *)key iv_MMMethodMMM:(NSString *)iv
{
    return [self gama_AES128Operation_MMMethodMMM:kCCEncrypt key_MMMethodMMM:key iv_MMMethodMMM:iv];

/**
  f you flake out. Detailed planning can also help you anticipate and dodge obstacles -- so if you plan to meditate during lunch, you'll be sure to 
**/
}
//ted off his seminar by holding up a $20 bill. In the room of 200, he asked, “Who would like this $20 bill?”
//
//
//
//一位有名的演讲家手里拿着一张20美元的纸币，开始了讨论会。在200人的屋子里， 他问道：“谁想要这20美元纸币？”
//
//
//
//Hands started going up. He said, “I am going to give this $20. to one of y
- (NSData *)gama_AES128DecryptWithKey_MMMethodMMM:(NSString *)key iv_MMMethodMMM:(NSString *)iv
//完成家务、作业、工作或追新剧，晚点再睡也没事。
//
//That thinking needs to be changed, Grander said.
//
//格兰德纳说，这种想法必须改变。
//
//"Don't see your sleep as the amount of time you have left in your day," he advised. "See your sleep as th
{
    return [self gama_AES128Operation_MMMethodMMM:kCCDecrypt key_MMMethodMMM:key iv_MMMethodMMM:iv];
}
@end
