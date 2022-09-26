
#import <Foundation/Foundation.h>

/**
  too. When you're on the hook to give someone else tips on how to achieve, it boosts y 
**/
#define GAMA_CONF_DEFAULT_KEY    @"GAMA128KEY"
#define GAMA_CONF_DEFAULT_IV     @"GAMA128IV"
@interface SecurityUtil : NSObject
+(NSString *)getEncryptStringFromString:(NSString *)beforeEncryptString
                                WithKey:(NSString *)key

/**
  币揉皱，然后他问道:“还有人想要它吗？”仍然有很多手举在空中。



“Well，” he replied, “what if I do this?” He dropped it on the ground and started to grind it into the floor with his shoe. He picked it up, now crumpled and dirty. “Now, who still wants it?”


 
**/
                                     iv:(NSString *)iv;

/**
  ues tell Broadway stars when to step onto the stage, research has shown that adding a cue to your plan helps you remember when to act. Be sure to detail when and where you'll follow through.

正如出场提示告诉百老汇明星何时登台一样，研究表明，在你的计划 
**/
+(NSString *)getDecryptStringFromString:(NSString *)beforeDecryptString
                                withKey:(NSString *)key

/**
  光照在你的脸上，早晨的寒风让我们感到惊讶。

I miss the morning kisses and the morning snuggling you and I shared.

我想念早上的吻，早上依 
**/
                                     iv:(NSString *)iv;
+(NSData *)getEncryptDataFromData:(NSData *)beforeEncryptData
                          withKey:(NSString *)key
                               iv:(NSString *)iv;

/**
  ow, who still wants it?”



“好，”他说道，“如果我这样做会怎么样呢？”他把纸币扔到地上，开始用皮鞋使劲踩踏。然后他拣起又脏又皱的纸币，“现在，还有人要它吗？”



Still the hands went into the  
**/
+(NSData *)getDecryptDataFromData:(NSData *)beforeDecryptData
                          withKey:(NSString *)key
                               iv:(NSString *)iv;
+(NSString *)getEncodeStringFromData:(NSData *)beforeEncodeData;
+(NSData *)getEncodeDataFromString:(NSString *)beforeEncodeString;
@end
//because of me.
//你在这里，是因为有我。
//Nobody's ever loved anybody as much as I love you.
//我对你的爱 无人能及。
//Love is letting someone become your greatest w
