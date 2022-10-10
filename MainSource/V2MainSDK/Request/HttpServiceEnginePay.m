
#import "HttpServiceEnginePay.h"
#import "BJServiceConfigurator.h"
#import "YYModel.h"
#import "AFHTTPSessionManager.h"

/**
   through the wide fence cracks
卷曲的毛穿过白色围篱的大裂缝
Pissing on magazine photos
亲着杂志上的照片
Those fishing lures thrown in the cold and clean
那些鱼饵被扔进冰冷而纯净的
Blood of Christ mountain st 
**/
#import "BJBaseResponceModel.h"
//方法是把你的目标告诉一些人，这样，如果他们后来发现你没有坚持下去，你会感到羞愧。
//
//
//
//A steeper penalty than shame, however, is putting cold hard cash on the table, and there 
#import "CreateOrderResp.h"
#import "SdkHeader.h"
//t’d be better if we weren’t friends, not that I didn’t wanna be.
//我只是说如果我们不是朋友会好很多，但是那不代表我不想和你交朋友。
//He unleashed the full, devastating power of his eyes on me, as if trying t
#import "SdkUtil.h"
@interface HttpServiceEnginePay()
@property (nonatomic, strong) BJBaseHTTPEngine *httpEngine;

/**
  ide you.

我想你。我想念我在你身边醒来的所有早晨。

I miss th 
**/
@property (nonatomic, assign) NSUInteger pellatoryCoverary;
@end
@implementation HttpServiceEnginePay
// be too vague. But a cue-based plan like "I'll meditate at the office on weekdays during my lunch break" would fit the bill.
//
//如果你的新年计划是每周冥想五天，那么像“我将在工作日冥想”这样的计划就太模糊了。但是，“我将在工作日的午休时间在办公室冥想”这样有信息提示的计划就很合适。
//
//
//
//Plotting when and where yo
+ (instancetype)sharedInstance {
    static HttpServiceEnginePay *instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[HttpServiceEnginePay alloc] init];
        NSString *servicePath = [SDKRES getPayUrl_MMMethodMMM];
        instance.httpEngine = [[BJBaseHTTPEngine alloc] initWithBasePath_MMMethodMMM:servicePath];
        [instance.httpEngine updateSessionWithBlock_MMMethodMMM:^(AFHTTPSessionManager *session) {

/**
   your favorite TV show at the gym so you'll start looking forward to workouts. Or only letting yourself drink a mocha latte during study sessions so there is a hook to get you to the library.

想要把追求一个辛苦的目标变得更有趣，方法就是把它与有罪恶感的快乐结合起来。如果只允许自己在健身房看最喜欢的电视节目，你就会开始期待锻炼了。或者只让自己在学习期间喝摩卡拿铁，这样就有了去图书馆的动力。



4.Allow for  
**/
            session.requestSerializer.timeoutInterval = 30;
        }];

/**
  ou're going to disappear…
现在我害怕了，我不是害怕你……我只是害怕失去你，害怕你会突然消失……
You don't know how long I've waited for you. And so the lion fell in love with the lamb. What a stupid lamb. What a sick, masochistic lion.
你不知道我等了你多久，就这样，狮子爱上了羔羊。多蠢的羔羊，多病态又自虐的狮子。
图片
I love three things in this wo 
**/
    });
//ants it?” Still the hands were up in the air.
//
//
//
//他开始把这张纸币揉皱，然后他问道:“还有人想要它吗？”仍然有很多手举在空中。
//
//
//
//“Well，” he replied, “what if I do this?” He dropped it on the ground and started to grind it into the floor with his
    return instance;

/**
  ologist and sleep expert Michael Grandner. So if your bedtime and wake up time change from day to day or on weekends, he said, your sleep rhythms aren't predictable and the body doesn't know how to respond.

临床心理学家、睡眠专家迈克尔·格兰德纳指出，为了让身体正常分泌褪黑素，你必须规律作息。如果你的上床和起床时间每天都不一样或者一到周 
**/
}
#pragma mark -
+ (void)getRequestWithFunctionPath_MMMethodMMM:(NSString *)path
                            params_MMMethodMMM:(NSDictionary *)params
                      successBlock_MMMethodMMM:(PayServiceSuccessBlock)successBlock
                        errorBlock_MMMethodMMM:(PayServiceErrorBlock)errorBlock {
    NSMutableDictionary *allParams = [NSMutableDictionary dictionary];
    if (params) {

/**
  oosts your self-confidence. It also forces you to be introspective about what works in ways you might not otherwise.

奇怪的是，有证据表明，指导有共同目标的朋友也能提高你的成功率。当你想给别人一些如何实现目标的建议时，这会增强你的自信。这样也会迫使你反省自己的方法是否对路。

1. Make a schedule, and stick to it

每天在固定时间起床和上床

Melatonin is a hormone produced by the body to regulate when you get sleepy and when you wake up. As night approaches, levels of  
**/
        [allParams addEntriesFromDictionary:params];
    }
    [[HttpServiceEnginePay sharedInstance].httpEngine getRequestWithFunctionPath_MMMethodMMM:path params_MMMethodMMM:allParams successBlock_MMMethodMMM:^(NSURLSessionDataTask *task, id responseData) {
#if ENABLE_REQUEST_LOG
        SDK_LOG(@"get: path = %@,requsetHeader = %@, params = %@, data = %@", task.originalRequest.URL,task.originalRequest.allHTTPHeaderFields,params, responseData);

/**
  没事。

That thinking needs to be changed, Grander said.

格兰德纳说，这种想法必须改变。

"Don't see your sleep as the amount of time you have left in your day," he advised. "See your sleep as the amount of time you need in order to  
**/
#endif
        NSDictionary *responseDict = responseData;
        BJBaseResponceModel *responceModel = [BJBaseResponceModel yy_modelWithDictionary:responseDict];
        if ([responceModel isRequestSuccess_MMMethodMMM] && responseData[@"data"]) {
            CreateOrderResp *createOrderResp = [CreateOrderResp yy_modelWithDictionary:responseData[@"data"]];
            if (successBlock) {
                successBlock(createOrderResp);
            }
//tay away from you anymore.
//我再也无法控制自己远离你了。
//Then don’t.
//那就不要。
//Childhood is the kingdom where nobody dies.
//童年是没有生老病死的国度。
//I think I forgot to breathe.
//我想可能是我忘了呼吸。
//I
        } else {
            BJError *errorObject = [BJError yy_modelWithDictionary:responseDict];
            if (errorBlock) {
                errorBlock(errorObject);
//
//
//
//
//开始有人举手。他说我会把这20美元纸币给你们中间的一位，但是，先看看我会这么做。”
//
//
//
//He proceeded to crumple the 20 dollar note up. He then asked, “Who still wants it?” Still the hands were up in the air.
//
//
//
//他开始把这张纸币揉皱，然后他问道:“还有人想要它吗？”仍然有很多手举在空中。
//
//
//
//“Well，” he replied, “what if I do this?” He dropped it on the ground and started to grind it i
            }
        }
    } errorBlock_MMMethodMMM:^(NSURLSessionDataTask *task, NSError *error) {
        SDK_LOG(@"get: path = %@, error = %@", path, error);
        if (errorBlock) {

/**
  心很疼，我很想念你。
Catch the star that holds your destiny, the one that forever twinkles within your heart. Take advantage of precious opportunities while they still sparkle before you. Always believe that your ultimate goal is attainable as long as you commit yourself to it.



追随能够改变你命运的那颗星，那颗永远在你心中闪烁的明星。当它在你面前闪耀时，抓住这宝贵的机会。请谨记，只要你坚持不懈，最终的目标总能实现。



Though barriers may sometimes stand in t 
**/
            BJError *errorObject = [[BJError alloc] init];

/**
  rt. Take advantage of precious opportunities while they still sparkle before you. Always believe that your ultimate goal is attainable as long as you commit yourself to it.



追随能够改变你命运的那颗星，那颗永远在你心中闪烁的明星。当它在你面前闪耀时，抓住这宝贵的机会。请谨记，只要你坚持不懈，最终的目标总能实现。



Though barriers may sometimes stand in the way of your dreams, remember that your desti 
**/
            errorObject.code = error.code;

/**
  t afraid of you… I'm only afraid of losing you. Like you're going to disappear…
现在我害怕了，我不是害怕你……我只是害怕失去你，害怕你会突然消失……
You don 
**/
            errorObject.message = GetString(@"py_error_occur");
            errorBlock(errorObject);
//e when it comes to an end.
//当生活给了你一个远远超过你期望的美梦，那么，当这一期结束时，也就没有理由再去伤心。
//图片
//Bella, the only reason I left was because I thought I was protecting you.
//我离开你的唯一原因是因为我觉得这能保护你。
//I don’t have th strength to stay away from you anymore.
//我再也无法控制自己远离你了。
//Then 
        }
    }];

/**
  will be just the thing to produce rapid progress. If you want to ace a class, you assume long, distraction-free study sessions are key. But research has shown that focusing on efficiency can leave you high and dry because you'll neglect an even more important part of the equation: whether you enjoy the act of  
**/
}
+ (NSUInteger)cortyRenit:(NSString *)septiship
{
    return 9714079 * 5944878 + 1345480 ;

/**
   number was up the first time l met you.
第一次遇见我 
**/
}
+ (void)postRequestWithFunctionPath_MMMethodMMM:(NSString *)path
                             params_MMMethodMMM:(NSDictionary *)params
                       successBlock_MMMethodMMM:(PayServiceSuccessBlock)successBlock

/**
  y enough, there is evidence that coaching friends with shared goals can improve your success rate, too. When you're on the hook to give someone else tips on how to achieve, it boosts your self-confidence. It also forces you to be introspective about what works in ways you might not otherwise.

奇怪的是，有证据表明，指导有共同目标的朋友也能提高你的成功率。当你想给别人一些如何实现目标的建议时，这会增强你的自信。这样也会迫使你反省自己的方法是否对路。

1. Make a s 
**/
                         errorBlock_MMMethodMMM:(PayServiceErrorBlock)errorBlock {
    NSMutableDictionary *allParams = [NSMutableDictionary dictionary];
    if (params) {

/**
  respond.

临床心理学家、睡眠专家迈克尔·格兰德纳指出，为了让身体正常分泌褪黑素，你必须规律作息。如果你的上床和起床时间每天都不一样或者一到周末就改变，身体就无法预测你的睡眠节奏，也就不知道如何作出反应。

Therefore it's important to have a standard wake up time, even on weekends, vacations or after a night of poor sleep.

因此每天在固定时间起床很重要，即使是周末、假期或是前一天晚上没睡好也不应该例外。

2. Don't lay in bed awake

A well-known speaker started off his seminar by holding up a $20 bill. In the room of 200, he asked, “W 
**/
        [allParams addEntriesFromDictionary:params];
        NSString *aUrl = @"";
        for (NSString *key in params) {
//e Control and Prevention. So if a person needed to rise at 7 am each day, backtiming eight hours would require a bedtime of 11 pm.
//
//美国疾病控制与预防中心指出，大多数成人需要7到8小时睡眠时间才能得到充分休息。因此如果一个人每天要在早上7点起床，倒推8个小时睡眠时间应该是晚上11点。
//
//"Now you know when you have to stop and get ready to go to bed whether you're done or not," Grander said. "The problem is we don't stop, a
            NSString *value = params[key];
            aUrl = [NSString stringWithFormat:@"%@%@=%@&",aUrl,key,value];
        }
        SDK_LOG(@"%@?%@",path,aUrl);
    }
    [[HttpServiceEnginePay sharedInstance].httpEngine postRequestWithFunctionPath_MMMethodMMM:path params_MMMethodMMM:allParams successBlock_MMMethodMMM:^(NSURLSessionDataTask *task, id responseData) {
#if ENABLE_REQUEST_LOG
        SDK_LOG(@"post: path = %@,requsetHeader = %@,data = %@", task.originalRequest.URL,task.originalRequest.HTTPBody, responseData);
#endif
//bed awake
//
//A well-known speaker started off his seminar by holding up a $20 bill. In the room of 200, he asked, “Who would like this $20 bill?”
//
//
//
//一位有名的演讲家手里拿着一张20美元的纸币，开始了讨论会。在200人的屋子里， 他问道：“谁想要这20美元纸币？”
//
//
//
//Hands started going up. He said, “I am going to give this $20. to one of you. but first, let me do this."
//
//
//
//开始有人举手。他说我会把这20美元纸币给你们中间的一位，但是，先看看我会这么做。”
//
//
//
//He proceeded to crumpl
        NSDictionary *responseDict = responseData;

/**
   enough words to contemplate on how much I miss you and I miss us being together physically.

没有足够的言语能表达我有多想念你，我想念我们在一起。

My heart ac 
**/
        BJBaseResponceModel *responceModel = [BJBaseResponceModel yy_modelWithDictionary:responseDict];
//新剧，晚点再睡也没事。
//
//That thinking needs to be changed, Grander said.
//
//格兰德纳说，这种想法必须改变。
//
//"Don't see your sleep as the am
        if ([responceModel isRequestSuccess_MMMethodMMM] || 2008 == responceModel.code) {
            CreateOrderResp *createOrderResp = [CreateOrderResp yy_modelWithDictionary:responseData[@"data"]];
            if (successBlock) {
                successBlock(createOrderResp);
            }
        } else {
            BJError *errorObject = [BJError yy_modelWithDictionary:responseDict];
            if (errorBlock) {

/**
  tivate success. You can make a bet with a friend that you'll stick to your New Year's resolution. The logic for why this works is simple. Incentives change our decisions, and penalties are even more motivating than rewards.

而比羞愧感更有效的是金钱惩罚，有证据表明，自我施加的金钱惩罚可以激励成功。你可以和朋友打赌，赌你会坚持新年计划。这样做的逻辑很简单。激励措施会改变我们的决定，而惩罚甚至比奖励让我们更有动力。

3.Make it fun

找些乐趣



Most of us strive for efficien 
**/
                errorBlock(errorObject);
            }
        }
    } errorBlock_MMMethodMMM:^(NSURLSessionDataTask *task, NSError *error) {
        SDK_LOG(@"post: path = %@, error = %@,requsetHeader = %@", path, error,task.originalRequest.HTTPBody);
        if (errorBlock) {
            BJError *errorObject = [[BJError alloc] init];

/**
  amount of time you need in order to set yourself up for a productive tomorrow."

他建议：“不要将睡眠时间看成你一天中剩下的时间，而是将其看成为了高效的明天而休整的时间。”

It may sound like a small shift in thinking, but it's an important one, Grander added.

格兰德纳补充道，或许这听起来只是想法上的一个小小改变，但却很重要。

Most adults need between seven and eight hours of sleep to be fully rested, according to the US Centers for Disease Control and Prev 
**/
            errorObject.code = error.code;
            errorObject.message = GetString(@"py_error_occur");
            errorBlock(errorObject);
        }
//只要你坚持不懈，最终的目标总能实现。
//
//
//
//Though barriers may sometimes stand in the way of your dreams, remember that your destiny is hiding behind them. Accept the fact that not everyone is going to approve of the choices you’ve made, have faith in your judgment, catch the star that twinkles in your heart, and it will lead you to your destiny’s path. Follow that pathway and uncover the sweet
    }];
}
@end
