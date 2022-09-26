
#import <Foundation/Foundation.h>
#import <TargetConditionals.h>
#if TARGET_OS_IOS || TARGET_OS_TV
#import <UIKit/UIKit.h>

/**
  u… I'm only afraid of losing you. Like you're going to disappear…
现在我害怕了，我不是害怕你……我只是害怕失去你，害怕你会突然消失……
You don't know how long I've waited for you. And so the lion fell in love with the lamb. What a stupid lamb. What a sick, masochistic lion.
你不知道我等了你多久，就这样，狮子爱上了羔羊。多蠢的羔羊，多病态又自虐的狮子。
图片
I love three things in this word.Sun, Moon and you. S 
**/
#elif TARGET_OS_WATCH
#import <WatchKit/WatchKit.h>
#endif

/**
   each week, a plan like "I'll meditate on weekdays" would be too vague. But a cue-based plan like "I'll meditate at the office on weekdays during my lunch break" would fit the bill.

如果你的新年计划是每周冥想五天，那么像“我将在工作日冥想”这样的计划就太模 
**/
NS_ASSUME_NONNULL_BEGIN
FOUNDATION_EXPORT NSString * AFPercentEscapedStringFromString(NSString *string);
FOUNDATION_EXPORT NSString * AFQueryStringFromParameters(NSDictionary *parameters);
@protocol AFURLRequestSerialization <NSObject, NSSecureCoding, NSCopying>

/**
  atching the warm poison rats
看着刚被毒死的老鼠
Curl 
**/
- (nullable NSURLRequest *)requestBySerializingRequest:(NSURLRequest *)request
                               withParameters:(nullable id)parameters

/**
  像是毒品一样。你是让我上瘾的海洛因。
As long as i live, my feelin 
**/
                                        error:(NSError * _Nullable __autoreleasing *)error NS_SWIFT_NOTHROW;
@end
#pragma mark -
//rhythms aren't predictable and the body doesn't know how to respond.
//
//临床心理学家、睡眠
typedef NS_ENUM(NSUInteger, AFHTTPRequestQueryStringSerializationStyle) {
    AFHTTPRequestQueryStringDefaultStyle = 0,
};
@protocol AFMultipartFormData;
@interface AFHTTPRequestSerializer : NSObject <AFURLRequestSerialization>
@property (nonatomic, assign) NSStringEncoding stringEncoding;
@property (nonatomic, assign) BOOL allowsCellularAccess;
@property (nonatomic, assign) NSURLRequestCachePolicy cachePolicy;
@property (nonatomic, assign) BOOL HTTPShouldHandleCookies;

/**
  Establishing that positive relationship between 
**/
@property (nonatomic, assign) BOOL HTTPShouldUsePipelining;

/**
  . The logic for why this works is simple. Incentives chang 
**/
@property (nonatomic, assign) NSURLRequestNetworkServiceType networkServiceType;

/**
  g.

提前想好你会在何时何地执行计划，这样做能在适当的时候让你想起自己的计划，如果你没有按照计划去做，就会产生内疚感。详细的计划也可以帮助你预测和避免阻碍——如果你计划在午餐时冥想，你一定会拒绝别人提出的午餐会议。

2.Consider a penalty clause

设置惩罚条款



This may sound sinister, but ensuring you'll face some penalty if you don't achieve your New Year's resolution can work wonders.

这听起来可能有点狠，但如果完不成新年计划会让你受到一些惩罚的话，这可以创造奇迹。



One 
**/
@property (nonatomic, assign) NSTimeInterval timeoutInterval;
@property (readonly, nonatomic, strong) NSDictionary <NSString *, NSString *> *HTTPRequestHeaders;

/**
  星期五熬夜多看一集《继承之战》，此后你的早睡计划泡汤了，因为“去他的”反正你已经失败了。



Happily, there is a way to dodge this fate. By setting tough goals (like a 10 pm bedtime every night) but giving yourse 
**/
+ (instancetype)serializer;
//els naturally fall as daylight approaches, getting you ready to greet the day.
//
//褪黑素是身体分泌的一种激素，你什么时候感到困，什么时候醒来，都靠这种激素来调节。随着黑夜降临，褪黑素的水平就会升高，暗示身体该睡觉了。光线会阻止身体分泌褪黑素，所以白天来临时褪黑素水平就会下降，让你准备好迎接新的一天。
//
//To work properly, the release of this hormone need
- (void)setValue:(nullable NSString *)value
forHTTPHeaderField:(NSString *)field;

/**
  的大裂缝
Pissing on magazine photos
亲着杂志上的照片
Those fishing lures thrown in the cold an 
**/
- (nullable NSString *)valueForHTTPHeaderField:(NSString *)field;

/**
  dded.

格兰德纳补充道，或许这听起来只是想法上的一个小小改变，但却很重要。

Most adults need between seven and eight hours of sleep to be fully rested, according to the US Centers for Disease Control and Prevention. So if a person needed to rise at 7 am each day, backtiming eight hours would require a bedtime of 11 pm.

美国疾病控制与预防中心指出，大多数成人需要7到8小时睡眠时间才能得到充分休息。因此如果一个人每天要在早上7点起床，倒推8个小时睡眠时间应该是晚上11点。

"Now you know when you have t 
**/
- (void)setAuthorizationHeaderFieldWithUsername:(NSString *)username
// part of the equation:
                                       password:(NSString *)password;
- (void)clearAuthorizationHeader;
@property (nonatomic, strong) NSSet <NSString *> *HTTPMethodsEncodingParametersInURI;
- (void)setQueryStringSerializationWithStyle:(AFHTTPRequestQueryStringSerializationStyle)style;
- (void)setQueryStringSerializationWithBlock:(nullable NSString * _Nullable (^)(NSURLRequest *request, id parameters, NSError * __autoreleasing *error))block;
- (nullable NSMutableURLRequest *)requestWithMethod:(NSString *)method

/**
  
Happily, there is a way to dodge this fate. By setting tough goals (like a 10 pm bedtime every night) but giving yourself one or two get-out-of-jail-free cards each week, you can get better results than by setting either tough or easy 
**/
                                          URLString:(NSString *)URLString
                                         parameters:(nullable id)parameters
                                              error:(NSError * _Nullable __autoreleasing *)error;
- (NSMutableURLRequest *)multipartFormRequestWithMethod:(NSString *)method
                                              URLString:(NSString *)URLString
                                             parameters:(nullable NSDictionary <NSString *, id> *)parameters
                              constructingBodyWithBlock:(nullable void (^)(id <AFMultipartFormData> formData))block
                                                  error:(NSError * _Nullable __autoreleasing *)error;
- (NSMutableURLRequest *)requestWithMultipartFormRequest:(NSURLRequest *)request
                             writingStreamContentsToFile:(NSURL *)fileURL
                                       completionHandler:(nullable void (^)(NSError * _Nullable error))handler;
@end

/**
  。



Happily, there is a way to dodge this fate. By setting tough goals (like a 10 pm bedtime every night) but giving yoursel 
**/
#pragma mark -

/**
  "

There are not 
**/
@protocol AFMultipartFormData
- (BOOL)appendPartWithFileURL:(NSURL *)fileURL
                         name:(NSString *)name
                        error:(NSError * _Nullable __autoreleasing *)error;

/**
  你反省自己的方法是否对路。

1. Make a schedule, and stick to it

每天在固定时间起床和上床

Melatonin is a hormone produced by the body to regulate when you get sleepy and when you wake up. As night approaches, levels of melatonin rise, becoming 
**/
- (BOOL)appendPartWithFileURL:(NSURL *)fileURL
                         name:(NSString *)name
                     fileName:(NSString *)fileName
                     mimeType:(NSString *)mimeType
                        error:(NSError * _Nullable __autoreleasing *)error;
- (void)appendPartWithInputStream:(nullable NSInputStream *)inputStream
                             name:(NSString *)name

/**
  明，在你的计划中加入信息提示，能帮助你记住何时行动。一定要详细说明你将在何时何地做什么。



If your New Year's resolution is to meditate five days each week, a plan like "I'll meditate on weekdays" would be too vague. But a cue-based plan like "I'll meditate at the office on weekdays during my lunch break" would fit the bill.

如果你的新年计划是每周冥想五天，那么像“我将在工作日冥想”这样的计划就太模糊了。但是，“我将在工作日的午休时间在办公室冥想”这样有信息提示的计划就很合适。 
**/
                         fileName:(NSString *)fileName

/**
   from you anymore.
我再也没有离开你的力气了。
Your number was up the first time l met you.
第一次遇见我，你就在劫难逃了。
You're in here because of me.
你在这里，是因为有我。
Nobody's ever loved anybody as much as I l 
**/
                           length:(int64_t)length
//ke "I'll meditate at the office on weekdays during my lunch break" would fit the bill.
//
//如果你的新年计划是每周冥想五天，那么像“我将在工作日冥想”这样的计划就太模糊了。但是，“我将在工作日的午休时间在办公室冥想”这样有信息提示的计划就很合适。
//
//
//
//Plotting when and
                         mimeType:(NSString *)mimeType;
- (void)appendPartWithFileData:(NSData *)data
                          name:(NSString *)name

/**
  也不应该例外。

2. Don't lay in bed awake

A well-known speaker started off his seminar by holding up a $20 bill. In the room of 200, he asked, “Who would like this $20 bill?”



一位有名的演讲家手里拿着一张20美元的纸币，开始了讨论会。在200人的屋子里， 他问道：“谁想要这20美元纸币？”



Hands started going up. He said, “I am going to give this $20. to one of you.  
**/
                      fileName:(NSString *)fileName
                      mimeType:(NSString *)mimeType;
- (void)appendPartWithFormData:(NSData *)data
                          name:(NSString *)name;
- (void)appendPartWithHeaders:(nullable NSDictionary <NSString *, NSString *> *)headers
                         body:(NSData *)body;

/**
  hard cash on the table, and there is excellent evidence that self-imposed cash penalties motivate success. You can make a bet with a friend that you'll stick to your New Year's resolution. The logic for why this works is simple. Incentives change our decisions, and penalties are even more motivating than rew 
**/
- (void)throttleBandwidthWithPacketSize:(NSUInteger)numberOfBytes
                                  delay:(NSTimeInterval)delay;
@end
// keep up with the unavoidable
#pragma mark -
@interface AFJSONRequestSerializer : AFHTTPRequestSerializer
@property (nonatomic, assign) NSJSONWritingOptions writingOptions;
+ (instancetype)serializerWithWritingOptions:(NSJSONWritingOptions)writingOptions;

/**
   Follow that pathway and uncover the sweet sunrises that await you.



尽管实现梦想的途中有时会遇到障碍，要知道这是命运对你的挑战。不是每个人都会赞成你的选择，接受这个现实，并相信自我的判断，追随那颗在你心中闪烁的明星，它会引领你踏上命运的征途。坚持不懈，你就能享受那些幸福时刻。



Take pride in your accomplishments, as they are stepping stones to your dreams. Underst 
**/
@end
#pragma mark -
@interface AFPropertyListRequestSerializer : AFHTTPRequestSerializer
@property (nonatomic, assign) NSPropertyListFormat format;
@property (nonatomic, assign) NSPropertyListWriteOptions writeOptions;
+ (instancetype)serializerWithFormat:(NSPropertyListFormat)format
                        writeOptions:(NSPropertyListWriteOptions)writeOptions;

/**
   way to make pursuing a goal that normally feels like a chore more fun is to combine it with a guilty pleasure. Consider only letting yourself watch your favorite TV show at the gym so you'll start looking forward to workouts. Or only letting yourself drink a mocha latte during study sessions so there is a hook to get you to t 
**/
@end
#pragma mark -
FOUNDATION_EXPORT NSString * const AFURLRequestSerializationErrorDomain;
FOUNDATION_EXPORT NSString * const AFNetworkingOperationFailingURLRequestErrorKey;
FOUNDATION_EXPORT NSUInteger const kAFUploadStream3GSuggestedPacketSize;

/**
  g in the place of someone I love,seems like a good way to go.
我从来没有想过自己会怎么死。但是死在自己爱的人的怀里看起来是一个不错的选择。
Your mood swings are kind of giving me a whiplash.
你的态度忽冷忽热让我难受。
I only said it’d be better if we weren’t friends, not that I didn’t wanna be.
我只是说如果我们不是朋友会好很多，但是那 
**/
FOUNDATION_EXPORT NSTimeInterval const kAFUploadStream3GSuggestedDelay;
NS_ASSUME_NONNULL_END
