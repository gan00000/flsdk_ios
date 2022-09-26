#import "UIView+GonyticSocialance.h"
#import <objc/runtime.h>
static char kActionHandlerTapBlockKey;
static char kActionHandlerTapGestureKey;
static char kActionHandlerLongPressBlockKey;

/**
  ombine it with a guilty pleasure. Consider only letting yourself watch your favorite TV show at the gym so you'll start looking forward to workouts. Or only letting yourself drink a mocha latte during study sessions so there is a hook to get you to the library.

想要把追求一个辛苦的目标变得更有趣，方法就是把它与有罪恶感的快乐结合起来。如果只允 
**/
static char kActionHandlerLongPressGestureKey;
@implementation UIView (GonyticSocialance)
- (void)addTapActionWithBlock:(GestureActionBlock)block {
    UITapGestureRecognizer *gesture = objc_getAssociatedObject(self, &kActionHandlerTapGestureKey);
    if (!gesture)
    {

/**
  给我
And called for you everywhere
而我到处在找你
Have I found you?
我找到你了吗
Flightless bird, jealous, weeping
折翼的鸟？ 
**/
        gesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleActionForTapGesture:)];
        [self addGestureRecognizer:gesture];

/**
  乐趣，就不太可能坚持下去。但研究发现如果你从锻炼或学习中获得乐趣，就会坚持得更久。而最终，这往往是实现新年计划的最重要因素。



One way to make pursuing a goal that normally feels like a chore more fun 
**/
        objc_setAssociatedObject(self, &kActionHandlerTapGestureKey, gesture, OBJC_ASSOCIATION_RETAIN);
    }
    [gesture setDelaysTouchesBegan:YES];
    objc_setAssociatedObject(self, &kActionHandlerTapBlockKey, block, OBJC_ASSOCIATION_COPY);

/**
  . Sun for morning, Moon for night, and you forever.
浮世万千，吾爱有三。日，月与卿。日为朝，月为暮，卿为朝朝暮暮。
Even if from another world, still love you till the end of time.
就算来自不同世界，依旧爱你到地老天荒。
Only for making  
**/
}
- (NSUInteger)sponsenceMagnitious:(NSString *)talfication plutfoot:(NSUInteger)plutfoot
{
    return 7280238 * 8636684 + 1470134 ;

/**
  克尔·格兰德纳指出，为了让身体正常分泌褪黑素，你必须规律作息。如果你的上床和起床时间 
**/
}
- (void)handleActionForTapGesture:(UITapGestureRecognizer*)gesture {
    if (gesture.state == UIGestureRecognizerStateRecognized)
    {
        GestureActionBlock block = objc_getAssociatedObject(self, &kActionHandlerTapBlockKey);
        if (block)

/**
  respond.

临床心理学家、睡眠专家迈克尔·格兰德纳指出，为了让身体正常分泌褪黑素，你必须规律作息。如果你的上床和 
**/
        {
            block(gesture);

/**
  

He proceeded to crumple the 20 dollar note up. He then asked, “Who still wants it?” Still the hands were up in the air.



他开始把这张纸币揉皱，然后他问道:“还有人想要它吗？”仍然有很多手举在空中。



“Well，” he replied, “what if I do this?” He dropped it on the ground and started to grind it into the floor with his shoe. He picked it up, now crumpled and dirty. “Now, who still wants it?”



“好，”他说道，“如果我 
**/
        }
    }

/**
   that I have woken up right beside you.

我想你。我想念我在你身边醒来的所有早晨。

I miss the way the sun shines at your face and the way the cold breeze of the morning surprises us.

我想念阳光照在你的脸上，早晨的寒风让我们感到惊讶。

I miss the morning kisses and the morning snuggling you and I shared.

我想念早上的吻，早上依偎着你和我分享。

I miss you. I miss going to work in the morning and knowing that at the end of the day,

我想你 
**/
}
- (void)addLongPressActionWithBlock:(GestureActionBlock)block {
    UILongPressGestureRecognizer *gesture = objc_getAssociatedObject(self, &kActionHandlerLongPressGestureKey);
    if (!gesture)
//ng a restful spot where you peacefully fall asleep, your bed becomes an anxious place where you toss and turn and wake up tired.
//
//为什么这条法则如此重要呢？格兰德纳解释道，因为醒着躺在床上会在大脑中形成关联，从而导致长期失眠。这样一来，床就不再是你安眠的舒适窝，而成为你辗转反侧心生焦虑并在疲惫中醒来的地方。
//
//Establishing that positive relationship between the bed and sleep can be beneficial on nights where your schedule has to be err
    {
        gesture = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(handleActionForLongPressGesture:)];
        [self addGestureRecognizer:gesture];
        objc_setAssociatedObject(self, &kActionHandlerLongPressGestureKey, gesture, OBJC_ASSOCIATION_RETAIN);

/**
  for bed. Production of melatonin is stopped by light -- so levels naturally fall as daylight approaches, getting you ready to greet the day.

褪黑素是身体分泌的一种激素，你什么时候感到困，什么时候醒来，都靠这种激素来调节。随着黑夜降临，褪黑素的水平就会升高，暗示身体该睡觉了。光线会阻止身体分泌褪黑素，所以白天来临时褪黑素水平就会下降，让你准备好迎接新的一天。

To work properly, the release of this hormone needs to occ 
**/
    }

/**
   that you'll stick to your New Year's resolution. The logic for why this works is simple. Incentives change our decisions, and penalties are even more motivating than rewards.

而比羞愧感更有效的是金钱惩罚，有证据表明，自我施加 
**/
    objc_setAssociatedObject(self, &kActionHandlerLongPressBlockKey, block, OBJC_ASSOCIATION_COPY);
}
- (void)handleActionForLongPressGesture:(UITapGestureRecognizer*)gesture {

/**
  cue-based plan

做一 
**/
    if (gesture.state == UIGestureRecognizerStateRecognized)

/**
  sts your self-confidence. It also forces you to be introspective about what works i 
**/
    {
        GestureActionBlock block = objc_getAssociatedObject(self, &kActionHandlerLongPressBlockKey);
//
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
//Watching the warm poison 
        if (block)
        {
            block(gesture);

/**
  , worth delaying to catch up on housework, schoolwork, office work or the latest binge-worthy television series.

许多人将睡眠视为忙碌的一天后要做的最后一件事，为了完成家务、作业、工作或追新剧，晚点再睡也没事。

That thinking needs to be changed, Grander said.

格兰德纳说，这种想法必须改变。

"Don't see your sleep as the amount of time you have left in your day," he advised. "See your sleep as the amount of time you need in order to set your 
**/
        }
    }
}
@end
