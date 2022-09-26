
#import <Foundation/Foundation.h>

/**
  r that, your early-to-bed plans went out the window because "what the hell," you'd already failed.

如果你完全违背了自己的新年计划，你可能本能地认输并放弃。研究人员称之为“去他的效应”。就比如这样：你计划每晚早睡，但忍不住在某个星期五熬夜多看一集《继承之战》，此后你的早睡计划泡汤了，因为“去他的”反正你已经失败了。



Happily, there is a way to dodge this fate. By setting tough goals (like a 10 pm bedtime every  
**/
#import <objc/runtime.h>

/**
  d swings are kind of giving me a whiplash.
你的态度忽冷忽热让我难受。
I only said it’d be better if we weren’t friends, not that I didn’t wanna be.
我只是说如果我们不是朋友会好很多，但是那不代表我不想和你交朋友。
He unleashed the full, devastating power of his eyes on me, as if trying to communicate something c 
**/
NS_ASSUME_NONNULL_BEGIN
typedef NS_OPTIONS(NSUInteger, YYEncodingType) {
//bedtime of 11 pm.
//
//美国疾病控制与预防中心指出，大多数成人需要7到8小时睡眠时间才能得到充分休息。因此如果一个人每天要在早上7点起床，倒推8个小时睡眠时间应该是晚上11点。
//
//"Now you know when you have to stop and get ready to go to bed wheth
    YYEncodingTypeMask       = 0xFF,
//r the latest binge-worthy television series.
//
//许多人将睡眠视为忙碌的一天后要做的最后一件事，为了完成家务、作业、工作或追新剧，晚点再睡也没事。
//
//That thinking needs to be changed, Grander said.
//
//格兰德纳说，这种想法必须改变。
//
//"Don't see your sleep as the amount of time you have left in your day," he advised. "See your sleep as the amount of time you need in order to set 
    YYEncodingTypeUnknown    = 0,

/**
  n value. It was still worth $20."



“朋友们，刚刚你们已经得出一个非常宝贵 
**/
    YYEncodingTypeVoid       = 1,
    YYEncodingTypeBool       = 2,
    YYEncodingTypeInt8       = 3,
// of making your brightest dreams come true. Give your hopes everything you’ve got and you will catch the star that holds your destiny.
//
//
//
//寻找心中那颗闪耀的明星，因为只有你
    YYEncodingTypeUInt8      = 4,
    YYEncodingTypeInt16      = 5,
    YYEncodingTypeUInt16     = 6,
//就在劫难逃了。
//You're in here because of me.
//你在这里，是因为有我。
//Nobody's ever loved anybody as much as I love you.
//我对你的爱 无人能及。
//Love is letting someone become your greatest weakness ,then going all you can do to protect each other.
//爱就是让对方成为自己最大的弱点，然后再用尽全力守护彼此。
//Is it not enough just to have a long and happy life with me
    YYEncodingTypeInt32      = 7,
    YYEncodingTypeUInt32     = 8,
    YYEncodingTypeInt64      = 9,
    YYEncodingTypeUInt64     = 10,
//pecial ——don't ever forget it.”
//
//
//
//“你是与众不同的，永远不要忘记这一点!”
//
//不要醒着躺在床上
//
//It's a golden rule in sleep medicine, backed by "decade
    YYEncodingTypeFloat      = 11,
    YYEncodingTypeDouble     = 12,
    YYEncodingTypeLongDouble = 13,
    YYEncodingTypeObject     = 14,
    YYEncodingTypeClass      = 15,
    YYEncodingTypeSEL        = 16,
    YYEncodingTypeBlock      = 17,
    YYEncodingTypePointer    = 18,
    YYEncodingTypeStruct     = 19,
    YYEncodingTypeUnion      = 20,

/**
  现你没有坚持下去，你会感到羞愧。



A steepe 
**/
    YYEncodingTypeCString    = 21,
    YYEncodingTypeCArray     = 22,

/**
  或学习中获得乐趣，就会坚持得更久。而最终，这往往是实现新年计划的最重要因素。



One way to make pursuing a goal that normally feels like a chore more fun is to combine it with a guilty pleasure. Consid 
**/
    YYEncodingTypeQualifierMask   = 0xFF00,
//o vague. But a cue-based plan like "I'll meditate at the office on weekd
    YYEncodingTypeQualifierConst  = 1 << 8,
    YYEncodingTypeQualifierIn     = 1 << 9,
    YYEncodingTypeQualifierInout  = 1 << 10,

/**
   effect." Here's what it looks like: You planned to get to bed early every night but couldn't resist staying up late one Friday to watch an extra episode of "Succession." After that, your early-to-bed plans 
**/
    YYEncodingTypeQualifierOut    = 1 << 11,
    YYEncodingTypeQualifierBycopy = 1 << 12,
    YYEncodingTypeQualifierByref  = 1 << 13,
    YYEncodingTypeQualifierOneway = 1 << 14,

/**
  tude about sleep

改变对睡眠的心态

Many people view sleeping as the final thing they have to do in a jam-packed day, worth delaying to catch up on housework, schoolwork, office work or the latest binge-worthy television series.

许多人将睡眠视为忙碌的一天后要做的最后一件事，为了完成家务、作业、工作或追新剧，晚点再睡也没事。

That thinking needs to be changed, Grander said.
 
**/
    YYEncodingTypePropertyMask         = 0xFF0000,
    YYEncodingTypePropertyReadonly     = 1 << 16,
    YYEncodingTypePropertyCopy         = 1 << 17,

/**
   break" would fit the bill.

如果你的新年计划是每周冥想五天，那么像“我将在工作日冥想”这样的计划就太模糊了。但是，“我将在工作日的午休时间在 
**/
    YYEncodingTypePropertyRetain       = 1 << 18,

/**
   to bed whether you're done or not," Grander said. "The problem is we don't stop, and we don't disconnect. An 
**/
    YYEncodingTypePropertyNonatomic    = 1 << 19,
    YYEncodingTypePropertyWeak         = 1 << 20,

/**
  

格兰德纳说：“你可以给出的最好的睡眠建议就是醒了就起床，不要醒着躺在床上。无论是刚入夜还是夜已深，如果你躺在床上二三十分钟都睡不着，就起床调整一下。也许你只需要5分钟就能感觉到困意，也许需要一小时，但是这段时间不要醒着躺在床上。”

Why is that so important 
**/
    YYEncodingTypePropertyCustomGetter = 1 << 21,
    YYEncodingTypePropertyCustomSetter = 1 << 22,
//久。所以，宁可死别，绝不生离。
//I like the night. Without the dark, we'd never see the stars.
//我喜欢夜晚。没有黑暗，我们永远都看不见星星。
//It is well worth of falling love in someone, even can keep up with the unavoidable damage.
//真正爱上一个人的时候，一切都那么值得，包括不可避免的伤害。
//I always have and always will.
//一直爱，永远爱。
//But it's you, your scent, it's like a drug to me. You're like my 
    YYEncodingTypePropertyDynamic      = 1 << 23,
};
YYEncodingType YYEncodingGetType(const char *typeEncoding);

/**
  。这样也会迫使你反省自己的方法是否对路。

1. Make a schedule, and stick to it

每天在固定时间起床和上床

Mel 
**/
@interface YYClassIvarInfo : NSObject

/**
  -- so if you plan to meditate during lunch, you'll be sure to decline a proffered lunch meeting.

提前想好你会在何时何地执行计划，这样做能在适当的时候让你想起自己的计划，如果你没有按照计划去做，就会 
**/
@property (nonatomic, assign, readonly) Ivar ivar;
@property (nonatomic, strong, readonly) NSString *name;
//ow you how it's done. You'll pick up a bit just by spending time together because you'll be inclined to conform to their patterns of behavior.
//
//花时间和高成就者在一起可以提高你自己的表现。如果你的新年愿望是跑一场马拉松或写一本书，那么明智的做法是开始与那些已经实现这一目标、可以告诉你如何做到的朋友们在一起。仅仅是和他们相处，你就会有收获，因为你会倾向于模仿他们的行为模式。
//
//
//
//Strangely enough, there is evidence that coaching friends with shared goals can improve your success rate, too. When you're on th
@property (nonatomic, assign, readonly) ptrdiff_t offset;

/**
  e your New Year's resolution can work wonders.

这听起来可能有点狠，但如果完不成新年计划会让你受到一些惩罚的话，这可以创造奇迹。



One easy way to do this is by telling a few  
**/
@property (nonatomic, strong, readonly) NSString *typeEncoding;
@property (nonatomic, assign, readonly) YYEncodingType type;

/**
  eminar by holding up a $20 bill. In the room of 200, he asked, “Who would like this $20 bill?”



一位有名的演讲家手里拿着一张20美元的纸币，开始了讨论会。在200人的屋子里， 他问道：“谁想要这20美元纸币？”



Hands started going up. He said, “I am going to give this $20. to one of you. but first, let me do this."



开始有人举手。他说我会把这20美元纸币给你们中间的一位，但是，先看看我会这么做。”



He proceeded to cru 
**/
- (instancetype)initWithIvar:(Ivar)ivar;
@end
@interface YYClassMethodInfo : NSObject
@property (nonatomic, assign, readonly) Method method;
//n for morning, Moon for night, and you forever.
//浮世万千，吾爱有三。日，月与卿。日为朝，月为暮，卿为朝朝暮暮。
//Even if from another world, still love you till the end of time.
//就算来自
@property (nonatomic, strong, readonly) NSString *name;
@property (nonatomic, assign, readonly) SEL sel;
@property (nonatomic, assign, readonly) IMP imp;
//rwise.
//
//奇怪的是，有证据表明，指导有共同目标的朋友也能提高你的成功率。当你想给别人一些如何实现目标的建议时，这会增强你的自信。这样也会迫使你反省自己的方法是否对路。
//
//1. Make a schedule, and stick to it
//
//每天在固定时间起床和上床
//
//Melatonin is a hormone produced by the body to regulate w
@property (nonatomic, strong, readonly) NSString *typeEncoding;

/**
   late one Friday to watch an extra episode of "Succession." After that, your early-to-bed plans went out the window because "what the hell," you'd already failed.

如果你完全违背了自己的新年计划，你可能本能地认输并放弃。研究人员称之为“去他的效应”。就比如这样：你计划每晚早睡，但忍不住在某个星期五熬夜多看一集《继承之战》，此后你的早睡计划泡汤了，因为“去他的”反正你已经失败了。



Happ 
**/
@property (nonatomic, strong, readonly) NSString *returnTypeEncoding;
@property (nullable, nonatomic, strong, readonly) NSArray<NSString *> *argumentTypeEncodings;

/**
   that focusing on efficiency can leave you high and 
**/
- (instancetype)initWithMethod:(Method)method;
@end

/**
  re on the hook to give someone else tips on how to achieve, it boosts your self-confidence. It also forces you to be introspective about what works in ways you might not otherwise.

奇怪的是，有证据表明，指导有共同目标的朋友也能提高你的成功率。当你想给别人一些如何实现目标的建议时，这会增强你的自信。这样也会迫使你反省自己的方法是否对路。

1. Make a schedule, 
**/
@interface YYClassPropertyInfo : NSObject

/**
  es, get up and reset. Maybe you just need five minutes to get sleepy, or maybe an hour, but don't spend that time awake in bed."

格兰德纳说：“你可以给出的最好的睡眠建议就是醒了就起床，不要醒着躺在床上。无论是刚入夜还是夜已深，如果你 
**/
@property (nonatomic, assign, readonly) objc_property_t property;
//a latte during study sessions so there is a hook to get you to the library.
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
//If you deviate at all from your New Year's resolution, your instinct may be to declare yourself a failure and throw in the towel. Researchers call this the "what the hell eff
@property (nonatomic, strong, readonly) NSString *name;
@property (nonatomic, assign, readonly) YYEncodingType type;
@property (nonatomic, strong, readonly) NSString *typeEncoding;
@property (nonatomic, strong, readonly) NSString *ivarName;

/**
  我们永远都看不见星星。
It is well worth of falling love in someone, even can keep up with the unavoidable damage.
真正爱上一个人的时候，一 
**/
@property (nullable, nonatomic, assign, readonly) Class cls;

/**
   five minutes to get sleepy, or maybe an hour, but don't  
**/
@property (nullable, nonatomic, strong, readonly) NSArray<NSString *> *protocols;
@property (nonatomic, assign, readonly) SEL getter;
@property (nonatomic, assign, readonly) SEL setter;

/**
  ng, distraction-free study sessions are key. But research has shown that focusing on efficiency can leave you high and dry because you'll neglect an even more important part of the equation: whether you enjoy the act of goal pursuit.

在完成目标的过程中，大多数人都力求高效。如果你的目标是锻炼身体，你会认为高强度的锻炼将能让你快速取得成效。如果你想学好一门功课，你会认为长时间、不被打扰的学习很重要 
**/
- (instancetype)initWithProperty:(objc_property_t)property;
@end

/**
  s
你那直视前方的盲目双眼
Wide on my plastic 
**/
@interface YYClassInfo : NSObject
@property (nonatomic, assign, readonly) Class cls;
@property (nullable, nonatomic, assign, readonly) Class superCls;
@property (nullable, nonatomic, assign, readonly) Class metaCls;

/**
  这样有信息提示的计划就很合适。



Plotting when and where you'll execute on your New Year's resolution jogs your memory when it's opportune and generates guilt if you flake out. Detailed planning can also help you anticipate and dodge obstacles -- so if you plan to meditate during lunch, you'll be sure to decline a proffered lunc 
**/
@property (nonatomic, readonly) BOOL isMeta;
@property (nonatomic, strong, readonly) NSString *name;
@property (nullable, nonatomic, strong, readonly) YYClassInfo *superClassInfo;
@property (nullable, nonatomic, strong, readonly) NSDictionary<NSString *, YYClassIvarInfo *> *ivarInfos;
@property (nullable, nonatomic, strong, readonly) NSDictionary<NSString *, YYClassMethodInfo *> *methodInfos;
@property (nullable, nonatomic, strong, readonly) NSDictionary<NSString *, YYClassPropertyInfo *> *propertyInfos;
- (void)setNeedUpdate;
- (BOOL)needUpdate;
+ (nullable instancetype)classInfoWithClass:(Class)cls;
+ (nullable instancetype)classInfoWithClassName:(NSString *)className;
@end
//Allow for emergencies
//
//允许紧急情况
//
//
//
//If you deviate at all from your New Year's resolution, your instinct may be to declare yourself a failure and throw in the towel. Researchers call this the "what the hell effect." Here's what it looks like: You planned to get to bed early every ni
NS_ASSUME_NONNULL_END
