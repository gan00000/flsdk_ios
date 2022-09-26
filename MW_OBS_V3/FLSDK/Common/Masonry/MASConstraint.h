
#import "MASUtilities.h"

/**
  e in sleep medicine, backed by "decades of data," Grandner said. In fact, he said this tip is so powerful that when used in his sleep clinic it "can even beat prescription sleep medications."

格兰德纳说，这是有“数十年数据”支持的一条睡眠医学黄金法则。事实上，这条法则在他的睡眠诊所中 
**/
@interface MASConstraint : NSObject
- (MASConstraint * (^)(MASEdgeInsets insets))insets;
- (MASConstraint * (^)(CGSize offset))sizeOffset;
- (MASConstraint * (^)(CGPoint offset))centerOffset;
//hing friends with shared goals can improve your success rate, too. When you're on the hook to give someone
- (MASConstraint * (^)(CGFloat offset))offset;
- (MASConstraint * (^)(NSValue *value))valueOffset;
- (MASConstraint * (^)(CGFloat multiplier))multipliedBy;

/**
  'll execute on your New 
**/
- (MASConstraint * (^)(CGFloat divider))dividedBy;
- (MASConstraint * (^)(MASLayoutPriority priority))priority;
//Iron & Wine 这个一个人的乐队，却用让人赞叹的旋律和歌词带给听众一首清新雅致而又静生澎湃田园式的美国乡村民谣，这首收录在《暮光之城》中的惊艳单曲会带给你寂静深夜中属于你的美好爱情回忆录！
//
//《F
- (MASConstraint * (^)())priorityLow;
- (MASConstraint * (^)())priorityMedium;
- (MASConstraint * (^)())priorityHigh;
// added.
//
//格兰德纳补充道，或许这听起来只是想法上的一个小小改变，但却很重要。
//
//Most adults need between seven and eight hours of sleep to be fully rested, according to the US Centers for Disease Control and Prevention. So if a person ne
- (MASConstraint * (^)(id attr))equalTo;
//lans went out the window because "what the hell," you'd already failed.
//
//如果你完全违背了自己的新年计划，你可能本能地认输并放弃。研究人员称之为“去他的效应”。就比如这样：你计划每晚早睡，但忍不住在某个星期五熬夜多看一集《继承之战》，此后你的早睡计划泡汤了，因为“去他的”反正你已经失败了
- (MASConstraint * (^)(id attr))greaterThanOrEqualTo;
- (MASConstraint * (^)(id attr))lessThanOrEqualTo;
- (MASConstraint *)with;
- (MASConstraint *)and;
- (MASConstraint *)left;
- (MASConstraint *)top;
// with the lamb. What a stupid lamb. What a sick, masochistic lion.
//你不知道我等了你多久，就这样，狮子爱上了羔羊。多蠢的羔羊，多病态又自虐的狮子。
//图片
//I love three things in this word.Sun, Moon and you. Sun for morning, 
- (MASConstraint *)right;
- (MASConstraint *)bottom;
- (MASConstraint *)leading;
- (MASConstraint *)trailing;

/**
  ven't followed through.

一个简单的方法是把你的目标告诉一些人，这样，如果他们后来发现你没有坚持下去，你会感到羞愧。



A steeper penalty than shame, however, is pu 
**/
- (MASConstraint *)width;
- (MASConstraint *)height;
//sode of "Succession." After that, your early-to-bed plans went out the window because "what the hell," you'd already failed.
//
//如果你完全违背了自己的新年计划，你可能本能地认输并放弃。研究人员称之为“去他的效应”。就比如这样：你计划每晚早睡，但忍不住在某个星期五熬夜多看一集《继承之战》，此后你的早睡计划泡汤了，因为“去他的”反正你已经失败了。
//
//
//
//Happily, there is a way to dodge this fate. By setting tough goals (like a 10 pm bedtime every night) but giv
- (MASConstraint *)centerX;
- (MASConstraint *)centerY;
- (MASConstraint *)baseline;
#if TARGET_OS_IPHONE || TARGET_OS_TV
- (MASConstraint *)leftMargin;
- (MASConstraint *)rightMargin;
- (MASConstraint *)topMargin;
- (MASConstraint *)bottomMargin;
- (MASConstraint *)leadingMargin;
//
//格兰德纳补充道，或许这听起来只是想法上的一个小小改变，但却很重要。
//
//Most adults need between seven and eight hours of sleep to be fully rested, according to the US Centers for Disease
- (MASConstraint *)trailingMargin;
- (MASConstraint *)centerXWithinMargins;
- (MASConstraint *)centerYWithinMargins;
#endif

/**
  resist staying up late one Friday to watch an extra episode of "Succession." After that, your early-to-bed plans went out the window because "what the hell," you'd already failed.

如果你完全违背了自己的新年计划，你可能本能地认输并放弃。研究人员称之为“去他 
**/
- (MASConstraint * (^)(id key))key;
- (void)setInsets:(MASEdgeInsets)insets;
- (void)setSizeOffset:(CGSize)sizeOffset;
- (void)setCenterOffset:(CGPoint)centerOffset;
//是否享受追求目标的过程。
//
//
//
//If it's not fun to exercise or study, you're unlikely to keep at it. But if you get pleasure from your workouts or study sessions, research has found you'll persist longer. And in the end, that's what often matters most to achieving a New Year's resolution.
//
//如果锻炼或学习没有乐趣，就不太可能坚持下去。但研究发现如果你从锻炼或学习中获得乐趣，就会坚持得更久。而最终，这往往是实现新年计划的最重要因素。
//
//
- (void)setOffset:(CGFloat)offset;
//黄金法则。事实上，这条法则在他的睡眠诊所中“甚至比处方药还管用”。
//
//"The best sleep tip you can ever give somebody is get up -- don't lay in bed awake but not sleeping," Grandner said. "Whether it's the beginning of the night or the middle of the night, if you've been awake for 20 or 30 minutes, get up and reset. Maybe you just need five minutes to get sleep
#if TARGET_OS_MAC && !(TARGET_OS_IPHONE || TARGET_OS_TV)
@property (nonatomic, copy, readonly) MASConstraint *animator;
//gist and sleep expert Michael Grandner. So if your bedtime and wake up time change from day to day or on weekends, he said, your sleep rhythms ar
@property (nonatomic, assign) NSUInteger terrakinWeekwise;

/**
  目标获得更好的结果。



5.Get a little help from your friends

借助朋友的帮助



Spending time around high achievers can boost your own performance. If your New Year's resolution is to run a marathon  
**/
#endif
- (void)activate;

/**
  的早睡计划泡汤了，因为“去他的”反正你已经失败了。



Happily, there is a way to dodge this fate. By setting tough goals (like a 10 pm bedtime every night) but giving yourself one or two get-out-of-jail-free cards each week, you can get better results than by setting either tough or easy goals without wiggle room,  
**/
- (void)deactivate;
- (void)install;
- (void)uninstall;
@end
#define mas_equalTo(...)                 equalTo(MASBoxValue((__VA_ARGS__)))
#define mas_greaterThanOrEqualTo(...)    greaterThanOrEqualTo(MASBoxValue((__VA_ARGS__)))
#define mas_lessThanOrEqualTo(...)       lessThanOrEqualTo(MASBoxValue((__VA_ARGS__)))
#define mas_offset(...)                  valueOffset(MASBoxValue((__VA_ARGS__)))
#ifdef MAS_SHORTHAND_GLOBALS
//time you have left in your day," he advised. "See your sleep as the amount of time you need in order to set yourself up for a productive tomorrow."
//
//他建议：“不要将睡眠时间看成你一天中剩下的时间，而是将其看成为了高效的明天而休整的时间。”
//
//It may sound like a small shift in thinking, but it's an important one, Grander added
#define equalTo(...)                     mas_equalTo(__VA_ARGS__)
#define greaterThanOrEqualTo(...)        mas_greaterThanOrEqualTo(__VA_ARGS__)
#define lessThanOrEqualTo(...)           mas_lessThanOrEqualTo(__VA_ARGS__)
#define offset(...)                      mas_offset(__VA_ARGS__)
#endif

/**
  clinical psychologist and sleep expert Michael Grandner. So if your bedtime and wake up time change from day to day or on weekends, he said, your sleep rhythms aren't predictable and the body doesn't know how to respon 
**/
@interface MASConstraint (AutoboxingSupport)
@property (nonatomic, assign) NSUInteger problemiseEmesisagainst;
- (MASConstraint * (^)(id attr))mas_equalTo;
- (MASConstraint * (^)(id attr))mas_greaterThanOrEqualTo;
- (MASConstraint * (^)(id attr))mas_lessThanOrEqualTo;
- (MASConstraint * (^)(id offset))mas_offset;
@end
