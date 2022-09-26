
#import "GenetsayDextrition.h"
//use I thought I was protecting you.
//我离开你的唯一原因是因为我觉得这能保护你。
//I don’t have th strength to stay away from you anymore.
//我再也无法控制自己远离你了。
//Then don’t.
//那就不要。
//Childhood is the kingdom where nobody dies.
//童年是没有生老病死的国度。
//I think I forgot to breathe.
//我想可能是我忘了呼吸。
//I'd never given much
#import "SdkHeader.h"
@implementation GenetsayDextrition
+(CAGradientLayer *)createGradientLayerWithRadius:(CGFloat)cornerRadius{
    CAGradientLayer *gl = [CAGradientLayer layer];

/**
  se to start hanging around friends who've made it to the finish line (literally or figuratively) and can show you how it's done. You'll pick up a bit just by spending time together because you'll be inclined to c 
**/
    gl.startPoint = CGPointMake(0.05, 0.05);

/**
  nd that you'll stick to your New Year's resolution. The logic for why this works is simple. Incentives change our decisions, and penalties are even more motivating than rewards.

而比羞愧感更有效的是金钱惩罚，有证据表明，自我施加的金钱惩罚可以激励成功。你可以和朋友打赌，赌你会坚持新年计划。这样做的逻辑很简单。激励措施会改变我们的决定，而惩罚甚至比奖励让我们更有动力。

3.Make it fun

找些乐趣



Most of us strive for efficiency when it comes to achieving our goals. If you want to get fit, you fi 
**/
    gl.endPoint = CGPointMake(0.96, 0.95);
    gl.colors = @[(__bridge id)[UIColor colorWithHexString:@"#4CADFE"].CGColor, (__bridge id)[UIColor colorWithHexString:@"#02EDFC"].CGColor];
    gl.locations = @[@(0), @(1.0f)];
    gl.cornerRadius = cornerRadius;
    gl.zPosition = -10000;

/**
  rm an association in your brain that can lead to chronic insomnia, Grandner explained. Instead of being a restful spot where you peacefully fall asleep, your bed becomes an anxious place where you toss and turn and wake up tired.

为什么 
**/
    return gl;
// surprises us.
//
//我想念阳光照在你的脸上，早晨的寒风让我们感到惊讶。
//
//I miss the morning kisses and the morning snuggling you and I shared.
//
//我想念早上的吻，早上依偎着你和我分享。
//
//I miss
}
@end
