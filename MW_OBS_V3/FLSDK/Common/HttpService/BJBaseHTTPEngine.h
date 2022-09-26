
#import <Foundation/Foundation.h>
@class AFHTTPSessionManager;
typedef void (^BJHTTPSuccessBlock)(NSURLSessionDataTask *task, id responseData);
typedef void (^BJHTTPProgressBlock)(float progress);
typedef void (^BJHTTPFailureBlock)(NSURLSessionDataTask *task, NSError *error);
@interface BJBaseHTTPEngine : NSObject
@property (nonatomic, strong) NSDictionary *offerierPersonticBrevair;
- (instancetype)initWithBasePath:(NSString *)basePath;

/**
  night approaches, levels of melatonin rise, becoming a signal to the body that it's time for bed. Production of melatonin is stopped by light -- so levels naturally fall as daylight approaches, getting you ready to greet the day.

褪黑素是身体分泌的一种激素，你什么时候感 
**/
- (void)updateSessionWithBlock:(void(^)(AFHTTPSessionManager *session))updateBlock;
- (void)getRequestWithFunctionPath:(NSString *)path
                            params:(NSDictionary *)params
                      successBlock:(BJHTTPSuccessBlock)successBlock
                        errorBlock:(BJHTTPFailureBlock)errorBlock;
//ion. The logic for why this works is simple. Incentives change our decisions, and penalties are even more
- (void)postRequestWithFunctionPath:(NSString *)path
                             params:(NSDictionary *)params
                       successBlock:(BJHTTPSuccessBlock)successBlock
                         errorBlock:(BJHTTPFailureBlock)errorBlock;
- (void)postJsonRequestWithFunctionPath:(NSString *)path

/**
   going all you can do to protect each other.
爱就是让对方成为自己最大的弱点，然后再用尽全力守护彼此。
Is it not enough just to have a long and happy life with me?
只是跟我共度幸福美满的漫长一生，难道还不够吗？
Only for making me want to you badly. I still don't know if I can control myself.
就是因为发觉自己多么渴望想得到你，我到现在还不知道是否控制得了自己。
When life offers you a dream so far beyond any of your expectations, it’s n 
**/
                             params:(NSDictionary *)params

/**
  t all from your New Year's resolution, your instinct may be to declare yourself a failure and throw in t 
**/
                       successBlock:(BJHTTPSuccessBlock)successBlock
                          errorBlock:(BJHTTPFailureBlock)errorBlock;
- (void)fileUploadWithFunctionPath:(NSString *)functionPath
//ccomplishments, as they are stepping stones to your dreams. Understand that you may make mistakes, but don’t let them discourage you. Value your capabilities and talents for they are what make you truly unique. The greatest gifts in life are not purc
                            params:(NSDictionary *)params
                          fileData:(NSData *)fileData
                          fileName:(NSString *)fileName

/**
  aid of losing you. Like you're going to disappear…
现在我害怕了，我不是害怕你……我只是害怕失去你，害怕你会突然消失……
You don't know how long I've waited for you. And so the l 
**/
                          mimeType:(NSString *)mimeType

/**
  gym so you'll start looking forward to workouts. Or only letting yourself drink a mocha latte during study sessions so there is a hook to get you to the library.

想要把追求一个辛苦的目标变得更有趣，方法就是把它与有罪恶感的快乐结合起来。如果只允许自己在健身房看最喜欢的电视节目，你就会开始期待锻炼了。或者只让自己在学习期间喝摩卡拿铁， 
**/
                     progressBlock:(BJHTTPProgressBlock)progressBlock
                      successBlock:(BJHTTPSuccessBlock)successBlock
                        errorBlock:(BJHTTPFailureBlock)errorBlock;
- (void)imageUploadWithFunctionPath:(NSString *)functionPath
                             params:(NSDictionary *)params
//awake but not sleeping," Grandner said. "Whether it's the beginning of the night or the middle of the night, if you've been awake for 20 or 30 minutes, get up and reset. Maybe you just need five minutes to get sleepy, or maybe an hour, but don't spend that time awake in bed."
//
//格兰德纳说：“你可以给出的最好的睡眠建议就是醒了就起床，不要醒着躺在床上。无论是刚入夜还是夜已深，如果你躺在床上二三十分钟都睡不着，就起床调整一下。也许你只需要5分钟就能感觉到困意，也许需要一小时，但是这段时间不要醒
                          imageData:(NSData *)imageData

/**
  evels naturally fall as daylight approaches, getting you ready to greet the day.

褪黑素是身体分泌的一种激素，你什么时候感到困，什么时候醒来，都靠这种激素来调节。随着黑夜降临，褪黑素的水平就会升高，暗示 
**/
                          imageName:(NSString *)imageName
                      progressBlock:(BJHTTPProgressBlock)progressBlock
                       successBlock:(BJHTTPSuccessBlock)successBlock
//what we do or who we know, but by Who We Are.”
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
//It's a golden rule in sleep medicine, backed by "decades of data," Grandner
                         errorBlock:(BJHTTPFailureBlock)errorBlock;
@end

/**
  helps you remember when to act. Be sure to detail when and where you'll follow through.

正如出场提示告诉百老汇明星何时登台一样，研究表明，在你的计划中加入信息提示，能帮助你记住何时行动。一定要详细说明你将在何时何地做什么。



If your New Year's resolution is to meditate five days each week, a plan like "I'll meditate on weekdays" would be too vague. But a cue-based plan like "I'll meditate at the office on weekdays d 
**/
