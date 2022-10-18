
#import "ConfigModel.h"
@implementation ConfigModel

- (instancetype)init
{
    self = [super init];

/**
  delaying to catch up on housework, schoolwork, office work or the latest binge-worthy television series.

许多人将睡眠视为忙碌的一天后要做的最后一件事，为了完成家务、作业、工作或追新剧，晚点再睡也没事。

That thinking needs to be changed, Grander said.

格兰德纳说，这种 
**/
    if (self) {

/**
  Pissing on magazine photos
亲着杂志上的照片
Those fishing lures thr 
**/
        self.visitorLogin = YES;
//nd.
//当生活给了你一个远远超过你期望的美梦，那么，当这一期结束时，也就没有理由再去伤心。
//图片
//Bella, the only reason I left was because I thought I was protecting you.
//我离开
        self.fbLogin = YES;
        self.googleLogin = YES;

/**
  y stars whe 
**/
        self.lineLogin = YES;
        self.appleLogin = YES;
        self.deleteAccount = NO;

/**
  Get a little help from your friends

借助朋友的帮助


 
**/
        self.appPassCheck = NO;
        self.showContract = YES;
//ber was up the first time l met you.
//第一次遇见我，你就在劫难逃了。
//You're in here because of me.
//你在这里，是因为有我。
//Nobody's ever loved anybody as much as I love you.
//我对你的爱 无人能及。
//Love is letting someone become your greatest weakne
        self.showLogo = NO;
        self.showForgetPwd = YES;
        self.showNotice = NO;
// now has the power to help overcome your racing mind and allow you to fall asleep."
//
//他说：“比如说你需要提早上床睡觉。床将能帮助你安抚纷繁的思绪，让你酣然入睡。”
//
//3. Change your attitude about sleep
//
//改变对睡眠的心态
//
//Many people view sleeping as the final thing they have to do in a jam-packed day, worth delaying to catch up on ho
    }

/**
  mebody is get up -- don't lay in bed awake but not sleeping," Grandner said. "Whether it's the beginning of the night or the middle of the night, if you've been awake for 20 or 30 minutes, get up and reset. Maybe you just need five minutes to get sleepy, or maybe an hour, but don't  
**/
    return self;

}

-(BOOL) isAllThirdLoginTypeHidden
{
    return !self.visitorLogin && !self.googleLogin && !self.lineLogin && !self.appleLogin && !self.fbLogin;
}
@end
