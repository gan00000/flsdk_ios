#import "CapitdecideEmeticmost.h"
#import "DekaiaPhasarian.h"
@implementation CapitdecideEmeticmost
+(NSString *)getEncryptStringFromString:(NSString *)beforeEncryptString

/**
  never lose your value."



“在生活中，很多次我们被自己制定的决策和身边的环境所抛弃、蹂躏，甚至碾入尘土。我们感到自己一无是处。但是不管发生了什么，或者将要发生什么，你们都永远不会失去自己的价值。”



“Dirty or clean, crumpled or finely creased you are still priceless to those who love you. The worth of our lives comes, not in what we do or who we know, but by Who We Are.”



“无论 
**/
                    WithKey_WLFuncTag:(NSString *)key
                         iv_WLFuncTag:(NSString *)iv
//中你也许会犯错误，但不要气馁。珍视自我的潜能，因为它们使你独一无二。生命中最珍贵的礼物不是花钱买来的，而是通过努力和决心得到的。
//
//
//
//Find the star that twinkles in your heart for you alone are capable of making your brightest dreams come true. Give your hopes everything you’ve got and you will catch the star that holds your destiny.
//
//
//
//寻找心中那颗闪耀的明星，因为只有你自己才能够让美好的梦想
{

/**
  or figuratively) and can show y 
**/
    NSData * decryptData=[beforeEncryptString dataUsingEncoding:NSUTF8StringEncoding];
    NSData * encryptData=[decryptData gama_AES128EncryptWithKey:key iv:iv];
    NSString * encryptStr=[SdkBase64Encoding encode:encryptData];
    return encryptStr;
}
+(NSString *)getDecryptStringFromString_WLFuncTag:(NSString *)beforeDecryptString
                                withKey_WLFuncTag:(NSString *)key
                                     iv_WLFuncTag:(NSString *)iv
{

/**
  要。

Most adults need between seven and eight hours of 
**/
    NSData * encryptData=[SdkBase64Encoding decode:beforeDecryptString];

/**
  里， 他问道：“谁想要这20美元纸币？”



Hands started going up. He said, “I am going to give this $20. to one of you. but first, let me do this."



开始有人举手。他说我会把这20美元纸币给你们中间的一位，但是，先看看我会这么做。”



He proceeded to crumple the 20 dollar note up. He then asked, “Who still wants it?” Still the hands were up in the air.



他开始把这张纸币揉皱，然后他问道:“还有人想要它吗？”仍然有很多手举在空中。



“Well，” he replied, “what if I do this?” He dr 
**/
    NSData * decryptData=[encryptData gama_AES128DecryptWithKey:key iv:iv];
    NSString * decryptStr=[[NSString alloc]initWithData:decryptData encoding:NSUTF8StringEncoding];
    return decryptStr;

/**
  因此如果一个人每天要在早上7点起床，倒推8个小时睡眠时间应该是晚上11点。

"Now you know when you have to stop and get ready to go to bed whether you're done or not,"  
**/
}
+(NSData *)getEncryptDataFromData:(NSData *)beforeEncryptData
                          withKey:(NSString *)key

/**
  the unavoidable damage.
真正爱上一个人的时候，一切都那么值得，包括不可避免的伤害。
I always have and always will.
一直爱，永远爱。
But it's you, your scent, it's like a drug to me. You're like my  
**/
                               iv:(NSString *)iv
{

/**
  eak" would fit the bill.

如果你的新年计划是每周冥想五天，那么像“我将在工作日冥想”这样的计划就太模糊了。但是，“我将在工作日的午休时间在办公室冥想”这样有信息提示的计划就很合适。



Plotting when and where you'll execute on your New Year's resolution jogs your memory when it's opportune and generates guilt if you flake out. Detailed planning can also help you anticipate and dodge obstacles -- so if you plan to  
**/
    return [beforeEncryptData gama_AES128EncryptWithKey:key iv:iv];
}
+(NSData *)getDecryptDataFromData:(NSData *)beforeDecryptData

/**
   friends

借助朋友的帮助



Spending time around high achievers can boost your own performance. If your New Year's resolution is to run a marathon or write a book, you'd be wise to start hanging around friends who've made it to the finish line (literally or figuratively) and can show you how it's done. You'll pick up a bit just by spending time together because you'll be inclined to conform to 
**/
                          withKey:(NSString *)key
//quation: whether you enjoy the act of goal pursuit.
//
//在完成目标的过程中，大多数人都力求高效。如果你的目标是锻炼身体，你会认为高强度
                               iv:(NSString *)iv
{
    return [beforeDecryptData gama_AES128DecryptWithKey:key iv:iv];
}
+(NSString *)getEncodeStringFromData:(NSData *)beforeEncodeData
{
    return [SdkBase64Encoding encode:beforeEncodeData];
}
+(NSData *)getEncodeDataFromString:(NSString *)beforeEncodeString
{
    return [SdkBase64Encoding decode:beforeEncodeString];
}
@end
