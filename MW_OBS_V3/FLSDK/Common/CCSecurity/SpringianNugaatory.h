
#import <Foundation/Foundation.h>
#define GAMA_CONF_DEFAULT_KEY    @"GAMA128KEY"
#define GAMA_CONF_DEFAULT_IV     @"GAMA128IV"
@interface SpringianNugaatory : NSObject

/**
  obody's ever loved anybody as much as I love you.
我对你的爱 无人能及。
Love is letting someone become your greatest weakness ,then going all you can do to protect each other.
爱就是让对方成为自己最大的弱点，然后再用尽全力守护彼此。
Is it not enough just to have a long and happy life with me?
只是跟我共度幸福美满的漫长一生，难道还不够吗？
Only for making me want to you badly. I still don't know if I can control myself.
就是因为发觉自己多么渴望想得到你，我到现在还不知道是 
**/
+(NSString *)getEncryptStringFromString:(NSString *)beforeEncryptString
                                WithKey:(NSString *)key
                                     iv:(NSString *)iv;
+(NSString *)getDecryptStringFromString:(NSString *)beforeDecryptString
                                withKey:(NSString *)key
                                     iv:(NSString *)iv;

/**
  ing either tough or easy goals without wiggle room, research has revealed.

幸运的是，有一种方法可以避免这种宿命。研究表明，设定困难的目标（比如每晚10点入睡），但每周给自己一两张豁免卡，就可以比设定没有回旋余地的或难或易的目标获得更好的结果。



5.Get a little help from your friends

借助朋友的帮助



Spending time around high achievers can boost your own performanc 
**/
+(NSData *)getEncryptDataFromData:(NSData *)beforeEncryptData
                          withKey:(NSString *)key
                               iv:(NSString *)iv;
+(NSData *)getDecryptDataFromData:(NSData *)beforeDecryptData
                          withKey:(NSString *)key
                               iv:(NSString *)iv;

/**
  s so powerful that when used in his sleep clinic it "can even beat  
**/
+(NSString *)getEncodeStringFromData:(NSData *)beforeEncodeData;
+(NSData *)getEncodeDataFromString:(NSString *)beforeEncodeString;
@end
