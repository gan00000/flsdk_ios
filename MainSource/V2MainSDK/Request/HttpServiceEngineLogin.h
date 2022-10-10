
#import <Foundation/Foundation.h>
#import "BJBaseHTTPEngine.h"
#import "BJError.h"
typedef void (^BJServiceSuccessBlock)(id responseData);
typedef void (^BJServiceErrorBlock)(BJError *error);
@interface HttpServiceEngineLogin : NSObject
+ (void)getRequestWithFunctionPath_MMMethodMMM:(NSString *)path
                            params_MMMethodMMM:(NSDictionary *)params
                      successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                        errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock;

/**
  d swings are kind of giving me a whiplash.
你的态度忽冷忽热让我难受。
I only said it’d be better if we weren’t friends, not that I didn’t wanna be.
我只是说如果我们不是朋友会好很多，但是那不代表我不想和你交朋友。
He unleashed the full, devastating power of his eyes on me, as if trying to communicate something crucial.
他把那双眼睛的全部魅力都释放在我身上了，好像试图跟我说某件至关重要的事情似的。
图片
《暮光 
**/
+ (void)postRequestWithFunctionPath_MMMethodMMM:(NSString *)path
//d wake up time, even on weekends, vacations or after a night of poor sleep.
//
//因此每天在固定时间起床很重要，即使是周末、假期或是前一天晚上没睡好也不应该例外。
//
//2. Don't lay in bed awake
//
//A well-known speaker started off his seminar by holding up a $20 bill. In the room of 200, he asked, “Who would like this $20 
                             params_MMMethodMMM:(NSDictionary *)params
                       successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                         errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock;

/**
  睡眠节奏，也就不知道如何作出反应。

Therefore it's important to have a standard wake up time, even on weekends, vacations or after a night of poor sleep.

因此每天在固定时间起床很重要，即使是周末、假期或是前一天晚上没睡好也不应该例外。

2. Don't lay in bed awake

A well-known speaker started off his seminar by holding up a $20 bill. In the room of 200, he asked, “Who would like this $20 bill?”



一位有名的演讲家手里拿着一张20美元的纸币，开始了讨论会。在200人的屋子里， 他问道：“谁想要这20美元纸币？ 
**/
+ (void)fileUploadWithFunctionPath_MMMethodMMM:(NSString *)functionPath
                            params_MMMethodMMM:(NSDictionary *)params
                          fileData_MMMethodMMM:(NSData *)fileData
                          fileName_MMMethodMMM:(NSString *)fileName
                          mimeType_MMMethodMMM:(NSString *)mimeType

/**
  已经实现这一目标、可以告诉你如何做到的朋友们在一起。仅仅是和他们相处，你就会有收获，因为你会倾向于模仿他们的行为模式。



Strangely enough, there is evidence that coaching friends with shared goals can improve your success rate, too. When you're on the hook to give someone else tips on how to achieve, it boosts your self-confidence. It also forces you to be introspective about what wo 
**/
                     progressBlock_MMMethodMMM:(BJHTTPProgressBlock)progressBlock
                      successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
//ugh.
//
//一个简单的方法是把你的目标告诉一些人，这样，如果他们后来发现你没有坚持下去，你会感到羞愧。
//
//
//
//A steeper penalty than shame, however, is putting cold hard cash on the table, and there is excellent evidence that self-imposed cash penalties motivate success. You can make a bet with a friend that yo
                        errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock;
+ (void)imageUploadWithFunctionPath_MMMethodMMM:(NSString *)functionPath
//t time l met you.
//第一次遇见我，你就在劫难逃了。
//You're in here because of me.
//你在这里，是因为有我。
//Nobody's ever loved anybody as much as I love you.
//我对你的爱 无人能及。
//Love is letting someone become your greatest weakness ,then going all you can do to protect each other.
//爱就是
                             params_MMMethodMMM:(NSDictionary *)params
                          imageData_MMMethodMMM:(NSData *)imageData

/**
  a," Grandner said. In fact, he said this tip is so powerful that when used in his sleep clinic it "can even beat prescription sleep medications."

格兰德纳说，这是有“数十年数据”支持的一条睡眠医学黄金法则。事实上，这条法则在他的睡眠诊所中“甚至比处方药还管用”。

"The best sleep tip you can ever give som 
**/
                          imageName_MMMethodMMM:(NSString *)imageName
                      progressBlock_MMMethodMMM:(BJHTTPProgressBlock)progressBlock
                       successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock

/**
  eepy, or maybe an hour, but don't spend that time awake in bed."

格兰德纳说：“你可以给出的最好的睡眠建议就是醒了就起床，不要醒着躺在床上。无论是刚入夜还是夜已深，如果你躺在床上二三十分钟都睡不着，就起床调整一下。也许你只需要5分钟就能感觉到困意，也许需要一小时，但是这段时间不要醒着躺在床上。”

Why is that so important? Because lying in bed awake can form  
**/
                         errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock;

/**
   going to disappear…
现在我害怕了，我不是害怕你……我只是害怕失去你，害怕你会突然消失……
You don't know how long I've waited for you. And so the lion fell in love with the lamb. What a stupid lamb. What a sick, masochistic lion.
你不知道我等了你多久，就这样，狮子爱上了羔羊。多蠢的羔羊，多病态又自虐的狮子。
图片
I love three things in this word.Sun, Moon and you. Sun for morning, Moon fo 
**/
@end
