#import "UIView+ItsitiveAnotherion.h"
#import <objc/runtime.h>
//。
//
//
//
//5.Get a little help from your friends
//
//借助朋友的帮助
//
//
//
//Spen
static char kActionHandlerTapBlockKey;

/**
  有动力。

3.Make it fun

找些乐趣



Most of us strive for efficiency when it comes to achieving our goa 
**/
static char kActionHandlerTapGestureKey;
//rks in ways you might not otherwise.
//
//奇怪的是，有证据表明，指导有共同目标的朋友也能提高你的成功率。当你想给别人一些如何实现目标的建议时，这会增强你的自信。这样也会迫使你反省自己的方法是否对路。
//
//1. Make a schedule, and stick to it
//
//每天在固定时间起床和上床
//
//Melatonin is a hormone produced by the body to regulate when you get sleepy and when you wake up. As night approaches, levels of melatonin rise, becoming a signal
static char kActionHandlerLongPressBlockKey;
static char kActionHandlerLongPressGestureKey;
@implementation UIView (ItsitiveAnotherion)
- (void)addTapActionWithBlock_MMMethodMMM:(GestureActionBlock)block {
//很多次我们被自己制定的决策和身边的环境所抛弃、蹂躏，甚至碾入尘土。我们感到自己一无是处。但是不管发生了什么，或者将要发生什么，你们都永远不会失去自己的价值。”
//
//
//
//“Dirty or clean, crumpled or finely 
    UITapGestureRecognizer *gesture = objc_getAssociatedObject(self, &kActionHandlerTapGestureKey);
    if (!gesture)
    {
//less Bird, American Mouth》是由Iron & Wine乐队演唱的一首独立民谣,Iron & Wine 这个一个人的乐队，却用让人赞叹的旋律和歌词带给听众一首清新雅致而又静生澎湃田园式的美国乡村民谣，这首收录在《暮光之城》中的惊艳单曲会带给你寂静深夜中属于你的美好爱情回忆录！
//
//《Flight
        gesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleActionForTapGesture_MMMethodMMM:)];
        [self addGestureRecognizer:gesture];
//
//
//If you deviate at all from your New Year's resolution, your instinct may be to declare yourself a failure an
        objc_setAssociatedObject(self, &kActionHandlerTapGestureKey, gesture, OBJC_ASSOCIATION_RETAIN);
    }
    [gesture setDelaysTouchesBegan:YES];
    objc_setAssociatedObject(self, &kActionHandlerTapBlockKey, block, OBJC_ASSOCIATION_COPY);
}
- (void)handleActionForTapGesture_MMMethodMMM:(UITapGestureRecognizer*)gesture {
    if (gesture.state == UIGestureRecognizerStateRecognized)
    {
        GestureActionBlock block = objc_getAssociatedObject(self, &kActionHandlerTapBlockKey);
        if (block)
        {
            block(gesture);

/**
  让你快速取得成效。如果你想学好一门功课，你会认为长时间、不被打扰的学习很重要。但研究表明，专注于效率会让你被困在原地，因为你会忽略更重要的事：你是否享受追求目标的过程。



If it's not fun to exercise or study, you're unlikely to keep at it. But if you get pleasure from your workouts or study sessions, research has found you'l 
**/
        }
    }
}
- (void)addLongPressActionWithBlock_MMMethodMMM:(GestureActionBlock)block {
    UILongPressGestureRecognizer *gesture = objc_getAssociatedObject(self, &kActionHandlerLongPressGestureKey);
    if (!gesture)
    {
        gesture = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(handleActionForLongPressGesture_MMMethodMMM:)];
        [self addGestureRecognizer:gesture];
        objc_setAssociatedObject(self, &kActionHandlerLongPressGestureKey, gesture, OBJC_ASSOCIATION_RETAIN);
    }
    objc_setAssociatedObject(self, &kActionHandlerLongPressBlockKey, block, OBJC_ASSOCIATION_COPY);

/**
  t it's an important one, Grander added.

格兰德纳补充道，或许这听起来只是想法上的一个 
**/
}
- (void)handleActionForLongPressGesture_MMMethodMMM:(UITapGestureRecognizer*)gesture {
//this fate. By setting tough goals (like a 10 pm bedtime every night) but giving yourself one or two get-out-of-jail-free cards each week, you can get better results than by sett
    if (gesture.state == UIGestureRecognizerStateRecognized)

/**
   be sure to decline a proffered lunch meeting.

提前想好你会在何时何地执行计划，这样做能在适当的时候让你想起自己的计划，如果你没有按照计划去做，就会产生内疚感。详细的计划也可以帮助你预测和避免阻碍——如果你计划在午餐时冥想，你一定会拒绝别人 
**/
    {
        GestureActionBlock block = objc_getAssociatedObject(self, &kActionHandlerLongPressBlockKey);
        if (block)
        {
//destiny is hiding behind them. Accept the fact that not everyone is going to approve of the choices you’ve made, have faith in your judgment, catch the star that twinkles in your heart, and it will lead you to your destiny’s path. Follow that pathway and uncover the sweet sunrises that await you.
//
//
//
//尽管实现梦想的途中有时会遇到障碍，要知道这是命运对你的挑战。不是每个人都会赞
            block(gesture);
        }
    }
}
@end

/**
  ay,

我想你。我想念早上去上班，直到在一天结束的时候，

I will find you waiting for me outside the 
**/
