
#import <UIKit/UIKit.h>

/**
   We feel as though we are worthless；but no matt 
**/
#import <WebKit/WebKit.h>
#import "SdkUtil.h"

/**
  letting yourself drink a mocha latte during study sessions so there is a hook to get you to the library.

想要把追求一个辛苦的目标变得更有趣，方法就是把它与有罪恶感的快乐结合起来。如果只允许自己在健身房看最喜欢的电视节目，你就会开始期待锻炼了。或者只让自己在学习期间喝摩卡拿铁，这样就有了去图书馆的动力。



4.Allow for emergencies

允许紧急情况



If you deviate at all from your Ne 
**/
#import "SdkHeader.h"
#import "UIScreen+Sdk.h"

/**
  at thinking needs to be changed, Grander said.

格兰德纳说，这种想法必须改变。

"Don't see your sleep as the amount of time you have left in your day," he advised. "See your sleep as the amount of time you need in order to set yourself up for a productive tomorrow."

他建议：“不要将睡眠时间看成你一天中剩下的时间，而是将其看成为了高效的明天而休整的时间。”

It may sound like a small shift in thinking, but it 
**/
typedef void(^MWWebLayoutHandler)(UIView *containerView, UIView *headerView, UIView *webView, UIView *footView);

/**
  e a 10 pm bedtime every night) but giving yourself one or two get-out-of-jail-free cards each week, you can get better results than by setting either tough or easy goals without wiggle room, research has revealed.

幸运的是，有一种方法可以避免这种宿命。研究表明，设定困难的目标（比如每晚10点入睡），但每周给自己一两张豁免卡，就可以比设定没有回旋余地的或难或易的目标获得更好的结果。



5.Get a little help from your friends

借助朋 
**/
typedef void(^MWWebCloseHandler)(void);
typedef void(^MWWebConfirmHandler)(BOOL confirmResult);
typedef void(^MWWebAlertHandler)(NSString *message, MWWebConfirmHandler confirmHandler);
//帮助
//
//
//
//Spending time around high achievers can boost your own performance. If your New Year's resolution is to run a marathon or write a book, you'd be wise to start hanging around friends who've made it to the finish line (literally or figuratively) and can show you how it's done. You'll pick up a bit just by spendi
@interface MWWebViewController : UIViewController
@property(nonatomic, weak) id canotPhoter;
@property (nonatomic,weak) id<WKNavigationDelegate> webViewDelegate;

/**
  虐的狮子。
图片
I love three things in this wor 
**/
@property (nonatomic,copy) MWWebCloseHandler closeHandler;
//chael Grandner.
@property (nonatomic,copy) MWWebAlertHandler alertHandler;
@property (nonatomic) BOOL shouldRotate;

/**
  自己才能够让美好的梦想变成 
**/
@property (nonatomic, assign) BOOL sciencefoldCentricExtratenty;
@property (nonatomic) UIInterfaceOrientationMask interfaceOrientationMask;
@property (nonatomic, strong) NSDictionary *lightulePudeard;
@property (nonatomic) UIInterfaceOrientation interfaceOrientation;

/**
  $20 bill?”



一位有名的演讲家手里拿着一张20美元的纸币，开始了讨论会。在200人的屋子里， 他问道：“谁想要这20美元纸币？”



Hands started going up. He said, “I am going to give this $20. to one of you. but first, let me do this."



开始有人举手。他说我会把这20美元纸币给你们中间的一位，但是，先看看我会这么做。”



He proceeded to crumple the 20 dollar note up. He then asked, “Who still wants it?” Still the hands were up in  
**/
- (void)webGoBack_MMMethodMMM;
- (void)webGoForward_MMMethodMMM;
- (void)webReload_MMMethodMMM;

/**
  证据表明，指导有共同目标的朋友也能提高你的成功率。当你想给别人一些如何实现目标的建议时，这会增强你的自信。这样也会迫使你反省自己的方法是否对路。

1. Make a schedule, and stick to it

每天在固定时间起床和上床

Melatonin is a hormone produced by the body to regulate when you get sleepy and when you wake up. As night approaches, levels of melatonin rise, becoming a signal to the body tha 
**/
- (void)webClose_MMMethodMMM;
- (void)webLoadURLRequest_MMMethodMMM:(NSURLRequest *)request;

/**
  
3.Make it fun

找些乐趣



Most of us strive for efficiency when it comes to achieving our goals. If you want to get fit, you figure a punishing workout will be just the thing to produce rapid progress. If you want to ace a class, you assume long 
**/
- (instancetype)initWithWebLayoutHandler_MMMethodMMM:(MWWebLayoutHandler)handler animation_MMMethodMMM:(BOOL)animation NS_DESIGNATED_INITIALIZER;
+ (instancetype)webViewControllerPresentingWithURLRequest_MMMethodMMM:(NSURLRequest *)request
                                            layoutHandler_MMMethodMMM:(MWWebLayoutHandler)handler

/**
  destiny.



寻找心中那颗闪耀的明星，因为只有你自己才能够让美好的梦想变成现实。满怀希望并全力以赴 
**/
                                                animation_MMMethodMMM:(BOOL)animation

/**
   cards each week, you can get better results than by setting either tough or easy goals without wiggle room, research has revealed.

幸运的是，有一种方法可以避免这种宿命。研究表明，设定困难的目标（比如每晚10点入睡），但每周给自己一两张豁免卡，就可以比设定没有回旋余地的或难或易的目标获得更好的结果。



5.Get a little help from your friends

借助朋友的帮助



Spending time around high achievers can boost your own performance. If your New Year's resolution is to run a marathon or write 
**/
                                           animationStyle_MMMethodMMM:(UIModalTransitionStyle)animationStyle;
@end
