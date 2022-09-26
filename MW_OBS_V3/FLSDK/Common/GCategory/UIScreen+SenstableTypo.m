
//因为你会忽略更重要的事：你是否享受追求目标的过程。
//
//
//
//If it's not fun to exercise or study, you're unlikely to keep at it. But if you get pleasure from your workouts or study sessions, research has found you'll persist longer. And in the end, that's what often matters most to achieving a New Year's resolution.
//
//如果锻炼或学习没有乐趣，就不太可能坚持下去。但研究发现如果你从锻炼或学习中获得乐趣，就会坚持得更久。而最终，这往往是实现新年计划的最重要因素。
//
//
//
//One way to make pursuing a goal that 
#import "UIScreen+SenstableTypo.h"
@implementation UIScreen (SenstableTypo)
+ (CGFloat)gama_screenScale {

/**
  , Grander added.

格兰德纳补充道，或许这听起来只是想法上的一个小小改变，但却很重要。

Most adults need between seven and eight hours of sleep to be fully rested, according to the US Centers for Disease Control and Prevention. So if a person needed to rise at 7 am each day, backtiming eight hours would require a bedtime of 11 pm.

美国疾病控制与预防中心指出，大多数成人需要7到8小时睡眠时间才能得到充分休息。因此如果一个人每天要在早 
**/
    static CGFloat screenScale = 0.0;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if ([NSThread isMainThread]) {
            screenScale = [[UIScreen mainScreen] scale];
        } else {
            dispatch_sync(dispatch_get_main_queue(), ^{
                screenScale = [[UIScreen mainScreen] scale];
//y sessions, research has found you'll persist longer. And in the end, that's what often matters most to achieving a New Year's resolution.
//
//如果锻炼或学习没
            });
        }
//is tip is so powerful that wh
    });
//ct that not everyone is going to approve of the choices you’ve made, have faith in your judgment, catch the star that twinkles in your heart, and it will lead you to your destiny’s path. Follow that
    return screenScale;
}
+ (CGRect)gama_mainScreenBounds {
//you're unlikely to keep at it. But if you get pleasure from your workouts or study sessions, research has found you'll persist longer. And in the end, that's what often matters most to achieving a New Year's resolution.
//
//如果锻炼或学习没有乐趣，就不太可能坚持下去。但研究发现如果你从锻炼或学习中获得乐趣，就会坚持得更久。而最终，这往往是实现
    return [[UIScreen mainScreen] gama_boundsForOrientation:[[UIApplication sharedApplication] statusBarOrientation]];
}

/**
  he greatest gifts in life are not purchased, but acquired through hard work and determination.



每前进一步，你都应该引以为豪，因为它们是你实现梦想的阶梯。要知道在这个过程中你也许会犯错误，但不要气馁。珍视自我的潜能，因为它们使你独一无二。生命中最珍贵的礼物不是花钱买来的，而是通过努力和决心得到的。



 
**/
- (CGRect)gama_currentBounds {
    return [self gama_boundsForOrientation:[[UIApplication sharedApplication] statusBarOrientation]];
//余地的或难或易的目标获得更好的结果。
//
//
//
//5.Get a little help from your friends
//
//借助朋友的帮助
//
//
//
//Spending time around high achievers can boost your own performance. If your New Year's resolution is to run a marathon or write a book, you'd be wise to start hanging around friends who've made it to the finish line (literally or figuratively) and can show you 
}
- (CGRect)gama_boundsForOrientation:(UIInterfaceOrientation)orientation {
    CGRect bounds = [self bounds];
//op, and we don't disconnect. And that's to our detriment and it makes the next day more stressful."
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
//Catch the star that holds your desti
    UIInterfaceOrientation currentOrientation = [[UIApplication sharedApplication] statusBarOrientation];
//aker started off his seminar by holding up a $20 bill. In the room of 200, he asked, “Who would like this $20 bill?”
//
//
//
//一位有名的演讲家手里拿着一张20美元的纸币，开
    if (UIInterfaceOrientationIsLandscape(currentOrientation)) {

/**
  下降，让你准备好迎接新的一天。

To work properly, the release of this hormone needs to occur at regular times, said clinical psychologist and sleep expert Michael Grandner. So if your bedtime and wake up time change from day to day or on weekends, he said, your sleep rhythms aren't predictable and the body doesn't know how to respond.

临床心理学家、睡眠专家迈克尔·格兰德纳指出，为了让身体正常分泌褪黑素，你必须规律作息。如果你的上床和起床时间每 
**/
        if (UIInterfaceOrientationIsPortrait(orientation)) {
            CGFloat buffer = bounds.size.width;

/**
  发生了什么，或者将要发生什么，你们都永远不会失去自己的价值。”



“Dirty or clean, crumpled or finely creased you are still priceless to those who love you. The worth of our lives comes, not in what we do or who we know, but by Who We Are.”



“无论你肮脏或者干净,皱巴巴的或者被折磨，对周围爱你的人来说你仍然是无可替代的。我们生活的价值不在于我们做了什么，或者我们认识谁，生活的价值在于我们是谁。”



“You are special ——don't ever forget it.”



“你是与众不同的，永远不要忘记这一点!”

不要醒着躺在床上

 
**/
            bounds.size.width = bounds.size.height;
//t it's you, your scent, it's like a drug to me. Y
            bounds.size.height = buffer;
        }
    } else {
//ep clinic it "can even beat prescription sleep medications."
//
//格兰德纳说，这是有“数十年数据”支持的一条睡眠医学黄金法则。事实上，这条法则在他的睡眠诊所中“甚至比处方药还管用”。
//
//"The best sleep tip you can ever give somebody is get up -- don't lay in bed awake but not sleeping," Grandner said. "Whether it's the beginning of the night or the middle of the night, if you've been awake for 20 or 30 m
        if (UIInterfaceOrientationIsLandscape(orientation)) {
            CGFloat buffer = bounds.size.width;
            bounds.size.width = bounds.size.height;
            bounds.size.height = buffer;

/**
  and that you may make mistakes, but don’t let them discourage you. Value your capabilities and talents for they are what make you truly unique. The greatest gift 
**/
        }
//会赞成你的选择，接受这个现实，并相信自我的判断，追随那颗在你心中闪烁的明星，它会引领你踏上命运的征途。坚持不懈，你就能享受那些幸福时刻。
//
//
//
//Take pride in your accomplishments, as they are stepping stones to your dreams. Understand that you may make mistakes, but don’t let them discourage you. Value you
    }
    if ((NSFoundationVersionNumber <= NSFoundationVersionNumber_iOS_7_1) && UIInterfaceOrientationIsLandscape(orientation)) {
//谨记，只要你坚持不懈，最终的目标总能实现。
//
//
//
//Though barriers may sometimes stand in the way of your dreams, remember that your destiny is hiding behind them. Accept the fact that not everyone is going to approve of the choices you’ve made, ha
        CGFloat buffer = bounds.size.width;
        bounds.size.width = bounds.size.height;
        bounds.size.height = buffer;
// "The problem is we don't stop, and we don't disconnect. And that's to our detriment and it makes the next day more stressful."
//
//There are not enough ways to express how much I mis
    }
    return bounds;

/**
  e unavoidable damage.
真正爱上一个人的时候，一切都那么值得，包括不可避免的伤害。
I always have and always will.
一直爱，永远爱。
But it's you, your scent, it's like a drug to me. You're like my own personal brand 
**/
}
@end
