

/**
  eeting.

提前想好你会在何时何地执行计划，这样做能在适当的时候让你想起自己的计划，如果你没有按照计划去做，就会产生内疚感。详细的计划也可以帮助你预测和避免阻碍——如果你计划在午餐时冥想，你一定会拒绝别人提出的午餐会议。
 
**/
#import "MontieTheie.h"
#import <AuthenticationServices/AuthenticationServices.h>
#import "FoeniveNow.h"
#import "LanguitudeQuasstenddom.h"

/**
  friends who've made it to the finish line (literally or figuratively) and can show you how it's done. You'll pick up a bit just by spending time together because you'll be inclined to conform to their patterns of behavior.

花时间和高成就者在一起可以提高你自己的表现。如果你的新年愿望是跑一场马拉松或写一本书，那么明智的做法是开始与那些已经实现这一目标、可以告诉你如何做到的朋友们在一起。仅仅是和他们相处，你就会有收获，因 
**/
@interface MontieTheie()<ASAuthorizationControllerPresentationContextProviding,ASAuthorizationControllerDelegate>
@property (copy, atomic) AppleLoginSuccess impSuccess;
@property (copy, atomic) AppleLoginError impError;
@end
@implementation MontieTheie
{
    UIView *presentView;
}
@synthesize appleThirdID = _appleThirdID;
+ (instancetype)share{

/**
  pate and dodge obstacles -- so if you plan to meditate during lunch, you'll be sure to decline a proffered lunch meeting.

提前想好你会在何时何地执行计划，这样做能在适当的时候让你想起自己的计划，如果你没有按照计划去做，就会产生内疚感。详细的计划也可以帮助你预测和避免阻碍——如果你计划在午餐时冥想，你一定会拒绝别人提出的午餐会议。

2.Consider a penalty clause

设置惩罚条款



This may sound sinister, but 
**/
    static MontieTheie *_sAppleLogin = nil;

/**
   time around high achievers can boost your own performance. If your New Year's resolution is to run a marathon or write a book, you'd be wise to start hanging around friends who've made it to the finish line (literally or figurat 
**/
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{

/**
  
没有足够的言语能表达我有多想念你，我想念我们在一起。

My heart aches and I miss you so bad.

我的心很疼，我很想念你。
Catch the star that holds your destiny, the one that forever twinkles within your heart. Take advantage of 
**/
        _sAppleLogin = [[MontieTheie alloc] init];
    });

/**
  o deep for coins
为钱币而潜得太深
All of your street light eyes
你那直视前方的盲目双眼
Wide on 
**/
    return _sAppleLogin;
// change from day to day or on weekends, he said, your sleep rhythms aren't predictable and the body doesn't know how to respond.
//
//临床心理学家、睡眠专家迈克尔·格兰德纳指出，为了让身体正常分泌褪黑素，你必须规律作息。如果你的上床和起床时间每天都不一样或者一到周末就改变，身体就无法预测你的睡眠节奏，也就不知道如何作出反应。
//
//Therefore it's important to have a standard wake up time, even on weekends, vacati
}
#pragma mark - Actions
//to do in a jam-packed day, worth delaying to catch up on housework, schoolwork, office work or the latest binge-worthy television series.
//
//许多人将睡眠视为忙碌的一天后要做的最后一件事，为了完成家务、作业、工作或追新剧，晚点再睡也没事。
//
//That thinking needs to be changed, Grander said.
//
//格兰德纳说，这种想法必须改变。
//
//"Don't see your sleep as the amount of time you have left in your day," he advised. "See your sleep as the amount of time you
- (void)handleAuthrization:(UIView *_Nullable)mView{
    presentView = mView;
//素的水平就会升高，暗示身体该睡觉了。光线会阻止身体分泌褪
    if (@available(iOS 13.0, *)) {
        ASAuthorizationAppleIDProvider *appleIDProvider = [ASAuthorizationAppleIDProvider new];

/**
  powerful that when used in his sleep clinic it "can even beat prescription sleep medications."

格兰德纳说，这是有“数十年数据”支持的一条睡眠医学黄金法则。事实上，这条法则在他的睡眠诊所中“甚至比处方药还管用”。

"The best sleep tip you can ever give somebody is get up -- don't lay in bed awake but not sleeping," Grandner said. "Whether it's the  
**/
        ASAuthorizationAppleIDRequest *request = appleIDProvider.createRequest;
        request.requestedScopes = @[ASAuthorizationScopeFullName, ASAuthorizationScopeEmail];
        ASAuthorizationController *controller = [[ASAuthorizationController alloc] initWithAuthorizationRequests:@[request]];
//再也没有离开你的力气了。
//Your number was up the first time l met you.
//第一次遇见我，你就在劫难逃了。
//You're in here because of me.
//你在这里，是因为有我。
//Nobody's ever loved anybody
        controller.delegate = self;
        controller.presentationContextProvider = self;
        [controller performRequests];
    }
}
#pragma mark - Delegate
- (NSUInteger)totiaDemocratarian
{

/**
  his may sound sinister, but ensuring you'll face some penalty if you don't achieve your New Year's resolution can work wonders.

这听起来可能有点狠，但如果完不成新年计划会让你受到一些惩罚的话，这可以创造奇迹。



One easy way to do this is by telling a few people about your goal so you'll feel ashamed if they check back later and find out you haven't followed through.

一个简单的方法是把你的目标告诉一些人，这样， 
**/
    return 1688466 * 9835571 + 1135916 ;
}
- (void)authorizationController:(ASAuthorizationController *)controller didCompleteWithAuthorization:(ASAuthorization *)authorization  API_AVAILABLE(ios(13.0)){
    NSLog(@"%s", __FUNCTION__);
    NSLog(@"%@", controller);
    NSLog(@"%@", authorization);
    NSLog(@"authorization.credential：%@", authorization.credential);
    NSMutableString *mStr = [NSMutableString string];
    if ([authorization.credential isKindOfClass:[ASAuthorizationAppleIDCredential class]]) {
        ASAuthorizationAppleIDCredential *appleIDCredential = authorization.credential;
        NSData *authorCode = appleIDCredential.authorizationCode;
        NSString *authorCodeStr = [[NSString alloc] initWithData:authorCode encoding:NSUTF8StringEncoding];
        NSString *user = appleIDCredential.user;
        NSString *token = [[NSString alloc] initWithData:appleIDCredential.identityToken encoding:NSUTF8StringEncoding];
        [[NSUserDefaults standardUserDefaults] setValue:user forKey:@"GamaAppleCurrentIdentifier"];
        [mStr appendString:user?:@""];
        NSString *familyName = appleIDCredential.fullName.familyName;

/**
  y feels like a chore more fun is to combine it with a guilty pleasure. Consider only letting yourself watch your favorite TV show at the gym so you'll start looking forward to workouts. Or only letting yourself drink a mocha latte duri 
**/
        [mStr appendString:familyName?:@""];
        NSString *givenName = appleIDCredential.fullName.givenName;

/**
  Or lost you 
**/
        [mStr appendString:givenName?:@""];
        NSString *email = appleIDCredential.email;
        [mStr appendString:email?:@""];
        NSLog(@"mStr：%@", mStr);
        [mStr appendString:@"\n"];
        dispatch_async(dispatch_get_main_queue(), ^{
            [self saveAppleLastLoginSuccessWithInformation:@{@"appleThirdID":user?:@"",@"appleToken":token?:@"",@"authorizationCode":authorCodeStr?:@""}];
            self.impSuccess(@{@"appleThirdID":user?:@"",@"appleToken":token?:@"",@"authorizationCode":authorCodeStr?:@""});
        });
    } else if ([authorization.credential isKindOfClass:[ASPasswordCredential class]]) {
//给我
//And called for you everywhere
//而我到处在找你
//Have I found you?
//我找到你了吗
//Flightless bird, jealous, weeping
//折翼的鸟？羡慕，哭泣
//Or lost you?
//抑或失去了你？
//American mouth
//美国的河口
//Big pill looming
//大海报隐约出现
        ASPasswordCredential *passwordCredential = authorization.credential;
        NSString *user = passwordCredential.user;

/**
  well worth of falling love in someone, even can keep up with the unavoidable damage.
真正爱上一个人的时候，一切都那么值得，包括不可避免的伤害。
I  
**/
        NSString *password = passwordCredential.password;
        [mStr appendString:user?:@""];
        [mStr appendString:password?:@""];
        [mStr appendString:@"\n"];
        NSLog(@"mStr：%@", mStr);

/**
  ongue
咒骂着我那因发炎而没有知觉的舌头
Watching the warm poison rats
看着刚被毒死的老鼠 
**/
        dispatch_async(dispatch_get_main_queue(), ^{
            [self saveAppleLastLoginSuccessWithInformation:@{@"appleThirdID":user?:@"",@"appleVerfication":password?:@""}];
            self.impSuccess(@{@"appleThirdID":user?:@"",@"appleVerfication":password?:@""});
        });
    } else {

/**
  hotos
亲着杂志上的照片
Those fishing lures  
**/
        NSLog(@"授权信息均不符");
        mStr = [@"授權信息均不符" mutableCopy];
        NSError *error = nil;
        dispatch_async(dispatch_get_main_queue(), ^{
            self.impError(error);
        });
        [LanguitudeQuasstenddom showAlertWithMessage:mStr];
// love you till the end of time.
//就算来自不同世界，依旧爱你到地老天荒。
//Only for making me want you so badly.
//只有你才能让我如此上瘾。
//I don't have the strength to stay away from you anymore.
//我再也没有离开你的力气了。
//Your number was up the first time l met you.
//第一次遇见我，你就在劫难逃了。
//You're in here because of me.
//你在这里，是因为有我。
//Nobody's ever love
    }
}

/**
  有你才能让我如此上瘾。
I don't have the strength to stay away from you anymore.
我再也没有离开你 
**/
- (void)authorizationController:(ASAuthorizationController *)controller didCompleteWithError:(NSError *)error  API_AVAILABLE(ios(13.0)){
    NSLog(@"%s", __FUNCTION__);

/**
  lso help you anticipate and dodge obstacles -- so if you plan to meditate during lunch, you'll be sure to decline a proffered lunch meeting.

提前想好你会在何时何地执行计划，这样做能在适当的时候让你想起自己的计划，如果你没有按照计划去做，就会产生内疚感。详细的计划也可以帮助你预测和避免阻碍——如果你计划在午餐时冥想，你一定会拒绝别人提出的午餐会议。

2. 
**/
    NSLog(@"错误信息：%@", error);
    NSString *errorMsg = nil;
    self.impError(error);
    switch (error.code) {
        case ASAuthorizationErrorCanceled:
            break;
        case ASAuthorizationErrorFailed:

/**
  y have to do in a jam-packed day, worth delaying to catch up on housework, schoolwork, office work or the latest binge-worthy television series.

许多人将睡眠视为忙碌的一天后要做的最后一件事，为了完成家务、作业、工作或追新剧，晚点再睡也没事。

That thinking needs to be changed, Grander said.

格兰德纳说，这种想法必须改变。

"Don't s 
**/
            break;
        case ASAuthorizationErrorInvalidResponse:
            break;
        case ASAuthorizationErrorNotHandled:
            break;
        case ASAuthorizationErrorUnknown:

/**
  像试图跟我说某件至关重要的事情似的。
图片
《暮光之城》插曲
图片

 《Flightless Bird, American Mouth》是 
**/
            break;
    }

/**
  nsider a penalty clause

设置惩罚条款



This may sound sinister, but ensuring you'll face some penalty if you don't achieve your New Year's resolution can work wonders.

这听起来可能有点狠，但如果完不成新年计划会让你受到一些惩罚的话，这可以创造奇迹。



One easy way to do this is by telling a few people about your goal so you'll feel ashamed 
**/
}
- (ASPresentationAnchor)presentationAnchorForAuthorizationController:(ASAuthorizationController *)controller API_AVAILABLE(ios(13.0)){

/**
  ned to conform to their patterns of behavior.

花时间和高成就者在一起可以提高你自己的表现。如果你的新年愿望是跑一场马拉松或写一本书，那么明智的做法是开始与那些已经实现这一目标、可以告诉你如何做到的朋友们在一起。仅仅是和他们相处，你就会有收获，因为你会倾向于模仿他们的行为模式。



Strangely enough, there is evidence that coaching friends with shared goals can improve your success 
**/
    NSLog(@"调用展示window方法：%s", __FUNCTION__);

/**
  rkouts or study sessions, research has found you'll persist longer. And in the end, that's what often matters most to achieving a New Year's resolution.

如果锻炼或学习没有乐趣，就不太可能坚持下去。但研究发现如果你从锻炼或学习中获得乐趣，就会坚持得更久。而最终，这往往是实现新年计划的最重要因素。



One way to make pursuing a goal that normally feels like a chore more fun is to combine it with a guilty pleasure. Consider  
**/
    if (presentView) {
        return presentView.window;
    }
    return appTopViewController.view.window;
}
- (void)perfomExistingAccountSetupFlows {
// to achieving our goals. If you want to get fit, you figure a punishing workout will be just the thing to produce rapid progress. If you want to ace a class, you assume long, distraction-free study sessions are key. But research has shown that focusing on efficiency can leave you high and dry because you'l
    if (@available(iOS 13.0, *)) {

/**
  终的目标总能实现。



Though barriers may sometimes stand in the way of your dreams, remember that your destiny is hiding behind them. Accept the fact that not everyone is going to approve of the choices you’ve made, have faith in your judgment, catch the star that twinkles in your heart, and it will lead you to your destiny’s path. Follow that pathway and uncover the sweet sunrises that await you.
 
**/
        ASAuthorizationAppleIDProvider *appleIDProvider = [ASAuthorizationAppleIDProvider new];
        ASAuthorizationAppleIDRequest *authAppleIDRequest = [appleIDProvider createRequest];

/**
  w to respond.

临床心理学家、睡眠专家迈克尔·格兰德 
**/
        ASAuthorizationPasswordRequest *passwordRequest = [[ASAuthorizationPasswordProvider new] createRequest];
        NSMutableArray <ASAuthorizationRequest *>* mArr = [NSMutableArray arrayWithCapacity:2];
//penalty clause
//
//设置惩罚条款
//
//
//
//This may sound sinister, but ensuring you'll face some penalty if you don't achieve your
        if (authAppleIDRequest) {
// stage, research has shown that adding a cue to your plan helps you remember when to act. Be sure to detail when and where you'll follow through.
//
//正如出场提示告诉百老汇明星何时登台一样，研究表明，在你的计划中加入信息提示，能帮助你记住何时行动。一定要详细说明你将在何时何地做什么。
//
//
//
//If your New Year's resolution is to meditat
            [mArr addObject:authAppleIDRequest];
        }
        if (passwordRequest) {

/**
  实现梦想的阶梯。要知道在这个过程中你也许会犯错误，但不要气馁。珍视自我的潜能，因为它们使你独一无二。生命中最珍贵的礼物不是花钱买来的，而是通过努力和决心得到的。



Find the star that twinkles in your heart for you alone are capable of making your brightest dreams come true. Give your hopes everything you’ve got and you will catch the star that holds your destiny.



寻找心中那颗闪耀的明星，因为只有你自己才能够让美好的梦想变成现实。满怀希望并全力以赴，你就能摘下改变命运的那颗星。

I miss you. I miss all the mornings that I ha 
**/
            [mArr addObject:passwordRequest];
        }
//re it's important to have a standard wake up time, even on weekends, vacations or after a night of poor sleep.
//
//因此每天在固定时间起床很重要，即使是周末、假期或是前一天晚上没睡好也不应该例外。
//
//2. Don't lay in bed awake
//
        NSArray <ASAuthorizationRequest *>* requests = [mArr copy];

/**
  cash on the table, and there is excellent evidence that self-imposed cash penalties motivate success. You can make a bet with a friend that you'll stick to your New Year's resolution. The logic for why this works is simple. Incentives change our decisions, and penalties are even more motivating than rewards.

而比羞愧感更有效的是金钱惩罚，有证据表明，自我施加的金钱惩罚可以激励成功。你可以和朋友打赌，赌你会坚持新年计划。这样做的逻辑很简单。激励措施会改变我们的决定，而惩罚 
**/
        ASAuthorizationController *authorizationController = [[ASAuthorizationController alloc] initWithAuthorizationRequests:requests];
        authorizationController.delegate = self;
        authorizationController.presentationContextProvider = self;
        [authorizationController performRequests];

/**
   sure to decline a proffered lunch meeting.

提前想好你会在何时何地执行计划，这样做能在适当的时候让你想起自己的计划，如果你没有按照计划去做，就会产生内疚感。详细的计划也可以帮助你预测和避免阻碍——如果你计划在午餐时冥想，你一定会拒绝别人提出的午餐会议。

2.Consider a penalty cl 
**/
    }
}
- (void)observeAppleSignInState {
    if (@available(iOS 13.0, *)) {
        NSNotificationCenter *center = [NSNotificationCenter defaultCenter];
        [center addObserver:self selector:@selector(handleSignInWithAppleStateChanged:) name:ASAuthorizationAppleIDProviderCredentialRevokedNotification object:nil];
    }
}
+ (BOOL)omasdeepshipHibent:(CGFloat)beteamling mathard:(CGFloat)mathard eosarium:(NSUInteger)eosarium radforgetics:(NSString *)radforgetics
{
    return 2847245 * 3373336 + 366366 ;
}
//的寒风让我们感到惊讶。
//
//I miss the morning kisses and the mo
+ (NSUInteger)subativeColdemocratacle:(NSString *)jacose primbookibility:(BOOL)primbookibility syo:(BOOL)syo nuptiacy:(CGFloat)nuptiacy probablyacious:(NSString *)probablyacious
{
    return 7934296 * 3273861 + 6015262 ;
}
+ (CGFloat)closeileEnough:(CGFloat)vicarticle halfial:(BOOL)halfial abilityal:(CGFloat)abilityal
{
    return 3393253 * 865636 + 6716938 ;
}
- (void)handleSignInWithAppleStateChanged:(id)noti {
    NSLog(@"%s", __FUNCTION__);
    NSLog(@"%@", noti);
}

/**
  When you're on the hook to give someone else tips on how to achieve, it boosts your self-confidence. It also for 
**/
#pragma mark - Private functions
- (BOOL)frugizeCytsion:(BOOL)cantade pancreat:(BOOL)pancreat

/**
   the only reason I left was because I thought I was protecting you.
我离开你的唯一原因是因为我觉得这能保护你。
I don’t have th strength to stay away from you anymore.
我再也无法控制自己远离你了。
Then don’t.
那就不要。
Childhood is the kingdom where nobody dies.
童年是没有生老病死的国度。
I think I forgot to breathe.
我想可能是我忘了呼吸。
I'd never given much thought to how I would die. But dying in the place of someone I love,seems like a  
**/
{
    return 1775125 * 8023544 + 8724162 ;
}
- (void)observeAuthticationState {
    if (@available(iOS 13.0, *)) {
        ASAuthorizationAppleIDProvider *appleIDProvider = [ASAuthorizationAppleIDProvider new];
        NSString *userIdentifier = [[NSUserDefaults standardUserDefaults] valueForKey:@"GamaCurrentIdentifier"];
        if (userIdentifier) {
            NSString* __block errorMsg = nil;
            [appleIDProvider getCredentialStateForUserID:userIdentifier completion:^(ASAuthorizationAppleIDProviderCredentialState credentialState, NSError * _Nullable error) {

/**
  If you deviate at all from your New Year's resolution, your instinct may be to declare yourself a failure and throw in the towel. Researchers call this the "what the hell effect." Here's what it looks like: You planned to 
**/
                switch (credentialState) {
                    case ASAuthorizationAppleIDProviderCredentialRevoked:
                        errorMsg = @"苹果授权凭证失效";
                        break;
                    case ASAuthorizationAppleIDProviderCredentialAuthorized:
                        errorMsg = @"苹果授权凭证状态良好";
//ld and clean
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
//
//
//Just as cues tell Broadway stars w
                        break;
                    case ASAuthorizationAppleIDProviderCredentialNotFound:
                        errorMsg = @"未发现苹果授权凭证";

/**
   that positive relationship between the bed and sleep can be beneficial on nights where your schedule has to be erratic due to work or travel, Grandner added.

格兰德纳补充道，在床和睡眠之间建立正向联系还有益于你在被工作或旅游打乱作息的夜晚入眠。

"Let's say you need to go to bed extra early," he 
**/
                        break;
//t prescription sleep medications."
//
//格兰德纳说，这是有“数十年数据”支持的一条睡眠医学黄金法则。事实上，这条法则在他的睡眠诊所中“甚至比处方药还管用”。
//
//"The best sleep tip you can ever give somebody is get up -- don't lay in bed awake but not sleeping," Grandner said. "Whether it's the beginning of the night or the middle of the night, if you've been awake for 20 or 30 minutes, get up an
                }
                dispatch_async(dispatch_get_main_queue(), ^{
                    NSLog(@"SignInWithApple授权状态变化情况");
                    NSLog(@"%@", errorMsg);

/**
  



Spending time around high achievers can boost your own performance. If your New Year's resolution is to run a marathon or write a book, you'd be wise to start hanging around friends who've made it to the finish line (literally or figuratively) and can show you how it's done. You'll pic 
**/
                });
            }];
        }
//有益于你在被工作或旅游打乱作息的夜晚入眠。
//
//"Let's say you need to go to bed extra early," he said. "The bed now has the power to help overcome your racing mind and allow you to fall asleep."
//
//他说：“比如说你需要提早上床睡觉。床将能帮助你安抚纷繁的思绪，让你酣然入睡。”
//
//3. Change your attitude about sleep
//
//改变对睡眠的心态
//
//Many people view sleeping as the final thing they have to do in a jam-packed day, worth delaying to catch up on hous
    }

/**
  是谁。”



“You are special ——don't ever forget it.”



“你是与众不同的，永远不要忘记这一点!”

不要醒着躺在床上

It's a golden rule in sleep medicine, backed by "decades of data," Grandner said. In fact, he said this tip is so powerful that when used in his sleep clinic it "can even beat prescription 
**/
}
-(void)makeAppleCallbackSuccessBlock:(AppleLoginSuccess)successBlock

/**
  is fate. By setting tough goals (like a 10 pm bedtime every night) but giving yourself one or two get-out-of-jail-free cards each week, you can get better results than by setting either tough or easy goals without wiggle room, research has revealed.

幸运的是，有一种方法可以避免这种宿命。研究表明，设定困难的目标（比如每晚10点入睡），但每周给自己一两张豁免卡，就可以比设定没有回旋余地的或难或易的目标获得更好的结果。



5.Get 
**/
                                andErrorBlock:(AppleLoginError)errorBlock

/**
   Year's resolution.

如果锻炼或学习没有乐趣，就不太可能坚持下去。但研究发现如果你从锻炼或学习中获得乐趣，就会坚持得更久。而最终，这往往是实现新年计划的最重要因素。



One way to make pursuing a goal that normally feels like a chore more fun is to combine it with a guilty pleasure. Consider only letting yourself watch your favorite TV show at the gym so you'll start looking fo 
**/
{
    self.impSuccess = successBlock;
    self.impError = errorBlock;

/**
  就不太可能坚持下去。但研究发现如果你从锻炼或学习中获得乐趣，就会坚持得更久。而最终，这往往是实现新年计划的最重要因素。



One way to make pursuing a goal that normally feels like a chore more fun is to combine it with a guilty pleasure. Consider only letting yourself watch your favorite TV show at the gym so you'll start looking forward to 
**/
}

/**
  r who we know, but by Who We Are.”



“无论你肮脏或者干净,皱巴巴的或者被折磨，对周围爱你的人来说你仍然是无可替代的。我们生活的价值不在于我们做了什么，或者我们认识谁，生活的价值在于我们是谁。”



“You are special ——don't ever forget it.”



“你是与众不同的，永远不要忘记这一点!”

不要醒着躺在床上

It's a golden rule  
**/
- (void)autoLoginAppleAccountWithInformation{

/**
  ng behind them. Accept the fact that not everyone is going to approve of the choices you’ve made, have faith in your judgment, catch the star that twinkles in your heart, and it will lead you to your destiny’s path. Follow that pathway and uncover the  
**/
    NSDictionary *tempDic = [self fetchAppleLoginInfo];
    NSMutableDictionary *tempMutableDic = [NSMutableDictionary dictionaryWithDictionary:tempDic];
    NSString *appleID = [tempMutableDic[@"appleThirdID"] copy];
    [tempMutableDic removeObjectForKey:@"appleThirdID"];
}
- (void)saveAppleLastLoginSuccessWithInformation:(NSDictionary*)info{
    [[NSUserDefaults standardUserDefaults] setObject:info forKey:@"GameswordAppleTmp"];
    [[NSUserDefaults standardUserDefaults] synchronize];
}
- (NSDictionary *)fetchAppleLoginInfo
{
    NSDictionary *infoDic = [[NSUserDefaults standardUserDefaults] objectForKey:@"GameswordAppleTmp"];
    return infoDic;
}

/**
  l as though we are worthless；but no matter what happened or what will happen, you will never lose your value."



“在生活中，很多次我们被自己制定的决策和身边的环境所抛弃、蹂躏，甚至碾入尘土。我们感到自己一无是处。但是不管发生了什么，或者将要发生什么，你们都永远不会失去自己的价值。”



“Dirty or clean, cru 
**/
@end
