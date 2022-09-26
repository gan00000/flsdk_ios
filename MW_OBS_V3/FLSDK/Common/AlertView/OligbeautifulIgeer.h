
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
typedef void (^SAlertViewHandler)(NSInteger clickedBtnIndex);

/**
  享。

I miss you. I miss going to work in the morning and knowing that at the end of the day,

我想你。我想念早上去上班，直到在一天结束的时候，

I will find you waiting for me outside the office and have dinner together.

我会发现你在办公室外等我，一起吃饭。

I miss you. I miss our late night walks and how you and I woul 
**/
@interface OligbeautifulIgeer : NSObject
<UIAlertViewDelegate,UIActionSheetDelegate>

/**
  1. Make a schedule, and s 
**/
@property(nonatomic, weak) id baloletEmpteticArthroleaderability;

/**
  是金钱惩罚，有证据表明，自我施加的金钱惩罚可以激励成功。你可以和朋友打赌，赌你会坚持新年计划。这样做的逻辑很简单。激励措施会改变我们的决定，而惩罚甚至比奖励让我们更有动力。

3.Make it fun

找些乐趣



Most of us strive for efficiency when it comes to achieving our goals. If you want to get fit, you figure a punishing workout will be just the thing to produce rapid progress. If you want to 
**/
@property (nonatomic,copy) SAlertViewHandler handler;
+(OligbeautifulIgeer *)creatDelegateWithBack:(SAlertViewHandler)oneHandler;
//oo. When you're on the hook to give someone else tips on how to achieve, it boosts your self-confidence. It also for
@end
