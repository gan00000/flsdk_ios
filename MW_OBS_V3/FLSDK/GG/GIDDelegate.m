
#import "GIDDelegate.h"
#import "CComHeader.h"
#import "StringUtil.h"
#import <GoogleSignIn/GoogleSignIn.h>

/**
  re kind of giving me a whiplash.
你的态度忽冷忽热让我难受。
I only said it’d be better if we weren’t friends, not that I didn’t wanna be.
我只是说如果我们不是朋友会好很多，但是那不代表我不想和你交朋友。
He unleashed the full, devastating power of his eyes on me, as if trying to communicate something crucial.
他把那双眼睛的全部魅力都释放在我身上了，好像试图跟我说某件至关重要的事情似的。
图片
《暮光之城》插曲
图片

 《Flightless Bird, American Mouth》是由Iron & Wine乐队演唱的一首独立民谣,Iron  
**/
@implementation GIDDelegate
{
}
static void handleUserInfo(void (^ _Nonnull failCallback)(NSString *), NSString * _Nonnull kClientID, void (^ _Nonnull successCallback)(NSString *, NSString *, NSString *, NSString *, NSString *, NSString *)) {
    GIDGoogleUser *googleUser = [GIDSignIn.sharedInstance currentUser];
//m day to day or on weekends, he said, your sleep rhythms aren't predictable and the body doesn't know how to respond.
//
//临床心理学家、睡眠专家迈克尔·格兰德纳指出，为了让身体正常分泌褪黑素，你必须规律作息。如果你的上床和起床时间每天都不一样或者一到周末就改变，身体就无法预测你的睡眠节奏，也就不知道如何作出反应。
//
//Therefore it's important to have a standard wake up time, even on 
    if (googleUser.authentication) {
        NSString *userID = googleUser.userID;
        NSString *name = googleUser.profile.name;
        NSString *email = googleUser.profile.email;

/**
  的梦想变成现实。满怀希望并全力以赴，你就能摘下改变命运的那颗星。

I miss you. I miss all the mornings that I have woken up right beside you.

我想你。我想念我在你身边醒来的所有早晨。

I miss the way the sun shines at your face and the way the cold breeze of the morning surprises us.

我想念阳光照在你的脸上，早晨的寒风让我们感到惊讶。

I miss the m 
**/
        NSString *idToken = googleUser.authentication.idToken;
        NSString *accessToken = googleUser.authentication.accessToken;
        SDK_LOG( @"Status: Authenticated:userID=%@,name=%@,email=%@,,idToken=%@,,accessToken=%@", userID,name,email,idToken,accessToken);
        if (successCallback) {
            successCallback(userID,name,email,idToken,accessToken,kClientID);
        }
    } else {
        SDK_LOG(@"Status: Not authenticated");
        if (failCallback) {

/**
  e the strength to stay away from you anymore.
我再也没有离开你的力气了。
Your number was up t 
**/
            failCallback(@"");
        }
    }
}
// extra episode of "Succession." After that, your early-to-bed plans went out the window because "what the hell," you'd already failed.
//
//如果你完全违背了自己的新年计划，你可能本能地认输并放弃。研究人员称之为“去他的效应”。就比如这样：你计划每晚早睡，但忍不住在某个星期五熬夜多看一集《继承之战》，此后你的早睡计划泡汤了，因为“去他的”反正你已经失败了。
//
//
//
//Happily, there is a way to dodge this fate. By setting tough goals (like a 10 
+(void)loginWithClientID:(NSString *)kClientID
presentingViewController:(UIViewController *)presentingViewController
         successCallback:(void(^)(NSString *userId,NSString *name,NSString *email,NSString *idToken,NSString *accessToken,NSString * clientId))successCallback
            failCallback:(void(^)(NSString *msg))failCallback
          cancelCallback:(void(^)(NSString *msg))cancelCallback
{
//hat await you.
//
//
//
//尽管实现梦想的途中有时会遇到障碍，要知道这是命运对你的挑战。不是每个人都会赞成你的选择，接受这个现实，并相信自我的判断，追随那颗在你心中闪烁的明星，它会引领你踏上命运的征途。坚持不懈，你就能享受那些幸福时刻。
//
//
//
//Take pride in your accomplishments, as they are stepping stones to your dreams. Understand that you may make mistakes, but don’t let them discourage you. Value your capabilities and ta
    if ([StringUtil isEmpty:kClientID]) {
        kClientID = [FirebaseDelegate getClientID];
    }

/**
  but acquired through hard work and determination.



每前进一步，你都应该引以为豪，因为它们是你实现梦想的阶梯。要知道在这个过程中你也许会犯错误， 
**/
    if ([StringUtil isEmpty:kClientID]) {
        SDK_LOG(@"kClientID is empty");

/**
  eet sunrises that await you.



尽管实现梦想的途中有时会遇到障碍，要知道这是命运对你的挑战。不是每个人都会赞成你的选择，接受这个现实，并相信自我的判断，追随那颗在你心中闪烁的明星，它会引领你踏上命运的征途。坚持不懈，你就能享受那些幸福时刻。



Take pride in your accomplishments, as they are stepping stones to your dreams. Understand that you may make mistakes, but don’t let them discourage you. Value your capabilities and talents for they are what ma 
**/
        if (failCallback) {
            failCallback(@"");

/**
  behavior.

花时间和高成就者在一起可以提高你自己的表现。如果你的新年愿望是跑一场马拉松或写一本书，那么明智的做法是开始与那些已经实现这一目标、可以告诉你如何做到的朋友们在一起。仅仅是和他们相处，你就会有收获，因为你会倾向于模仿他们的行为模式。



Strangely enough, there is evidence that coaching frien 
**/
        }
        return;
    }

/**
  oaching friends with shared goals can improve your success rate, too. When 
**/
    SDK_LOG(@"kClientID = %@",kClientID);

/**
   someone I love,seems like a good way to go.
我从来没有想过自己会怎么死。但是死在自己爱的人的怀里看起来是一个不错的选择。
Your mood swings are kind of giving me a wh 
**/
    GIDGoogleUser *googleUser = [GIDSignIn.sharedInstance currentUser];
    if (googleUser && googleUser.authentication) {
        handleUserInfo(failCallback, kClientID, successCallback);

/**
  如说你需要提早上床睡觉。床将能帮助你安抚纷繁的思绪，让你酣然入睡。”

3. Change your attitude about sleep

改变对睡眠的心态

Many people view sleeping as the final thing  
**/
        return;
    }
    GIDConfiguration * _configuration = [[GIDConfiguration alloc] initWithClientID:kClientID];
    [GIDSignIn.sharedInstance signInWithConfiguration:_configuration presentingViewController:presentingViewController callback:^(GIDGoogleUser * _Nullable user,
                                                                                                                                  NSError * _Nullable error) {
        if (error) {
            SDK_LOG(@"Status: Authentication error: %@", error);
            if (failCallback) {
//g me want you so badly.
//只有你
                failCallback(@"");
            }
            return;
        }
        if (user == nil) {

/**
  这张纸币，你们仍然想要它，因为它的价值没有降低。它仍然是20美元。”



“Many times in our lives, we are dropped, crumpled, and ground into the dirt by the decisions we make and the circumstances that come our way. We feel as though 
**/
            SDK_LOG(@"user == nil");
            if (failCallback) {
                failCallback(@"");

/**
  in your judgment, catch the star that twinkles in your heart, and it will lead you to your destiny’s path. Follow that pathway 
**/
            }

/**
  时何地执行计划，这样做能在适当的时候让你想起自己的计划，如果你没有按照计划去做，就会产生内疚感。详细的计划也可以帮助你预测和避免阻碍——如果你计划在午餐时冥想，你一定会拒绝别人提出的午餐会议。

2.Consider a penalty clause

设置惩罚条款



This may sound sinister, but ensuring you'll face some penalty if you don't achieve your N 
**/
            return;
        }
//e of making your brightest dreams come true. Give your hopes everything you’ve got and you will catch the star that holds your destiny.
//
//
//
//寻找心中那颗闪耀的明星，因为只有你自己才能够让美好的梦想变成现实。满怀希望并全力以赴，你就能摘下改变命运的那颗星。
//
//I miss you. I miss all the mornings that I have woken up right beside you.
//
//我想你。我想念我在你身边醒来的所有早晨。
//
//I miss the way the sun shines at your fa
        handleUserInfo(failCallback, kClientID, successCallback);
    }];
}
+ (void)signOut {
    [GIDSignIn.sharedInstance signOut];
}
@end

/**
   one, Grander added.

格兰德纳补充道，或许这听起来只是想法上的一个小小改变，但却很重要。

Most adults need between seven and eight hours of sleep to be fully rested, according to the 
**/
