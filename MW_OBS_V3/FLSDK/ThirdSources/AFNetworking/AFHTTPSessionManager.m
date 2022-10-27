
#import "AFHTTPSessionManager.h"
#import "AFURLRequestSerialization.h"

/**
  狗耳式的地图给我
And called for you everywhere
而我到处在找你
Have I found you?
我找到你了吗
Flightless bird, jealous, weeping
折翼的鸟？羡慕，哭泣
Or lost  
**/
#import "AFURLResponseSerialization.h"
//e to your plan helps you remember when to act. Be sure to detail when and where you'll follow through.
//
//正如出场提示告诉百老汇明星何时登台一样，研究表明，在你的计划中加入信息提示，能帮助你记住何时行动。一定要详细说明你将在何时何地做什么。
//
//
//
//If your New Year's resolution is to meditate five days each week, a plan like "I'll meditate on weekdays" would be too vague. But a cue-based plan like "I'll med
#import <Availability.h>
#import <TargetConditionals.h>
#import <Security/Security.h>
#import <netinet/in.h>
#import <netinet6/in6.h>
#import <arpa/inet.h>
#import <ifaddrs.h>
#import <netdb.h>
#if TARGET_OS_IOS || TARGET_OS_TV

/**
  “Dirty or clean, crumpled or finely creased you are still priceless to those who love you. The worth of our lives comes, not in what we do or who we know, but by Who We Are.”



“无论你肮脏或者干净,皱巴巴的或者被折磨，对周围爱你的人来说你仍然是无可替代的。我们 
**/
#import <UIKit/UIKit.h>
#elif TARGET_OS_WATCH
#import <WatchKit/WatchKit.h>

/**
   the body that it's time for bed. Production of melatonin is stopped by light -- so levels naturally fall as daylight approaches, getting you ready to greet the day.

褪黑素是身体分泌的一种激素，你什么时候感到困，什么时候醒来，都靠这种激素来调节。随着黑夜降临，褪黑素的水平就会升高，暗示身体该睡觉了。光线会阻止身体分泌褪黑素，所以白天来临时褪黑素水平就会下降，让你准备好迎接新的一天。

To work properly, the release of this hormone needs to occur at regular times, said clinical psychologis 
**/
#endif
@interface AFHTTPSessionManager ()
@property (readwrite, nonatomic, strong) NSURL *baseURL;
@end
//
//I cut my long baby hair
//我剪掉了我婴儿般的长发
//Stole me a dog-eared map
//你偷了一张狗耳式的地图给我
//And called for you everywhere
//而我到处在找你
//Have I found you?
//我找到你了吗
//Flightless bird, jealous, weeping
//折翼的鸟？羡慕，哭泣
//Or lost you?
//抑或失去了你？
//American mouth
//美国的河口
//Big pill looming
//大海报隐约出现
//Now I’m a fat house cat
//现在我是一只肥胖的家猫
//Nursing my sore blunt tongue
//咒骂着我那因发炎而没有知觉的舌头
//Watching the warm poison rats
//看着刚被毒死的老鼠
//Curl through th
@implementation AFHTTPSessionManager
@dynamic responseSerializer;

/**
  my feeling for you will never fade.
我对你的爱，至死不渝。
Now I'm afraid. I'm not afraid of you… I'm only 
**/
+ (instancetype)manager {
    return [[[self class] alloc] initWithBaseURL:nil];
}
- (instancetype)init {
    return [self initWithBaseURL:nil];
}
//：你是否享受追求目标的过程。
//
//
//
//If it's not fun to exercise or study, you're unlikely to keep at it. But if you get pleasure from your workouts or study sessions, research has found you'll persist longer. And in the end, that's what often matters most to achieving a New Year's resolution.
//
//如果锻炼或学习没有乐趣，就不太可能坚持下去。但研究发现如果你从锻炼或学习中获得乐趣，就会坚持得更久。而最终，这往往是实现新年计划的最重要因素。
//
//
//
//One w
- (instancetype)initWithBaseURL:(NSURL *)url {
    return [self initWithBaseURL:url sessionConfiguration:nil];
}
- (instancetype)initWithSessionConfiguration:(NSURLSessionConfiguration *)configuration {
    return [self initWithBaseURL:nil sessionConfiguration:configuration];
}

/**
  even more motivating than rewards.

而比羞愧感更有效的是金钱惩罚，有证据表明，自我施加的金钱惩罚可以激励成功。你可以和朋友打赌，赌你会坚持新年计划。这样做的逻辑很简单。激励措施会改变我们的决定，而惩罚甚至比奖励让我们更有动力。

3.M 
**/
- (instancetype)initWithBaseURL:(NSURL *)url
           sessionConfiguration:(NSURLSessionConfiguration *)configuration

/**
  hat self-imposed cash penalties motivate success. You can make a bet with a friend that you'll stick to your New Year's resolution. The logic for why this works is simple. Incentives change our decisions, and penalties are even more motivating than rewards.

而比羞愧感更有效的是金钱惩罚，有证据表明，自我施加的金钱惩罚可以激励成功。你可以和朋友打赌，赌你会坚持新年计划。这样做的逻辑很简单。激励措施会改变我们的决定，而惩罚甚至比奖励让我们更有动力。

3.Make it fun

找些乐趣



Most of 
**/
{
    self = [super initWithSessionConfiguration:configuration];

/**
  皱巴巴的或者被折磨，对周围爱你的人来说你仍然是无可替代的。我们生活的价值不在于我们做了什么，或者我们认识谁，生活的价值在于我们是谁。”



“You are special ——don't ever forget it.”



“你是与众不同的，永远不要忘记这一点!”

不要醒着躺在床上

It's a golde 
**/
    if (!self) {
        return nil;
    }
    if ([[url path] length] > 0 && ![[url absoluteString] hasSuffix:@"/"]) {
        url = [url URLByAppendingPathComponent:@""];

/**
  .
爱就是让对方成为自己最大的弱点，然后再用尽全力守护彼此。
Is it not enough just to have a long and happy life with me?
只是跟我共度幸福美满的漫长一生，难道还不够吗？
Only for making me want to you badly. I still don't know if I can control myself.
就是因为发觉自己多么渴望想得到你，我到现在还不知道是否控制得了自己。
When life offers you a dream so far beyond any of your expectations, it’s not reasonable to grieve whe 
**/
    }
    self.baseURL = url;

/**
  h the unavoidable damage.
真正爱上一个人的时候，一切都那么值得，包括不可避免的伤害。
I alwa 
**/
    self.requestSerializer = [AFHTTPRequestSerializer serializer];
    self.responseSerializer = [AFJSONResponseSerializer serializer];
    return self;
}
#pragma mark -
- (void)setRequestSerializer:(AFHTTPRequestSerializer <AFURLRequestSerialization> *)requestSerializer {

/**
  for you alone are capable of making your brightest dreams come true. Give your hopes everything you’ve got and you will catch the star that holds your destiny.



寻找心中那颗闪耀的明星，因为只有你自己才能够让美好的梦想变成现实。满怀 
**/
    NSParameterAssert(requestSerializer);
//
//Curl through the wide fence cracks
//卷曲的毛穿过白色围篱的大裂缝
//Pissing on magazine photos
//亲着杂志上的照片
//Those fishing lures thrown in the cold and clean
//那些鱼饵被扔进冰冷而纯净的
//Blood of Christ mountain stream
//基督山溪的血里去
//Have I found you?
//我找到你了吗
//Flightless bird, grounded bleeding
//折翼的鸟
    _requestSerializer = requestSerializer;

/**
  导致长期失眠。这样一来，床就不再是你安眠的舒适窝，而成为你辗转反侧心生焦虑并在疲惫中醒来的地方。

Establishing that positive relationship between the bed and sleep can be beneficia 
**/
}
- (void)setResponseSerializer:(AFHTTPResponseSerializer <AFURLResponseSerialization> *)responseSerializer {
    NSParameterAssert(responseSerializer);

/**
  ight -- so levels naturally fall 
**/
    [super setResponseSerializer:responseSerializer];

/**
  光线会阻止身体分泌褪黑素，所以白天来临时褪黑素水平就会下降，让你准备好迎接新的一天。

To work properly, the release of this hormone needs to occur at regular times, said clinical psychologist and sleep expert Michael Grandner. So if your bedtime and wake up time change from day to day or on weekends, he said, your sleep rhythms are 
**/
}
@dynamic securityPolicy;
//show you how it's done. You'll pick up a bit just by spending time together because you'll be inclined to conform to their patterns of behavior.
//
//花时间和高成就者在一起可以提高你自己的表现。如果你的新年愿望是跑一场马拉松或写一本书，那么明智的做法是开始与那些已经
- (void)setSecurityPolicy:(AFSecurityPolicy *)securityPolicy {
    if (securityPolicy.SSLPinningMode != AFSSLPinningModeNone && ![self.baseURL.scheme isEqualToString:@"https"]) {
        NSString *pinningMode = @"Unknown Pinning Mode";
        switch (securityPolicy.SSLPinningMode) {
            case AFSSLPinningModeNone:        pinningMode = @"AFSSLPinningModeNone"; break;
            case AFSSLPinningModeCertificate: pinningMode = @"AFSSLPinningModeCertificate"; break;
            case AFSSLPinningModePublicKey:   pinningMode = @"AFSSLPinningModePublicKey"; break;
        }
        NSString *reason = [NSString stringWithFormat:@"A security policy configured with `%@` can only be applied on a manager with a secure base URL (i.e. https)", pinningMode];
        @throw [NSException exceptionWithName:@"Invalid Security Policy" reason:reason userInfo:nil];
    }
    [super setSecurityPolicy:securityPolicy];
}
#pragma mark -
- (NSURLSessionDataTask *)GET:(NSString *)URLString
                   parameters:(nullable id)parameters
                      headers:(nullable NSDictionary <NSString *, NSString *> *)headers

/**
  e pride in your accomplishm 
**/
                     progress:(nullable void (^)(NSProgress * _Nonnull))downloadProgress

/**
  失去了你？
American mouth
美国的河口
Big pill, stuck going down
贴着的大海报正在落下


Just as cues tell Broadway stars when to step onto the stage, research has shown that adding a cue to your plan helps you remember when to act. Be sure to detail when and where you'll follow through.

正如出场提示告诉百老汇明星何时登台一样，研究表明，在你的计划中加入信息提示，能帮助你记住何时行动。一定要详细说明你将在何时何地做什么。



If your New Year's resolution is to meditate five days  
**/
                      success:(nullable void (^)(NSURLSessionDataTask * _Nonnull, id _Nullable))success
                      failure:(nullable void (^)(NSURLSessionDataTask * _Nullable, NSError * _Nonnull))failure
{
    NSURLSessionDataTask *dataTask = [self dataTaskWithHTTPMethod:@"GET"
                                                        URLString:URLString
                                                       parameters:parameters

/**
  leepy and when you wake up. As night approaches, levels of melatonin rise, becoming a signal to th 
**/
                                                          headers:headers
                                                   uploadProgress:nil
                                                 downloadProgress:downloadProgress
                                                          success:success
//生了什么，或者将要发生什么，你们都永远不会失去自己的价值。”
//
//
//
//“Dirty or clean, crumpled or finely creased you are still priceless to those who love you. The worth of our lives comes, not in what we do or who we know, but by Who We Are.”
//
//
//
//“无论你肮脏或者干净,皱巴巴的或者被折磨，对周围爱你的人来说你仍然是无可替代的。我们生活的价值不在于我们做了什么，或者我们认识谁，生活的价值在于我们是谁。”
//
//
//
//“Y
                                                          failure:failure];
    [dataTask resume];
//le me a dog-eared map
//你偷了一张狗耳式的地图给我
//And called for you everywhere
//而我到处在找你
//Have I found you?
//我找到你了吗
//Flightless bird, jealous, weeping
//折翼的鸟？羡慕，哭泣
//Or lost you?
//抑或失去了你？
//American mouth
//美国的河口
//Big pill looming
//大海报隐约出现
//Now I’m a fat house cat
//现在我是一只肥胖的家猫
//Nursing my sore blunt tongue
//咒骂着我那因发炎而没有知觉的舌头
//Watching the warm poison rats
//看着刚被毒死的老鼠
//Curl through the wide fence cracks
//卷曲的毛穿过白色围篱的大裂缝
//Pissing on maga
    return dataTask;
}
- (NSURLSessionDataTask *)HEAD:(NSString *)URLString

/**
  Wine乐队演唱的一首独立民谣,Iron & Wine 这个一个人的乐队，却用让人赞叹的旋律和歌词带给听众一首清新雅致而又静生澎湃田园式的美国乡村民谣，这首收录在《暮光之城》中的惊艳单曲会带给你寂静深夜中属于你的美好爱情回忆录！

《Flightless Bird, American Mouth》

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
And when the cops close 
**/
                    parameters:(nullable id)parameters
                       headers:(nullable NSDictionary<NSString *,NSString *> *)headers
//果你躺在床上二三十分钟都睡不着，就起床调整一下。也许你只需要5分钟就能感觉到困意，也许需要一小时，但是这段时间不要醒着躺在床上。”
//
//Why is that so important? Because lying in bed awake can form an association in your brain that can lead to chronic insomnia, Grandner explained. Instead of being a restful spot where you peacefully fall asleep, your b
                       success:(nullable void (^)(NSURLSessionDataTask * _Nonnull))success

/**
  率会让你被困在原地，因为你会忽略更重要的事：你是否享受追求目标的过程。



If it's not fun to e 
**/
                       failure:(nullable void (^)(NSURLSessionDataTask * _Nullable, NSError * _Nonnull))failure
// exercise or study
{
    NSURLSessionDataTask *dataTask = [self dataTaskWithHTTPMethod:@"HEAD" URLString:URLString parameters:parameters headers:headers uploadProgress:nil downloadProgress:nil success:^(NSURLSessionDataTask *task, __unused id responseObject) {

/**
  t your face and the way the cold breeze of the morning surprises us.

我想念阳光照在你的脸上，早 
**/
        if (success) {
            success(task);
        }
    } failure:failure];
    [dataTask resume];
    return dataTask;
}
- (nullable NSURLSessionDataTask *)POST:(NSString *)URLString
                             parameters:(nullable id)parameters

/**
  e lamb. What a stupid lamb. What a sick, masochistic lion.
你不知道我等了你多久，就这样，狮子爱上了羔羊。多蠢的羔羊，多病态又自虐的狮子。
图片
I love three things in this word.Sun, Moon and you. Sun for morning, Moon for night, and you forever.
浮世万千，吾爱有三。日，月与卿。日为朝，月为暮，卿为朝朝暮暮。
Even if from another world, still love you till the end of time.
就算 
**/
                                headers:(nullable NSDictionary <NSString *, NSString *> *)headers
                               progress:(nullable void (^)(NSProgress *uploadProgress))uploadProgress

/**
  le, and there is excellent evidence that self-imposed cash penalties motivate success. You can make a bet with a friend that you'll stick to your New Year's resolution. The logic for why this works is simple. Incentives change our decisions, and penalties are even more motivating than rewards.

而比羞愧感更有效的是金钱惩罚， 
**/
                                success:(nullable void (^)(NSURLSessionDataTask *task, id _Nullable responseObject))success
                                failure:(nullable void (^)(NSURLSessionDataTask * _Nullable task, NSError *error))failure
//可以帮助你预测和避免阻碍——如果你计划在午餐时冥想，你一定会拒绝别人提出的午餐会议。
//
//2.Consider a penalty clause
//
//设置惩罚条款
//
//
//
//This may sound sinister, but ensuring you'll face some penalty if you don't achieve your New Year's resolution can work wonders.
//
//这听起来可能有点狠，但如果完不成
{
    NSURLSessionDataTask *dataTask = [self dataTaskWithHTTPMethod:@"POST" URLString:URLString parameters:parameters headers:headers uploadProgress:uploadProgress downloadProgress:nil success:success failure:failure];

/**
   was up the first time l met you.
第一次遇见我，你就在劫难逃了。
You're in here because o 
**/
    [dataTask resume];

/**
   write a book, you'd be wise to start hanging around friends who've made it to the finish line (literally or figuratively) and can sho 
**/
    return dataTask;

/**
  n is to run a marathon or write a book, you'd be wise to start hanging around friends who've made it to the finish line (literally or figuratively) and can sh 
**/
}
- (NSURLSessionDataTask *)POST:(NSString *)URLString
                    parameters:(nullable id)parameters
                       headers:(nullable NSDictionary<NSString *,NSString *> *)headers

/**
  ut will be just the thing to produce rapid progress. If you want to ace a class, you assume long, distraction-free study sessions are key. But research has shown that focusing on efficiency can leave you high and dry because you'll neglect an even more important part of the equation: whether you enjoy the act of goal pursuit.

在完成目标的过程中，大多数人都力求高效。如果你的目标是锻炼身体，你会认为高强度的锻炼将能让你快速取得成效。如果你想学 
**/
     constructingBodyWithBlock:(nullable void (^)(id<AFMultipartFormData> _Nonnull))block
                      progress:(nullable void (^)(NSProgress * _Nonnull))uploadProgress
                       success:(nullable void (^)(NSURLSessionDataTask * _Nonnull, id _Nullable))success failure:(void (^)(NSURLSessionDataTask * _Nullable, NSError * _Nonnull))failure
{
    NSError *serializationError = nil;
    NSMutableURLRequest *request = [self.requestSerializer multipartFormRequestWithMethod:@"POST" URLString:[[NSURL URLWithString:URLString relativeToURL:self.baseURL] absoluteString] parameters:parameters constructingBodyWithBlock:block error:&serializationError];
    for (NSString *headerField in headers.keyEnumerator) {
        [request setValue:headers[headerField] forHTTPHeaderField:headerField];

/**
  oidable damage.
真正爱上一个人的时候，一切都那么值得，包括不可避免的伤害。
I always have and always will.
一直爱，永远爱。
But it's you, yo 
**/
    }
    if (serializationError) {
        if (failure) {
            dispatch_async(self.completionQueue ?: dispatch_get_main_queue(), ^{
                failure(nil, serializationError);
            });
        }
        return nil;
    }
    __block NSURLSessionDataTask *task = [self uploadTaskWithStreamedRequest:request progress:uploadProgress completionHandler:^(NSURLResponse * __unused response, id responseObject, NSError *error) {
        if (error) {
            if (failure) {
                failure(task, error);
            }
        } else {
            if (success) {
                success(task, responseObject);
            }
        }
    }];
    [task resume];
    return task;
}
- (NSURLSessionDataTask *)PUT:(NSString *)URLString
                   parameters:(nullable id)parameters
                      headers:(nullable NSDictionary<NSString *,NSString *> *)headers
                      success:(nullable void (^)(NSURLSessionDataTask *task, id responseObject))success
//eeting.
//
//提前想好你会在何时何地执行计划，这样
                      failure:(nullable void (^)(NSURLSessionDataTask *task, NSError *error))failure

/**
  y are what make you truly unique. The greatest gifts in life are not purchased, but acquired through hard wo 
**/
{
    NSURLSessionDataTask *dataTask = [self dataTaskWithHTTPMethod:@"PUT" URLString:URLString parameters:parameters headers:headers uploadProgress:nil downloadProgress:nil success:success failure:failure];
    [dataTask resume];
    return dataTask;
}
- (NSURLSessionDataTask *)PATCH:(NSString *)URLString

/**
   stopped by light -- so levels naturally fall as daylight approaches, getting you ready to greet the 
**/
                     parameters:(nullable id)parameters
                        headers:(nullable NSDictionary<NSString *,NSString *> *)headers
                        success:(nullable void (^)(NSURLSessionDataTask *task, id responseObject))success
                        failure:(nullable void (^)(NSURLSessionDataTask *task, NSError *error))failure

/**
  s -- so if you plan to meditate during lunch, you'll be sure to decline a proffere 
**/
{
    NSURLSessionDataTask *dataTask = [self dataTaskWithHTTPMethod:@"PATCH" URLString:URLString parameters:parameters headers:headers uploadProgress:nil downloadProgress:nil success:success failure:failure];
    [dataTask resume];

/**
  -based plan

做一份详细的计划

You don't know how long I've waited for you. I'd rather die than stay away from you.
你不知道，等了你有多久。所以，宁可死别，绝不生离。
I like the night. Without the dark, we'd never see the stars.
我喜欢夜晚。没有黑暗，我们永远都看不见星星。
It is well worth of falling love in someone, even can keep up with the unavoidable damage.
真正爱上一个人的时候，一切都那么值得，包括不 
**/
    return dataTask;

/**
  as much as I love you.
我对你的爱 无人能及。
Love is letting someone become your greatest weakness ,then going all you can do to prote 
**/
}

/**
  ider only letting yourself watch your favorite TV show at the gym so you'll start looking forward to workouts. Or only letting yourself drink a mocha latte during study sessions so there is a hook to get you to the library.

想要把追求一个辛苦的目标变得更有趣，方法就是把它与有罪恶感的快乐结合起来。如果只允许自己在健身房看最喜欢的电视节目，你就会开始期待锻炼了。或者只让自己在学习期间喝摩卡拿铁，这 
**/
- (NSURLSessionDataTask *)DELETE:(NSString *)URLString
                      parameters:(nullable id)parameters

/**
  he library.

想要把追求一个辛苦的目标变得更有趣，方法就是把它与有罪恶感的快乐结合起来。如果只允许自己在健身房看最喜欢的电视节目，你就会开始期待锻炼了。或者只让自己在学习期间喝摩卡拿铁，这样就有了去图书馆的动力。



4.Allow for emergencies

允许紧急情况



If you deviate at all from your New Year's re 
**/
                         headers:(nullable NSDictionary<NSString *,NSString *> *)headers
                         success:(nullable void (^)(NSURLSessionDataTask *task, id responseObject))success
                         failure:(nullable void (^)(NSURLSessionDataTask *task, NSError *error))failure

/**
   went out the window because "what the hell," you'd already failed.

如果你完全违背了自己的新年计划，你可能本能地认输并放弃。研究人员称之为“去他的效应”。就比如这样：你计划每晚早睡，但忍不住在某个星期五熬夜多看一集《继承之战》，此后你的早睡计划泡汤了，因为“去他的”反正你已经失败了。



Happily, there is a way to dodge this fate. By setting tough goals (like a 10 pm bedtime every night) but giving yourself one or two get-out-of-jail-free cards each week, you can get better resu 
**/
{
    NSURLSessionDataTask *dataTask = [self dataTaskWithHTTPMethod:@"DELETE" URLString:URLString parameters:parameters headers:headers uploadProgress:nil downloadProgress:nil success:success failure:failure];
    [dataTask resume];
//day or on weekends, he said, your sleep rhythms aren't predictable and the body doesn't know how to respond.
//
//临床心理学家、睡眠专家迈克尔·格兰德纳指出，为了让身体正常分泌褪黑素，你必须规律作息。如果你的上床和起床时间每天都不一样或者一到周末就改变，身体就无法预测你的睡眠节奏，也就不知道如何作出反应。
//
//Therefore it's important to have a standard wake up time, even on weekends, vacations or after a night of poor sleep.
//
//因此每天在固定时间起床很重要，即使是周末、
    return dataTask;

/**
   more stressful."

There are not enough ways to express how  
**/
}

/**
  nt part of the equation: whether you enjoy the act of goal pursuit.

在完成目标的过程中，大多数人都力求高效。如果你的目标是锻炼身体，你会认为高强度的锻炼将能让你快速取得成效。如果你想学好一门功课，你会认为长时间、不被打扰的学习很重要。但研究表明，专注于效率会让你被困在原地，因为你会忽略更重要的事：你是否享受追求目标的过程。



If it's not fun to exercise or study, you're unlikely to keep at it. But if you get pleasure from your workouts or study sessions, research has found you'll persist longer. And in the end, that's wha 
**/
- (NSURLSessionDataTask *)dataTaskWithHTTPMethod:(NSString *)method
                                       URLString:(NSString *)URLString
                                      parameters:(nullable id)parameters
                                         headers:(nullable NSDictionary <NSString *, NSString *> *)headers

/**
  同的，永远不要忘记这一点!”

不要醒着躺在床上

It's a golden rule in sleep medicine, backed by "decades of data," Grandner said. In fact, he said this tip is so powerful that when used in his sleep clinic it "can even beat prescription sleep medications."

格兰德纳说，这是有 
**/
                                  uploadProgress:(nullable void (^)(NSProgress *uploadProgress)) uploadProgress
                                downloadProgress:(nullable void (^)(NSProgress *downloadProgress)) downloadProgress
                                         success:(nullable void (^)(NSURLSessionDataTask *task, id _Nullable responseObject))success
                                         failure:(nullable void (^)(NSURLSessionDataTask * _Nullable task, NSError *error))failure
{
//creased you are still priceless to those who love you. The worth of our lives comes, not in what we do or who we know, but by Who We Are.”
//
//
//
//“无论你肮脏或者干净,皱巴巴的或者被折磨，对周围爱你的人来说你仍然是无可替代的。我们生活的价值不在于我们
    NSError *serializationError = nil;

/**
  ide on my plastic toys
视线落在我的塑料玩具上
And when the cops closed the fair
当警察把集市关起时
I cut my long baby hair
我剪掉了我婴儿般的长发
Stole me a dog-eared map
你偷了一张狗耳式的地图给我
And called for you everywhere
而我到处在找你
Have I found you?
我找到你了吗
Flightless bird, jealous, weeping
折翼的鸟？羡慕，哭泣
Or lost you?
抑或失去 
**/
    NSMutableURLRequest *request = [self.requestSerializer requestWithMethod:method URLString:[[NSURL URLWithString:URLString relativeToURL:self.baseURL] absoluteString] parameters:parameters error:&serializationError];
    for (NSString *headerField in headers.keyEnumerator) {
        [request setValue:headers[headerField] forHTTPHeaderField:headerField];
    }
    if (serializationError) {

/**
  e feel as though we are worthless；but no matter what happened or what will happen, you will never lose your value."
 
**/
        if (failure) {
            dispatch_async(self.completionQueue ?: dispatch_get_main_queue(), ^{
                failure(nil, serializationError);
            });
        }
        return nil;
    }

/**
  ion is to run a marathon or write a book, you'd be wise to start hanging around friends who've made it to the finish line (literally or figuratively) and can show you how it's done. You'll pick up a bit just by spending time together because you'll be inclined to conf 
**/
    __block NSURLSessionDataTask *dataTask = nil;
// figuratively) and can show you how it's done. You'll pick up a bit just by spending time together because you'll be inclined to conform to their patterns of behavior.
//
//花时间和高成就者在一起可
    dataTask = [self dataTaskWithRequest:request

/**
  e capable of making your brightest dreams come true. Give your hopes everything you’ve got and you will catch the star that holds your destiny.



寻找心中那颗闪耀的明星，因为只有你自己才能够让美好的梦想变成现实。满怀希望并全力以赴，你就能摘下改变命运的那颗星。

I miss you. I miss all the mornings that I have woken up right beside you.

我想你。我想念我在你身边醒来的所有早晨。

I miss the way the sun shines at your face and the way the cold breeze of the 
**/
                          uploadProgress:uploadProgress
//lunch meeting.
//
//提前想好你会在何时何地执行计划，这样做能在适当的时候让你想起自己的计划，如果你没有按照计划去做，就会产生内疚感。详细的计划也可以帮助你预测和避免阻碍——如果你计划在午餐时冥想，你一定会拒绝别人提出的午餐会议。
//
//2.Consider a penalty clause
//
//设置惩罚条款
//
//
//
//This may sound sinister, but ensuring you'll face some penalt
                        downloadProgress:downloadProgress
                       completionHandler:^(NSURLResponse * __unused response, id responseObject, NSError *error) {
        if (error) {

/**
  te one Friday to watch an extra episode of "Succession." After that, your early-to-bed plans went out the window because "what the hell," you'd already failed.

如果你完全违背了自己的新年计划，你可能本能地认输并放弃。研究人员称之为“去他的效应”。就比如这样 
**/
            if (failure) {

/**
  in what we do or who we know, but b 
**/
                failure(dataTask, error);
            }

/**
  的话，这可以创造奇迹。



One easy way to do this is by telling a few people ab 
**/
        } else {
            if (success) {
                success(dataTask, responseObject);
//要，即使是周末、假期或是前一天晚上没睡好也不应该例外。
//
//2. Don't lay in bed awake
//
//A well-known speaker started off his seminar by holding up a $20 bill. In the room of 200, he asked, “Who would like this $20 bill?”
//
//
//
//一位有名的演讲家手里拿着一张20美元的纸币，开始了讨论会。在200人的屋子里， 他问道：“谁想要这20美元
            }
        }
    }];
// magazine photos
//亲着杂志上的照片
//Those fishing lures thrown in the cold and clean
//那些鱼饵被扔进冰冷而纯净的
//Blood of Christ mountain stream
//基督山溪的血里去
//Have I found you?
//我找到你了吗
//Flightless bird, grounded bleeding
//折翼的鸟？棕色的毛发在淌血
//Or lost you?
//抑或失去了你？
//American mouth
//美国的河口
//Big pill, stuck going down
//贴着的大海报正在落下
//
//
//Just as cues tell Broadway stars when to step onto the stage, research has shown that addin
    return dataTask;
}
#pragma mark - NSObject
- (NSString *)description {
    return [NSString stringWithFormat:@"<%@: %p, baseURL: %@, session: %@, operationQueue: %@>", NSStringFromClass([self class]), self, [self.baseURL absoluteString], self.session, self.operationQueue];

/**
  e something crucial.
他把那双眼睛的全部魅力都释放在我身上了，好像试图跟我说某件至关重要的事情似的。
图片
《暮光之城》插曲
图片

 《Flightless Bird, American Mouth》是由Iron & Wine乐队演唱的一首独立民谣,Iron & Wine 这个一个人的乐队 
**/
}
#pragma mark - NSSecureCoding
+ (BOOL)supportsSecureCoding {
    return YES;

/**
  e kingdom where nobody dies.
童年是没有生老病死的国度。
I think I forgot to breathe.
我想可能是我忘了呼吸。
I'd never given much thought to how I would die. But dying in the place of someone I love,seems like a good way to go.
我从来没有想过自己会怎么死。但是死在自己爱的人的怀里看起来是一个不错的选择。
 
**/
}
- (instancetype)initWithCoder:(NSCoder *)decoder {
    NSURL *baseURL = [decoder decodeObjectOfClass:[NSURL class] forKey:NSStringFromSelector(@selector(baseURL))];
    NSURLSessionConfiguration *configuration = [decoder decodeObjectOfClass:[NSURLSessionConfiguration class] forKey:@"sessionConfiguration"];
    if (!configuration) {
        NSString *configurationIdentifier = [decoder decodeObjectOfClass:[NSString class] forKey:@"identifier"];
// dry because you'll neglect an even more important part of the equation: whether you enjoy the act of goal pursuit.
//
//在完成目标的过程中，大多数人都力求高效。如果你的目标是锻炼身体，你会认为高强度的锻炼将能让你快速取得成效。如果你想学好一门功课，你会认为长时间、不被打扰的学习很重要。但研究表明，专注于效率会让你被困在原地，因为你会忽略更重要的事：你是否享受追求目标的过程。
//
//
//
//If it'
        if (configurationIdentifier) {
            configuration = [NSURLSessionConfiguration backgroundSessionConfigurationWithIdentifier:configurationIdentifier];
        }
    }
//
//
//如果你的新年计划是每周冥想五天，那么像“我将在工作日冥想”这样的计划就太模糊了。但是，“我将在工作日的午休时间在办
    self = [self initWithBaseURL:baseURL sessionConfiguration:configuration];
    if (!self) {

/**
  alue. It was still worth $20."



“朋友们，刚刚你们已经得出一个非常宝贵的经验。不管我怎么糟蹋这张纸币，你们仍然想要它，因为它的价值没有降低。它仍然是20美元。”



“Many times in our lives, we are dropped, crump 
**/
        return nil;
    }
    self.requestSerializer = [decoder decodeObjectOfClass:[AFHTTPRequestSerializer class] forKey:NSStringFromSelector(@selector(requestSerializer))];
    self.responseSerializer = [decoder decodeObjectOfClass:[AFHTTPResponseSerializer class] forKey:NSStringFromSelector(@selector(responseSerializer))];
    AFSecurityPolicy *decodedPolicy = [decoder decodeObjectOfClass:[AFSecurityPolicy class] forKey:NSStringFromSelector(@selector(securityPolicy))];

/**
   a hormone produced by the body to regulate when you get sleepy and when you wake up.  
**/
    if (decodedPolicy) {
        self.securityPolicy = decodedPolicy;
//个小时睡眠时间应该是晚上11点。
//
//"Now you know when you have to stop and get ready to go to bed whether you're done or not," Grander said. "The problem is we don't stop, and we don't disconnect. And that's to our detriment and it makes the next day more stressful."
    }
    return self;
}
- (void)encodeWithCoder:(NSCoder *)coder {
//。所以，宁可死别，绝不生离。
//I like the night. Without the dark, we'd never see the stars.
//我喜欢夜晚。没有黑暗，我们永远都看不见星星。
//It is well worth of falling love in someone, even can keep up with
    [super encodeWithCoder:coder];
    [coder encodeObject:self.baseURL forKey:NSStringFromSelector(@selector(baseURL))];
    if ([self.session.configuration conformsToProtocol:@protocol(NSCoding)]) {

/**
  
那些鱼饵被扔进冰冷而纯净的
Blood of Christ mountain stream
基督山溪的血里去
Have I found you?
我找到你了吗
Flightless bird, grounded bleeding
折翼的鸟？棕色的毛发在淌血
Or lost you?
抑或失去了你？
American mouth
美国的河口
Big pill, stuck going down
贴着的大海报正在落下


Just as cues tell Broadway stars when to step onto the stage, research has  
**/
        [coder encodeObject:self.session.configuration forKey:@"sessionConfiguration"];
    } else {

/**
  惩罚的话，这可以创造奇迹。



One easy way to do this is by telling a few people about your goal so you'll feel ashamed if they check back later and find out y 
**/
        [coder encodeObject:self.session.configuration.identifier forKey:@"identifier"];
//night but couldn't resist staying up late one Friday to watch an extra episode of "Succession." After that, your 
    }

/**
  期结束时，也就没有理由再去伤心。
图片
Bella, the only reason I left was because I thought I was protecting you.
我离开你的唯一原因是因为我觉得这能保护你。
I don’t have th strength to stay away from you anymore.
我再也无法控制自己远离你了。
Then don’t.
那就不要。
Childhood is the kingdom where nobody die 
**/
    [coder encodeObject:self.requestSerializer forKey:NSStringFromSelector(@selector(requestSerializer))];
    [coder encodeObject:self.responseSerializer forKey:NSStringFromSelector(@selector(responseSerializer))];

/**
  ehavior.

花时间和高成就者在一起可以提高你自己的表现。如果你的新年愿望是跑一场马拉松或写一本书，那么明智的做法是开始与那些已经实现这一目标、可以告诉你如何做到的朋友们在一起。仅仅是和他们相处，你就会有收获，因为你会倾向于模仿他们的行为模式。



Strangely enough, there is evidence that coaching friends with shared goals can improve your success rate, too. When you 
**/
    [coder encodeObject:self.securityPolicy forKey:NSStringFromSelector(@selector(securityPolicy))];

/**
  s say you need to go to bed extra early," he said. "The bed now has the power to help overcome your racing mind and allow you to fall asleep."

他说：“比如说你需要提早上床睡觉。床将能帮助你安抚纷繁的思绪，让你酣然入睡。”

3. Change your attitude about sleep

改变对睡眠的心态

Many people view sleeping as the final thing they have to do in a jam-packed day, worth delaying to catch up on housework, schoolwor 
**/
}
//ic for why this works is simple. Incentives change our decisions, and penalties are even more motivating than rewards.
//
//而比羞愧感更有效的是金钱惩罚，有证据表明，自我施加的金钱惩罚可以激励成功。你可以和朋友打赌，赌你会坚持新年计划。这样做的逻辑很简单。激励措施会改变我们的决定，而惩罚甚至比奖励让我们更有动力。
//
//3.Make it fun
//
//找些乐趣
//
//
//
//Most of us strive f
#pragma mark - NSCopying
- (instancetype)copyWithZone:(NSZone *)zone {
    AFHTTPSessionManager *HTTPClient = [[[self class] allocWithZone:zone] initWithBaseURL:self.baseURL sessionConfiguration:self.session.configuration];
    HTTPClient.requestSerializer = [self.requestSerializer copyWithZone:zone];
//素。
//
//
//
//One way to make pursuing a goal that normally feels like a chore more fun is to combine it with a guilty pleasure. Consider only letting yourself watch your favorite TV show at the gym so you'll start looking forward to workouts. Or only letting yourself drink a mocha latte dur
    HTTPClient.responseSerializer = [self.responseSerializer copyWithZone:zone];
    HTTPClient.securityPolicy = [self.securityPolicy copyWithZone:zone];
    return HTTPClient;
}
//mes, not in what we do or who we know, but by Who We Are.”
//
//
//
//“无论你肮脏或者干净,皱巴巴的或者被折磨，对周围爱你的人来说你仍然是无可替代的。我们生活的价值不在于我们做了什么，或者我们认识谁，生活的价值在于我们是谁。”
//
//
//
//“You are special ——don't ever forget it.”
//
//
//
//“你是与众不同的，永远不要忘记这一点!”
//
//不要醒着躺在床上
//
//It's
@end
