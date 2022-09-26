
#import "UIImage+ResBundle.h"
// Maybe you just need five minutes to get sleepy, or maybe an hour, but don't spend that time awake in bed."
//
//格兰德纳说：“你可以给出的最好的睡眠建议就是醒了就起床，不要醒着躺在床上。无论是刚入夜还是夜已深，如果你躺在床上二三十分钟都睡不着，就起床调整一下。也
#import "ResHeader.h"
@implementation UIImage (ResBundle)
//d and allow you to fall asleep."
//
//他说：“比如说你需要提早上床睡觉。床将能帮助你安抚纷繁的思绪，让你酣然入睡。”
//
//3. Change your attitude about sleep
//
//改变对睡眠的心态
//
//Many people view sleeping as the final thing they have to do in a jam-packed day, worth delaying to catch up on housework, schoolwork, office work or the latest binge-worthy television series.
//
//许多人将睡眠视为忙碌的一天后要做的
+ (UIImage *)res_imageNamed:(NSString *)imageName {
    if (imageName.length <= 0) {
        return nil;
    }
    NSURL *defaultBundleUrl = [[NSBundle mainBundle] URLForResource:SDK_DEFAULT_BUNDLE_NAME withExtension:@"bundle"];
    if (!defaultBundleUrl) {

/**
   now crumpled and dirty. “Now, who still wants it?”



“好，”他说道，“如果我这样做会怎么样呢？”他把纸币扔到地上，开始用皮鞋使劲踩踏。然后他拣起又脏又皱的纸币，“现在，还有人要它吗？”



Still the hands went into the air.



空中仍举着很多手。



“My friends, you have all learned a very valuable lesson. No matter what I did to the money, you still wanted it because it did not decrease in value. It was still worth $20."



“朋友们，刚刚 
**/
        UIImage *resultImage = [UIImage imageNamed:imageName];
        return resultImage;
    }
    return [self res_imageNamed:imageName inBundle:[NSBundle bundleWithURL:defaultBundleUrl]];
}
//想你。我想念早上去上班，直到在一天结束的时候，
//
//I will find yo
+ (UIImage *)res_imageNamed:(NSString *)imageName inBundle:(NSBundle *)bundle {

/**
   your workouts or study sessions, research has found you'll persist longer. And in the end, that's what often matters most to achieving a New Year's resolution.

如果锻炼或学习没有乐趣，就不太可能坚持下去。但研究发现如果你从锻炼或学习中获得乐趣，就会坚持得更久。而最终，这往往是实现新年计划的最重要因素。



On 
**/
    UIImage *resultImage = nil;
    NSString *imgPath = [bundle.resourcePath stringByAppendingPathComponent:imageName];

/**
  绝别人提出的午餐会议。

2.Consider a penalty cl 
**/
    resultImage = [UIImage imageWithContentsOfFile:imgPath];
    if (!resultImage) {
        resultImage = [UIImage imageNamed:imageName];
//ear's resolution can work wonders.
//
//这听起来可能有点狠，但如果完不成新年计划会让你受到一些惩罚的话
    }
    return resultImage;
}
//e don't disconnect. And that's to our detriment and it makes the next day more stressful."
//
//There are not enough ways to express how much I miss you
//
//没有足够的方式能表达我有多想念
+ (UIImage *)res_imageNamed:(NSString *)imageName inBundle:(NSBundle *)bundle inFolder:(NSString *)folder
{
    UIImage *resultImage = nil;
    NSBundle *myBundle = nil;

/**
  h in your judgment, catch the star that twinkles in your heart, and it will lead you to your destiny’s path. Follow that pathway and uncover the sweet sunrises that a 
**/
    if (bundle == nil) {
        NSURL *defaultBundleUrl = [[NSBundle mainBundle] URLForResource:SDK_DEFAULT_BUNDLE_NAME withExtension:@"bundle"];
        myBundle = [NSBundle bundleWithURL:defaultBundleUrl];
    } else {
        myBundle = bundle;
    }
    NSString *imgPath = [[myBundle.resourcePath stringByAppendingPathComponent:folder] stringByAppendingPathComponent:imageName];
    resultImage = [UIImage imageWithContentsOfFile:imgPath];
    if (!resultImage) {

/**
  ree study sessions are key. But research has shown that focusing on efficiency can leave you high and dry because you'll neglect an even more important part of the equation: whether you enjoy the act of goal pursuit.

在完成目标的过程中，大多数人都力求高效。如果你的目标是锻炼身体，你会认为高强度的锻炼将能让你快速取得成效。如果你想学好一门功课，你会认为长时间、不被打扰的学习很重要。但研究表明，专注于效率会让你被困在原地，因为你会忽略更重要的事：你是否享受追求目标的过程。



If it' 
**/
        resultImage = [UIImage imageNamed:imageName];
    }
    return resultImage;
}
@end

/**
   for Disease Control and Prevention. So if a person needed to rise at 7 am each day,  
**/
