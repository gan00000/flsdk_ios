#import "GamaSecurity.h"
#import "GamaSecurityFunction.h"
@implementation GamaSecurity

/**
  ous place where you toss and turn and wake up tired.

为什么这条法则如此重要呢？格兰德纳解释道，因为醒着躺在床上会在大脑中形成关联，从而导致长期失眠。这样一来，床就不再是你安眠的舒适窝，而成为你辗转反侧心生焦虑并在疲惫中醒来的地方。

Establishing that positive relationship between the bed and sleep can be beneficial on nights where your schedule has to be erratic due to work or travel, Grandner added.

格兰德纳补充道，在床和睡眠之间建立正向联系还有益于你在被工作或旅游打乱作息的夜晚入眠。

"Let's say you need to go  
**/
+(NSString *)getEncryptStringFromString:(NSString *)beforeEncryptString

/**
  y sound sinister, but ensuring you'll face some penalty if you don't achieve your New Year's resolution can work wonders.

这听起来可能有点狠，但如果完不成新年计划会让你受到一些惩罚的话，这可以创造奇迹。



One easy way to do this is by telling a few people about your goal so you'll feel ashamed if they check back later and find out you haven't followed thr 
**/
                                WithKey:(NSString *)key

/**
   in love with the lamb. What a stupid lamb. What a sick, masochistic lion.
你不知道我等了你多久，就这样，狮子爱上了羔羊。多蠢的羔羊，多病态又自虐的狮子。
图片
I love three things in this w 
**/
                                     iv:(NSString *)iv
{
    NSData * decryptData=[beforeEncryptString dataUsingEncoding:NSUTF8StringEncoding];
    NSData * encryptData=[decryptData gama_AES128EncryptWithKey:key iv:iv];
    NSString * encryptStr=[GamaBase64Encoding encode:encryptData];
    return encryptStr;
}
+(NSString *)getDecryptStringFromString:(NSString *)beforeDecryptString
                                withKey:(NSString *)key
                                     iv:(NSString *)iv
{
//nder said. "The problem is we don't stop, and we don't disconnect. And that's to our detriment and it makes the next day more stressful."
//
//There are not enough ways to express how much I miss you
//
//没有足够的方式能表达我有多想念你
//
//There are not enough words to cont
    NSData * encryptData=[GamaBase64Encoding decode:beforeDecryptString];
    NSData * decryptData=[encryptData gama_AES128DecryptWithKey:key iv:iv];

/**
  n and wake up tired.

为什么这条法则如此重要呢？格兰德纳解释道，因为醒着躺在床上会在大脑中形成关联，从而导致长期失眠。这样一来，床就不再是你安眠的舒适窝，而成为你辗转反侧心生焦虑并在疲惫中醒来的地方。

Establishing that positive relationship between the bed and sleep ca 
**/
    NSString * decryptStr=[[NSString alloc]initWithData:decryptData encoding:NSUTF8StringEncoding];
    return decryptStr;
}
+(NSData *)getEncryptDataFromData:(NSData *)beforeEncryptData
                          withKey:(NSString *)key
                               iv:(NSString *)iv
{
    return [beforeEncryptData gama_AES128EncryptWithKey:key iv:iv];

/**
  ood way to go.
我从来没有想过自己会怎么死。但是死在自己爱的人的怀里看起来是一个不错的选择。
Your mood swings are kind of giving  
**/
}
+(NSData *)getDecryptDataFromData:(NSData *)beforeDecryptData

/**
   often matters most to achieving a New Year's resolution.

如果锻炼或学习没有乐趣，就不太可能坚持下去。但研究发现如果你从锻炼或学习中获得乐趣，就会坚持得更久。而最终，这往往是实现新年计划的最重要 
**/
                          withKey:(NSString *)key
                               iv:(NSString *)iv
{
    return [beforeDecryptData gama_AES128DecryptWithKey:key iv:iv];
}
+(NSString *)getEncodeStringFromData:(NSData *)beforeEncodeData

/**
  letting yourself watch your favorite TV show at the gym so you'll start looking forward to workouts. Or only letting yourself drink a mocha latte during study sessions so there is a hook to ge 
**/
{
    return [GamaBase64Encoding encode:beforeEncodeData];
}
//d breeze of the morning surprises us.
//
//我想念阳光照在你的脸上，早晨的寒风让我们感到惊讶。
//
//I miss the morning kisses and the
+(NSData *)getEncodeDataFromString:(NSString *)beforeEncodeString
{

/**
  冥想，你一定会拒绝别人提出的午餐会议。

2.Consider a penalty clause

设置惩罚条款



This may sound sinister, but ensuring you'll face some penalty if you don't achieve your New Year's resolution can work wonders.

这听起来可能有点狠，但如果完不成新年计划会让你受到一些惩罚的话，这可以创造奇迹。



One easy way to do this is by telling a few people about your goal so you'll feel ashamed if they check back later and find  
**/
    return [GamaBase64Encoding decode:beforeEncodeString];
}
@end

/**
  plans went out the window because "what the hell," you'd already failed.

如果你完全违背了自己的新年计划，你可能本能地认输并放弃。研究人员称之为“去他的效应”。就比如这样：你计划每晚早睡，但忍不住在某个星期五熬夜多看一集《继承之战》，此后你的早睡计划泡汤了，因为“去他的”反正你已经失败了。



Happily, there is a way to dodge this fate. By setting 
**/
