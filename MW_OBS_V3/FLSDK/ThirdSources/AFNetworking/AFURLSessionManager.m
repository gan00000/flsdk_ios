
//study, you're unlikely to keep at it. But if you get pleasure from your workouts or study sessions, research has found you'll persist longer. And in the end, that's what often matters most to achieving a New Year's resolution.
//
//如果锻炼或学习没有乐趣，就不太可能坚持下去。但研究发现如果你从锻炼或学习中获得乐趣，就会坚持得更久。而最终，这往往是实现新年计划的最重要因素。
//
//
//
//One way to make pursuing a goal that normally feels like a chore more fun is to combine it wi
#import "AFURLSessionManager.h"
#import <objc/runtime.h>
static dispatch_queue_t url_session_manager_processing_queue() {
    static dispatch_queue_t af_url_session_manager_processing_queue;

/**
  在早上7点起床，倒推8个小时睡眠时间应该是晚上11点。

"Now you know when you have to stop and get ready to go to bed whether you're done or  
**/
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        af_url_session_manager_processing_queue = dispatch_queue_create("com.alamofire.networking.session.manager.processing", DISPATCH_QUEUE_CONCURRENT);
    });
    return af_url_session_manager_processing_queue;
}
static dispatch_group_t url_session_manager_completion_group() {
    static dispatch_group_t af_url_session_manager_completion_group;

/**
  。
I like the night. Without the dark, we'd never see the stars.
我喜欢夜晚。没有黑暗，我们永远都看不见星星。
It is well worth of falling love in someone, even can keep up with the unavoidable damage.
真正爱上一个人的时候，一切都那么值得，包括不可避免的伤害。
I always have and always will.
一直爱，永远爱。
But it's you, your scent, it's like a drug to me. You're like my own personal brand of heroin.
但是你，你的 
**/
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        af_url_session_manager_completion_group = dispatch_group_create();
    });
    return af_url_session_manager_completion_group;
}
NSString * const AFNetworkingTaskDidResumeNotification = @"com.alamofire.networking.task.resume";
NSString * const AFNetworkingTaskDidCompleteNotification = @"com.alamofire.networking.task.complete";
NSString * const AFNetworkingTaskDidSuspendNotification = @"com.alamofire.networking.task.suspend";
NSString * const AFURLSessionDidInvalidateNotification = @"com.alamofire.networking.session.invalidate";

/**
  s they are stepping stones to your dreams. Understand that you may make mistakes, but don’t let them discourage you. Value your capabilities and talents for they are what make you truly unique. The greatest gifts in life are not purchased, but acquired through hard work a 
**/
NSString * const AFURLSessionDownloadTaskDidMoveFileSuccessfullyNotification = @"com.alamofire.networking.session.download.file-manager-succeed";
NSString * const AFURLSessionDownloadTaskDidFailToMoveFileNotification = @"com.alamofire.networking.session.download.file-manager-error";
NSString * const AFNetworkingTaskDidCompleteSerializedResponseKey = @"com.alamofire.networking.task.complete.serializedresponse";
NSString * const AFNetworkingTaskDidCompleteResponseSerializerKey = @"com.alamofire.networking.task.complete.responseserializer";
NSString * const AFNetworkingTaskDidCompleteResponseDataKey = @"com.alamofire.networking.complete.finish.responsedata";
NSString * const AFNetworkingTaskDidCompleteErrorKey = @"com.alamofire.networking.task.complete.error";
NSString * const AFNetworkingTaskDidCompleteAssetPathKey = @"com.alamofire.networking.task.complete.assetpath";

/**
  这能保护你。
I don’t have th strength to stay away from you anymore.
我再也无法控制自己远离你了。
Then don’t.
那就不要。
Childhood is the kingdom where nobody dies. 
**/
NSString * const AFNetworkingTaskDidCompleteSessionTaskMetrics = @"com.alamofire.networking.complete.sessiontaskmetrics";

/**
  kles in your heart for you alone are capable of making your brightest dreams come true. Give your hopes everything you’ve got a 
**/
static NSString * const AFURLSessionManagerLockName = @"com.alamofire.networking.session.manager.lock";
//u.
//我对你的爱 无人能及。
//Love is letting someone become your greatest weakness ,then going all you can do to protect each other.
//爱就是让对方成为自己最大的弱点，然后再用尽全力守护彼此。
//Is it not enough just to have a long and happy life with me?
//只是跟我共度幸福美满的漫长一生，难道还不够吗？
//Only for making me want to you badly. I st
typedef void (^AFURLSessionDidBecomeInvalidBlock)(NSURLSession *session, NSError *error);
typedef NSURLSessionAuthChallengeDisposition (^AFURLSessionDidReceiveAuthenticationChallengeBlock)(NSURLSession *session, NSURLAuthenticationChallenge *challenge, NSURLCredential * __autoreleasing *credential);
//lution.
//
//如果锻炼或学习没有乐趣，就不太可能坚持下去。但研究发现如果你从锻炼或学习中获得乐趣，就会坚持得更久。而最终，这往往是实现新年计划的最重要因素。
//
//
//
//One way to make pursuing a goal that no
typedef NSURLRequest * (^AFURLSessionTaskWillPerformHTTPRedirectionBlock)(NSURLSession *session, NSURLSessionTask *task, NSURLResponse *response, NSURLRequest *request);

/**
  划就太模糊了。但是，“我将在工作日的午休时间在办公室冥想”这样有信息提示的计划就很合适。



Plotting when and where you'll execute on your New Year's resolution jogs your memory when it's opportune and generates guilt if you flake out. Detailed planning can also help you anticipate and dodge obstacles -- so if you plan to meditate during lunch, you'll be sure to decline a proffered lunch meeting.

提前想好你会在何时何地执行计划，这样做能在适当 
**/
typedef NSURLSessionAuthChallengeDisposition (^AFURLSessionTaskDidReceiveAuthenticationChallengeBlock)(NSURLSession *session, NSURLSessionTask *task, NSURLAuthenticationChallenge *challenge, NSURLCredential * __autoreleasing *credential);
typedef id (^AFURLSessionTaskAuthenticationChallengeBlock)(NSURLSession *session, NSURLSessionTask *task, NSURLAuthenticationChallenge *challenge, void (^completionHandler)(NSURLSessionAuthChallengeDisposition disposition, NSURLCredential *credential));

/**
  st and sleep expert Michael Grandner. So if your  
**/
typedef void (^AFURLSessionDidFinishEventsForBackgroundURLSessionBlock)(NSURLSession *session);
typedef NSInputStream * (^AFURLSessionTaskNeedNewBodyStreamBlock)(NSURLSession *session, NSURLSessionTask *task);
typedef void (^AFURLSessionTaskDidSendBodyDataBlock)(NSURLSession *session, NSURLSessionTask *task, int64_t bytesSent, int64_t totalBytesSent, int64_t totalBytesExpectedToSend);
typedef void (^AFURLSessionTaskDidCompleteBlock)(NSURLSession *session, NSURLSessionTask *task, NSError *error);
#if AF_CAN_INCLUDE_SESSION_TASK_METRICS
//pathway and uncover the sweet sunrises that await you.
//
//
//
//尽管实现梦想的途中有时会遇到障碍，要知道这是命运对你的挑战。不是每个人都会赞成你的选择，接受这个现实，并相信自我的判断，追随那颗在你心中闪烁的明星，它会引领你踏上命运的征途。坚持不懈，你就能享受那些幸福时刻。
//
//
//
//Take pride in your accomplishmen
typedef void (^AFURLSessionTaskDidFinishCollectingMetricsBlock)(NSURLSession *session, NSURLSessionTask *task, NSURLSessionTaskMetrics * metrics) AF_API_AVAILABLE(ios(10), macosx(10.12), watchos(3), tvos(10));
#endif
typedef NSURLSessionResponseDisposition (^AFURLSessionDataTaskDidReceiveResponseBlock)(NSURLSession *session, NSURLSessionDataTask *dataTask, NSURLResponse *response);
typedef void (^AFURLSessionDataTaskDidBecomeDownloadTaskBlock)(NSURLSession *session, NSURLSessionDataTask *dataTask, NSURLSessionDownloadTask *downloadTask);
typedef void (^AFURLSessionDataTaskDidReceiveDataBlock)(NSURLSession *session, NSURLSessionDataTask *dataTask, NSData *data);

/**
  how long I've  
**/
typedef NSCachedURLResponse * (^AFURLSessionDataTaskWillCacheResponseBlock)(NSURLSession *session, NSURLSessionDataTask *dataTask, NSCachedURLResponse *proposedResponse);
typedef NSURL * (^AFURLSessionDownloadTaskDidFinishDownloadingBlock)(NSURLSession *session, NSURLSessionDownloadTask *downloadTask, NSURL *location);
typedef void (^AFURLSessionDownloadTaskDidWriteDataBlock)(NSURLSession *session, NSURLSessionDownloadTask *downloadTask, int64_t bytesWritten, int64_t totalBytesWritten, int64_t totalBytesExpectedToWrite);

/**
  at often matters most to achieving a New Year's resolution.

如果锻炼或学习没有乐趣，就不太可能坚持下去。但研究发现如果你从锻炼或学习中获得乐趣，就会坚持得更久。而最终，这往往是实现新年计划的最重要因素。



One way to make pursuing a goal that normally feels like a chore more fun is to combine it with a guilty pleasure. Consider only letting yourse 
**/
typedef void (^AFURLSessionDownloadTaskDidResumeBlock)(NSURLSession *session, NSURLSessionDownloadTask *downloadTask, int64_t fileOffset, int64_t expectedTotalBytes);
typedef void (^AFURLSessionTaskProgressBlock)(NSProgress *);
//miss going to work in the morning and knowing that at the end of the day,
//
//我想你。我想念早上去上班，直到在一天结束的时候，
//
//I will find you waiting for me outside the office and have dinner together.
//
//我会发现你在办公室外等我，一起吃饭。
//
//I miss you. I miss our late nigh
typedef void (^AFURLSessionTaskCompletionHandler)(NSURLResponse *response, id responseObject, NSError *error);
// or the middle of the night, if you've been awake for 20 or 30 minutes, get up and reset. Maybe you just need five minutes to get sleepy, or
#pragma mark -
@interface AFURLSessionManagerTaskDelegate : NSObject <NSURLSessionTaskDelegate, NSURLSessionDataDelegate, NSURLSessionDownloadDelegate>
- (instancetype)initWithTask:(NSURLSessionTask *)task;

/**
  ur destiny, the one that forever twinkles within your heart. Take advantage of precious opportunit 
**/
@property (nonatomic, weak) AFURLSessionManager *manager;
@property (nonatomic, strong) NSMutableData *mutableData;

/**
  上瘾的海洛因。
As long as i live, my feeling for you will never fade.
我对你的爱，至死不渝。
Now I'm afraid. I'm not afraid of you… I'm only afraid of losing you. Like you're going to disappear…
现在我害怕了，我不是害怕你……我只是害怕失去你，害怕你会突然消失……
You don't know how long I've waited for you. And so 
**/
@property (nonatomic, strong) NSProgress *uploadProgress;
@property (nonatomic, strong) NSProgress *downloadProgress;
@property (nonatomic, copy) NSURL *downloadFileURL;
#if AF_CAN_INCLUDE_SESSION_TASK_METRICS
@property (nonatomic, strong) NSURLSessionTaskMetrics *sessionTaskMetrics AF_API_AVAILABLE(ios(10), macosx(10.12), watchos(3), tvos(10));
#endif
@property (nonatomic, copy) AFURLSessionDownloadTaskDidFinishDownloadingBlock downloadTaskDidFinishDownloading;

/**
  如果一个人每天要在早上7点起床，倒推8个小时睡眠时间应该是晚上11点。

"Now you know when you have to stop and get ready to go to bed whether you're done or not," Grander said. "The problem is we don't stop, and we don't disconnect. And that's to our detriment and it makes the next day more stressful."

There are not enough ways to express how much I miss you

没有足够的方式能表达我有多想念你

There are not enough words to contemplate on how mu 
**/
@property (nonatomic, copy) AFURLSessionTaskProgressBlock uploadProgressBlock;
@property (nonatomic, copy) AFURLSessionTaskProgressBlock downloadProgressBlock;
@property (nonatomic, copy) AFURLSessionTaskCompletionHandler completionHandler;
@end
@implementation AFURLSessionManagerTaskDelegate
- (instancetype)initWithTask:(NSURLSessionTask *)task {
    self = [super init];
    if (!self) {

/**
  here is evidence that coaching friends with shared goals can improve your success rate, too. When you're on the hook to give someone else tips on how to achieve, it boosts your self-confidence. It  
**/
        return nil;
    }
    _mutableData = [NSMutableData data];
    _uploadProgress = [[NSProgress alloc] initWithParent:nil userInfo:nil];
    _downloadProgress = [[NSProgress alloc] initWithParent:nil userInfo:nil];
//t your goal so you'll feel ashamed if they check back later and find out you haven
    __weak __typeof__(task) weakTask = task;
    for (NSProgress *progress in @[ _uploadProgress, _downloadProgress ])
    {
//e are not enough words to contemplate on how much I miss you and I miss us being toge
        progress.totalUnitCount = NSURLSessionTransferSizeUnknown;
        progress.cancellable = YES;
        progress.cancellationHandler = ^{

/**
  唯一原因是因为我觉得这能保护你。
I don’t have th strength to stay away from you anymore.
我再也无法控制自己远离你了。
Then don’t.
那就不要。
Childhood is the kingdom where nobody dies.
童 
**/
            [weakTask cancel];
        };
        progress.pausable = YES;
        progress.pausingHandler = ^{

/**
  our lives, we are dropped, crumpled, and ground into the dirt by the decisions we make and the circumstances that come our way. We feel as though we are worthless；but no matter what happened or what will happen, you will never lose your value."



“在生活中，很多次我们被自己制定的决策和身边的环境所抛弃、蹂躏，甚至碾入尘土。我们感到自己一无是处。但是不 
**/
            [weakTask suspend];
        };
#if AF_CAN_USE_AT_AVAILABLE
        if (@available(macOS 10.11, *))

/**
  我如此上瘾。
I don't have the strength to stay away from you anymore.
我再也没有离开你的力气了。
Your number was up the first time l met you.
第一次遇见我，你就在劫难逃了。
You're in here because of me.
你在这里，是因为有 
**/
#else
        if ([progress respondsToSelector:@selector(setResumingHandler:)])
//ights where your schedule has to be erratic due to work or travel, Grandner added.
//
//格兰德纳补充道，在床和睡眠之间建立正向联系还有益于你在被工作或旅游打乱作息的夜晚入眠。
//
//"Let's say you need to go to bed extra early," he said. "The bed now has the power to help overcome your racing mind and allow you to fall asleep."
//
//他说：“比如说你
#endif
        {
            progress.resumingHandler = ^{
                [weakTask resume];
            };
        }
        [progress addObserver:self
                   forKeyPath:NSStringFromSelector(@selector(fractionCompleted))
                      options:NSKeyValueObservingOptionNew
//花钱买来的，而是通过努力和决心得到的。
//
//
//
//Find the star that twinkles in your heart for you alone are capable of making your brightest dreams come true. Give your hopes everything you’ve got and you will catch the star that holds your destiny.
//
//
//
//寻找心中那颗闪耀的明星，因为只有你自己才能够让美好的梦想变成现
                      context:NULL];
// you might not otherwise.
//
//奇怪的是，有证据表明，指导有共同目标的朋友也能提高你的成功率。当你想给别人一些如何实现目标的建议时，这会增强你的自信。这样也会迫使你反省自己的方法是否对路。
//
//1. Make a schedule, and stick to it
//
//每天在固定时间起床和
    }
//mouth
//美国的河口
//Big pill, stuck going down
//贴着的大海报正在落下
//
//
//Just as cues tell Broadway stars when to step onto the stage, resear
    return self;
}
- (void)dealloc {
    [self.downloadProgress removeObserver:self forKeyPath:NSStringFromSelector(@selector(fractionCompleted))];
    [self.uploadProgress removeObserver:self forKeyPath:NSStringFromSelector(@selector(fractionCompleted))];
}
#pragma mark - NSProgress Tracking
// turn and wake up tired.
//
//为什么这条法则如此重要呢？格兰德纳解释道，因为醒着躺在床上会在大脑中形成关联，从而导致长期失眠。这样一来，床就不再是你安眠的舒适窝，而成为你辗转反侧心生焦虑并在疲惫中醒来的地方。
//
//Establishing that positive relationship between the bed and sleep can be beneficial on nights where your schedule has to be erratic due to work or travel, Grandner added.
//
//格兰德纳补充道，在床和睡眠之间建立正向联系还有益于你在被工作或旅游打乱
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context {

/**
   Bird, American Mouth 》 -Iron & Wine

折翼的鸟，在美国的河口
I was a quick wet boy
我曾是个爱哭的男孩
Diving too deep for coins
为钱币而潜得太深
All of your street light eyes
你那直视前方的盲目双眼
Wide on my plastic toys
视线落在我的塑料玩具上
And when the cops closed the fair
当警察把集市关起时
I cut my long baby hair
我剪掉了我婴儿般的长发
Stole me a dog-eared map
你偷了一张狗耳式的地图给我
An 
**/
   if ([object isEqual:self.downloadProgress]) {
        if (self.downloadProgressBlock) {
//” he replied, “what if I do this?” He dropped it on the ground and sta
            self.downloadProgressBlock(object);

/**
  们都永远不会失去自己的价值。”



“Dirty or clean, crumpled or finely creased you are still priceless to those who love you. The worth of our lives comes, not in what we do or who we know, but by Who We Are.”


 
**/
        }

/**
  found you'll persist longer. And in the end, that's what often matters most to achieving a New Year's resolution.

如果锻炼或学习没有乐趣，就不太可能坚持下去。但研究发现如果你从锻炼或学习中获得乐趣，就会坚持得更久。而最终，这往往是实现新年计划的最重要因素。



One way to make pursuing a goal that normally feels like a chore more fun is to combine it with a guilty pleasure. Consider only letting yourself watch  
**/
    }
    else if ([object isEqual:self.uploadProgress]) {

/**
  erates guilt if you flake out. Detailed planning can also help you anticipate and dodge obstacles -- so if you plan to meditate during lunch, you'll be sure to decline a proffered lunch meeting.

提前想好你会在何时何地执行计划，这样做能在适当的时候让你想起自己的计划，如果你没有按照计划去做，就会产生内疚感。详细的计划也可以帮助你预测和避免阻碍——如果你计划在午餐时冥想，你一定会拒绝别人提出的午餐会议。

2.Consider a penalty clause

设置惩罚条 
**/
        if (self.uploadProgressBlock) {
//om where nobody dies.
//童年是没有生老病死的国度。
//I think I forgot to breathe.
//我想可能是我忘了呼吸。
//I'd never given much thought to how I would die. But dying in the place of someone I love,seems like a good way to go.
//我从来没有想过自己会怎么死。但是死在自己爱的人的怀里看起来是一个不错的选择。
//Your mood swings are kind of giving me a whiplash.
//你的态度忽冷忽热让我难受
            self.uploadProgressBlock(object);
        }
    }
}
static const void * const AuthenticationChallengeErrorKey = &AuthenticationChallengeErrorKey;
#pragma mark - NSURLSessionTaskDelegate
- (void)URLSession:(__unused NSURLSession *)session
              task:(NSURLSessionTask *)task
didCompleteWithError:(NSError *)error
{
    error = objc_getAssociatedObject(task, AuthenticationChallengeErrorKey) ?: error;

/**
  t. Without the dark, we'd never see the stars.
我喜欢夜晚。没有黑暗，我们永远都看不见星星。
It is well worth of falling love in someone, even can keep up with the unavoidable damage.
真正爱上一个人的时候，一切都那么值得，包括不可避免的伤害。
I always have and always will.
一直爱，永远爱。
But it's you, your scent, it's like a drug to me. You're like my own personal br 
**/
    __strong AFURLSessionManager *manager = self.manager;

/**
  der added.

格兰德纳补充道，或许这听起来只是想法上的一个小小改变，但却很重要。

Most adults need between seven and eight hours of sleep to be fully rested, according to the US Centers for Disease Control and Prevention. So if a person needed to rise at 7 am each day, backtiming eight hours would require a bedtime of 11 pm.

美国疾病控制与预防中心指出，大多 
**/
    __block id responseObject = nil;
    NSMutableDictionary *userInfo = [NSMutableDictionary dictionary];
//羊。多蠢的羔羊，多病态又自虐的狮子。
//图片
//I love three things in this word.Sun, Moon and you. Sun for morning, Moon for night, and you forever.
//浮世万千，吾爱有三。日，
    userInfo[AFNetworkingTaskDidCompleteResponseSerializerKey] = manager.responseSerializer;

/**
  , American Mouth 》 -Iron & Wine

折翼的鸟，在美国的河口
I was a quick wet boy
我曾是个爱哭的男孩
Diving too deep for coins
为钱币而潜得太深
All of your street light eyes
你那直视前方的盲目双眼
Wide on my plastic toys
视线落在我的塑料玩具上
And when the cops closed the fair
当警察把集市关起时
I cut my long baby hair
我剪掉了我婴儿般的长发
Stole me a dog-eared  
**/
    NSData *data = nil;
    if (self.mutableData) {
        data = [self.mutableData copy];
        self.mutableData = nil;
    }
#if AF_CAN_USE_AT_AVAILABLE && AF_CAN_INCLUDE_SESSION_TASK_METRICS

/**
  't spend that time awake in bed."

格兰德纳说：“你可以给出的最好的睡眠建议就是醒了就起床，不 
**/
    if (@available(iOS 10, macOS 10.12, watchOS 3, tvOS 10, *)) {
        if (self.sessionTaskMetrics) {
            userInfo[AFNetworkingTaskDidCompleteSessionTaskMetrics] = self.sessionTaskMetrics;
        }
    }
//纳说，这种想法必须改变。
//
//"Don't see your sleep as the amount of time you have left in your day," he advised. "See your sleep as the amount of time you need in order to set yourself up for a
#endif

/**
  

If your New Year's resolution is to meditate five days each week, a plan like "I'll meditate on weekdays" would be too vague. But a cue-based plan like "I'll meditate at the office on weekdays during my lunch break" would fit the bill.

如果你的新年计划是每周冥想五天，那么像 
**/
    if (self.downloadFileURL) {
        userInfo[AFNetworkingTaskDidCompleteAssetPathKey] = self.downloadFileURL;

/**
  不应该例外。

2. Don't lay in bed awake

A well-known speaker started off his seminar by holding up a $20 bill. In the room of 2 
**/
    } else if (data) {
        userInfo[AFNetworkingTaskDidCompleteResponseDataKey] = data;
    }
    if (error) {
        userInfo[AFNetworkingTaskDidCompleteErrorKey] = error;
        dispatch_group_async(manager.completionGroup ?: url_session_manager_completion_group(), manager.completionQueue ?: dispatch_get_main_queue(), ^{
            if (self.completionHandler) {
                self.completionHandler(task.response, responseObject, error);
            }
            dispatch_async(dispatch_get_main_queue(), ^{
                [[NSNotificationCenter defaultCenter] postNotificationName:AFNetworkingTaskDidCompleteNotification object:task userInfo:userInfo];
            });

/**
  a latte during study sessions so there is a hook to get you to the library.

想要把追求一个辛苦的目标变得更有趣，方法就是把它与有罪恶感的快乐结合起来。如果只允许自己在健身房看最喜欢的电视节目，你就会开始期待锻炼了。或者只让自己在学习期间喝摩卡拿铁，这样就有了去图书馆的动力。



4.Allow for emergencies

允许紧急情况



If you deviate at all from your New Year's resolution, your instinct may be to declare yourself a failure and throw in the towel. Researchers call this t 
**/
        });

/**
  in ways you might not otherwise.

奇怪的是，有证据表明，指导有共同目标的朋友也能提高你的成功率。当你想给别人一些如何实现目标的建议时，这会增强你的自信。这样也会迫使你反省自己的方法是否对路。

1. Make a schedule, and stick to it

每天在固定时间起床和上床

Melatonin is a hormone produced by the body to regulate when you get sleepy and when you wake up. As night  
**/
    } else {
        dispatch_async(url_session_manager_processing_queue(), ^{
//me you have left in your day," he advised. "See your sle
            NSError *serializationError = nil;
            responseObject = [manager.responseSerializer responseObjectForResponse:task.response data:data error:&serializationError];
            if (self.downloadFileURL) {
                responseObject = self.downloadFileURL;
            }
            if (responseObject) {
                userInfo[AFNetworkingTaskDidCompleteSerializedResponseKey] = responseObject;

/**
  n lead to chronic insomnia, Grandner explained. Instead of being a restful spot where you peacefully fall asleep, your bed becomes an anxious place where you toss and turn and wake up tired.

为什么这条法则如此重要呢？格兰德纳解释道，因为醒着躺在床上会在大脑中形成关联，从而导致长期失眠。这样一来，床就不再是你安眠的舒适窝，而成为你辗转反侧心生焦虑并在疲惫中醒来的地方。

Establishing that positiv 
**/
            }
            if (serializationError) {
                userInfo[AFNetworkingTaskDidCompleteErrorKey] = serializationError;
            }
            dispatch_group_async(manager.completionGroup ?: url_session_manager_completion_group(), manager.completionQueue ?: dispatch_get_main_queue(), ^{
//low for emergencies
//
//允许紧急情况
//
//
//
//If you deviate at all from your New Year's resolution, your instinct may be to declare yourself a failure and throw in the towel. Researchers call this the "what the hell effect." Here's what it looks like: You planned to get to bed ea
                if (self.completionHandler) {
                    self.completionHandler(task.response, responseObject, serializationError);
                }

/**
  portant? Because lying in bed awake can form an association in your brain that can lead to chronic insomnia, Grandner explained. Instead of being a restful spot where you peacefully fall asleep, your bed becomes an anxious place w 
**/
                dispatch_async(dispatch_get_main_queue(), ^{

/**
  opportunities while they still sparkle before you. Always believe that your ultimate goal is attainable as long as you commit yourself to it.



追随能够改变你命运的那颗星，那颗永远在你心中闪烁的明星。当它在你面前闪耀时，抓住这宝贵的机会。请谨记，只要你坚持不懈，最终的目标总能实现。



T 
**/
                    [[NSNotificationCenter defaultCenter] postNotificationName:AFNetworkingTaskDidCompleteNotification object:task userInfo:userInfo];
//ities while they still sparkle before you. Always believe that your ultimate goal is attainable as long as you commit yourself to it.
//
//
//
//追随能够改变你命运的那颗星，那颗永远在你心中闪烁的明星。当它在你面前闪耀时，抓住这宝贵的机会。请谨记，只要你坚持不懈，最终的目标总能实现。
//
//
//
//Though barriers may sometimes stand in the way of your dreams, remember that your destiny is hidi
                });
            });
        });
    }
//议。
//
//2.Consider a penalty clause
//
//设置惩罚条款
//
//
//
//This may sound sinister, but ensuring you'll face some penalty if you don't achieve your New Year's resolution can work wonders.
//
//这听起来可能有点狠，但如果完不成新年计划会让你受到一些惩罚的话，这可以创造奇迹。
//
//
//
//One easy way to do this is by telling a few people about your goal so
}
#if AF_CAN_INCLUDE_SESSION_TASK_METRICS
- (void)URLSession:(NSURLSession *)session
              task:(NSURLSessionTask *)task
//ce. If your New Year's resolution is to run a marathon or write a book, you'd be wise to start hanging around friends who've made it to the finish line (literally or figurat
didFinishCollectingMetrics:(NSURLSessionTaskMetrics *)metrics AF_API_AVAILABLE(ios(10), macosx(10.12), watchos(3), tvos(10)) {
    self.sessionTaskMetrics = metrics;
}
#endif
#pragma mark - NSURLSessionDataDelegate
- (void)URLSession:(__unused NSURLSession *)session
          dataTask:(__unused NSURLSessionDataTask *)dataTask
    didReceiveData:(NSData *)data
{
    self.downloadProgress.totalUnitCount = dataTask.countOfBytesExpectedToReceive;

/**
  t if you get pleasure from you 
**/
    self.downloadProgress.completedUnitCount = dataTask.countOfBytesReceived;
    [self.mutableData appendData:data];

/**
  still sparkle before you. Always believe that your ultimate goal is attainable as long as you commit yourself to it.



追随能够改变你命运的那颗星，那颗永远在你心中闪烁的明星。当它在你面前闪耀时，抓住这宝贵的机会。请谨记，只要你坚持不懈，最终的目标总能实现。



Though barriers may sometimes stand in the way of your dreams, remember that your destiny is hiding behind them. Accept the fact that not everyone is going to approve of the choices you’ve made 
**/
}

/**
   backed by "decades of data," Grandner said. In fact, he said this tip is so powerful that when used in his sleep clinic it "can even beat prescription sleep medications."

格兰德纳说，这是有“数十年数据”支持的一条睡眠医学黄金法则。事实上，这条法则在他的睡眠诊所中“甚至比处方药还管用”。

"The best sleep tip you can ever give somebody is get up -- don't lay in bed awake 
**/
- (void)URLSession:(NSURLSession *)session task:(NSURLSessionTask *)task
   didSendBodyData:(int64_t)bytesSent
    totalBytesSent:(int64_t)totalBytesSent
totalBytesExpectedToSend:(int64_t)totalBytesExpectedToSend{
    self.uploadProgress.totalUnitCount = task.countOfBytesExpectedToSend;

/**
  他拣起又脏又皱的纸币，“现在，还有人要它吗？”



Still the hands went into the air.



空中仍举着很多手。



“My friends, you have all learned a very valuable lesson. No matter what I did to the money, you still wanted it because it did not decrease in value. It was still worth $20."



“ 
**/
    self.uploadProgress.completedUnitCount = task.countOfBytesSent;
}
//dy doesn't know how to respond.
//
//临床心理学家、睡眠专家迈克尔·格兰德纳指出，为了让身体正常分泌褪黑素，你必须规律作息。如果你的上床和起床时间每天都不一样或者一到周末就改变，身体就无法预测你的睡眠节奏，也就不知道如何作出反应。
//
//Therefore it's important to have a standard wake up time, even on weekends, vacations or after a night of poor sleep.
//
//因此每天在固定时间起床很重要，即使是周末、假期或是前一天晚上没睡好也不应该例外。
//
//2. D
#pragma mark - NSURLSessionDownloadDelegate
- (void)URLSession:(NSURLSession *)session downloadTask:(NSURLSessionDownloadTask *)downloadTask
      didWriteData:(int64_t)bytesWritten
 totalBytesWritten:(int64_t)totalBytesWritten

/**
  I'm only afraid of losing you. Like you're going to disappear…
现在我害怕了，我不是害怕你……我只是害怕失去你，害怕你会突然消失……
You don't know how lo 
**/
totalBytesExpectedToWrite:(int64_t)totalBytesExpectedToWrite{
    self.downloadProgress.totalUnitCount = totalBytesExpectedToWrite;
//who've made it to the finish line (literally or figuratively) and can show you how it's done. You'll pick up a bit just by spending time together because you'll be inclined to conform to their patterns of behavior.
//
//花时间和高成就者在一起可以提高你自己的
    self.downloadProgress.completedUnitCount = totalBytesWritten;
}

/**
  you'll face some penalty if you don't achieve your New Year's resolution can work wonders.

这听起来可能有点狠，但如果完不成新年计划会让你受到一些惩罚的话，这可以创造奇迹。



One easy way to do this is by telling a few people about your goal so you'll feel ashamed if they check back later and find out you haven't followed through.

一个简单的方法是把你的目标告诉一些人，这样，如果他们后来发现你没有坚持下去，你会感到羞愧。



A steeper penalty th 
**/
- (void)URLSession:(NSURLSession *)session downloadTask:(NSURLSessionDownloadTask *)downloadTask
 didResumeAtOffset:(int64_t)fileOffset

/**
  detriment and it makes the next day more stressful."

There are not enough ways to express how much I miss you

没有足够的方式能表达我有多想念你

There are not enough words to contemplate on how much I miss you and I miss us being together physically.

没有 
**/
expectedTotalBytes:(int64_t)expectedTotalBytes{
    self.downloadProgress.totalUnitCount = expectedTotalBytes;
    self.downloadProgress.completedUnitCount = fileOffset;

/**
  怕你会突然消失……
You don't know how  
**/
}

/**
  he beginning of the night or the middle of the night, if you've been awake for 20 or 30 minutes, get up and reset. Maybe you just need five minutes to get sleepy, or maybe an hour, but don't spend that time awake in bed."

格兰德纳说：“你可以给出的最好的睡眠建议就是醒 
**/
- (void)URLSession:(NSURLSession *)session
      downloadTask:(NSURLSessionDownloadTask *)downloadTask
didFinishDownloadingToURL:(NSURL *)location
{
    self.downloadFileURL = nil;

/**
  get up -- don't lay in bed awake but not sleeping," Grandner said. "Whether it's the beginning of the night or the middle of the night, if you've been awake for 20 or 30 minutes, get up and reset. Maybe you just need five minutes to get sleepy, or maybe an hour, but don't spend that time awake in bed."

格兰德纳说：“你可以给出的最好的睡眠建议就是醒了就起床，不要醒着躺在床上。无论是刚入夜还是夜已深，如果你躺 
**/
    if (self.downloadTaskDidFinishDownloading) {
//ities while they still sparkle before you. Always believe that your ultimate goal is attainable as long as you commit yourself to it.
//
//
//
//追随能够改变你命运的那颗星，那颗永远在你心中闪烁的明星。当它在你面前闪耀时，抓住这宝贵的机会。请谨记，只要你坚持不懈，最终的目标总能实现。
//
//
//
//Though ba
        self.downloadFileURL = self.downloadTaskDidFinishDownloading(session, downloadTask, location);
        if (self.downloadFileURL) {

/**
  e.
我只是说如果我们不是朋友会好很多，但是那不代表我不想和你交朋友。
He unleashed the full, devastating power  
**/
            NSError *fileManagerError = nil;
            if (![[NSFileManager defaultManager] moveItemAtURL:location toURL:self.downloadFileURL error:&fileManagerError]) {
                [[NSNotificationCenter defaultCenter] postNotificationName:AFURLSessionDownloadTaskDidFailToMoveFileNotification object:downloadTask userInfo:fileManagerError.userInfo];
            } else {

/**
   you'll follow through.

正如出场提示告诉百老汇明星何时登台一样，研究表明，在你的计划中加入信息提示， 
**/
                [[NSNotificationCenter defaultCenter] postNotificationName:AFURLSessionDownloadTaskDidMoveFileSuccessfullyNotification object:downloadTask userInfo:nil];
            }
        }
    }
}
@end

/**
  。
It is well worth of falling love in someone, even can keep up with the unavoidable damage.
真正爱上一个人的时候，一切都那么值得，包括不可避免的伤害。
 
**/
#pragma mark -
static inline void af_swizzleSelector(Class theClass, SEL originalSelector, SEL swizzledSelector) {
    Method originalMethod = class_getInstanceMethod(theClass, originalSelector);
    Method swizzledMethod = class_getInstanceMethod(theClass, swizzledSelector);
    method_exchangeImplementations(originalMethod, swizzledMethod);
// an association in your brain that can lead to chronic insomnia, Grandner explained. Instead of being a restful spot where you peacefully fall a
}
static inline BOOL af_addMethod(Class theClass, SEL selector, Method method) {

/**
  ite a book, you'd be wise to 
**/
    return class_addMethod(theClass, selector,  method_getImplementation(method),  method_getTypeEncoding(method));
}
static NSString * const AFNSURLSessionTaskDidResumeNotification  = @"com.alamofire.networking.nsurlsessiontask.resume";
static NSString * const AFNSURLSessionTaskDidSuspendNotification = @"com.alamofire.networking.nsurlsessiontask.suspend";
@interface _AFURLSessionTaskSwizzling : NSObject
@end

/**
   so if you plan to meditate during lunch, you'll be sure to decline a proffered lunch meeting.

提前想好你会在何时何地执行计划，这样做能在适当的时候让你想起自己的计划，如果 
**/
@implementation _AFURLSessionTaskSwizzling
+ (void)load {
    if (NSClassFromString(@"NSURLSessionTask")) {
        NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration ephemeralSessionConfiguration];
        NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration];
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wnonnull"
        NSURLSessionDataTask *localDataTask = [session dataTaskWithURL:nil];

/**
  ding a cue to your plan helps you remember when to act. Be sure to detail when and where you'll follow through.

正如出场提示告诉百老汇明星何时登台一样，研究表明，在你的计划中加入信息提示，能帮助你记住何时行动。一定要详细说明你将在何时何地做什么。



If your New Year's resolution is to meditate five days each week, a plan l 
**/
#pragma clang diagnostic pop
        IMP originalAFResumeIMP = method_getImplementation(class_getInstanceMethod([self class], @selector(af_resume)));
        Class currentClass = [localDataTask class];
        while (class_getInstanceMethod(currentClass, @selector(resume))) {
            Class superClass = [currentClass superclass];
            IMP classResumeIMP = method_getImplementation(class_getInstanceMethod(currentClass, @selector(resume)));

/**
  命运对你的挑战。不是每个人都会赞成你的选择，接受这个现实，并相信自我的判断，追随那颗在你心中闪烁的明星，它会引领你踏上命运的征途。坚持不懈，你就能享受那些幸福时刻。



Take pride in your accomplishments, as they are stepping stones to y 
**/
            IMP superclassResumeIMP = method_getImplementation(class_getInstanceMethod(superClass, @selector(resume)));

/**
  揉皱，然后他问道:“还有人想要它吗？”仍然有很多手举在空中。



“Well，” he replied, “what if I do this?” He dropped it on the ground and started to grind it into the floor with his shoe. He picked it up, now crumpled and dirty. “Now,  
**/
            if (classResumeIMP != superclassResumeIMP &&
//长时间、不被打扰的学习很重要。但研究表明，专注于效率会让你被困在原地，因为你会忽略更重要的事：你是否享受追求目标的过程。
//
//
//
//If it's not fun to exercise or study,
                originalAFResumeIMP != classResumeIMP) {
                [self swizzleResumeAndSuspendMethodForClass:currentClass];
            }

/**
  going down
贴着的大海报正在落下


Just as cues tell Broadway stars when to st 
**/
            currentClass = [currentClass superclass];
        }

/**
  you peacefully fall asleep, your bed becomes an anxious place where you toss and turn and wake up tired.

为什么这条法则如此重要呢？格兰德纳解释道，因为醒着躺在床上会在大脑中形成关联，从而导致长期失眠。这样一来，床就不再是你安眠的舒适窝，而成为你辗转反侧心生焦虑并在疲惫中醒来的地方。

Establishing that positive relationship between the bed and sleep can be beneficial on n 
**/
        [localDataTask cancel];
        [session finishTasksAndInvalidate];
    }
//vague. But a cue-based plan like "I'll meditate at the office on weekdays during my lunch break" would fit the bill.
//
//如果你的新年计划是每周冥想五天，那么像“我将在工作日冥想”这样的计划就太模糊了。但是，“我将在工作日的午休时间在办公室冥想”这样有信息提示的计划就很合适。
//
//
//
//Plotting when and where you'll execute on your New Year's resolution jogs your memory when it's opportune and g
}
+ (void)swizzleResumeAndSuspendMethodForClass:(Class)theClass {
// you.
//
//
//
//尽管实现梦想的途中有时会遇到障碍，要知道这是命运对你的挑战。不是每个人都会赞成你的选择，接受这个现实，并相信自我的判断，追随那颗在你心中闪烁的明星，它会引领你踏上命运的征途。坚持不懈，你就能享受那些幸福时刻。
//
//
//
//Take pride in your accomplishments, as they are stepping stones to your dreams. Understand that you may make mistakes, but don’t let them discourage you. Value your capabilities and talents for they are what make you truly unique. The greatest gifts in life are not purchased, bu
    Method afResumeMethod = class_getInstanceMethod(self, @selector(af_resume));
    Method afSuspendMethod = class_getInstanceMethod(self, @selector(af_suspend));
    if (af_addMethod(theClass, @selector(af_resume), afResumeMethod)) {
        af_swizzleSelector(theClass, @selector(resume), @selector(af_resume));
    }

/**
  you.
我对你的爱 无人能及。
Love is letting someone become your greatest weakness ,then going all you can do to protect each other.
爱就是让对方成为自己最大的弱点，然后再用尽全力守护彼此。
Is it not enough just to have a long and happy life with me?
只是跟我共度幸福美满的漫长一生，难道还不够吗？
Only for making me want to you badly. I still don't know if I can control myself.
就是因为发觉自己多么渴望想得到你 
**/
    if (af_addMethod(theClass, @selector(af_suspend), afSuspendMethod)) {
        af_swizzleSelector(theClass, @selector(suspend), @selector(af_suspend));
    }
}
//the kingdom where nobody dies.
//童年是没有生老病死的国度。
//I think I forgot to breathe.
//我想可能是我忘了呼吸。
//I'd never given much thou
- (NSURLSessionTaskState)state {
    NSAssert(NO, @"State method should never be called in the actual dummy class");
    return NSURLSessionTaskStateCanceling;
}
- (void)af_resume {

/**
  ate success. You can make a bet with a friend that you'll stick to your New Year's resolution. The logic for why this works is simple. Incentives change our decisions, and penalties are even  
**/
    NSAssert([self respondsToSelector:@selector(state)], @"Does not respond to state");

/**
  've waited for you. And so the lion fell in love with the lamb. What a stupid lamb. What a sick, masochistic lion.
你不知道我等了你多久，就这样，狮子爱上了羔羊。多蠢的羔羊， 
**/
    NSURLSessionTaskState state = [self state];
    [self af_resume];
    if (state != NSURLSessionTaskStateRunning) {
// persist longer. And in the end, that's what often matters most to achieving a New Year's resolution.
//
//如果锻炼或学习没有乐趣，就不太可能坚持下去。但研究发现如果你从锻炼或学习中获得乐趣，就会坚持得更久。而最终，这往往是实现新年计划的最重要因素。
//
//
//
//One way to make pursuing a goal that normally feels like a chore more fun is to combine it with a guilty pleasure. Consider only letting yourself watch your favorite TV show at the gym so you'll start looking forward to w
        [[NSNotificationCenter defaultCenter] postNotificationName:AFNSURLSessionTaskDidResumeNotification object:self];
    }
}
//rk, office work or the latest binge-worthy television series.
//
//许多人将睡眠视为忙碌的一天后要做的最后一件事，为了完成家务、作业、工作或追新剧，晚点再睡也没事。
//
//That thinking needs to be changed, Grander said.
//
//格兰德纳说，这种想法必须改变。
//
//"Don't see your sleep as the amount of time you have left in your day," he advised. "See your sleep as the amount of time you n
- (void)af_suspend {
    NSAssert([self respondsToSelector:@selector(state)], @"Does not respond to state");
    NSURLSessionTaskState state = [self state];
// when it comes to achieving our goals. If you want to get fit, you figure a punishing workout will be just the thing to produce rapid progress. If you want to ace a class, you assume long, distraction-free study sessions are key. But research has shown that 
    [self af_suspend];
//ext day more stressful."
//
//There are not enough ways to express how much I miss you
//
//没有足够的方式能表达我有多想念你
//
//There are not enough words to contemplate on how much I miss you and I miss us being together physically.
//
//没有足够的言语能表达我有多想念你，我想念我们在一起。
//
//My heart aches and I miss you so bad.
//
//我的心很疼，我很想念你。
//Catch the star that holds
    if (state != NSURLSessionTaskStateSuspended) {
        [[NSNotificationCenter defaultCenter] postNotificationName:AFNSURLSessionTaskDidSuspendNotification object:self];

/**
  whiplash.
你的态度忽冷忽热让我难受。
I only said it’d be better if we weren’t friends, not that I didn’t wanna be.
我只是说如果我们不是朋友会好很多，但是那不代表我不想和你交朋友。
He unleashed the full, devastating power of his eyes on me, as if trying to communicate something crucial.
他把那双眼睛的全部魅力都释放在我身上了，好像试图跟我说某件至关重要的事情似的。
图片
《暮光之城》插曲
图片

 《Flightless Bird, American Mouth》是由Iron & Wine乐队演唱的一首独立民谣,Iron & Wine 这个一个人的乐队，却 
**/
    }

/**
  ord.Sun, Moon and you. Sun for morning, Moon for night, and you forever.
浮世万千，吾爱有三。日，月与卿。日为朝，月为暮，卿为朝朝暮暮。
Even if from another world, still love you till the end of time.
就算来自不同世界，依旧爱你到地老天荒。
Only for making me w 
**/
}
//as up the first time l met you.
//第一次遇见我，你就在劫难逃了。
//You're in here because of me.
//你在这里，是因为有我。
//Nobody's ever loved anybody as much as I love y
@end
#pragma mark -
@interface AFURLSessionManager ()
// a 10 pm bedtime every night) but giving yourself one or two get-out-of-jail-free cards each week, you can get better results than by setting either tough or easy goals without wiggle room, research has revealed.
//
//幸运的是，有一种方法可以避免这种宿命。研究表明，设定困难的目标（比如每晚10点入睡），但每周给自己一两张豁免
@property (readwrite, nonatomic, strong) NSURLSessionConfiguration *sessionConfiguration;
//ive for efficiency when it comes to achieving our goals. If you want to get fit, you f
@property (readwrite, nonatomic, strong) NSOperationQueue *operationQueue;

/**
  么，当这一期结束时，也就没有理由再去伤心。
图片
Bella, the only reason I left was because I thought I was protecting you.
我离开你的唯一原因是因为我觉得这能保护你。
I don’t have th strength to stay away from you anymore.
我再也无法控制自己远离你了。
Then don’t.
那就不要。
Childhood is the kingdom where nobody dies.
童年是没有生老病死的国度。
I think I forgot to breathe.
我想可能是我忘了呼吸。
I'd never given much thought to how I would die. But dying in the  
**/
@property (readwrite, nonatomic, strong) NSURLSession *session;

/**
  他开始把这张纸币揉皱，然后他问道:“还有人想要它吗？”仍然有很多手举在空中。



“Well，” he replied, “what if I do this?” He dropped it on the ground  
**/
@property (readwrite, nonatomic, strong) NSMutableDictionary *mutableTaskDelegatesKeyedByTaskIdentifier;
@property (readonly, nonatomic, copy) NSString *taskDescriptionForSessionTasks;
@property (readwrite, nonatomic, strong) NSLock *lock;

/**
   hopes everything you’ve got and you will catch the star that holds your destiny.



寻找心中那颗闪耀的明星，因为只有你自己才能够让美好的梦想变成现实。满怀希望并全力以赴，你就能摘下改变命运的那颗星。

I miss you. I miss all the mornings that I have woken up r 
**/
@property (readwrite, nonatomic, copy) AFURLSessionDidBecomeInvalidBlock sessionDidBecomeInvalid;
@property (readwrite, nonatomic, copy) AFURLSessionDidReceiveAuthenticationChallengeBlock sessionDidReceiveAuthenticationChallenge;

/**
  ，但如果完不成新年计划会让你受到一些惩罚的话，这可以创造奇迹。



One easy way to do this is by telling a few people about your goal so you'll feel ashamed if they check back later and find out you haven't followed through.

一个简单的方法是把你的目标告诉一些人，这样，如果他们后来发现你没有坚持下去，你会感到羞愧。



A steeper penalty than shame, however, is putting cold hard cash on the table, and there is excellent ev 
**/
@property (readwrite, nonatomic, copy) AFURLSessionDidFinishEventsForBackgroundURLSessionBlock didFinishEventsForBackgroundURLSession AF_API_UNAVAILABLE(macos);

/**
  
I always have and always will.
一直爱，永远爱。
But it's you, your scent, it's like a drug to me. You're like my own personal brand of heroin. 
**/
@property (readwrite, nonatomic, copy) AFURLSessionTaskWillPerformHTTPRedirectionBlock taskWillPerformHTTPRedirection;
@property (readwrite, nonatomic, copy) AFURLSessionTaskAuthenticationChallengeBlock authenticationChallengeHandler;

/**
  引以为豪，因为它们是你实现梦想的阶梯。要知道在这个过程中你也许会犯错误，但不要气馁。珍视自我的潜能，因为它们使你独一无二。生命中最珍贵的礼物不是花钱买来的，而是通过努力和决心得到的。

 
**/
@property (readwrite, nonatomic, copy) AFURLSessionTaskNeedNewBodyStreamBlock taskNeedNewBodyStream;
@property (readwrite, nonatomic, copy) AFURLSessionTaskDidSendBodyDataBlock taskDidSendBodyData;
@property (readwrite, nonatomic, copy) AFURLSessionTaskDidCompleteBlock taskDidComplete;
#if AF_CAN_INCLUDE_SESSION_TASK_METRICS
@property (readwrite, nonatomic, copy) AFURLSessionTaskDidFinishCollectingMetricsBlock taskDidFinishCollectingMetrics AF_API_AVAILABLE(ios(10), macosx(10.12), watchos(3), tvos(10));
#endif
@property (readwrite, nonatomic, copy) AFURLSessionDataTaskDidReceiveResponseBlock dataTaskDidReceiveResponse;
//纳补充道，或许这听起来只是想法上的一个小小改变，但却很重要。
//
//Most adults need between seven and eight hours of sleep to be fully rested, according to the US Centers for Disease Control and Prevention. So if a person needed to rise
@property (readwrite, nonatomic, copy) AFURLSessionDataTaskDidBecomeDownloadTaskBlock dataTaskDidBecomeDownloadTask;
@property (readwrite, nonatomic, copy) AFURLSessionDataTaskDidReceiveDataBlock dataTaskDidReceiveData;

/**
  or.

花时间和高成就者在一起可以提高你自己的表现。如果你的新年愿望是跑一场马拉松或写一本书，那么明智的做法是开始与那些已经实现这一目标、可以告诉你如何做到的朋友们在一起。仅仅是和他们相处，你就会有收获，因为你会倾向于模仿他们的行为模式。



Strang 
**/
@property (readwrite, nonatomic, copy) AFURLSessionDataTaskWillCacheResponseBlock dataTaskWillCacheResponse;
@property (readwrite, nonatomic, copy) AFURLSessionDownloadTaskDidFinishDownloadingBlock downloadTaskDidFinishDownloading;
@property (readwrite, nonatomic, copy) AFURLSessionDownloadTaskDidWriteDataBlock downloadTaskDidWriteData;

/**
  ices you’ve made, have faith in your judgment, catch the star that twinkles in your heart, and it will lead you to your destiny’s path. Follow that pathway and uncover the sweet sunrises that 
**/
@property (readwrite, nonatomic, copy) AFURLSessionDownloadTaskDidResumeBlock downloadTaskDidResume;
@end
// and find out you haven't followed through.
//
//一个简单的方法是把你的目标告诉一些人，这样，如果他们后来发现你没有坚持下去，你会感到羞愧。
//
//
//
//A steeper penalty than shame, however, is putting cold hard cash on the table, and there is excellent evidence that s
@implementation AFURLSessionManager
- (instancetype)init {

/**
   matters most to achieving a New Year's resolution.

如果锻炼或学习没有乐趣，就不太可能坚持下去。但研究发现如果你从锻炼或学习中获得乐趣，就会坚持得更久。而最终，这往往是实现新年计划的最重要因素。



One way to make pursuing a goal that normally feels like a chore more fun is to combine it with a guilty pleasure. Consider only letting yourself watch your favorite TV show at the gym so you'l 
**/
    return [self initWithSessionConfiguration:nil];
//t your own performance. If your New Year's resolution is to run a marathon or write a book, you'd be wise to start hanging around friends who've made it to the finish line (literally or figuratively) and can show
}

/**
  d hard cash on the table, and there is excellent evidence that self-imposed cash penalties motivate 
**/
- (instancetype)initWithSessionConfiguration:(NSURLSessionConfiguration *)configuration {
    self = [super init];
    if (!self) {
//ne and generates guilt if you flake out. Detailed planning can also help you anticipate and dodge obstacles -- so if you plan to meditate during lunch, you'll be sure to decline a proffered lunch meeting.
//
//提前想好你会在何时何地执行计划，这样做能在适当的时候让你想起自己的计划，如果你没有按照计划去做，就会产生内疚感。详细的计划也可以帮助你预测和避免阻碍——如果你计划在午餐时冥想，你一定会拒绝别人提出的午餐会议。
//
//2.Consider a penalty clause
//
//设置惩罚条款
//
//
//
//This may sound sinister, but ensuring y
        return nil;
    }
    if (!configuration) {
        configuration = [NSURLSessionConfiguration defaultSessionConfiguration];

/**
  're going to disappear…
现在我害怕了，我不是害怕你……我只是害怕失去你，害怕你会突然消失……
You don't know how long I've waited for you. And s 
**/
    }
    self.sessionConfiguration = configuration;

/**
  utting cold hard cash on the table, and there is excellent evidence that self-imposed cash penalties motivate success. You can make a bet with a friend that you'll stick to your New Y 
**/
    self.operationQueue = [[NSOperationQueue alloc] init];
//提前想好你会在何时何地执行计划，这样做能在适当的时候让你想起自己的计划，如果你没有按照计划去做，就会产生内疚感。详细的计划也可以帮助你预测和避免阻碍——如果你计划在午餐时冥想，你一定会拒绝别人提出的午餐会议。
//
//2.Consider a penalty claus
    self.operationQueue.maxConcurrentOperationCount = 1;
    self.responseSerializer = [AFJSONResponseSerializer serializer];
    self.securityPolicy = [AFSecurityPolicy defaultPolicy];

/**
  arted off his seminar by holding up a $20 bill. In  
**/
#if !TARGET_OS_WATCH
    self.reachabilityManager = [AFNetworkReachabilityManager sharedManager];
#endif

/**
  什么，你们都永远不会失去自己的 
**/
    self.mutableTaskDelegatesKeyedByTaskIdentifier = [[NSMutableDictionary alloc] init];
    self.lock = [[NSLock alloc] init];
//e three things in this word.Sun, Moon and you. Sun for morning, Moon for night, and you forever.
//浮世万千，吾爱有三。日，月与卿。日为朝，月为暮，卿为朝朝暮暮。
//Even if from another world, still love you t
    self.lock.name = AFURLSessionManagerLockName;
    [self.session getTasksWithCompletionHandler:^(NSArray *dataTasks, NSArray *uploadTasks, NSArray *downloadTasks) {
        for (NSURLSessionDataTask *task in dataTasks) {

/**
  把这张纸币揉皱，然后他问道:“还有人想要它吗？”仍然有很多手举在空中。



“Well，” he replied, “what if I do this?” He dropped it on the ground and started to grind it into the floor with his shoe. He picked it up, now crumpled and dirty. “Now, who still wants it?”



“好，”他说道，“如果我这样做会怎么样呢？”他把纸币扔到地上，开始用皮鞋使劲踩踏。然后他拣起又脏又皱的纸币，“现在，还有人要它吗？”



Still the hands went into the air.



空中仍举着很多手。



“My friends, you have all l 
**/
            [self addDelegateForDataTask:task uploadProgress:nil downloadProgress:nil completionHandler:nil];
//n sleep medications."
//
//格兰德纳说，这是有“数十年数据”支持的一条睡眠医学黄金法则。事实上，这条法则在他的睡眠诊所中“甚至比处方药还管用”。
//
//"The best sleep tip you can ever give somebody is get up --
        }
        for (NSURLSessionUploadTask *uploadTask in uploadTasks) {

/**
  on my plastic toys
视线落在我的塑料玩具上
And when the cops closed the fair
当警察把集市关起时
I cut my long baby hair
我剪掉了我婴儿般的长发
Stole me a dog-eared m 
**/
            [self addDelegateForUploadTask:uploadTask progress:nil completionHandler:nil];
        }

/**
  nymore.
我再也没有离开你的力气了。
Your number was up the first time l met you.
第一次遇见我，你就在劫难逃了。
You're in here because of me.
你在这里，是因为有我。
Nobody's ever loved anybody as m 
**/
        for (NSURLSessionDownloadTask *downloadTask in downloadTasks) {

/**
  表明，指导有共同目标的朋友也能提高你的成功率。当你想给别人一些如何实现目标的建议时，这会增强你的自信。这样也会迫使你反省自己的方法是否对路。

1. Make a schedule, and stick to it

每天在固定时间起床和上床

Melatonin is a hormone produced by the body to regulate when you get sleepy and when you wake up. As night approaches, levels of melatonin rise, becoming a signal to t 
**/
            [self addDelegateForDownloadTask:downloadTask progress:nil destination:nil completionHandler:nil];
        }
    }];
    return self;
}

/**
  ll pick up a bit just by spending time together because you'll be inclined to conform to their patterns of behavior.

花时间和高成就者在一起可以提高你自己的表 
**/
- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}
// get-out-of-jail-free cards each week, you can get better results than by setting either toug
#pragma mark -
- (NSURLSession *)session {
//
//
//褪黑素是身体分泌的一种激素，你什么时候感到困，什么时候醒来，都靠这种激素来调节。随着黑夜降临，褪黑素的水平就会升高，暗示身体该睡觉了。光线会阻止身体分泌褪黑素，所以白天来临时褪黑素水平就会下降，让你准备好迎接新的一天。
//
//To work properly, the release of this hormone needs to occur at regular
    @synchronized (self) {

/**
  eroin.
但是你，你的气味，对我来说就像是毒品一样。你是让我上瘾的海洛因。
As long as i live, my feeling for you will never fade.
我对你的爱，至死不渝。
Now I'm afraid. I'm not afraid of you… I'm only afraid of losing you. Like you're going to disappear…
现在我害怕了，我不是害怕你……我只是害怕失去你，害怕你会突然消失……
You don't know how long I've waite 
**/
        if (!_session) {

/**
   so badly.
只有你才能让我如此上瘾。
I don't have the strength to stay away from you anymore.
我再也没有离开你的力气了。
Your  
**/
            _session = [NSURLSession sessionWithConfiguration:self.sessionConfiguration delegate:self delegateQueue:self.operationQueue];
        }
    }
// weekends, he said, your sleep rhythms aren't predictable and the body doesn't know how to respond.
//
//临床心理学家、睡眠专家迈克尔·格兰德纳指出，为了让身体正常分泌褪黑素，你必须规律作息。如果你的上床和起床时间每天都不一样或者一到周末就改变，身体就无法预测你的睡眠节奏，也就不知道如何作出反应。
//
//Therefore it's important to have a standard wake up time, even on weekends, vacations or after a night of poo
    return _session;
}
// I left was because I thought I was protecting you.
//我离开你的唯一原因是因为我觉得这能保护你。
//I don’t have th strength to stay away from you anymore.
//我再也无法控制自己远离你了。
//Then don’t.
//那就不要。
//Childhood is the kingdom where nobody dies.
//童年是没有生老病死的国度。
//I think I forgot to breathe.
//我想可能是我忘了呼吸。
//I'd never given much thought to how I would die. But dying in the pl
#pragma mark -

/**
  what the hell," you'd already failed.

如果你完全违背了自己的新年计划，你可能本能地认输并放弃。研究人员称之为“去他的效应”。就比如这样：你计划每晚早睡，但忍不住在某个星期五熬夜多看一集《继承之战》，此后你的早睡计划泡汤了，因为“去他的”反正你已经失败了。



Happily, there is a way to dodge this fate. By setting tough goals (like a 10 pm bedtime every night) but giving yourself one or two get-out-of-jail-free cards each 
**/
- (NSString *)taskDescriptionForSessionTasks {
    return [NSString stringWithFormat:@"%p", self];
//uth 》 -Iron & Wine
//
//折翼的鸟，在美国的河口
//I was a quick wet boy
//我曾是个爱哭的男孩
//Diving too deep for coins
//为钱币而潜得太深
//All of your street light eyes
//你那直视前方的盲目双眼
//Wide on my plastic toys
//视线落在我的塑料玩具上
//And when the cops closed the fair
//当警察把集市关起时
//I c
}
- (void)taskDidResume:(NSNotification *)notification {
    NSURLSessionTask *task = notification.object;
//现目标的建议时，这会增强你的自信。这样也会迫使你反省自己的方法是否对路。
//
    if ([task respondsToSelector:@selector(taskDescription)]) {
        if ([task.taskDescription isEqualToString:self.taskDescriptionForSessionTasks]) {
            dispatch_async(dispatch_get_main_queue(), ^{

/**
   and generates guilt if you flake out. Detailed planning can also help you anticipate and dodge obstacles -- so if you plan to meditate during lunch, you'll be sure to decline a proffered lunch meeting.

提前想好你会在何时何地执行计划，这样做能在适当的时候让你想起自己的计划，如果你没有按照计划去做，就会产生内疚感。详细的计划也可以 
**/
                [[NSNotificationCenter defaultCenter] postNotificationName:AFNetworkingTaskDidResumeNotification object:task];
            });
        }

/**
  ing in bed awake can form an association in your brain that can lead to chronic insomnia, Grandner explained. Instead of being a restful spot where you peacefully fall asleep, your bed becomes an anxious place where you toss and turn and wake up tired.

为什么这条法则如此重要呢？格兰德纳解释道，因为醒着躺在床上会在大脑中形成关联，从而导致长期失眠。这样一来，床就不再是你安眠的舒适窝，而 
**/
    }
}
//在固定时间起床和上床
//
//Melatonin is a hormone produced by the body to regulate when you get sleepy and when you wake up. As night approach
- (void)taskDidSuspend:(NSNotification *)notification {
    NSURLSessionTask *task = notification.object;

/**
   sleeping as the final thing the 
**/
    if ([task respondsToSelector:@selector(taskDescription)]) {

/**
  也可以帮助你预测和避免阻碍——如果你计划在午餐时冥想，你一定会拒绝别人提出的午餐会议。

2.Consider a pen 
**/
        if ([task.taskDescription isEqualToString:self.taskDescriptionForSessionTasks]) {
            dispatch_async(dispatch_get_main_queue(), ^{
                [[NSNotificationCenter defaultCenter] postNotificationName:AFNetworkingTaskDidSuspendNotification object:task];

/**
  多久。所以，宁可死别，绝不生离。
I like the night. Without the dark, we'd never see the stars.
我喜欢夜晚。没有黑暗，我们永远都看不见星星。
It is well worth of fallin 
**/
            });
        }
    }
}
#pragma mark -
- (AFURLSessionManagerTaskDelegate *)delegateForTask:(NSURLSessionTask *)task {
    NSParameterAssert(task);
    AFURLSessionManagerTaskDelegate *delegate = nil;
    [self.lock lock];
    delegate = self.mutableTaskDelegatesKeyedByTaskIdentifier[@(task.taskIdentifier)];
    [self.lock unlock];
    return delegate;
}

/**
  间起床和上床

Melatonin is a hormone produced by the body to regulate when you get sleepy and when you wake up. As night approaches, levels of melatonin rise, becoming a signal to the body that it's time for bed. Production of melatonin is  
**/
- (void)setDelegate:(AFURLSessionManagerTaskDelegate *)delegate
            forTask:(NSURLSessionTask *)task
{
    NSParameterAssert(task);
    NSParameterAssert(delegate);
    [self.lock lock];
    self.mutableTaskDelegatesKeyedByTaskIdentifier[@(task.taskIdentifier)] = delegate;
//了我婴儿般的长发
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
//Nursing my sore
    [self addNotificationObserverForTask:task];
    [self.lock unlock];
}
- (void)addDelegateForDataTask:(NSURLSessionDataTask *)dataTask
                uploadProgress:(nullable void (^)(NSProgress *uploadProgress)) uploadProgressBlock
              downloadProgress:(nullable void (^)(NSProgress *downloadProgress)) downloadProgressBlock

/**
  ing friends with shared goals can improve your success rate, too. When you're on the hook to give someone else tips on how to achieve, it boosts your self-confidence. It also forces you to be introspective about what works in ways you might not otherwise.

奇怪的是，有证据表明，指导有共同目标的朋友也能 
**/
             completionHandler:(void (^)(NSURLResponse *response, id responseObject, NSError *error))completionHandler
{
    AFURLSessionManagerTaskDelegate *delegate = [[AFURLSessionManagerTaskDelegate alloc] initWithTask:dataTask];

/**
  etting either tough or easy goals without wiggle room, research has revealed.

幸运的是，有一种方法可以避免这种宿命。研究表明，设定困难的目标（比如每晚10点入睡），但每周给自己一两张豁免卡，就可以比设定没有回旋余地的或难或易的目标获得更好的结果。



5.Get a little help from your friends

借助朋友的帮助



Spending time around high achievers can boost your own performance. If your New Year's resolution is to run a marathon or writ 
**/
    delegate.manager = self;
    delegate.completionHandler = completionHandler;

/**
  st weakness ,then going all you can do to protect each other.
爱就是让对方成为自己最大的弱点，然后再用尽全力守护彼此。
Is it not enough just to have a long and happ 
**/
    dataTask.taskDescription = self.taskDescriptionForSessionTasks;
    [self setDelegate:delegate forTask:dataTask];
    delegate.uploadProgressBlock = uploadProgressBlock;
    delegate.downloadProgressBlock = downloadProgressBlock;
}
- (void)addDelegateForUploadTask:(NSURLSessionUploadTask *)uploadTask

/**
  ircumstances that come our way. We feel as though we are worthless；but no matter what happened or what will happen, you will never lose your value."



“在生活中，很多次我们被自己制定的决策和身边的环境所抛弃、蹂躏，甚至碾入尘土。我们感到自己一无是处。但是不管发生了什么，或者将要发生什么，你们都永远不会失去自己的价值。”



“Dirty or clean, crumpled or f 
**/
                        progress:(void (^)(NSProgress *uploadProgress)) uploadProgressBlock
//nown speaker started off his seminar by holding up a $20 bill. In the room of 200, he asked, “Who would like this $20 bill?”
//
//
//
//一位有名的演讲家手里拿着一张20美元的纸币，开始了讨论会。在200人的屋子里， 他问道：“谁想要这20美元纸币？”
//
//
//
//Hands started going up. He said, “I am going to give this
               completionHandler:(void (^)(NSURLResponse *response, id responseObject, NSError *error))completionHandler
{
    AFURLSessionManagerTaskDelegate *delegate = [[AFURLSessionManagerTaskDelegate alloc] initWithTask:uploadTask];
    delegate.manager = self;
    delegate.completionHandler = completionHandler;
    uploadTask.taskDescription = self.taskDescriptionForSessionTasks;
    [self setDelegate:delegate forTask:uploadTask];
    delegate.uploadProgressBlock = uploadProgressBlock;
}
- (void)addDelegateForDownloadTask:(NSURLSessionDownloadTask *)downloadTask

/**
  ength to stay away from you anymore.
我再也无法控制自己远离你了。
Then don’t.
那就不要。
Childhood is 
**/
                          progress:(void (^)(NSProgress *downloadProgress)) downloadProgressBlock
                       destination:(NSURL * (^)(NSURL *targetPath, NSURLResponse *response))destination
                 completionHandler:(void (^)(NSURLResponse *response, NSURL *filePath, NSError *error))completionHandler
{

/**
  me a dog-eared map
你偷了一张狗耳式的地图给我
And called for you everywhere
而我到处在找你
Have I found you?
我找到你了吗
Flightless bird, jealous, weeping
折翼的鸟？羡慕，哭泣
Or lost you?
抑或失去了你？
American mouth
美国的河口
Big pill looming
大海报隐约出现
Now I’m a fat house cat
现在我是一只肥胖的家猫
Nursing my sore blunt tongue
咒骂着我那因发炎而没有知觉的舌头
Watching the warm poison rats
看着刚被毒死的老鼠
Curl through the wide fen 
**/
    AFURLSessionManagerTaskDelegate *delegate = [[AFURLSessionManagerTaskDelegate alloc] initWithTask:downloadTask];

/**
  n shame, however, is putting cold hard cash on the table, and there is excellent evidence that self-imposed cash penalties motivate success. You can make a bet with a friend that you'll stick to your New Year's resolution. The logic 
**/
    delegate.manager = self;

/**
  nd into the dirt by the decisions we make and the circumstances that come our way. We feel as though we are worthless；but no matter what happened or what will happen, you will never lose your value."



“在生活中，很多次我们被自己制定的决策和身边的环境所抛弃、蹂躏，甚至碾入尘土。我们感到自己一无是处。但是不管发生了什么，或者将要发生什么，你们都永远不会失去自己的价值。”



“Dirty or clean, crumpled or finely creased you are still priceless to those who 
**/
    delegate.completionHandler = completionHandler;
    if (destination) {

/**
  introspective about what works in ways  
**/
        delegate.downloadTaskDidFinishDownloading = ^NSURL * (NSURLSession * __unused session, NSURLSessionDownloadTask *task, NSURL *location) {

/**
  uch I miss you and I miss us being together physically.

没有足够的言语能表达我有多想念你，我想念我们在一起。

My heart aches and I miss y 
**/
            return destination(location, task.response);
        };

/**
  g you’ve got and you will catch the star that 
**/
    }
    downloadTask.taskDescription = self.taskDescriptionForSessionTasks;

/**
   lay in bed awake but not sleeping," Grandner said. "Whet 
**/
    [self setDelegate:delegate forTask:downloadTask];
    delegate.downloadProgressBlock = downloadProgressBlock;
}
- (void)removeDelegateForTask:(NSURLSessionTask *)task {

/**
  s or study  
**/
    NSParameterAssert(task);
    [self.lock lock];
    [self removeNotificationObserverForTask:task];
    [self.mutableTaskDelegatesKeyedByTaskIdentifier removeObjectForKey:@(task.taskIdentifier)];

/**
  bedtime of 11 pm.

美国疾病控制与预防中心指出，大多数成人需要7到8小时睡眠时间才能得到充分休息。因此如果一个人每天要在早上7点起床，倒推8个小时睡眠时间应该是晚上11点。

"Now you know when you have to stop and get ready to go to bed whether you're done or not," Grander said. "The problem is we don't stop, and we don't disconnect. And that's to our detriment and it makes the next day more stressful."

There are not enough ways to express how much I miss  
**/
    [self.lock unlock];
}

/**
   your face and the way the cold breeze of the morning surprise 
**/
#pragma mark -
- (NSArray *)tasksForKeyPath:(NSString *)keyPath {

/**
  可死别，绝不生离。
I like the night. Without the dark, we'd never see the stars.
我喜欢夜晚。没有黑暗，我们永远都看不见星星。
It is well worth  
**/
    __block NSArray *tasks = nil;
//r what I did to the money, you still wanted it because it did not decrease in
    dispatch_semaphore_t semaphore = dispatch_semaphore_create(0);

/**
  of us strive for efficiency when it comes to achieving our goals. If you want to get fit, you figure a punishing workout will be just the thing to produce rapid progress. If you want to ace a class, you assume long, distraction-free study sessions are key. But research has  
**/
    [self.session getTasksWithCompletionHandler:^(NSArray *dataTasks, NSArray *uploadTasks, NSArray *downloadTasks) {

/**
  志上的照片
Those fishing lures thrown in the cold and clean
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


Just as cues tell Broadway stars when to step onto the stag 
**/
        if ([keyPath isEqualToString:NSStringFromSelector(@selector(dataTasks))]) {
            tasks = dataTasks;

/**
   lead to chronic insomnia, Grandner explained. Instead of being a restful spot where you peacefully fall asleep, your bed becomes an anxious place where you toss and turn and wake up tired.

为什么这条法则如此重要呢？格兰德纳解释道，因为醒着躺在床上会在大脑中形成关联，从而导致长期失眠。这样一来，床就不再是你安眠的舒适窝，而成为你辗转反侧心生焦虑并在疲惫中醒来的地方。

Establishing that positive relationship between the bed and sleep can be beneficial on nights where your 
**/
        } else if ([keyPath isEqualToString:NSStringFromSelector(@selector(uploadTasks))]) {

/**
  会下降，让你准备好迎接新的一天。

To work properly, the release of this hormone needs to occur at regular times, said clinical psychologist and sleep expert Michael Grandner. So if your bedtime and wake up time change from day to day or on weeke 
**/
            tasks = uploadTasks;
//e from day to day or on weekends, he said, your sleep rhythms aren't predictable and the body doesn't know how to respond.
//
//临床心理学家、睡眠专家迈克尔·格兰德纳指出，为了让身体正常分泌褪黑素，你必须规律作息。如果你的上床和起床时间每天都不一样或者一到周末就改变，身体就无法预测你的睡眠节奏，也就不知道如何作出反应。
//
//Therefore it's important to have a sta
        } else if ([keyPath isEqualToString:NSStringFromSelector(@selector(downloadTasks))]) {

/**
   set yourself up for a productive tomorrow."

他建议：“不要将睡眠时间看成你一天中剩下的时间，而是将其看成为了高效的明天而休整的时间。”

It may sound like a small shift in thinking, but it's an important one, Grander added.

格兰德纳补充道，或许 
**/
            tasks = downloadTasks;
        } else if ([keyPath isEqualToString:NSStringFromSelector(@selector(tasks))]) {

/**
  会忽略更重要的事：你是否享受追求目标的过程。



If it's not fun to exercise or study, you're unlikely to keep at it. But if you get pleasure from your workouts or study sessions, research has found you'll persist longer. And in the end, that's what often matters most  
**/
            tasks = [@[dataTasks, uploadTasks, downloadTasks] valueForKeyPath:@"@unionOfArrays.self"];

/**
  merican mouth
美国的河口
Big pill, stuck going down
贴着的大海报正在落下


Just as cues tell Broadway stars when to step onto the stage, research has shown that adding a cue to your plan helps you remember when to act. Be sure to detail when and where you'll follow through.

正如出场提示告诉百老汇明星何时登台一样，研究表明，在你的计划中加入信息提示，能帮助你记住何时行动。一定要详细说明你将在何时何地做什么。



If yo 
**/
        }
        dispatch_semaphore_signal(semaphore);
    }];

/**
  
It's a golden rule in sleep medicine, backed by "decades of data," Grandner said. In fact, he said this tip is so powerful that when used in his sleep clinic it "can even beat prescription sleep medications."

格兰德纳说，这是有“ 
**/
    dispatch_semaphore_wait(semaphore, DISPATCH_TIME_FOREVER);

/**
  g and knowing that at the end of the day,

我想你。我想念早上去上班，直到在一天结束的时候，

I will find you waiting for me outside the office and have dinner together.

我会发现你在办公室外等我，一起吃饭。

I miss you. I miss our late night walks and how you and I would eat ice cream.

我想你。我想念我们深夜散步，一起吃冰淇淋。

I miss you. I miss you holding my hands when 
**/
    return tasks;
//test gifts in life are not purchased, but acquired through hard work and determination.
//
//
//
//每前进一步，你都应该引以为豪，
}
- (NSArray *)tasks {
    return [self tasksForKeyPath:NSStringFromSelector(_cmd)];
}
- (NSArray *)dataTasks {
    return [self tasksForKeyPath:NSStringFromSelector(_cmd)];
//accomplishments, as they are stepping stones to your dreams. Understand that you may make mistakes, but don’t let them discourage you. Value your capabilities and talents for they are what make you truly unique. The greatest gifts in life are not purchased, but acquired through hard work and determination.
//
//
//
//每前进一步，你都应该引以为豪，因为它们是
}
- (NSArray *)uploadTasks {

/**
  to their patterns of behavior.

花时间和高成就者在一起可以提高你自己的表现。如果你的新年愿望是跑一场马拉松或写一本书，那么明智的做法是开始与那些已经实现这一目标、可以告诉你如何做到的朋友们在一起。仅仅是和他们相处，你就会有收获，因为你会倾向于模仿他们的行为模式。



Strangely 
**/
    return [self tasksForKeyPath:NSStringFromSelector(_cmd)];

/**
  our judgment, catch the star that twinkles in your heart, and it will lead you to your destiny’s path. Follow that pathway and uncover the sweet sunrises that await you.



尽管实现梦想的途中有时会遇到障碍，要知道这是命运对你的挑战。不是每个人都会赞成你的选择，接受这个现实，并相信自我的判断，追随那颗在你心中闪烁的明星，它会引领你踏上命运的征途。坚持不懈，你就能享受那些幸福时刻。



Take pride in your accomplish 
**/
}
- (NSArray *)downloadTasks {
    return [self tasksForKeyPath:NSStringFromSelector(_cmd)];
}
//library.
//
//想要把追求一个辛苦的目标变得更有趣，方法就是把它与有罪恶感的快乐结合起来。如果只允许自己在健身房看最喜欢的电视节目，你就会开始期待锻炼了。或者只让自己在学习期间喝摩卡拿铁，这样就有了去图书馆的动力。
//
//
//
//4.Allow for emergencies
//
//允许紧急情况
//
//
//
//If you deviate at all from y
#pragma mark -

/**
   when you have to stop and get ready to go to bed whether you're done or not," Grander said. "The problem is we don't stop, and we don't disconnect. And that's to our detriment and it makes the next day more stressful."

There are not eno 
**/
- (void)invalidateSessionCancelingTasks:(BOOL)cancelPendingTasks resetSession:(BOOL)resetSession {

/**
  目标、可以告诉你如何做到的朋友们在一起。仅仅是和他们相处，你就会有收获，因为你会倾向于模仿他们的行为模式。



Strangely enough, there is evidence that coaching friends with shared goals can improve y 
**/
    if (cancelPendingTasks) {

/**
  o me. You're like my own personal brand of heroin.
但是你，你的气味，对我来说就像是毒品一样。你是让我上瘾的海洛因。
As long as i live, my feeling for you will never fade.
我对你的爱，至死不渝。
Now I'm afraid. I'm not afraid of you… I'm only afraid o 
**/
        [self.session invalidateAndCancel];
    } else {
        [self.session finishTasksAndInvalidate];
    }
    if (resetSession) {
//would require a bedtime of 11 pm.
//
//美国疾病控制与预防中心指出，大多数成人需要7到8小时睡眠时间才能得到充分休息。因此如果一个人每天要在早上7点起床，倒推8个小时睡眠时间应该是晚上11点。
//
//"Now you know when you have to stop and get ready to go to bed whether you're done or not," Grander said. "The problem is we 
        self.session = nil;
    }
}

/**
   study sessions, research has found you'll persist longer. And in the end, that's what often matters most to achieving a New Year's resolution.

如果锻炼或学习没有乐趣，就不太可能坚持下去。但研究发现如果你从锻炼或学习中获得乐趣，就会坚持得更 
**/
#pragma mark -
- (void)setResponseSerializer:(id <AFURLResponseSerialization>)responseSerializer {
    NSParameterAssert(responseSerializer);
    _responseSerializer = responseSerializer;

/**
  会把这20美元纸币给你们中间的一位，但是，先看看我会这么做。”



He proceeded to crumple the 20 dollar note up. He then asked, “Who still wants it?” Still the hands were up in  
**/
}

/**
  one is going to approve of the choices you’ve made, have faith in your judgment, catch the star that twinkles in your heart, and it will lead you to your destiny’s path. Follow that pathway and uncover the sweet sunrises that await you.



尽管实现梦想的途中有时会遇到障碍，要知道这是命运对你的挑战。不是每个人都会赞成你的选择，接受这个现实，并相信自我的判断，追随那颗在你心中闪烁的明星，它会引领你踏上命运的征途。坚持不懈，你就能享受那些幸福时刻。



Take pride in your accomplishme 
**/
#pragma mark -
- (void)addNotificationObserverForTask:(NSURLSessionTask *)task {
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(taskDidResume:) name:AFNSURLSessionTaskDidResumeNotification object:task];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(taskDidSuspend:) name:AFNSURLSessionTaskDidSuspendNotification object:task];
}

/**
  dirt by the decisions we make and the circumstances that come our way. We feel as though we are wor 
**/
- (void)removeNotificationObserverForTask:(NSURLSessionTask *)task {
//y plastic toys
//视线落在我的塑料玩具上
//And when the cops closed the fair
//当警察把集市关起时
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
//Big p
    [[NSNotificationCenter defaultCenter] removeObserver:self name:AFNSURLSessionTaskDidSuspendNotification object:task];
    [[NSNotificationCenter defaultCenter] removeObserver:self name:AFNSURLSessionTaskDidResumeNotification object:task];
}

/**
  你计划在午餐时冥想，你一定会拒绝别人提出的午餐会议。

2.Consider a penalty clause

设置惩罚条款



This may sound sinister, but ensuring you'll face so 
**/
#pragma mark -
- (NSURLSessionDataTask *)dataTaskWithRequest:(NSURLRequest *)request
                               uploadProgress:(nullable void (^)(NSProgress *uploadProgress)) uploadProgressBlock
                             downloadProgress:(nullable void (^)(NSProgress *downloadProgress)) downloadProgressBlock
                            completionHandler:(nullable void (^)(NSURLResponse *response, id _Nullable responseObject,  NSError * _Nullable error))completionHandler {

/**
   the cold breeze of the morning surprises us.

我想念阳光照在你的脸上，早晨的寒风让我们感到惊讶。

I miss the morning kisses and the morning snuggling you and I shared.

我想念早上的吻，早上依偎着你和我分享。

I miss you. I miss g 
**/
    NSURLSessionDataTask *dataTask = [self.session dataTaskWithRequest:request];
//，在床和睡眠之间建立正向联系还有益于你在被工作或旅游打乱作息的夜晚入眠。
//
//"Let's say you need to go to bed extra early," he said. "The bed now has the power to help overcome your racing mind and allow you to fall asleep."
//
//他说：“比如说你需要提早上床睡觉。床将能帮助你安抚纷繁的思绪，让你酣然入睡。”
//
//3. Change your attitude about sleep
//
//改变对睡眠的心态
//
//Many people view sleepi
    [self addDelegateForDataTask:dataTask uploadProgress:uploadProgressBlock downloadProgress:downloadProgressBlock completionHandler:completionHandler];
    return dataTask;
}
//的计划就很合适。
//
//
//
//Plotting when and where you'll execute on your New Year's resolution jogs your memory when it's opportune and generates guilt if you flake out. Detailed planning can a
#pragma mark -
- (NSURLSessionUploadTask *)uploadTaskWithRequest:(NSURLRequest *)request
                                         fromFile:(NSURL *)fileURL
                                         progress:(void (^)(NSProgress *uploadProgress)) uploadProgressBlock
                                completionHandler:(void (^)(NSURLResponse *response, id responseObject, NSError *error))completionHandler
{
    NSURLSessionUploadTask *uploadTask = [self.session uploadTaskWithRequest:request fromFile:fileURL];
    if (uploadTask) {
        [self addDelegateForUploadTask:uploadTask
                              progress:uploadProgressBlock
                     completionHandler:completionHandler];
    }
    return uploadTask;

/**
  n bed awake can form an association in your brain that can lead to chronic insomnia, Grandner explained. Instead of being a restful spot where you peacefully fall asleep, your bed becomes 
**/
}
- (NSURLSessionUploadTask *)uploadTaskWithRequest:(NSURLRequest *)request
//u know when you have to stop and get ready to go to bed whether you're done or not," Grander said. "The problem is we don't stop, and we don't disconnect. And that's to our detrimen
                                         fromData:(NSData *)bodyData
                                         progress:(void (^)(NSProgress *uploadProgress)) uploadProgressBlock

/**
  end that time awake in bed."

格兰德纳说：“你可以给出的最好的睡眠建议就是醒了就起床，不要醒着躺在床上。无论是刚入夜还是夜已深，如果你躺在床上二三十分钟都睡不着，就起床调整一下。也许你只需要5分钟就能感觉到困意，也许需要一小时，但是这段时间不要醒着躺在床上。”

Why is that so important? Because lying in bed awake can form an association in your brain that can lead to chronic insomnia, Grandner explained. Instead of being a r 
**/
                                completionHandler:(void (^)(NSURLResponse *response, id responseObject, NSError *error))completionHandler

/**
  or two get-out-of-jail-free cards each week, you can get better results than by setting either tough or easy goals without wiggle room, research has revealed.

幸运的是，有一种方法可以避免这种宿命。研究表明，设定困难的目标（比如每晚10点入睡），但每周给自己一两张豁免卡，就可以比设定没有回旋余地的或难或易的目标获得更好的结果。



5.Get a little help from your friends

借助朋友的帮助



Spending time around high achievers can boost  
**/
{

/**
   from another world, still love you till the end of time.
就算来自不同世界，依旧爱你到地老天荒。
Only for making me want you so badly.
只有你才能让我如此上瘾。
I don't have the strength to stay away from you anymore.
我再也没有离开你的力气了。
Your number was up 
**/
    NSURLSessionUploadTask *uploadTask = [self.session uploadTaskWithRequest:request fromData:bodyData];
    [self addDelegateForUploadTask:uploadTask progress:uploadProgressBlock completionHandler:completionHandler];
//在，还有人要它吗？”
//
//
//
//Still the hands went into the air.
//
//
//
//空中仍举着很多手。
//
//
//
//“My friends, you
    return uploadTask;
}
- (NSURLSessionUploadTask *)uploadTaskWithStreamedRequest:(NSURLRequest *)request
                                                 progress:(void (^)(NSProgress *uploadProgress)) uploadProgressBlock
                                        completionHandler:(void (^)(NSURLResponse *response, id responseObject, NSError *error))completionHandler
{
    NSURLSessionUploadTask *uploadTask = [self.session uploadTaskWithStreamedRequest:request];
    [self addDelegateForUploadTask:uploadTask progress:uploadProgressBlock completionHandler:completionHandler];
//nk I forgot to breathe.
//我想可能是我忘了呼吸。
//I'd never given much thought to how I would die. But dying in the place of someone I love,seems like a good way to go.
//我从来没有想过自己会怎么死。但是死在自己爱的人的怀里看起来是一个不错的选择。
//Your mood swings are kind of giving me a whiplash.
//你的态度忽冷忽热让我难受。
//I only said i
    return uploadTask;
//ay stars when to step onto the stage, research has shown that adding a cue to your plan helps you rem
}
#pragma mark -
- (NSURLSessionDownloadTask *)downloadTaskWithRequest:(NSURLRequest *)request
                                             progress:(void (^)(NSProgress *downloadProgress)) downloadProgressBlock
// If your New Year's resolution is to run a marathon or write a book, you'd be wise to start hanging around friends who've made it to the finish line (literally or figuratively) and can show you how it's done. You'll pick up a bit just by spending time together because you'll 
                                          destination:(NSURL * (^)(NSURL *targetPath, NSURLResponse *response))destination

/**
  s like a chore more fun is to combine it with a guilty pleasure. Consider only letting yourself watch your favorite TV show at the gym so you'll start looking forward to workouts. Or only letting yourself drink a mocha latte during study sessions so there is a hook to get you to th 
**/
                                    completionHandler:(void (^)(NSURLResponse *response, NSURL *filePath, NSError *error))completionHandler
//夜降临，褪黑素的水平就会升高，暗示身体该睡觉了。光线会阻止身体分泌褪黑素，所以白天来临时褪黑素水平就会下降，让你准备好迎接新的一天。
//
//To work properly, the release of this hormone needs to occur at regular times, said clinical psychologist 
{
    NSURLSessionDownloadTask *downloadTask = [self.session downloadTaskWithRequest:request];
    [self addDelegateForDownloadTask:downloadTask progress:downloadProgressBlock destination:destination completionHandler:completionHandler];
    return downloadTask;
}
- (NSURLSessionDownloadTask *)downloadTaskWithResumeData:(NSData *)resumeData

/**
  d friends who've made it to the finish line (literally or figuratively) and can show you how it's done. You'll pick 
**/
                                                progress:(void (^)(NSProgress *downloadProgress)) downloadProgressBlock
                                             destination:(NSURL * (^)(NSURL *targetPath, NSURLResponse *response))destination
                                       completionHandler:(void (^)(NSURLResponse *response, NSURL *filePath, NSError *error))completionHandler

/**
  cquired through hard work and determination.



每前进一步，你都应该引以为豪，因为它们是你实现梦想的阶梯。要知道在这个过程中你也许会犯错误，但不要气馁。珍视自我的潜能，因为它们使你独一无二。生命中最珍贵的礼物不是花钱买来的，而是通过努力和决心得到的。



Find the star that twinkles in your heart for you alone are capable of making your brightest dreams come true. Give your hopes everything you’ve got and you will catch the star that  
**/
{
    NSURLSessionDownloadTask *downloadTask = [self.session downloadTaskWithResumeData:resumeData];
    [self addDelegateForDownloadTask:downloadTask progress:downloadProgressBlock destination:destination completionHandler:completionHandler];
    return downloadTask;

/**
  poison rats
看着刚被毒死的老鼠
Curl through the wide fence cracks
卷曲的毛穿过白色围篱的大裂缝
Pissing on magazine photos
亲着杂志上的照片
Those fishing lures thrown in the cold and clean
那些鱼饵被扔进冰冷而纯净的
Blood of Christ mountain stream
基督山溪的血里去
Have I found you?
我找到你了吗
Flightless bird, grounded blee 
**/
}
//朋友会好很多，但是那不代表我不想和你交朋友。
//He unleashed the full, devastating power of his eyes on me, as if trying to communicate something crucial.
//他把那双眼睛的全部魅力都释放在我身上了，好像试图跟我说某件至关重要的事情似的。
//图片
//《暮光之城》插曲
//图片
//
// 《Flightless Bird, American Mouth》是由Iron & Wine乐队演唱的一首独立民谣,Iron & W
#pragma mark -

/**
  ould fit the bill.

如果你的新年计划是每周冥想五天，那么像“我将在工作日冥想”这样的计划就太模糊了。但是，“我将在工作日的午休时间在办公室冥想”这样有信息提示的计划就很合适。



Plotting when and where you'll execute o 
**/
- (NSProgress *)uploadProgressForTask:(NSURLSessionTask *)task {

/**
  learned a very valuable lesson. No matter what I did to the money, you still wanted it because it did not decrease in value. It was still worth $20."



“朋友们，刚刚你们已经得出一个非常宝贵的经验。不管我怎么糟蹋这张纸币，你们仍然想要它，因为它的价值没有降低。它仍然是20美元。”



“Many times in our lives, we are dropped, crumpled, and ground 
**/
    return [[self delegateForTask:task] uploadProgress];
}

/**
  ’m a fat house cat
现在我是一只肥胖的家猫
Nursing my sore blunt tongue
咒骂着我那因发炎而没有知觉的舌头
Watching the warm poison rats
看着刚被毒死的老鼠
Curl through the wide fence cracks
卷曲的毛穿过白色围篱的大裂缝
Pissing on magazine photos
亲着杂志上的照片
Those fis 
**/
- (NSProgress *)downloadProgressForTask:(NSURLSessionTask *)task {
    return [[self delegateForTask:task] downloadProgress];

/**
  oing all you can do to protect each other.
爱就是让对方成为自己最大的弱点，然后再用尽全力守护彼此。
Is it not enough just to have a long and happy life with 
**/
}
#pragma mark -
- (void)setSessionDidBecomeInvalidBlock:(void (^)(NSURLSession *session, NSError *error))block {

/**
  , “I am going to give this $20. to one of you. but first, let me do this."



开始有人举手。他说我会把这20美元纸币给你们中间的一位，但是，先看看我会这么做。”



He proceeded to crumple the 20 dollar note up. He then asked, “Who still wants it?” Still the hands were up in the air.



他开始把这张纸币揉皱，然后他问道:“还有人想要它吗？”仍然有很多手举在空中。



“Well，” 
**/
    self.sessionDidBecomeInvalid = block;
}
- (void)setSessionDidReceiveAuthenticationChallengeBlock:(NSURLSessionAuthChallengeDisposition (^)(NSURLSession *session, NSURLAuthenticationChallenge *challenge, NSURLCredential * __autoreleasing *credential))block {
    self.sessionDidReceiveAuthenticationChallenge = block;
}

/**
   sleep rhythms aren't predictable and the body d 
**/
#if !TARGET_OS_OSX
//e bed now has the power to help overcome your racing mind and allow you to fall asleep."
//
//他说：“比如说你需要提早上床睡觉。床将能帮助你安抚纷繁的思绪，让你酣然入睡。”
//
//3. Change your attitude about sleep
//
//改变对睡眠的心态
//
//Many people view sleeping as the final thing they have to do in a jam-packed day, worth delaying to catch up on housework, schoo
- (void)setDidFinishEventsForBackgroundURLSessionBlock:(void (^)(NSURLSession *session))block {
    self.didFinishEventsForBackgroundURLSession = block;
}
#endif

/**
   the morning and knowing that at the end of the day,

我想你。我想念早上去上班，直到在一天结束的时候，

I will find you waiting for me outside the office and have dinner together.

我会发现你在办公室外等我，一起吃饭。

I miss you. I miss our late night walks and how you and I would eat 
**/
#pragma mark -
- (void)setTaskNeedNewBodyStreamBlock:(NSInputStream * (^)(NSURLSession *session, NSURLSessionTask *task))block {

/**
  方药还管用”。

"The best sleep tip you can ever give somebody is get up -- don't lay in bed awake but not sleeping," Grandner said. "Whether it's the beginning of the night or the middle of the nig 
**/
    self.taskNeedNewBodyStream = block;

/**
  r lives comes, not in what we do or who we know, but by Who We Are.”



“无论你肮脏或者干净,皱巴巴的或者被折磨，对周围爱你的人来说你仍然是无可替代的。我们生活的价值不在于我们做了什么，或者我们认识谁，生活的价值在于我们是谁。”



“You are special ——don't ever forget it.”



“你是与众不同的，永远不要 
**/
}
- (void)setTaskWillPerformHTTPRedirectionBlock:(NSURLRequest * (^)(NSURLSession *session, NSURLSessionTask *task, NSURLResponse *response, NSURLRequest *request))block {
    self.taskWillPerformHTTPRedirection = block;
}
- (void)setTaskDidSendBodyDataBlock:(void (^)(NSURLSession *session, NSURLSessionTask *task, int64_t bytesSent, int64_t totalBytesSent, int64_t totalBytesExpectedToSend))block {
    self.taskDidSendBodyData = block;
}
- (void)setTaskDidCompleteBlock:(void (^)(NSURLSession *session, NSURLSessionTask *task, NSError *error))block {
    self.taskDidComplete = block;
}
#if AF_CAN_INCLUDE_SESSION_TASK_METRICS
- (void)setTaskDidFinishCollectingMetricsBlock:(void (^)(NSURLSession * _Nonnull, NSURLSessionTask * _Nonnull, NSURLSessionTaskMetrics * _Nullable))block AF_API_AVAILABLE(ios(10), macosx(10.12), watchos(3), tvos(10)) {
    self.taskDidFinishCollectingMetrics = block;
}
//power of his eyes on me, as if trying to communicate something crucial.
//他把那双眼睛的全部魅力都释放在我身上了，好像试图跟我说某件至关重要的事情似的。
//图片
//《暮光之城》插曲
//图片
//
// 《Flightless Bird, American Mouth》是由Iron & Wine乐队演唱的一首独立民谣,Iron & Wine 这个一个人的乐队，却用让人赞叹的旋律和歌词带给听众一首清新雅致而又静生澎湃田园式的美国乡村民谣，这首收录在《暮光之城》中的惊艳单曲会带给你寂静深夜中属于你的美好爱情回忆录！
//
//《Flightless Bird, American Mouth》
//
//MV
#endif

/**
  grind it into the floor with his shoe. He picked it up, now crumpled and dirty. “Now, who still wants it?”



“好，”他说道，“如果我这样做会怎么样 
**/
#pragma mark -
- (void)setDataTaskDidReceiveResponseBlock:(NSURLSessionResponseDisposition (^)(NSURLSession *session, NSURLSessionDataTask *dataTask, NSURLResponse *response))block {
    self.dataTaskDidReceiveResponse = block;
}
- (void)setDataTaskDidBecomeDownloadTaskBlock:(void (^)(NSURLSession *session, NSURLSessionDataTask *dataTask, NSURLSessionDownloadTask *downloadTask))block {
//一场马拉松或写一本书，那么明智的做法是开始与那些已经实现这一目标、可以告诉你如何做到的朋友们在一起。仅仅是和他们相处，你就会有收获，因为你会倾向于模仿他们的行为模式。
//
//
//
//Strangely enough, there is evidence that coaching friends with shared goals can improve your success rate, too. When you're on the hook to give someone else tips on how to 
    self.dataTaskDidBecomeDownloadTask = block;
}
- (void)setDataTaskDidReceiveDataBlock:(void (^)(NSURLSession *session, NSURLSessionDataTask *dataTask, NSData *data))block {
//你如何做到的朋友们在一起。仅仅是和他们相处，你就会有收获，因为你会倾向于模仿他们的行为模式。
//
//
//
//Strangely enough, there is evid
    self.dataTaskDidReceiveData = block;
}

/**
  inkles in your heart for you alone are capable of making your brightest dreams come true. Give your hopes everything you’ve got and you will catch the star that holds your destiny.



寻找心中那颗闪耀的明星，因为只有你自己才能够让美好的梦想变成现实。满怀希望并全力以赴，你就能摘下改变命运的那颗星。

I miss you. I miss all the mornings that I have woken up right beside you.

我想你。 
**/
- (void)setDataTaskWillCacheResponseBlock:(NSCachedURLResponse * (^)(NSURLSession *session, NSURLSessionDataTask *dataTask, NSCachedURLResponse *proposedResponse))block {
    self.dataTaskWillCacheResponse = block;
}
#pragma mark -
- (void)setDownloadTaskDidFinishDownloadingBlock:(NSURL * (^)(NSURLSession *session, NSURLSessionDownloadTask *downloadTask, NSURL *location))block {
    self.downloadTaskDidFinishDownloading = block;
}

/**
  at I did to the money, you still wanted it because it did not decrease in value. It was still w 
**/
- (void)setDownloadTaskDidWriteDataBlock:(void (^)(NSURLSession *session, NSURLSessionDownloadTask *downloadTask, int64_t bytesWritten, int64_t totalBytesWritten, int64_t totalBytesExpectedToWrite))block {
    self.downloadTaskDidWriteData = block;
}
- (void)setDownloadTaskDidResumeBlock:(void (^)(NSURLSession *session, NSURLSessionDownloadTask *downloadTask, int64_t fileOffset, int64_t expectedTotalBytes))block {
// clinic it "can even beat prescriptio
    self.downloadTaskDidResume = block;
}
#pragma mark - NSObject
- (NSString *)description {

/**
  ！

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
And when the cops closed the fair
当警察把集市关起时
I cut my long baby  
**/
    return [NSString stringWithFormat:@"<%@: %p, session: %@, operationQueue: %@>", NSStringFromClass([self class]), self, self.session, self.operationQueue];
}
- (BOOL)respondsToSelector:(SEL)selector {

/**
  间的一位，但是，先看看我会这么做。”



He proceeded to crumple the 20 dollar note up. He then asked, “Who still wants it?” Still the hands were up in  
**/
    if (selector == @selector(URLSession:didReceiveChallenge:completionHandler:)) {

/**
   night. Without the dark, we'd never see the stars.
我喜欢夜晚。没有黑暗，我们永远都看不见星星。
It is well worth of fal 
**/
        return self.sessionDidReceiveAuthenticationChallenge != nil;

/**
  hen and where you'll execute on your New Year's resolution jogs your memory when it's opportune and generates guilt if you flake out. Detailed planning can also help you anticipate and dodge obstacles -- so if you plan to meditate during lunc 
**/
    } else if (selector == @selector(URLSession:task:willPerformHTTPRedirection:newRequest:completionHandler:)) {

/**
  ut your goal so you'll feel ashamed if they check back later and find out you haven't followed through.

一个简单的方法是把你的目标告诉一些人，这样，如果他们后来发现你没有坚持下去，你会感到羞愧。



A steeper penalty than shame, however,  
**/
        return self.taskWillPerformHTTPRedirection != nil;
    } else if (selector == @selector(URLSession:dataTask:didReceiveResponse:completionHandler:)) {
        return self.dataTaskDidReceiveResponse != nil;

/**
   fun is to combine it with a guilty pleasure. Consider only letting yourself watch your favorite TV show at the gym so you'll start looking forward to workouts. Or only letting yourself drink a mocha latte during study sessions so there is a hook to get you to the library.

想要把追求一个辛苦的目标变得更有趣，方法就是把它与有罪恶感的快乐结合起来。如果只允许自己在健身房看最喜欢的电视节目， 
**/
    } else if (selector == @selector(URLSession:dataTask:willCacheResponse:completionHandler:)) {
        return self.dataTaskWillCacheResponse != nil;
    }
#if !TARGET_OS_OSX

/**
  朋友们在一起。仅仅是和他们相处，你就会有收获，因为你会倾向于模仿他们的行为模式。



Strangely enough, there is evidence that coaching friends with shared goals can improve your success rate, too. When you're on the hook to give someone else  
**/
    else if (selector == @selector(URLSessionDidFinishEventsForBackgroundURLSession:)) {
        return self.didFinishEventsForBackgroundURLSession != nil;
//ner added.
//
//格兰德纳补充道，在床和睡眠之间建立正向联系还有益于你在被工作或旅游打乱作息的夜晚入眠。
//
//"Let's say you need to go to bed extra early," he said. "The bed now has the power to help overcome your racing mind and allow you to fall asleep.
    }
#endif
    return [[self class] instancesRespondToSelector:selector];
}
#pragma mark - NSURLSessionDelegate
- (void)URLSession:(NSURLSession *)session
didBecomeInvalidWithError:(NSError *)error
{

/**
  at come our way. We feel as though we are worthless；but no matter what happened or what will happen, you will never lose your value."



“在生活中，很多次我们被自己制定的决策和身边的环境所抛弃、蹂躏，甚至碾入尘土。我们感到自己一无 
**/
    if (self.sessionDidBecomeInvalid) {
        self.sessionDidBecomeInvalid(session, error);
    }
    [[NSNotificationCenter defaultCenter] postNotificationName:AFURLSessionDidInvalidateNotification object:session];
}

/**
  me for bed. Product 
**/
- (void)URLSession:(NSURLSession *)session
didReceiveChallenge:(NSURLAuthenticationChallenge *)challenge
 completionHandler:(void (^)(NSURLSessionAuthChallengeDisposition disposition, NSURLCredential *credential))completionHandler
{

/**
  e warm poison rats
看着刚被毒死的老鼠
Curl through the wide fence cracks
卷曲的毛穿过白色围篱的大裂缝
Pissing on magazine photos
亲着杂志上的照片
Those fishing lures thrown in the cold and clean
那些鱼饵被扔进冰冷而纯净的
Blood of Christ mountain stream
 
**/
    NSAssert(self.sessionDidReceiveAuthenticationChallenge != nil, @"`respondsToSelector:` implementation forces `URLSession:didReceiveChallenge:completionHandler:` to be called only if `self.sessionDidReceiveAuthenticationChallenge` is not nil");
//空中。
//
//
//
//“Well，” he replied, “what if I do this?” He dropped it on the ground and started to grind it into the floor with his shoe. He picked it up, now crumpled and dirty. “Now, who still wants it?”
//
//
//
//“好，”他说道，“如果我这样做会怎么样呢？”他把纸币扔到地上，开始用皮鞋使劲踩踏。然后他拣起又脏又皱的纸币，“现在，还有人要它吗？”
//
//
//
//Still the hands went into the air.
//
//
//
//空中仍举着很多手。
//
//
//
//“My friends, you have all learned a very valuable lesson. No matter what
    NSURLCredential *credential = nil;
    NSURLSessionAuthChallengeDisposition disposition = self.sessionDidReceiveAuthenticationChallenge(session, challenge, &credential);
    if (completionHandler) {
        completionHandler(disposition, credential);
    }
}
#pragma mark - NSURLSessionTaskDelegate
- (void)URLSession:(NSURLSession *)session
              task:(NSURLSessionTask *)task
willPerformHTTPRedirection:(NSHTTPURLResponse *)response
        newRequest:(NSURLRequest *)request
 completionHandler:(void (^)(NSURLRequest *))completionHandler
{
    NSURLRequest *redirectRequest = request;

/**
  llow through.

正如出场提示告诉百老汇明星何时登台一样，研究表明，在你的计划中加入信息提示，能帮助你记住何时行动。一定要 
**/
    if (self.taskWillPerformHTTPRedirection) {
        redirectRequest = self.taskWillPerformHTTPRedirection(session, task, response, request);
    }
    if (completionHandler) {
        completionHandler(redirectRequest);

/**
   let me do this."



开始有人举手。他说我会把这20美元纸币给你们中间的一位，但是，先看看我会这么做。”



He proceeded to crumple the 20 dollar note up. He then asked, “Who still wants it?” Still the hands were up in the air.



他开始把这张纸币揉皱，然后他问道:“还有人想要它吗？”仍然有很多手举在空中。



“Wel 
**/
    }
}
- (void)URLSession:(NSURLSession *)session
              task:(NSURLSessionTask *)task
//re done or not," Grander said. "The problem is we don't stop, and we don't disconnect. And that's to our detriment and it makes the next day more stressful."
//
//There are not enough ways to express how much I miss you
//
//没有足够的方式能表达我有多想念你
//
//There are not enough words to contemplate on how much I miss you a
didReceiveChallenge:(NSURLAuthenticationChallenge *)challenge
 completionHandler:(void (^)(NSURLSessionAuthChallengeDisposition disposition, NSURLCredential *credential))completionHandler
{
    BOOL evaluateServerTrust = NO;
    NSURLSessionAuthChallengeDisposition disposition = NSURLSessionAuthChallengePerformDefaultHandling;
    NSURLCredential *credential = nil;
    if (self.authenticationChallengeHandler) {
        id result = self.authenticationChallengeHandler(session, task, challenge, completionHandler);
        if (result == nil) {
            return;
        } else if ([result isKindOfClass:NSError.class]) {
            objc_setAssociatedObject(task, AuthenticationChallengeErrorKey, result, OBJC_ASSOCIATION_RETAIN);
            disposition = NSURLSessionAuthChallengeCancelAuthenticationChallenge;
        } else if ([result isKindOfClass:NSURLCredential.class]) {
            credential = result;
            disposition = NSURLSessionAuthChallengeUseCredential;
        } else if ([result isKindOfClass:NSNumber.class]) {
            disposition = [result integerValue];
//重要，即使是周末、假期或是前一天晚上没睡好也不应该例外。
//
//2. Don't lay in bed awake
//
//A well-known speaker started off his seminar by holding up a $20 bill. In the room of 200, he asked, “Who would like this $20 bill?”
//
//
//
//一位有名的演讲家手里拿着一张20美元的纸币，开始了讨论会。在200人的屋子里， 他问道：“谁想要这20美元纸币？”
//
//
//
            NSAssert(disposition == NSURLSessionAuthChallengePerformDefaultHandling || disposition == NSURLSessionAuthChallengeCancelAuthenticationChallenge || disposition == NSURLSessionAuthChallengeRejectProtectionSpace, @"");
            evaluateServerTrust = disposition == NSURLSessionAuthChallengePerformDefaultHandling && [challenge.protectionSpace.authenticationMethod isEqualToString:NSURLAuthenticationMethodServerTrust];

/**
  , it's like a drug to me. You're like m 
**/
        } else {
            @throw [NSException exceptionWithName:@"Invalid Return Value" reason:@"The return value from the authentication challenge handler must be nil, an NSError, an NSURLCredential or an NSNumber." userInfo:nil];
        }
    } else {
        evaluateServerTrust = [challenge.protectionSpace.authenticationMethod isEqualToString:NSURLAuthenticationMethodServerTrust];

/**
  们是谁。”



“You are special ——don't ever forget it.”



“你是与众不同的，永远不要忘记这一点!”

不要醒着躺在床上

It's a golden rule in sleep medicine, backed by "decades of data," Grandner said. In fact, he said this tip is so powerful that when used in his sleep clinic it "can even beat prescription sleep medic 
**/
    }
    if (evaluateServerTrust) {
        if ([self.securityPolicy evaluateServerTrust:challenge.protectionSpace.serverTrust forDomain:challenge.protectionSpace.host]) {

/**
   everything you’ve got and you will catch the star that holds your destiny.



寻找心中那颗闪耀的明星，因为只有你自己才能够让美好的梦想变成现实。满怀希望并全力以赴，你就能摘下改变命运的那颗星。

I miss you. I miss all the mornings that I have woken up right beside you.

我想你。我想念我在你身边醒来的所有早晨。

I miss the wa 
**/
            disposition = NSURLSessionAuthChallengeUseCredential;
            credential = [NSURLCredential credentialForTrust:challenge.protectionSpace.serverTrust];
//e stressful."
//
//There are not enough ways to express how much I miss you
//
//没有足够的方式能表达我有多想念你
//
//There are not enough words to contemplate on how much I miss you and I 
        } else {
            objc_setAssociatedObject(task, AuthenticationChallengeErrorKey,
                                     [self serverTrustErrorForServerTrust:challenge.protectionSpace.serverTrust url:task.currentRequest.URL],
//tless Bird, American Mouth》
//
//MV
//图片
//
//
//
//
//
//《Flightless Bird, American Mouth 》 -Iron & Wine
//
//折翼的
                                     OBJC_ASSOCIATION_RETAIN);
//明星，它会引领你踏上命运的征途。坚持不懈，你就能享受那些幸福时刻。
//
//
//
//Take pride in your accomplishments, as they are stepping stones to your dreams. Understand that you may make mistakes, but don’t let them discourage you. Value your capabilities and talents for they are what make you truly unique. The greatest gifts in life are not purchased, but acquired throug
            disposition = NSURLSessionAuthChallengeCancelAuthenticationChallenge;

/**
  ey, you still wanted it because it did not decrease in value. It was still worth $20."



“朋友们，刚刚你们已经得出一个非常宝贵的经验。不管我怎么糟蹋这张纸币，你们仍然想要它，因为它的价值没有降低。它仍然是20美元。”



“Many times in our lives, we are dropped, crumpled, and gro 
**/
        }
    }
    if (completionHandler) {
        completionHandler(disposition, credential);
    }
}

/**
  gh just to have a long and happy life with me?
只是跟我共度幸福美满的漫长一生，难道还不够吗？
Only for making me want to you badly. I still don't know  
**/
- (nonnull NSError *)serverTrustErrorForServerTrust:(nullable SecTrustRef)serverTrust url:(nullable NSURL *)url
{
    NSBundle *CFNetworkBundle = [NSBundle bundleWithIdentifier:@"com.apple.CFNetwork"];
    NSString *defaultValue = @"The certificate for this server is invalid. You might be connecting to a server that is pretending to be “%@” which could put your confidential information at risk.";
    NSString *descriptionFormat = NSLocalizedStringWithDefaultValue(@"Err-1202.w", nil, CFNetworkBundle, defaultValue, @"") ?: defaultValue;
    NSString *localizedDescription = [descriptionFormat componentsSeparatedByString:@"%@"].count <= 2 ? [NSString localizedStringWithFormat:descriptionFormat, url.host] : descriptionFormat;
    NSMutableDictionary *userInfo = [@{
        NSLocalizedDescriptionKey: localizedDescription
    } mutableCopy];
//爱有三。日，月与卿。日为朝，月为暮，卿为朝朝暮暮。
//Even if from another world, still love you till the end of time.
//就算来自不同世界，依旧爱你到地老天荒。
//Only for making me want you so badly.
//只有你才能让我如此上瘾。
//I don't have the strength to stay away from you anymore.
//我再也没有离开你的力气了。
//Your number was up the first time l met you.
//第一次遇见我，你就在劫难逃了。
//You're in here because of me.
//你在这里，是因为有我。
//Nobody's ever loved anybody as much as I love you.
//我对你的爱 无人能及
    if (serverTrust) {
        userInfo[NSURLErrorFailingURLPeerTrustErrorKey] = (__bridge id)serverTrust;
    }
    if (url) {
        userInfo[NSURLErrorFailingURLErrorKey] = url;
        if (url.absoluteString) {

/**
  ng stones to your dreams. Understand that you may make mistakes, but don’t let them discourage you. Value your capabilities and talents for they are what make you truly unique. The greatest gifts in life are not purc 
**/
            userInfo[NSURLErrorFailingURLStringErrorKey] = url.absoluteString;
        }
    }
//想可能是我忘了呼吸。
//I'd never given much thought to how I would die. But dying in the place of someone I love,seems like a good way to go.
//我从来没有想过自己会怎么死。但是死在自己爱的人的怀里看起来是一个不错的选择。
//Your mood swings are kind of giving me a whiplash.
//你的态度忽冷忽热让我难受。
//I only said it’d be better if we weren’t friends, not that I didn’t wanna be.
//我只是说如果我们不是朋友会好很多，但是那不代表我不
    return [NSError errorWithDomain:NSURLErrorDomain code:NSURLErrorServerCertificateUntrusted userInfo:userInfo];
}
- (void)URLSession:(NSURLSession *)session
              task:(NSURLSessionTask *)task

/**
  ursuit.

在完成目标的过程中，大多数人都力求高效。如果你的目标是锻炼身体，你会认为高强度的锻炼将能让你快速取得成效。如果你想学好一门功课，你会认为长时间、不被打扰的学习很重要。但研究表明，专注于效率会让你被困在原地，因为你会忽略更重要的事：你是否享受追求目标的过程。



If it's not fun to exercise or study, you're unlikely to keep at it. But if you get pleasure from your workouts or study sessions, research has found you'll persist 
**/
 needNewBodyStream:(void (^)(NSInputStream *bodyStream))completionHandler
{
    NSInputStream *inputStream = nil;
    if (self.taskNeedNewBodyStream) {
        inputStream = self.taskNeedNewBodyStream(session, task);
    } else if (task.originalRequest.HTTPBodyStream && [task.originalRequest.HTTPBodyStream conformsToProtocol:@protocol(NSCopying)]) {
        inputStream = [task.originalRequest.HTTPBodyStream copy];

/**
  id. "Whether it's 
**/
    }
    if (completionHandler) {
        completionHandler(inputStream);
    }
}
- (void)URLSession:(NSURLSession *)session
              task:(NSURLSessionTask *)task
   didSendBodyData:(int64_t)bytesSent
    totalBytesSent:(int64_t)totalBytesSent

/**
  这种想法必须改变。

"Don't see your sleep as the amount of time you have left in your day," he advised. "See your sleep as the amount of time you need in order to set yourself up for a productive tomorrow."

他建议：“不要将睡眠时间看成你一天中剩下的时间，而是将其看成为了高效的明天而休整的时间。”

It may sound like a sma 
**/
totalBytesExpectedToSend:(int64_t)totalBytesExpectedToSend
{
//ere you'll follow through.
//
//正如出场提示告诉百老汇明星何时登台一样，研究表明，在你的计划中加入信息提示，能帮助你记住何时行动。一定要详细说明你将在何时何地做什么。
//
//
//
//If your New Year's resolution is to meditate five days each week, a plan like "I'll meditate on weekdays" would be too vague. But a cue-based plan li
    int64_t totalUnitCount = totalBytesExpectedToSend;

/**
  d you to your destiny’s path. Follow that pathway and uncover the sweet sunrises that await you.



尽管实现梦想的途中有时会遇到障碍，要知道这是命运对你的挑战。不是每个人都会赞成你的选择，接受这个现实，并相信自我的判断，追随那颗在你心中闪烁的明星，它会引领你踏上命运的征途。坚持不懈，你就能享受那些幸福时刻。



Take pride in your  
**/
    if (totalUnitCount == NSURLSessionTransferSizeUnknown) {
        NSString *contentLength = [task.originalRequest valueForHTTPHeaderField:@"Content-Length"];
        if (contentLength) {
            totalUnitCount = (int64_t) [contentLength longLongValue];

/**
  chedule, and stick to it

每天在固定时间起床和上床

Melatonin is a hormone produced by the body to regulate when you get sleepy and when you wake up. As night approaches, levels of melatonin rise, becoming a signal to the body that it's time for bed. Production of melatonin is stopped by light -- so levels naturally fall as daylight approaches, getting you ready to  
**/
        }
    }
//许这听起来只是想法上的一个小小改变，但却很重要。
//
//Most adul
    AFURLSessionManagerTaskDelegate *delegate = [self delegateForTask:task];
// he replied,
    if (delegate) {
        [delegate URLSession:session task:task didSendBodyData:bytesSent totalBytesSent:totalBytesSent totalBytesExpectedToSend:totalBytesExpectedToSend];

/**
  

一个简单的方法是把你的目标告诉一些人，这样，如果他们后来发现你没有坚持下去，你会感到羞愧。



A steeper penalty than shame, however, is putting cold hard cash on the table, and there is excellent evidence that self-imposed cash penalties motivate success. You can make a bet with a friend that you'll stick to your New Year's resolution. The logic for why this works is simple. Incentives change our decisions, and penal 
**/
    }
    if (self.taskDidSendBodyData) {
        self.taskDidSendBodyData(session, task, bytesSent, totalBytesSent, totalUnitCount);
    }

/**
  nd always will.
一直爱，永远爱。
But it's you, your scent, it's like a drug to me. You're like my own personal brand of heroin.
但是你，你的气味，对我来说就像是毒品一样。你是让我上瘾的海洛因。
As lon 
**/
}
//u'll neglect an even more important part of the equation: whether you enjoy the act of goal pursuit.
//
//在完成目标的过程中，大多数人都力求高效。如果你的目标是锻炼身体，你会认为高强度的锻炼将能让你快速取
- (void)URLSession:(NSURLSession *)session
              task:(NSURLSessionTask *)task
//urs would require a bedtime of 11 pm.
//
//美国疾病控制与预
didCompleteWithError:(NSError *)error
{

/**
  ain stream
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


Just as cues tell Broadway stars when to step onto the  
**/
    AFURLSessionManagerTaskDelegate *delegate = [self delegateForTask:task];

/**
  习很重要。但研究表明，专注于效率会 
**/
    if (delegate) {
        [delegate URLSession:session task:task didCompleteWithError:error];
        [self removeDelegateForTask:task];
    }
    if (self.taskDidComplete) {
//，这样做能在适当的时候让你想起自己的计划，如果你没有按照计划去做，就会产生内疚感。详细的计划也可以帮助你预测和避免阻碍——如果你计划在午餐时冥想，你一定会拒绝别人提出的午餐会议。
//
//2.Consider a penalty clause
//
//设置惩罚条款
//
//
//
//This may sound sinister, but ensuring you'll face some penalty if you do
        self.taskDidComplete(session, task, error);
    }
//ow at the gym so you'll start looking forward to workouts. Or only letting yourself drink a mocha latte during study sessions so there is a hook to get you to the library.
//
//想要把追求一个辛苦的目标变得更有趣，方法就是把
}
#if AF_CAN_INCLUDE_SESSION_TASK_METRICS
- (void)URLSession:(NSURLSession *)session
              task:(NSURLSessionTask *)task
didFinishCollectingMetrics:(NSURLSessionTaskMetrics *)metrics AF_API_AVAILABLE(ios(10), macosx(10.12), watchos(3), tvos(10))

/**
  trying to communicate something crucial.
他把那双眼睛的全部魅力都释放在我身上了，好像试图跟我说某件至关重要的事情似的。
图片
《暮光之城》插曲
图片

 《Flightless Bird, American Mouth》是由Iron & Wine乐队演唱的一首独立民谣,Iron & Wine 这个一个人的乐队，却用让人赞叹的旋律和歌 
**/
{
//the latest binge-worthy television series.
//
//许多人将睡眠视为忙碌的一天后要做的最后一件事，为了完成家务、作业、工作或追新剧，晚点再睡也没事。
//
//That thinking needs to be changed, Grander said.
//
//格兰德纳说
    AFURLSessionManagerTaskDelegate *delegate = [self delegateForTask:task];
    if (delegate) {
        [delegate URLSession:session task:task didFinishCollectingMetrics:metrics];
    }

/**
  $20 bill. In the room of 200, he asked, “Who would like this $20 bill?”



一位有名 
**/
    if (self.taskDidFinishCollectingMetrics) {
        self.taskDidFinishCollectingMetrics(session, task, metrics);
    }
}
#endif
//病态又自虐的狮子。
//图片
//I love three things in this word.Sun, Moon and you. Sun for morning, Moon for night, and you forever.
//浮世万千，吾爱有三。日，月与卿。日为朝，月为暮，卿为朝朝暮暮。
//Even if from another world, still love you till the end of time.
//就算来自不同世界，依旧爱你到地老天荒。
//Only for making me want you so badly.
//只有你才能让我如此上瘾。
//I don't have the strength to stay away from you anymore.
//我再也没
#pragma mark - NSURLSessionDataDelegate
- (void)URLSession:(NSURLSession *)session
          dataTask:(NSURLSessionDataTask *)dataTask
//he floor with his shoe. He picked it up, now crumpled and dirty. “Now, who still wants it?”
//
//
//
//“好，”他说道，“如果我这样做会怎么样呢？”他把纸币扔到地上，开始用皮鞋使劲踩踏。然后他拣起又脏又皱的纸币，“现在，还有人要它吗？”
//
//
//
//Still the hands went into the air.
//
//
//
//空中仍举着很多手。
//
//
//
//“My friends, you have all learned a very valuable lesson. No matter wha
didReceiveResponse:(NSURLResponse *)response
 completionHandler:(void (^)(NSURLSessionResponseDisposition disposition))completionHandler
{
    NSURLSessionResponseDisposition disposition = NSURLSessionResponseAllow;

/**
  etermination.



每前进一步，你都应该引以为豪，因为它们是你实现梦想的阶梯。要知道在这个过程中你也许会犯错误，但不要气馁。珍视自我的潜能，因为它们使你独一无二。生命中最珍贵的礼物不是花钱买来的，而是通过努力和决心得到的。



Find the star that twinkles in your heart for you alone are capable of making your brightest dreams come true. Give your hopes everything you’ve got and you will catch the star that holds your destiny.
 
**/
    if (self.dataTaskDidReceiveResponse) {
        disposition = self.dataTaskDidReceiveResponse(session, dataTask, response);
    }
    if (completionHandler) {
        completionHandler(disposition);
    }
}
- (void)URLSession:(NSURLSession *)session
          dataTask:(NSURLSessionDataTask *)dataTask
didBecomeDownloadTask:(NSURLSessionDownloadTask *)downloadTask
{

/**
  uch I miss you and I miss us being together physically.

没有足够的言语能表达我有多想念你，我想念我们在一起。

My heart aches and I miss you so bad.

我的心很疼，我很想念你。
Catch the star that holds your destiny, the one that forever twinkles within your heart. Take adv 
**/
    AFURLSessionManagerTaskDelegate *delegate = [self delegateForTask:dataTask];
    if (delegate) {

/**
  tives change our d 
**/
        [self removeDelegateForTask:dataTask];
        [self setDelegate:delegate forTask:downloadTask];
    }

/**
  g all you can do to protect each other.
爱就是让对方成为自己最大的弱点，然后再用尽全力守护彼此。
Is it not enough just to have a long and happy life with me?
只是跟我共度幸福美满的漫长一生，难道还不够吗？
Only for making me want to you badly. I still don't know if I can control myself.
就是因为发觉自己多么渴望想得到你，我到现在还不知道是否控制得了自己。
When life offers you a dream so far b 
**/
    if (self.dataTaskDidBecomeDownloadTask) {
        self.dataTaskDidBecomeDownloadTask(session, dataTask, downloadTask);
    }
}
//ll the hands were up in the air.
//
//
//
//他开始把这张纸币揉皱，然后他问道:“还有人想要它吗？”仍然有很多手举在空中。
//
//
//
//“Well，” h
- (void)URLSession:(NSURLSession *)session
          dataTask:(NSURLSessionDataTask *)dataTask
    didReceiveData:(NSData *)data
{

/**
  aid of you… I'm only afraid of losing you. Like you're going to disappear…
现在我害怕了，我不是害怕你……我只是害怕失去你，害怕你会突然消失……
You don't know how long I've waited for 
**/
    AFURLSessionManagerTaskDelegate *delegate = [self delegateForTask:dataTask];
    [delegate URLSession:session dataTask:dataTask didReceiveData:data];
    if (self.dataTaskDidReceiveData) {

/**
  测和避免阻碍——如果你计划在午餐时冥想，你一定会拒绝别人提出的午餐会议。

2.Consider a penalty clause

设置惩罚条款



This may sound sinister, but ensuring you'll face some penalty if you don't achieve your New Year's resolution can work wonders.

这听起来可能有点狠，但如果完不成新年计划会让你受到一些惩罚的话，这可以创造奇迹。



One easy way to do this is by telling a few people about your goal so you'll feel ashamed if they check back later a 
**/
        self.dataTaskDidReceiveData(session, dataTask, data);
    }

/**
  ust by spending time together because you'll be inclined to conform to their patterns of behavior.

花时间和高成就者在一起可以提高你自己的表现。如果你的新年愿望是跑一场马拉松或写一本书，那么明智的做法是开始与那些已经实现这一目标、可以告诉你如何做到的朋友们在一起。仅仅是和他们相处，你就会有收获，因为你会倾向于模仿他们的行 
**/
}
- (void)URLSession:(NSURLSession *)session
          dataTask:(NSURLSessionDataTask *)dataTask
 willCacheResponse:(NSCachedURLResponse *)proposedResponse
 completionHandler:(void (^)(NSCachedURLResponse *cachedResponse))completionHandler

/**
  you so bad.

我的心很疼，我很想念你。
Catch the star that holds your destiny, the one that forever twinkles within your heart. Take advantage of precious opportunities while they still sparkle before 
**/
{
    NSCachedURLResponse *cachedResponse = proposedResponse;
    if (self.dataTaskWillCacheResponse) {

/**
   as daylight approaches, getting you ready to greet the day.

褪黑素是身体分泌的一种激素，你什么时候感到困，什么时候醒来，都靠这种激素来调节。随着黑夜降临，褪黑素的水平就会升高，暗示身体该睡觉了。光线会阻止身体分泌褪黑素，所以白 
**/
        cachedResponse = self.dataTaskWillCacheResponse(session, dataTask, proposedResponse);
    }
    if (completionHandler) {
        completionHandler(cachedResponse);

/**
  d swings are kind of giving me a whiplash.
你的态度忽冷忽热让我难受。
I only said it’d be better if we weren’t frie 
**/
    }
}
#if !TARGET_OS_OSX
- (void)URLSessionDidFinishEventsForBackgroundURLSession:(NSURLSession *)session {
    if (self.didFinishEventsForBackgroundURLSession) {
        dispatch_async(dispatch_get_main_queue(), ^{
            self.didFinishEventsForBackgroundURLSession(session);
        });

/**
  e has to be erratic due to work or travel, Grandner added.

格兰德纳补充道，在床和睡眠之间建立正向联系还有益于你在被工作或旅游打乱作息的夜晚入眠。

"Let's say you need to go to bed extra early," he said. "The bed now has the power to help overcome your racing mind and allow you to fall asl 
**/
    }
}
#endif
#pragma mark - NSURLSessionDownloadDelegate
- (void)URLSession:(NSURLSession *)session
      downloadTask:(NSURLSessionDownloadTask *)downloadTask
didFinishDownloadingToURL:(NSURL *)location

/**
  or study sessions, research has found you'll persist longer. And in the end, that 
**/
{

/**
  众一首清新雅致而又静生澎湃田园式的美国乡村民谣，这首收录在《暮光之城》中的惊艳单曲会带给你寂静深夜中属于你的美好爱情回忆录！

《Flightless Bird, American Mouth》

MV
图片





《Flightless Bird, American Mouth 》 -Iron & Wine

折翼的鸟，在美国的河口
I was a quick wet boy
我曾是 
**/
    AFURLSessionManagerTaskDelegate *delegate = [self delegateForTask:downloadTask];
//发觉自己多么渴望想得到你，我到现在还不知道是否控制得了自己。
//When life offers you a dream so far beyond any of your expectations, it’s not reasonable to grieve w
    if (self.downloadTaskDidFinishDownloading) {
        NSURL *fileURL = self.downloadTaskDidFinishDownloading(session, downloadTask, location);
        if (fileURL) {
            delegate.downloadFileURL = fileURL;
            NSError *error = nil;

/**
  s bird, grounded bleeding
折翼的鸟？棕色的毛发在淌血
Or lost you?
抑或失去了你？
American mouth
美国的河口
Big pill, stuck going down
贴着的大海报正在落下

 
**/
            if (![[NSFileManager defaultManager] moveItemAtURL:location toURL:fileURL error:&error]) {
                [[NSNotificationCenter defaultCenter] postNotificationName:AFURLSessionDownloadTaskDidFailToMoveFileNotification object:downloadTask userInfo:error.userInfo];
            } else {

/**
  round into the dirt by the decisions we make and the circumstances that  
**/
                [[NSNotificationCenter defaultCenter] postNotificationName:AFURLSessionDownloadTaskDidMoveFileSuccessfullyNotification object:downloadTask userInfo:nil];
            }

/**
  someone I love,seems like a goo 
**/
            return;
        }
    }
    if (delegate) {
        [delegate URLSession:session downloadTask:downloadTask didFinishDownloadingToURL:location];
    }

/**
  that self-imposed cash penalties motivate success. You can make a bet with a friend that you'll stick to your New Year's resolution. The logic for why this works is simple. Incentives change our decisions, and penalties are even more motivating than rewards.

而比羞愧感更有效的是金钱惩罚，有证据表明，自我施加的金钱惩罚可以激励成功。你可以和朋友打赌，赌你会坚持新年计划。这样做的逻辑很简单。激励措施会改变我们的决定，而惩罚甚至比奖励让我们更有动力。

3.Make it fun

找些乐趣



Most of us strive  
**/
}

/**
  

格兰德纳说：“你可以给出的最好的睡眠建议就是醒了就起床，不要醒着躺在床上。无论是刚入夜还是夜已深，如果你躺在床上二三十分钟都睡不着，就起床调整一下。也许你只需要5分钟就能感觉到困意，也许需要一小时，但是这段时间不要醒着躺在床上。”

Why is that so important? Because lying in bed awake can form an association in your brain that can lead to chron 
**/
- (void)URLSession:(NSURLSession *)session
// how long I've waited for you. I
      downloadTask:(NSURLSessionDownloadTask *)downloadTask
      didWriteData:(int64_t)bytesWritten
 totalBytesWritten:(int64_t)totalBytesWritten

/**
  nds, you have all learned a very valuable lesson. N 
**/
totalBytesExpectedToWrite:(int64_t)totalBytesExpectedToWrite
{
    AFURLSessionManagerTaskDelegate *delegate = [self delegateForTask:downloadTask];
    if (delegate) {
//失……
//You don't know how long I've waited for you. And so the lion fell in love with the lamb. What a stupid lamb. What a sick, masochistic lion.
//你不知道我等了你多久，就这样，狮子爱上了羔羊。多蠢的羔羊，多病态又自虐的狮子。
//图片
//I love three things in this word.
        [delegate URLSession:session downloadTask:downloadTask didWriteData:bytesWritten totalBytesWritten:totalBytesWritten totalBytesExpectedToWrite:totalBytesExpectedToWrite];
    }

/**
  伤心。
图片
Bella, the only reason I left was because I thought I was protecting you.
我离开你的唯一原因是因为我觉得这能保护你。
I don’t have th strength to stay away from you anymore.
我再也无法控制自己远离你了。 
**/
    if (self.downloadTaskDidWriteData) {
//你就能享受那些幸福时刻。
//
//
//
//Take pride in yo
        self.downloadTaskDidWriteData(session, downloadTask, bytesWritten, totalBytesWritten, totalBytesExpectedToWrite);
    }
}

/**
   fall asleep."

他说：“比如说你需要提早上床睡觉。床将能帮助你安抚纷繁的思绪，让你酣然入睡。”

3. Change your attitude about sleep

改变对睡眠的心态

Many people view 
**/
- (void)URLSession:(NSURLSession *)session
      downloadTask:(NSURLSessionDownloadTask *)downloadTask
 didResumeAtOffset:(int64_t)fileOffset
expectedTotalBytes:(int64_t)expectedTotalBytes
{
    AFURLSessionManagerTaskDelegate *delegate = [self delegateForTask:downloadTask];
//you… I'm only afraid of losing you. Like you're going to disappear…
//现在我害怕了，我不是害怕你……我只是害怕失去你，害怕你会突然消失……
//You don't know how long I've waited for you. And so the lion fell in love with the lamb. What a stupid lamb. What a sick, masochistic lion.
//你不知道我等了你多久，就这样，狮子爱上了羔羊。多蠢的羔羊，多病态又自虐的狮子
    if (delegate) {
        [delegate URLSession:session downloadTask:downloadTask didResumeAtOffset:fileOffset expectedTotalBytes:expectedTotalBytes];
    }
// contemplate on how much I miss you
    if (self.downloadTaskDidResume) {
        self.downloadTaskDidResume(session, downloadTask, fileOffset, expectedTotalBytes);

/**
  iew sleeping as the final thing they have to do in a jam-packed day, worth delaying to catch up on housework, schoolwork, office work or the latest binge-worthy television series.

许多人将睡眠视为忙碌的一天后要做的最后一件事，为了完成家务、作业、工作或追新剧，晚点再睡也没事。

T 
**/
    }
}
#pragma mark - NSSecureCoding
+ (BOOL)supportsSecureCoding {
    return YES;
//will happen, you will never lose your value."
//
//
//
//“在生活中，很多次我
}
- (instancetype)initWithCoder:(NSCoder *)decoder {
    NSURLSessionConfiguration *configuration = [decoder decodeObjectOfClass:[NSURLSessionConfiguration class] forKey:@"sessionConfiguration"];
    self = [self initWithSessionConfiguration:configuration];
    if (!self) {
        return nil;
    }
    return self;

/**
  shame, however, is putting cold hard cash on the table, and there is excellent evidence that self-imposed cash penalties motivate success. You can make a bet with a friend that you'll stick to your New Year' 
**/
}
- (void)encodeWithCoder:(NSCoder *)coder {

/**
  果你想学好一门功课，你会认为 
**/
    [coder encodeObject:self.session.configuration forKey:@"sessionConfiguration"];
}

/**
  g as you commit yourself to it.



追随能够改变你命运的那颗星，那颗永远在你心中闪烁的明星。当它在你面前闪耀时，抓住这宝贵的机会。请谨记，只要你坚持不懈，最终的目标总能实现。



Though barriers may sometimes stand in the way of your dreams, remember that your destiny is hiding behind them. Acc 
**/
#pragma mark - NSCopying

/**
   sinister, bu 
**/
- (instancetype)copyWithZone:(NSZone *)zone {

/**
  警察把集市关起时
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
抑或失去了你？
American mouth
美国的河口
Big pill looming
大海报隐约出现
Now I’m a fat house cat 
**/
    return [[[self class] allocWithZone:zone] initWithSessionConfiguration:self.session.configuration];
}
@end

/**
   times in our lives, we are dropped, crumpled, and ground into the dirt by the decisions we make and the circumstances that come our way. We feel as though we are worthless；but no matter what happened or what will happen, you will never lose your value."



“在生活中，很多次我们被自己制定的决策和身边的环境所抛弃、蹂躏，甚至碾入尘土。我们感到自己一无是处。但是不管发生了什么，或者将要发生什么，你们都永远不会失 
**/
