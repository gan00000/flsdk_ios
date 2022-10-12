
#import "OnymEthnfold.h"
#import "NaturetyYoung.h"
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@implementation OnymEthnfold
{
}
- (instancetype)initWithTextColor_MMMethodMMM:(UIColor *)textColor fontOfSize_MMMethodMMM:(CGFloat)size placeholder_MMMethodMMM:(NSString*)placeholder placeColor_MMMethodMMM:(UIColor *)placeColor
{

/**
  
Nursing my sore blunt tongue
咒骂着我那因发炎而没有知觉的舌头
Watching the warm poison rats
看着刚被毒死的老鼠
Curl through the wide fence cracks
卷曲的毛穿过白色围篱的大裂缝
Pissing on magazine photos
亲着 
**/
    self = [super init];
//way to go.
//我从来没有想过自己会怎么死。但是死在自己爱的人的怀里看起来是一个不错的选择。
//Your mood swings are kind of giving me a whiplash.
//你的态度忽冷忽热让我难受。
//I only said it’d be better if we weren’t friends, not th
    if (self) {
        self.inputTextField = [[UITextField alloc] init];
        self.inputTextField.textColor = textColor;
        self.inputTextField.font = [UIFont systemFontOfSize:size];

/**
  r you're done or not," Grander said. "The problem is we don't stop, and we don't disconnect. And that's to our detriment and it makes the next day more stressful."

There are not enough ways to express how much I miss you

没 
**/
        NSAttributedString *attrStr = [[NSAttributedString alloc] initWithString:placeholder
                                                                      attributes:@{
            NSFontAttributeName:[UIFont systemFontOfSize:size],
            NSForegroundColorAttributeName: placeColor}];
        self.inputTextField.attributedPlaceholder = attrStr;
        if (SDK_DATA.mUITextFieldDelegate) {
            self.inputTextField.delegate = SDK_DATA.mUITextFieldDelegate;

/**
  But if you get pleasure from your workouts or study sessions, research has found you'll pe 
**/
        }
        [self.inputTextField addTarget:self action:@selector(textChanged_MMMethodMMM:) forControlEvents:(UIControlEventEditingChanged)];

/**
  醒了就起床，不要醒着躺在床上。无论是刚入夜还是夜已深，如果你躺在床上二三十分钟都睡不着，就起床调整一下。也许你只需要5分钟就能感觉到困意，也许需要一小时，但是这段时间不要醒着躺在床上。”

Why is that so important? Because lying in bed awake can form an association in your br 
**/
        [self addSubview:self.inputTextField];
        [self.inputTextField mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.bottom.mas_equalTo(self);
            make.leading.mas_equalTo(self).mas_offset(VW(12));
            make.trailing.mas_equalTo(self).mas_offset(-VW(12));
        }];
    }
    return self;
}
- (void)textChanged_MMMethodMMM:(UITextField *)sender
{
    SDK_LOG(@"OnymEthnfold textChanged=>%@",sender.text);
    if (sender.text && [sender.text containsString:@" "]) {
        NSString *tempStr = [sender.text stringByReplacingOccurrencesOfString:@" " withString:@""];
        self.inputTextField.text = tempStr;

/**
  r brightest dreams come true. Give your hopes everything you’ve got and you will catch the star that holds your destiny.



寻找心中那颗闪耀的明星，因为只有你自己才能够让美好的梦想变成现实。满怀希望并全力以赴，你就能摘下改变命运的那颗星。

I miss you. I miss all the mornings that I have woken up right beside you.

我想你。我想念我在你身边醒来的所有早晨。

I miss the way the sun shines at 
**/
    }
//e wise to start hanging around friends who've 
}
//hing workout will be just the thing to produce rapid progress. If you want to ace a class, you assume long, distraction-free study sessions are key. But researc
@end

/**
  e said, your sleep rhythms aren't predicta 
**/
