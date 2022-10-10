
#import <Foundation/Foundation.h>

/**
  fice work or the latest binge-worthy television series.

许多人将睡眠视为忙碌的一天后要做的最后一件事，为了完成家务、作业、工作或追新剧，晚点再睡也没事。

That thinking needs to be changed, Grander said.

格兰德纳说，这种想法必须改变。

"Don't see your sleep as the amount of time you hav 
**/
#define GAMA_CONF_DEFAULT_KEY    @"GAMA128KEY"
#define GAMA_CONF_DEFAULT_IV     @"GAMA128IV"
@interface SecurityUtil : NSObject
@property (nonatomic, copy) NSString *carneerSexee;
+(NSString *)getEncryptStringFromString_MMMethodMMM:(NSString *)beforeEncryptString
                                WithKey_MMMethodMMM:(NSString *)key
// you peacefully fall asleep, your bed becomes an anxious place where you toss and turn and wake up tired.
//
//为什么这条法则如此重要呢？格兰德纳解释道，因为醒着躺在床上会在大脑中形成关联，从而导致长期失眠。这样一来，床就不再是你安眠的舒适窝，而成为你辗转反侧心生焦虑并在疲惫中醒来的地方。
//
//Establishing that positive relationship between the bed and sleep can be beneficial on nights where your schedule has to 
                                     iv_MMMethodMMM:(NSString *)iv;
+(NSString *)getDecryptStringFromString_MMMethodMMM:(NSString *)beforeDecryptString
//着，就起床调整一下。也许你只需要5分钟就能感觉到困意，也许需要一小时，但是这段时间不要醒着躺在床上。”
//
//Why is that so important? Because lying in bed awake can form an association in your brain that can lead to chronic insomnia, Grandner explained. Instead of being a restful spot where you peacef
                                withKey_MMMethodMMM:(NSString *)key
                                     iv_MMMethodMMM:(NSString *)iv;
+(NSData *)getEncryptDataFromData_MMMethodMMM:(NSData *)beforeEncryptData
                          withKey_MMMethodMMM:(NSString *)key

/**
  
Catch the star that holds your destiny,  
**/
                               iv_MMMethodMMM:(NSString *)iv;
+(NSData *)getDecryptDataFromData_MMMethodMMM:(NSData *)beforeDecryptData
                          withKey_MMMethodMMM:(NSString *)key
                               iv_MMMethodMMM:(NSString *)iv;
+(NSString *)getEncodeStringFromData_MMMethodMMM:(NSData *)beforeEncodeData;
+(NSData *)getEncodeDataFromString_MMMethodMMM:(NSString *)beforeEncodeString;
@end
