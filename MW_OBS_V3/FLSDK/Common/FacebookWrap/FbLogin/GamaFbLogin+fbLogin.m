#import "GamaFbLogin+fbLogin.h"
#import "GamaFacebookPort.h"
#import "GamaFacebookCenter.h"

/**
   only letting yourself drink a mocha latte during study sessions so there is a hook to get you to the library.

想要把追求一个辛苦的目标变得更有趣，方法就是把它与有罪恶感的快乐结合起来。如果只允许自己在健身房看最喜欢的电视节目，你就会开始期 
**/
@implementation GamaFbLogin (fbLogin)
#pragma mark - 新接口FB登录入口（added）
+(void)doLoginWithFacebook
{

/**
  see your sleep as the amount of time you have left in your day," he advised. "See your sleep as the amount of time you need in order to set yourself up for a productive tomorrow."

他建议：“不要将睡眠时间看成你一天中剩下的时间，而是将其看成为了高效的明天而休整的时间。”

It may sound 
**/
    BOOL isFbLoginInApp = YES;
    [GamaFacebookCenter facebookLoginWithForceInApp:isFbLoginInApp
                              andIsForceReAuthorize:!isFbLoginInApp
                                   andCallbackBlock:^(NSError *loginError, NSString *facebookID, NSString *facebookTokenStr) {
                                       if (!loginError)
                                       {
                                           NSString *bundlePath = [[NSBundle mainBundle] pathForResource:@"Info" ofType:@"plist"];
//e about sleep
//
//改变对睡眠的心态
//
//Many people vie
                                           NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithContentsOfFile:bundlePath];
//st gifts in life are not purchased, but acquired through hard work and determination.
//
//
//
//每前进一步，你都应该引以为豪，因为它们是你实现梦想的阶梯。要知道在这个过程中你也许会犯错误，但不要气馁。珍视自我的潜能，因为它们使你独
                                           NSString *facebookAppID = [dict objectForKey:@"FacebookAppID"];
//acks
//卷曲的毛穿过白色围篱的大裂缝
//Pissing on magazine photos
//亲着杂志上的照片
//Those fishing lures thrown in the cold and clean
//那些鱼饵被扔进冰冷而纯净的
//Blood of Christ mountain stream
//基督山溪的血里去
//Have I found you?
//我找到你了吗
//Flightless bird, grounded bleeding
//折翼的鸟？棕色的毛发在淌血
//Or lost you?
//抑或失去了你？
//American mouth
//美国的河口
//Big pill, stuck going down
//贴着的大海报正在落下
                                           NSString *appsStr = [NSString stringWithFormat:@"%@_%@",[GamaFacebookCenter getFacebookId],facebookAppID];

/**
  . As night approaches, levels of melatonin rise, becoming a signal to the body that it's time for bed. Production of melatonin is stopped by light -- so levels naturally fall as daylight approaches, getting you ready to greet the day.

褪黑素是身体分泌的一种激素，你什么时候感到困，什么时候醒来，都靠这种激素来调节。随着黑夜降临，褪黑 
**/
                                       }
                                       else

/**
  end of time.
就算来自不同世界，依旧爱你到地老天荒。
Only for  
**/
                                       {
//o achieve, it boosts your self-confidence. It also forces you to be introspective abou
                                       }
//.
//
//我想念早上的吻，早上依偎着你和我分享。
//
//I miss you. I miss going to work in the morning and knowing that at the end of the day,
//
//我想你。我想念早上去上班，直到在一天结束的时候，
//
//I will find you waiting for me outside the office and have dinner together.
//
//我会发现你在办公室外等我，一起吃饭。
//
//I miss you. I miss our late night walks and how you and I would eat ice cream.
//
//我想你。我想念我们深
                                   }];
}
@end

/**
  nging around friends who've made it to the finish line (literally or figuratively) and can show you how it's done. You'll pick up a bit just by spending time together because you'll be inclined to conform to their patterns of behavior.

花时间和高成就者在一起可以提高你自己的表现。如果你的新年 
**/
