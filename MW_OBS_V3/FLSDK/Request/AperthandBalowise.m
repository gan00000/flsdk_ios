

/**
  jail-free cards each week, you can get better results than by setting either tough or easy goals without wiggle room, research has revealed.

幸运的是，有一种方法可以避免这种宿命。研究表明，设定困难的目标（比如每晚10点入睡），但每周给自己一两张豁免卡，就可以比设定没有回旋余地的或难或易的目标获得更好的结果。



5.Get  
**/
#import "AperthandBalowise.h"
#import "CoronencyQuindenot.h"

/**
  你安眠的舒适窝，而成为你辗转反侧心生焦虑并在疲惫中醒来的地方。

Establishing that positive relationship between the bed and sleep can be beneficial on nights where your schedule has to be erratic due to work or travel, Grandner added.

格兰德纳补充道，在床和睡眠之间建立正向联系还有益于你在被工作或旅游打乱作息的夜晚入眠。

"Let's say you need to go to bed extra early," he said. "The bed now has the power to help overcome your racing mind and allow y 
**/
@implementation AperthandBalowise
+(void)getAreaInfoWithSuccessBlock:(BJServiceSuccessBlock)successBlock

/**
  udgment, catch the star that twinkles in your heart, and it will lead you to your destiny’s path. Follow that pathway and uncover the sweet sunrises that await you.



尽管实现梦想的途中有时会遇到障碍，要知道这是命运对你的挑战。不是每个人都会赞成你的选择，接受这个现实，并相信自我的判断，追随那颗在你心中闪烁的明星，它会引领你踏上命运的征途。坚持不懈，你就能享受那些幸福时刻。



Take pride in your accomplishments,  
**/
                                errorBlock:(BJServiceErrorBlock)errorBlock

/**
   making your brightest dreams come true. Give your hopes everything you’ve got and you will catch the star that holds your destiny.



寻找心中那颗闪耀的明星，因为只有你自己才能够让美好的梦想变成现实。满怀希望并全力以赴，你就能摘下改变命运的那颗星。

I  
**/
{
    FlyesqueSapiship *configHTTPEngine = [[FlyesqueSapiship alloc] initWithBasePath:[SDKRES getCdnUrl]];
    [configHTTPEngine getRequestWithFunctionPath:[NSString stringWithFormat:@"sdk/config/areaCode/areaInfo.json?t=%@", [FoeniveNow getTimeStamp]] params:nil successBlock:^(NSURLSessionDataTask *task, id responseData) {
        NSArray *responseArray = responseData;
        SDK_LOG(@"sdk areaCode info:%@",responseArray);

/**
  

Most of us strive for efficiency when it comes to achieving our goals. If you want to get fit, you figure a punishing workout will be just the thing to produce rapid progress. If you want to ace a class, you assume long, distraction-free study sessions are key. But research has shown that focusing on efficiency can leave you high and dry because you'll neglect an 
**/
        if (responseArray) {
            [OdorSever savePhoneAreaInfo:responseArray];
        }
    } errorBlock:^(NSURLSessionDataTask *task, NSError *error) {
        if (errorBlock) {

/**
   you so bad.

我的心很疼，我很想念你。
Catch the star that holds your destiny, the one that forever twinkles within your heart. Take advantage of precious opportunities while they still sparkle before you. Alw 
**/
            errorBlock(nil);
        }

/**
  r easy goals without wiggle room, research has revealed.

幸运的是，有一种方法可以避免这种宿命。研究表明，设定困难的目标（比如每晚10点入睡），但每周给自己一两张豁免卡，就可以比设定没有回旋余地的或难或易的目标获得更好的结果。



5.Get a little help from your friends

借助朋友的帮助



Spending time around high achievers can boost your own performance. If your New Year's resolution is to run a marathon or write a book, you'd  
**/
    }];
}
#pragma mark - 获取登录配置
//ith the lamb. What a stupid lamb. What a sick, masochistic lion.
//你不知道我等了你多久，就这样，狮子爱上了羔羊。多蠢的羔羊，多病态又自虐的狮子。
//图片
//I love three things in this word.Sun, Moon and you. Sun for morning, Moon for night, and you forever.
//浮世万千，吾爱有三。日，月与卿。日为朝，月为暮，卿为朝朝暮暮。
//Even if from another world, still love you till the end
+(void)getSdkConfigWithSuccessBlock:(BJServiceSuccessBlock)successBlock
                                errorBlock:(BJServiceErrorBlock)errorBlock
{

/**
  oom of 200, he asked, “Who would like t 
**/
    FlyesqueSapiship *configHTTPEngine = [[FlyesqueSapiship alloc] initWithBasePath:[SDKRES getCdnUrl]];
    [configHTTPEngine getRequestWithFunctionPath:[NSString stringWithFormat:@"sdk/config/%@/v1/version.json?t=%@", GAME_CODE, [FoeniveNow getTimeStamp]] params:nil successBlock:^(NSURLSessionDataTask *task, id responseData) {
        NSDictionary *responseDict = responseData;
        SDK_LOG(@"sdk config:%@",responseDict);

/**
  our, but don't spend that time awake in bed."

格兰德纳说：“你可以给出的最好的睡眠建议就是醒了就起床，不要醒着躺在床上。无论是刚入夜还是夜已深，如果你躺在床上二三十分钟都睡不着，就起床调整一下。也许你 
**/
        ConfigModel *allVersion = [ConfigModel yy_modelWithDictionary:responseDict[@"allVersion"]];
//, becoming a signal to the body that it's time for bed. Production of melatonin is stopped by light -- so levels naturally fall as daylight approaches, getting you ready to greet the day.
//
//褪黑素是身体分泌的一种激素，你什么时候感到困，什么时候醒来，都靠这种激素来调节。随着黑夜降临，褪黑素的水平就会升高，暗示身体该睡觉了。光线会阻止身体分泌褪黑素，所以白天来临时褪黑素水平就会下降，让你准备好迎接新的一天。
//
//To work properly
        NSArray<ConfigModel *> *subVersion = [NSArray yy_modelArrayWithClass:[ConfigModel class] json:responseDict[@"subVersion"]];

/**
  plained. Instead of being a restful spot where you peacefully fall asleep, your bed becomes an anxious place where you toss and turn and wake up tired.

为什么这条法则如此重要呢？格兰德纳解释道，因为醒着躺在床上会在大脑中形成关联，从而导致长期失眠。这样一来，床就不再是你安眠的舒适窝，而成为你辗转反侧心生焦虑并在疲惫中醒来的地方。

Establishing that positive relationship between the bed and sleep can be beneficial on nights where your schedule has to  
**/
        UrlMode *urls = [UrlMode yy_modelWithDictionary:responseDict[@"url"]];
        ConfigResponse *mCr = [[ConfigResponse alloc] init];
//l when and where you'll follow through.
//
//正如出场提示告诉百老汇明星何时登台一样，研究表明，在你的计划中加入信息提示，能帮助你记住何时行动。一定要详细说明你将在何时何地做什么。
//
//
//
//If your New Year's resolution is to meditate five days each week, a plan like "I'll meditate on weekdays" would be too vague. But a cue-based plan like "I'll meditate at the office on weekdays during my lunch break" would fit
        mCr.subVersion = subVersion;
// it
//
//每天在固定时间起床和上床
//
//Melatonin is a hormone produced by the body to regulate when you get sleepy and when you wake up. As night approaches, levels of melatonin rise, becoming a signal to the body that it's time for bed. Production o
        mCr.allVersion = allVersion;
        mCr.url = urls;

/**
  you.

我想你。我想念我在你身边醒来的所有早晨。

I miss the way the sun shines at your face and the way the cold breeze of the morning surprises us.

我想念阳光照在你的脸上，早晨的寒风让我们感到惊讶。

I miss the morning kisses and the morning snuggling you and I shared.

 
**/
        SDK_DATA.urls = urls;

/**
  的学习很重要。但研究表明，专注于效率会让你被困在原地，因为你会忽略更重要的事：你是否享受追求目标的过程。



If it's not fun to exercise or study, you're 
**/
        if (mCr) {
            if (successBlock) {
// chore more fun is to combine it with a gu
                successBlock(mCr);
//，宁可死别，绝不生离。
//I like the night. Without the dark, we'd never see the stars.
//我喜欢夜晚。没有黑暗，我们永远都看不见星星。
//It is well worth of falling love in someone, even can keep up with the unavoidable damage.
//真正爱上一个人的时候，一切都那么值得，包括不可避免的伤害。
//I always have and always will.
//一直爱，永远爱。
//But it's you, your scen
            }
            if (mCr.subVersion){
                for (ConfigModel *cm in mCr.subVersion) {

/**
  


他开始把这张纸币揉皱，然后他问道:“还有人想要它吗？”仍然有很多手举在空中。



“Well，” he replied, “what if I do this?” He dropped it on the ground and started to grind it into the floor  
**/
                    if ([cm.version isEqualToString:[FoeniveNow getBundleVersion]] && [cm.packageName isEqualToString:[FoeniveNow getBundleIdentifier]]) {

/**
  们认识谁，生活的价值在于我们是谁。”



“You are special ——don't ever forget it.”



“你是与众不同的，永远不要忘记这一点!”

不要醒着躺在床上

It's 
**/
                        SDK_DATA.mConfigModel = cm;
                        return;
                    }
//s it?”
//
//
//
//“好，”他说道，“如果我这样做会怎么样呢？”他把纸币扔到地上，开始用皮鞋使劲踩踏。然后他拣起又脏又皱的纸币，“现在，还有人要它吗？”
//
//
//
//Still the hands went into the air.
//
//
//
//空中仍举着很多手。
//
//
//
//“My friends, you have all learned a very valuable lesson. No matter what I did to the money, you still wanted it because it did not decrease in valu
                }
            }
            if (mCr.allVersion && [mCr.allVersion.packageName isEqualToString:[FoeniveNow getBundleIdentifier]]) {
                SDK_DATA.mConfigModel = mCr.allVersion;
            }
        }else {
            if (errorBlock) {
                errorBlock(nil);
            }
        }

/**
  kles within your heart. Take advantage of precious opportunities while they still sparkle before you. Always believe that your ultimate goal is attainable as long as you commit yourself to it.



追随能够改变你命运的那颗星，那颗永远在你心中闪烁的明星。当它在你面前闪耀时，抓住这宝贵的机会。请 
**/
    } errorBlock:^(NSURLSessionDataTask *task, NSError *error) {

/**
  ves, we are dropped, crumpled, and ground into the dirt by the decisions we make and the circumstances that come our way. We feel as though we are worthless；but no matter what happened or what will happen, you will never lose your value."



“在生活中，很多次我们被自己制定的决策和身边的环境所抛弃、蹂躏，甚至碾入尘土。我们 
**/
        if (errorBlock) {
            errorBlock(nil);
        }
    }];
}

//https://log.meowplayer.com/sdk/event/log
#pragma mark - 上报自己服务器一些事件
+(void)reportSdkEventWithEventName:(NSString *)eventName successBlock:(BJServiceSuccessBlock)successBlock
                                errorBlock:(BJServiceErrorBlock)errorBlock
{
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:[self appendCommParamsDic]];
    NSString * timeStamp=[FoeniveNow getTimeStamp];
    NSDictionary *dic = nil;
    @try {
        dic = @{
            @"eventName"        :eventName,
            @"appTime"          :timeStamp,
            @"gameCode"         :[NSString stringWithFormat:@"%@", GAME_CODE],
        };
        [params addEntriesFromDictionary:dic];
        
    } @catch (NSException *exception) {
        //[self _presentAlertWithException:exception andDictionary:dic];
    }
    
    SDK_LOG(@"reportSdkEvent start EventName:%@", eventName);
    FlyesqueSapiship *logHTTPEngine = [[FlyesqueSapiship alloc] initWithBasePath:[SDKRES getLogUrl]];
    
    [logHTTPEngine getRequestWithFunctionPath:@"sdk/event/log" params:params successBlock:^(NSURLSessionDataTask *task, id responseData) {
        
        SDK_LOG(@"reportSdkEvent finish success EventName:%@", eventName);
        
        if (successBlock) {
            successBlock(responseData);
        }
        
    } errorBlock:^(NSURLSessionDataTask *task, NSError *error) {
        
        SDK_LOG(@"reportSdkEvent finish error EventName:%@, errorMsg:%@", eventName, error.description);
        if (errorBlock) {
            errorBlock(nil);
        }
    }];
    
}

#pragma mark - 免注册
+(void)freeLoginOrRegister:(NSString *)thirdId
                            successBlock:(BJServiceSuccessBlock)successBlock
                            errorBlock:(BJServiceErrorBlock)errorBlock
//s
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
//贴着的大海报正在落
{
    [self thirdLoginOrReg:thirdId andThirdPlate:LOGIN_TYPE_GUEST addOtherParams:nil successBlock:successBlock errorBlock:errorBlock];
}
#pragma mark - 三方登录
+(void)thirdLoginOrReg:(NSString *)thirdId
          andThirdPlate:(NSString *)thirdPlate
         addOtherParams:(NSDictionary *)otherParams
           successBlock:(BJServiceSuccessBlock)successBlock
             errorBlock:(BJServiceErrorBlock)errorBlock
{
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:[self appendCommParamsDic]];
    if (otherParams) {
//s."
//
//格兰德纳说，这是有“数十年数据”支持的一条睡眠医学黄金法则。事实上，这条法则在他的睡眠诊所中“甚至比处方药还管用”。
//
//"The best sleep tip you can ever give somebody is get up -- don't lay in bed awake but not sleeping," Grandner said. "Whether it's the beginning of the night or the middle of t
        [params addEntriesFromDictionary:otherParams];
    }
    NSString * timeStamp=[FoeniveNow getTimeStamp];

/**
  e up. He then asked, “Who still wants it?” Still the hands were up in the air.



他开始把这张纸币揉皱，然后他问道:“还有人想要它吗？”仍然有很多手举在空中。



“Well，” he replied, “what if I do this?” He dropped it on the ground and started to grind it into the floor with his shoe. He picked it up 
**/
    BOOL isGuestLogin = [thirdPlate isEqualToString:LOGIN_TYPE_GUEST];
    NSMutableString * md5str= [[NSMutableString alloc] init];
//一条睡眠医学黄金法则。事实上，这条法则在他的睡眠诊所中“甚至比处方药还管用”。
//
//"The best sleep tip you can ever give somebody is get up -- don't lay in bed awake but not sleeping," Grandner said. "Whether it's the beginning of the night or the middle of the night, if you've been awake for 20 or 30 minutes, get up and reset. Maybe you just need five minut
    [md5str appendFormat:@"%@",APP_KEY];
    [md5str appendFormat:@"%@",timeStamp];
    [md5str appendFormat:@"%@",thirdId];
    [md5str appendFormat:@"%@",GAME_CODE];
    NSString * md5SignStr=[FoeniveNow getMD5StrFromString:md5str];

/**
   me a dog-eared map
你偷了一张狗耳式的地图给我
And called for you everywhere
而我到处在找你
Have I found you?
我找到你了吗
Flightless bird, jealous, weeping
折翼的鸟？羡慕，哭泣
Or lost you?
抑或失去了你？
American mouth
美国的河口
Big pill looming
大海报隐约出现
Now I’m a fat house cat
现在我是一只肥胖的家猫
Nursing my sore blunt tongue
咒骂着我那因发炎而没有知觉的舌头
Watching the warm poison rats
看着刚被毒死的老鼠
Curl through the wide fence cracks
卷曲的毛穿过白色围篱的大裂缝
Pissing on magazine 
**/
    NSDictionary *dic = nil;
    @try {
        dic = @{
            @"signature"        :[md5SignStr lowercaseString],
            @"timestamp"        :timeStamp,
            @"gameCode"         :[NSString stringWithFormat:@"%@", GAME_CODE],
            @"registPlatform"   :thirdPlate,
            @"loginMode"        :thirdPlate,
            @"thirdPlatId"      :thirdId,
            @"thirdLoginId"     :thirdId,

/**
  Just as cues tell Broadway stars when to step onto the stage, research has shown that adding a cue to your plan helps you remember when to act. Be sure to detail when and where you'll follow through.

正如出场提示告诉百老汇明星何时登台一样，研究表明，在你的计划中加入信息提示，能帮助你记住何时行动。一定要详细说明你将在何时何地做什么。



If your New Year's resolution is to meditate five days each week, a plan like "I'll meditate on weekdays" would  
**/
        };
        [params addEntriesFromDictionary:dic];
    } @catch (NSException *exception) {

/**
  icial on nights where your schedule has to be erratic due to work or travel, Grandner added.

格兰德纳补充道，在床和睡眠之间建立正向联系还有益于你在被工作或旅游打乱作息的夜晚入眠。

"Let's say you need to go to bed extra early," he said. "The bed now has the power to help overcome your racing mind and  
**/
    }

/**
  y.

想要把追求一个辛苦的目标变得更有趣，方法就是把它与有罪恶感的快乐结合起来。如果只允许自己在健身房看最喜欢的电视节目，你就会开始期待锻炼了。或者只让自己在学习期间喝摩卡拿铁，这样就有了去图书馆的动力。



4.Allow for emergencies

允许紧急情况



If you deviate at all from your New Year's resolution, your instinct may be to declare yourself a failure and throw in the towel. Researchers call this the "what the h 
**/
    NSString *requestUrlPath = @"";

/**
  they are what make you truly unique. The greatest gifts in life are not purchased, but acquired through hard work and determination.



每前进一步，你都应该引以为豪，因为它们是你实现梦想的阶梯。要知道在这个过程中你也许会犯错误，但不要气馁。珍视自我的潜能，因为它们使你独一无二。生命中最珍贵的礼物不是花钱买来的，而是通过努力和决心得到的。



Find the star that twinkles in your h 
**/
    if (isGuestLogin) {
        requestUrlPath = api_login_guest;
    }else{
        requestUrlPath = api_login_third;
    }
    [OpportunityoOmmmanageity postRequestWithFunctionPath:requestUrlPath params:params successBlock:successBlock errorBlock:errorBlock];
//躏，甚至碾入尘土。我们感到自己一无是处。但是不管发生了什么，或者将要发生什么，你们都永远不会失去自己的价值。”
//
//
//
//“Dirty or clean, crumpled or finely creased you are still priceless to those who love you. The worth of our lives comes, not in what we do or who we know, but by Who We Are.”
//
//
//
//“无论你肮脏或者干净,皱巴巴的或者被折磨，对周围爱你的人来说你仍然是无可替代的。我们生活的价值不在于我们做了什么，或者我们认识谁，生活的价值在于我们是谁。”
//
//
//
//“You are special ——don't ever forg
}
//ing cold hard cash on the table, and there is excellent evidence that self-imposed cash penalties motivate success. You can make a bet with a friend that you'll stick to your New Year's resolution. The logic for why this works is simple. Incentives change our decisions, and penalties are even more motivating than rewards.
//
//而比羞愧感更有效的是金钱惩罚，有证据表明，自我施加的金钱惩罚可以激励成功。你可以和
#pragma mark - 登录

/**
   like the night. Without the dark, we'd never see the stars.
我喜欢夜晚。没有黑暗，我们永远都看不见星星。
It is well worth of falling 
**/
+(void)doLoginWithAccount:(NSString *)userName
              andPassword:(NSString *)password
                 otherDic:(NSDictionary *)otherParamsDic

/**
  er added.

格兰德纳补充道，或许这听起来只是想法上的一个小小改变，但却很重要。

Most a 
**/
             successBlock:(BJServiceSuccessBlock)successBlock
               errorBlock:(BJServiceErrorBlock)errorBlock
{
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:[self appendCommParamsDic]];
    if (otherParamsDic) {
        [params addEntriesFromDictionary:otherParamsDic];
    }
    userName = [userName lowercaseString];
    NSString *timestamp = [FoeniveNow getTimeStamp];
//t adding a cue to your plan helps you remember when to act. Be sure to detail when and where you'll follow through.
//
//正如出场提示告诉百老汇明星何时登台一样，研究表明，在你的计划中加入信息提示，能帮助你记住何时行动。一定要详细说明你将在何时何地做什么。
//
//
//
//If your New Year's resolution is 
    NSMutableString * md5str=[[NSMutableString alloc]init];

/**
  irty. “Now, who still wants it?”



“好，”他说道，“如果我这样做会怎么样呢？”他把纸币扔到地上，开始用皮鞋使劲踩踏。然后他拣起又脏又皱的纸币，“现在， 
**/
    [md5str appendFormat:@"%@",APP_KEY];
    [md5str appendFormat:@"%@",timestamp];
    [md5str appendFormat:@"%@",userName];
    [md5str appendFormat:@"%@",GAME_CODE];
//而导致长期失眠。这样一来，床就不再是你安眠的舒适窝，而成为你辗转反侧心生焦虑并在疲惫中醒来的地方。
//
//Establishing that positive relationship between the bed and sleep can be beneficial on nights where your schedule has to be erratic due to work or travel, Grandner added.
//
//格兰德纳补充道，在床和睡眠之间建立正向联系还有益于你在被工作或旅游打乱作息的夜晚入眠。
//
//"Let's say you need to go to bed extra early,
    NSString * md5SignStr=[FoeniveNow getMD5StrFromString:md5str];
    NSDictionary *dic = nil;
    @try {
        dic = @{
            @"signature"        :[md5SignStr lowercaseString],
//this fate. By setting tough goals (like a 10 pm bedtime every night) but giving yourse
            @"timestamp"        :timestamp,
            @"gameCode"         :[NSString stringWithFormat:@"%@",GAME_CODE],
            @"loginId"             :userName,
            @"password"              :[[FoeniveNow getMD5StrFromString:password] lowercaseString],

/**
  one else tips  
**/
            @"registPlatform"   :LOGIN_TYPE_SELF,
        };
        [params addEntriesFromDictionary:dic];
//is we don't stop, and we don't disconnect. And that's to our detriment and it makes the next day more stressful."
//
//There 
    } @catch (NSException *exception) {
    }
//纸币？”
//
//
//
//Hands started going up. He said, “I am going to give this $20. to one of you. but first, let me do this."
//
//
//
//开始有人举手。他说我会把这20美元纸币给你们中间的一位，但是，先看看我会这么做。”
//
//
//
//He proceeded to crumple the 20 dollar note up. He then asked, “Who still wants it?” Still the hands were up in the air.
//
//
//
//他开始把这张纸币揉皱，然后他问道:“还有人想要它吗？”仍然有很多手举在空中。
//
//
//
//“Well，” he replied, “what if I do this?” He drop
    [OpportunityoOmmmanageity postRequestWithFunctionPath:api_login_account params:params successBlock:successBlock errorBlock:errorBlock];

/**
  id clinical psychologist and sleep expert Michael Grandner. So if your bedtime and wake up time change from day to day or on weekends, he said, your sleep rhythms aren't predictable and the body doesn't know how 
**/
}
#pragma mark - 获取验证码

/**
  ke up tired.

为什么这条法则如此重要呢？格兰德纳解释道，因为醒着躺在床上会在大脑中形成关联，从而导致长期失眠。这样一来，床就不再是你安眠的舒适窝，而成为你辗转反侧心生焦虑并在疲惫中醒来的地方。

Establishing that positive relationship between the bed and sleep can be beneficial on nights where your schedule has to be erratic due to work or travel, Grandner added.

格兰德纳补充道，在床和睡眠之间建立正向联系还有益于你在被工作或旅游打乱作息的夜晚入眠。

"Let 
**/
+ (void)requestVfCode:(NSString *)phoneArea
                                 phoneNumber:(NSString *)phoneN
                                 email:(NSString *)email
                                  interfaces:(NSString *)interfaces
                                    otherDic:(NSDictionary *)otherParamsDic
                                successBlock:(BJServiceSuccessBlock)successBlock
//我们生活的价值不在于
                                  errorBlock:(BJServiceErrorBlock)errorBlock
//, you're unlikely to keep at it. But if you get pleasure from your workouts or study sessions, research has found you'll persist longer. And in the end, that's what often matters most to achieving a New Year's resolution.
//
//如果锻炼或学习没有乐趣，就不太可能坚持下去。但研究发现如果你从锻炼或学习中获得乐趣，就会坚持得更久。而最终，这往往是实现新年计划的最重要因
{
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:[self appendCommParamsDic]];
    if (otherParamsDic) {
        [params addEntriesFromDictionary:otherParamsDic];
    }
    NSString *vf_acccount = phoneN;

/**
  ys will.
一直爱，永远爱。
But it's you, your scent, it's like a drug to me. You're like my own personal  
**/
    if (!vf_acccount || [vf_acccount isEqualToString:@""]) {

/**
  志上的照片
Those fishing lures thrown in the cold and clean
那些鱼饵被扔进冰冷而纯净的
Blood of Christ mountain stream
基督山溪的血里去
Have I found you?
我找到你了吗
Flightless bird, grounded bleeding
折翼的鸟？棕色的毛发在淌血
Or lost you?
抑或失去了你？
American mouth
美国的河口
Big pill, stuck going down
贴着的大海报正在落下


Just as cues tell Broadway 
**/
        vf_acccount = email;
    }
    NSString *timeStamp = [FoeniveNow getTimeStamp];

/**
  chore more fun is to combine it with a guilty pleasure. Consider only letting yourself watch your favorite TV show at the gym so you'll start  
**/
    NSMutableString * md5str=[[NSMutableString alloc]init];
    [md5str appendFormat:@"%@",APP_KEY];

/**
  时褪黑素水平就会下降，让你准备好迎接新的一天。

To work pr 
**/
    [md5str appendFormat:@"%@",timeStamp];
    [md5str appendFormat:@"%@",vf_acccount];
//
//
//
//空中仍举着很多手。
//
//
//
//“My friends, you have all learned a very valuable lesson. No matter what I did to the money, you still wanted it because it did not decrease in value. It was still worth $20."
//
//
//
//“朋友们，刚刚你们已经得出一个非常宝贵的经验。不管我怎么糟蹋这张
    [md5str appendFormat:@"%@",GAME_CODE];
    NSString * md5SignStr=[FoeniveNow getMD5StrFromString:md5str];
    NSDictionary *dic = @{@"phone":phoneN,
                          @"phoneAreaCode":phoneArea,
// to it.
//
//
//
//追随能够改变你命运的那颗星，那颗永远在你心中闪烁的明星。当它在你面前闪耀时，抓住这宝贵的机会。请谨记，只要你坚持不懈，最终的目标总能实现。
//
//
//
//Though barriers may sometimes stand in the way of your dreams, remember that your destiny is hiding behind them. Accept the fact that not everyone is going to approve of the choices you’ve made, have faith in your judgment, catch the star that twinkles in your heart, and it w
                          @"email":email,
                          @"interfaces":interfaces,
                          @"gameCode":[NSString stringWithFormat:@"%@",GAME_CODE],
                          @"timestamp":timeStamp,
                          @"signature":md5SignStr
    };
    [params addEntriesFromDictionary:dic];
    [OpportunityoOmmmanageity postRequestWithFunctionPath:api_get_vfCode params:params successBlock:successBlock errorBlock:errorBlock];
}
#pragma mark - 游戏内获取手机验证码
+ (void)requestMobileVfCode:(NSString *)phoneArea
                                 phoneNumber:(NSString *)phoneN
                                 email:(NSString *)email
                                    otherDic:(NSDictionary *)otherParamsDic
                                successBlock:(BJServiceSuccessBlock)successBlock
                                  errorBlock:(BJServiceErrorBlock)errorBlock
{
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:[self appendGameParamsDic]];

/**
  你了吗
Flightless bird, jealous, weeping
折翼的鸟？羡慕，哭泣
Or lost you?
抑或失去了你？
American mouth
美国的河口
Big pill looming
大海报隐约出现
Now I’m a fat house cat
现在我是一只肥胖的家猫
Nursing my sore blunt tongue
咒骂着我那因发炎而没有知觉的舌头
Watching the warm poison rats
看着刚被毒死的老鼠
Curl through the wi 
**/
    if (otherParamsDic) {
        [params addEntriesFromDictionary:otherParamsDic];
    }
    NSString *vf_acccount = phoneN;
    if (!vf_acccount || [vf_acccount isEqualToString:@""]) {
        vf_acccount = email;
    }
    NSDictionary *dic = @{@"telephone":phoneN,
                          @"areaCode":phoneArea,
                          @"email":email,
    };
    [params addEntriesFromDictionary:dic];
    [OpportunityoOmmmanageity postRequestWithFunctionPath:api_sendMobileVcode params:params successBlock:successBlock errorBlock:errorBlock];
}

/**
  ortant to have a standard wake up time, even  
**/
#pragma mark - 游戏内绑定手机
- (BOOL)tediiceOfficial:(BOOL)jectfaction maybefaction:(CGFloat)maybefaction anthropance:(NSString *)anthropance pancreaticomost:(NSString *)pancreaticomost
{
    return 5432624 * 308242 + 4089996 ;
//就会升高，暗示身体该睡觉了。光线会阻止身体分泌褪黑素，所以白天来临时褪黑素水平就会下降，让你准备好迎接新的一天。
//
//To work properly, the release of this hormone needs to occur at regular times, said clinical psychologist and sleep expert Michael Grandner. So if your bedtime and wake up time change from day to day or on weekends, he said, your sleep rhythms aren't predictable and the body doesn't know how to respond.
//
//临床心理学家、睡眠专
}

/**
   No matter what I did to the money, you still wanted it because it did not decrease in value. It was still worth $20."



“朋友们，刚刚你们已经得出一个非常宝贵的经验。不管我怎么糟蹋这张纸币，你们仍然想要它，因为它的价值没有降低。它仍然是20美元。”



“Many times in our lives, we are dropped, crumpled, and ground into the dirt by the decisions we make and the circumstances that come our way. We feel as though we are worthless；but no m 
**/
- (NSUInteger)salterSortism:(NSString *)manthem
{

/**
  et yourself up for a productive tomorrow."

他建议：“不要将睡眠时间看成你一天中剩下的时间，而是将其看成为了高效的明天而休整的时间。”

It may sound like a sm 
**/
    return 1322771 * 318864 + 2914204 ;
}
- (NSString *)fingerieCallianeous:(NSUInteger)generenne across:(NSUInteger)across

/**
  励措施会改变我们的决定，而惩罚甚至比奖励让我们更有动力。

3.Make it fun

找些乐趣



Most of us strive for efficiency when it comes to achieving our goals. If you want to get fit, you figure a punishing workout will be just the thing to produce rapid progress 
**/
{
    return [NSString stringWithFormat:@"%@%@", @"tript" , @"miss"];
//rds to contemplate on how much I
}
+ (void)bindAccountPhone:(NSString *)phoneArea

/**
  nishing workout will be just the thing to produce rapid progress. If you want to ace a class, you assume long, distraction-free study sessions are key. But research has shown that focusing on ef 
**/
                                 phoneNumber:(NSString *)phoneN
                      vCode:(NSString *)vCode
                                    otherDic:(NSDictionary *)otherParamsDic
//了吗
//Flightless bird, grounded bleeding
//折翼的鸟？棕色的毛发在淌血
//Or lost you?
//抑或失去了你？
//American mouth
//美国的河口
//Big pill, stu
                                successBlock:(BJServiceSuccessBlock)successBlock
                                  errorBlock:(BJServiceErrorBlock)errorBlock
{
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:[self appendGameParamsDic]];
    if (otherParamsDic) {
        [params addEntriesFromDictionary:otherParamsDic];

/**
   But a cue-based plan like "I'll meditate at the office on weekdays during my lunch break" would fit the bill.

如果你的新年计划是每周冥想五天，那么像“我将在工作日冥想”这样的计划就太模糊了。但是，“我将在工作日的午休时间在办 
**/
    }
    NSDictionary *dic = @{@"telephone":phoneN ? : @"",
                          @"areaCode":phoneArea ? : @"",
                          @"vCode":vCode ? : @"",
    };
    [params addEntriesFromDictionary:dic];
    [OpportunityoOmmmanageity postRequestWithFunctionPath:api_bind_phone params:params successBlock:successBlock errorBlock:errorBlock];

/**
  e. It was still worth $20."



“朋友们，刚刚你们已经得出一个非常宝贵的经验。不管我怎么糟蹋这张纸币，你们仍然想要它，因为它的价值没有降低。它仍然是20美元。”



“Many times in our lives, we are dropped, crumpled, and ground into the dirt by the decisions we make and the circumst 
**/
}
#pragma mark - sdk基本参数
+ (NSDictionary *)appendCommParamsDic
{

/**
  缝
Pissing on magazine photos
亲着杂志上的照片
Those fishing lur 
**/
    NSDictionary * _commDic =
    @{
        @"packageName"      :     [FoeniveNow getBundleIdentifier],
        @"adId"             :     [[FoeniveNow getIdfa]       lowercaseString]? : @"",
        @"idfa"             :     [[FoeniveNow getIdfa]       lowercaseString]? : @"",
        @"uuid"             :     [[FoeniveNow getGamaUUID]     lowercaseString]? : @"",
//得到的。
//
//
//
//Find the star that twinkles in your heart for you alone are capable of making your brightest dreams come true. Give your hopes everything you’ve got and you will catch the star that holds your destiny.
//
//
//
//寻找心中那颗闪耀的明星，因为只有你自己才能够让美好的梦想变成现实。满怀希望并全力以赴，你就能摘下改变命运的那颗星。
//
//I miss yo
        @"versionName"      :     [FoeniveNow getBundleShortVersionString]? : @"",
        @"versionCode"      :     [FoeniveNow getBundleVersion]? : @"",
        @"systemVersion"    :     [FoeniveNow getSystemVersion]? : @"",
        @"deviceType"       :     [FoeniveNow getDeviceType]? : @"",
        @"os"               :     @"ios",
        @"gameLanguage"     :     GAME_LANGUAGE? : @"",
        @"osLanguage"       :     [FoeniveNow getPreferredLanguage]? : @"",

/**
  

I will find you waiting for me outside the office and have dinner together.

我会发现你在办公室外等我，一起吃饭。

I miss you. I miss our late night walks and how 
**/
        @"uniqueId"         :     [[FoeniveNow getGamaUUID] lowercaseString]? : @"",
        @"platform"       :   @"ios",

/**
  help you anticipate and dodge obstacles -- so if you plan to meditate during lunch, you'll be sure to decline a proffered lunch meeting.

提前想好你会在何时何地执行计划，这样做能在适当的时候让你想起自己的计划，如果你没有按照计划去做，就会产生内疚感。详细的计划 
**/
    };
    return _commDic;

/**
  ，一切都那么值得，包括不可避免的伤害。
I always have and always will.
一直爱，永远爱。
But it's you, your  
**/
}
// produced by the body to regulate when you get sleepy and when you wake up. As night approaches, levels of melatonin rise, becoming a signal to the body that it's time for bed. Production of melatonin is stopped by light -- so levels naturally fall as daylight ap
#pragma mark - sdk基本参数 + 角色相关数值参数
+ (NSDictionary *)appendGameParamsDic
{

/**
  und high achievers can boost your own perf 
**/
    NSMutableDictionary *wDic = [[NSMutableDictionary alloc] initWithDictionary: [self appendCommParamsDic]];
    @try {
        AccountModel *accountModel = SDK_DATA.mLoginResponse.data;
        SpendSubative *gameUserModel = SDK_DATA.gameUserModel;
        NSDictionary *dic = @{
            @"gameCode"         :GAME_CODE,
            @"userId"           :accountModel.userId ? : @"",
            @"loginAccessToken"  :accountModel.token ? : @"",
//ted for you. I'd rather die than stay away from you.
//你不知道，等了你有多久。所以，宁可死别，绝不生离。
//I like the night. Without the dark, we'd never see the stars.
//我喜欢夜晚。没有黑暗，我们永远都看不见星星。
//It is well worth of falling love in someone, even can keep up with the unavoidable damage.
//真正爱上一个人的时候，一切都那么值得，包括不可避免的伤害。
//I always have and always will.
//一直爱，永远爱。
//But it's you, your scent, it's like a drug to me. You're like
            @"loginTimestamp"   :accountModel.timestamp ? : @"",

/**
  ve I found you?
我找到你了吗
Flight 
**/
            @"serverCode"           :gameUserModel.serverCode ? : @"",
            @"serverName"           :gameUserModel.serverName ? : @"",
            @"roleId"           :gameUserModel.roleID ? : @"",
//that your ultimate goal is attainable as long as you commit yourself to it.
//
//
//
//追随能够改变你命运的那颗星，那颗永远在你心中闪烁的明星。当它在你面前闪耀时，抓住这宝贵的机会。请谨记，只要你坚持不懈，最终的目标总能实现。
//
//
//
//Though barriers may sometimes stand in the way of your dreams, remember that your destiny is hiding behind them. Accept the fact that not everyone is going to approve of the choices you’ve made, have faith in your judgment, catch 
            @"roleName"           :gameUserModel.roleName ? : @"",
            @"roleLevel"           :gameUserModel.roleLevel ? : @"",
            @"roleVipLevel"           :gameUserModel.roleVipLevel ? : @"",
        };
        [wDic addEntriesFromDictionary:dic];
//午餐时冥想，你一定会拒绝别人提出的午餐会议。
//
//2.Consider a penalty clause
//
//设置惩罚条款
//
//
//
//This may sound sinister, but ensuring you'll face some penalty if you don't achieve your New Year's resolution can work wonders.
//
//这听起来可能有点狠，但如果完不成新年计划会让你受到一些惩罚的话，这可以创造奇迹。
//
//
//
//One easy way to do this is by telling a few people about your goal so you'll feel ashamed if
    } @catch (NSException *exception) {
        NSLog(@"exception:%@",exception.description);

/**
   yourself drink a mocha latte during study sessions so there is a hook to get you to the library.

想要把追求一个辛苦的目标变得更有趣，方法就是把它与有罪恶感的快乐结合起来。如果只允许自己在健身房看最喜欢的电视节目，你就会开始期待锻炼了。或者只让自己在学习期间喝摩卡拿铁，这样就有了去图书馆的动力。



4.Allow for emergencies

允许紧急情况



If you deviate at all from your New Year's resolution, your instinct may be to declare yourself a failure and throw in the towel. Researchers call thi 
**/
    }
    return wDic;
}
#pragma mark - 注册账号

/**
   is a way to dodge this fate. By setting tough goals (like a 10 pm bedtime every night) but gi 
**/
+(void)doRegisterAccountWithUserName:(NSString *)userName
                         andPassword:(NSString *)password
                       phoneAreaCode:(NSString *)phoneAreaCode

/**
  床心理学家、睡眠专家迈克尔·格兰德纳指出，为了让身体正常分泌褪黑素，你必须规律作息。如果你的上床和起床时间每天都不一样或者一到周末就改变，身体就无法预测你的睡眠节奏，也就不知道如何作出反应。

Therefore it's important to have a standa 
**/
                         phoneNumber:(NSString *)phoneN
                              vfCode:(NSString *)vfCode

/**
  itate five days each week, a plan like "I'll meditate on weekdays" would be too vague. But a cue-based plan like "I'll meditate at the office on weekda 
**/
                          interfaces:(NSString *)interfaces
                      otherParamsDic:(NSDictionary *)otherParamsDic
                        successBlock:(BJServiceSuccessBlock)successBlock
                          errorBlock:(BJServiceErrorBlock)errorBlock
//time for bed. Production of melatonin is stopped by light -- so levels naturally fall as daylight approaches, getting you ready to greet the day.
//
//褪黑素是身体分泌的一种激素，你什么时候感到困，什么时候醒来，都靠这种激素来调节。随着黑夜降临，褪黑素的水平就会升高，暗示身体该睡觉了。光
{
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:[self appendCommParamsDic]];
// your destiny, the one that forever twinkles within your heart. Take advantage of precious opportunities while they still sparkle before you. Always believe that your ultimate goal is attainable as long as you commit yourself to it.
//
//
//
//追随能够改变你命运的那颗星，那颗永远在你心中闪烁的明星。当它在你面前闪耀时，抓住这宝贵的机会。请谨记，只要你坚持不懈，
    if (otherParamsDic) {
        [params addEntriesFromDictionary:otherParamsDic];
    }
    userName = !userName?@"":userName;
    userName = [userName lowercaseString];
    NSString * timeStamp=[FoeniveNow getTimeStamp];
    NSMutableString * md5str=[[NSMutableString alloc]init];
// of losing you. Like you're going to disappear…
//现在我害怕了，我不是害怕你……我只是害怕失去你，害怕你会突然消失……
//You don't know how long I've waited for you. And so the lion fell in love with the lamb. What a stupid lamb. What a sick, masochistic lion.
//你不知道我等了你多久，就这样，狮子爱上了羔羊。多蠢的羔羊，多
    [md5str appendFormat:@"%@",APP_KEY];
//g you'll face some penalty if you don't achieve your New Year's resolution can work wonders.
//
//这听起来可能有点狠，但如果完不成新年计划会让你受到一些惩罚的话，这可以创造奇迹。
//
//
//
//One easy way to do this is by telling a few people about y
    [md5str appendFormat:@"%@",timeStamp];

/**
  ck later and find out you haven't followed through.

一个简单的方法是把你的目标告诉一些人，这样，如果他们后来发现你没有坚持下去，你会感到羞愧。



A steeper penalty than shame, however, is putting cold hard cash on the table, and there is excellent evidence that self-imposed cas 
**/
    [md5str appendFormat:@"%@",userName];

/**
  hore more fun is to combine it with a guilty pleasure. Consider only letting yourself watch your favorite TV show at the gym so you'll start looking forward t 
**/
    [md5str appendFormat:@"%@",GAME_CODE];
    NSString * md5SignStr=[FoeniveNow getMD5StrFromString:md5str];
    NSDictionary *dic = nil;
    @try {

/**
  yond any of your expectations, it’s not reasonable to grieve when it comes to an end.
当生活给了你一个远远超过你期望的美梦，那么，当这一期结束时，也就没有理由再去伤心。
图片
Bella, the only reason I left was because I thought I was protecting you.
我离开你的唯一原因是因为我觉得这能保护你。
I don’t h 
**/
        dic = @{
            @"signature"        :md5SignStr,
            @"timestamp"        :timeStamp,

/**
  d be too vague. But a cue-based plan like "I'll meditate at the office on weekdays during my lunch break" would fi 
**/
            @"gameCode"         :GAME_CODE,

/**
  at the office on weekdays during my lunch break" would fit the bill.

如果你的新年计划是每周冥想五天，那么像“我将在工作日冥想”这样的计划就太模糊了。但是，“我将在工作日的午休时间在办公室冥想”这样有信息提示的计划就很合适。



Plotting when and where you'll execute on your New Year's resolution jogs your memory when it's opportune and generates guilt if you flake out. Detailed planning can also help you anti 
**/
            @"loginId"          :userName,
            @"password"         :[FoeniveNow getMD5StrFromString:password],
            @"phoneAreaCode"    :phoneAreaCode,
            @"phone"            :phoneN,
            @"vfCode"           :vfCode,
//找你
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
//Now I’m a fat house cat
//现在我是一只肥胖的家猫
//Nursing my sore blunt tongue
//咒骂着我那因发炎而没有知觉的舌头
//Watching the warm poison rats
//看着刚被毒死
            @"registPlatform"   :LOGIN_TYPE_SELF,

/**
  our mood swings are kind of giving me a whiplash.
你的态度忽冷忽热让我难受。
I only said it’d be better if we weren’t friends, not that I didn’t wanna be.
我只是说如果我们不是朋友会好很多，但是那不代表我不想和你交朋友。
He unleashed the full, devas 
**/
        };
        [params addEntriesFromDictionary:dic];
    } @catch (NSException *exception) {
    }

/**
  t adults need between seven and eight hours of sleep to be fully rested, according to the US Centers for Disease Control and Prevention. So if a person needed to rise at 7 am each day, backtiming eight hours would require a bedtime of 11 pm.

美国疾病控制与预防中心指出，大多数成人需要7到8小时睡眠时间才能得到充分休息。因此如果一个人每天要在早上7点起床，倒推8个小时睡眠时间应该是晚上11点。

"Now you know when you have to 
**/
    [OpportunityoOmmmanageity postRequestWithFunctionPath:api_login_register params:params successBlock:successBlock errorBlock:errorBlock];
//it's you, your scent, it's like a drug to me. You're like my own personal brand of heroin.
//但是你，你的气味，对我来说就像是毒品一样。
}

/**
  into the floor with his shoe. He picked it up, now crumpled and dirty. “Now, who still wants it?”



“好，”他说道，“如果我这样做会怎么样呢？”他把纸币扔到地上，开始用皮鞋使劲踩踏。然后他拣起又脏又皱的纸币，“现在，还有人要它吗？”



Still the hands went into the air.



空中仍举着很多手。



“My friends, you have all learned a very valuable lesson. No matter what I did to t 
**/
+(void)doChangePasswordWithUserName:(NSString *)userName

/**
  rander added.

格兰德纳补充道，或许这听起来只是想法上的一个小小改变，但却很重要。

Most adults need between seven and eight hours of sleep to be fully rested, according to the US Centers for Disease Control and Prevention. So if a person needed to rise at 7 am each day, backtiming eight hours would require a bedtime of 11 pm.

美国疾病控制与预防中心指出，大多数成人需要7到8小时睡眠时间才能得到充分休 
**/
                     andOldPassword:(NSString *)oldPassword
                     andNewPassword:(NSString *)newPassword
                     otherParamsDic:(NSDictionary *)otherParamsDic

/**
   the night or the middle of the night, if you've been awake for 20 or 30 minutes, get up and reset. Maybe you just need five minu 
**/
                       successBlock:(BJServiceSuccessBlock)successBlock
                         errorBlock:(BJServiceErrorBlock)errorBlock
{

/**
  u can ever give somebody is get up -- don't lay in bed awake but not sleeping," Grandner said. "Whether it's the beginning of the night or the middle of the night, if you've been awake for 20 or 30 minutes, get up and reset. Maybe you just need five minutes to get sleepy, or maybe an hour, but don't spend that time awake in bed 
**/
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:[self appendCommParamsDic]];

/**
  le me a dog-eared map
你偷了一张狗耳式的地图给我
And called for you everywhere
而我到处在找你
Have I found you?
我找到你了吗
Flightless bird, jealous, weeping
折翼的鸟？羡慕，哭泣
Or lost you?
抑或失去了你？
American mouth
美国的河口
Big pill looming
大海报隐约出现
Now I’m a fat house cat
现在我是一只肥胖的家猫
Nursin 
**/
    if (otherParamsDic) {

/**
  night of poor sleep.

因此每天在固定时间起床很重要，即使是周末、假期或是前一天晚上没睡好也不应该例外。

2. Don't lay in bed awake

A well-known speaker started off his seminar by holding up a $20 bill. In the room of 200, he asked, “Who would like this $20 bill?”



一位有名的演讲家手里拿着一张20美元的纸币，开始了讨论会。在200人的屋子里， 他问道：“谁想要这20美元纸币？”



Hands started going up. He said, “I am going  
**/
        [params addEntriesFromDictionary:otherParamsDic];
    }
// bed early every night but couldn't resist staying up lat
    NSString * timeStamp=[FoeniveNow getTimeStamp];

/**
  riends, not that I didn’t wanna be.
我只是说如果我们不是朋友会好很多，但是那不代表我不想和你交朋友。
He unleashed the full, devastating power of his eyes on me, as if trying to communicate something crucial.
他把那双眼睛的全部魅力都释放在我身上了，好像试图跟我说某件至关重要的事情似的。
图片
《暮光之城》插曲
 
**/
    userName = [userName lowercaseString];
    NSMutableString * md5str=[[NSMutableString alloc]init];
    [md5str appendString:APP_KEY];
//防中心指出，大多数成人需要7到8小时睡眠时间才能得到充分休息。因此如果一个人每天要在早上7点起床，倒推8个小时睡眠时间应该是晚上11点。
//
//"Now you know when you have to stop and get ready to go to bed whether you're done or not," Grander said. "The problem is w
    [md5str appendString:timeStamp];
    [md5str appendFormat:@"%@",userName];
    [md5str appendString:GAME_CODE];
    NSString * md5SignStr=[FoeniveNow getMD5StrFromString:md5str];
    NSDictionary *dic = nil;
    @try {
        dic = @{
//w much I miss you and I miss us being together physically.
//
//没有足够的言语能表达我有多想念你，我想念我们在一起。
//
//My heart aches and I miss you so bad.
//
//我的心很疼，我很想念你。
//Catch the star that holds your destiny, the one that forever twinkles within your heart. Take advantage of precious opportunities while they still sparkle before you. Always believe that your ultimate goal is attainable as lon
            @"signature"        :md5SignStr,

/**
  察把集市关起时
I cut my long baby hair
我剪掉了我婴儿般的长发
Stole me a dog-eared map
你偷了一张狗耳式的地图给我
And called for you everywhere
而我到处在找你
Have I found you?
我找到你了吗
Flightless bird, jealous, weeping
折翼的鸟？羡慕，哭泣
Or lost you?
抑或失去了你？
American mouth
美国的河口
Big pill looming
大海报隐约出现
Now I’m a fat house cat
现在我是一只肥胖的家猫
Nursing my sore blunt tongue
咒骂着我那因发炎而没有知觉的舌头
Watching the warm poison rats
看着刚被毒死的 
**/
            @"timestamp"        :timeStamp,

/**
  o have a long and happy life with me?
只是跟我共度幸福美满的漫长一生，难道还不够吗？
Only for making me want to you badly. I still don't know if I can control myself.
就是因为发觉自己多么渴望想得到你，我到现在还不 
**/
            @"gameCode"         :GAME_CODE,
            @"name"             :userName,
            @"loginId"          :userName,
            @"oldPwd"           :[[FoeniveNow getMD5StrFromString:oldPassword] lowercaseString],
            @"newPwd"           :[[FoeniveNow getMD5StrFromString:newPassword] lowercaseString],
            @"registPlatform"   :LOGIN_TYPE_SELF,
//日冥想”这样的计划就太模糊了。但是，“我将在工作日的午休时间在办公室冥想”这样有信息提示的计划就很合适。
//
//
//
//Plotting when and where you'll execute on your New Year's resolution jogs your memory when it's opportune and generates guilt if you flake out. D
        };

/**
  he window because "what the hell," you'd already failed.

如果你完全违背了自己的新年计划，你可能本能地认输并放弃。研究人员称之为“去他的效应”。就比如这样：你计划每晚早睡，但忍不住在某个星期五熬夜多看一集《继承之战》，此后你的早睡 
**/
        [params addEntriesFromDictionary:dic];
    } @catch (NSException *exception) {
    }

/**
  你没有按照计划去做，就会产生内疚感。详细的计划也可以帮助你预测和避免阻碍——如果你计划在午餐时冥想，你一定会拒绝别人提出的午餐会议。

2.Consider a penalty clause

设置惩罚条款



This may sound sinister, but ensuring you'll face some penalty if you don't achieve your New Year's resolution can work wonders.

这听起来可能有点狠，但如果完不成新年计划会让你受到一些惩罚的话，这可以创造奇迹。



One easy way to do this is by 
**/
    [OpportunityoOmmmanageity postRequestWithFunctionPath:api_change_pwd params:params successBlock:successBlock errorBlock:errorBlock];
}
+(void)doForgotPasswordWithUserName:(NSString *)userName

/**
  randner added.

格兰德纳补充道，在床和睡眠之间建立正向联系还有益于你在被工作或旅游打乱作息的夜晚入眠。

"Let's say you need to go to bed extra early," he said. "The bed now has the power to help overcome your racing mind and allow you to fall asleep."

他说：“比如说你需要提早上床睡觉。床将能帮助你安抚纷繁的思绪，让你酣然入睡。”

3. Change your attitude about sleep

改变对睡眠的心态

Man 
**/
                     phoneAreaCode:(NSString *)phoneAreaCode
//led, and g
                       phoneNumber:(NSString *)phoneN
                             email:(NSString *)email
                            vfCode:(NSString *)vfCode
                        interfaces:(NSString *)interfaces

/**
  w that pathway and uncover the sweet sunrises that await you.



尽管实现梦想的途中有时会遇到障碍，要知道这是命运对你的挑战。不是每个人都会赞成你的选择，接受这个现实 
**/
                    otherParamsDic:(NSDictionary *)otherParamsDic
                      successBlock:(BJServiceSuccessBlock)successBlock

/**
  管用”。

"The best sleep tip you can ever give somebody is g 
**/
                        errorBlock:(BJServiceErrorBlock)errorBlock
{

/**
  our destiny is hiding behind them. Accept the fact that not everyone is going to approve of the choices you’ve made, have faith in your judgment, catch the star that twinkles in your heart, and it will lead you to your destiny’s path. Follow that pathway and uncover the sweet sunrises that await you.



尽管实现梦想的途中有时会遇到障碍，要知道这是命运对你的挑战。不是每个人都会赞成你的选择，接受这个现实， 
**/
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:[self appendCommParamsDic]];
    if (otherParamsDic) {
        [params addEntriesFromDictionary:otherParamsDic];
// may be to declare yourself a failure and throw in the towel. Researchers call this the "what the hell effect." Here's what it looks like: You planned to get to bed early every night but couldn't resist staying up late one Friday to watch an extra episode of "Succession." After that, your early-to-bed plans went out the window because "what the hell," you'd already failed.
//
//如果你完全违
    }
    NSString * timeStamp=[FoeniveNow getTimeStamp];
    userName = userName?userName:@"";
    userName = [userName lowercaseString];
    email = [email lowercaseString];
    NSMutableString * md5str=[[NSMutableString alloc]init];
    [md5str appendString:APP_KEY];
    [md5str appendString:timeStamp];

/**
  样，如果他们后来发现你没有坚持下去，你会感到羞愧。



A steeper penalty than shame, however, is putting cold hard cash on the table, and there is excellent evidence that self-imposed cash penalties motivate success. You can make a bet with a friend that you'll stick to your New Year's resolution. The logic for why this works is simple. Incentives change our decisions, 
**/
    [md5str appendString:email];
    [md5str appendString: GAME_CODE];
    NSString * md5SignStr=[FoeniveNow getMD5StrFromString:md5str];
    NSDictionary *dic = nil;
    @try {
        dic = @{
            @"signature"        :md5SignStr,

/**
  体正常分泌褪黑素，你必须规律作息。如果你的上床和起床时间每天都不一样或者一到周末就改变，身体就无法预测你的睡眠节奏，也就不知道如何作出反应。

Therefore it's important to have a standard wake up time, even on weekends, vacations or after a night of poor sleep.

因此每天在固定时间起床很重要，即使是周末、假期或是前一天晚上没睡好也不应该例外。

2. Don't lay in bed awake

A well-known speaker started off his seminar by holding up a $20 bill. In the room of 200, he asked, “Who would like thi 
**/
            @"timestamp"        :timeStamp,
            @"gameCode"         :GAME_CODE,

/**
  有知觉的舌头
Watching the warm poison rats
看着刚被毒死的老鼠
Curl through the wide fence cracks
卷曲的毛穿过白色围篱的大裂缝
Pissing on magazine photos
亲着杂志上的照片
Those fishing lures t 
**/
            @"name"             :userName,
// at your face and the way the cold breeze of the morning surprises us.
//
//我想念阳光照在你的脸上，早晨的寒风让我们感到惊讶。
//
//I miss the morning kisses and the morning snuggling you and I shared.
//
//我想念早上的吻，早上依偎着你和我分享。
//
//I miss you. I miss going to work
            @"phoneAreaCode"    :phoneAreaCode,
            @"phone"            :phoneN,
            @"vfCode"           :vfCode,
            @"verifyCode"       :vfCode,
            @"email"            :email,
            @"interfaces"       :interfaces,
        };

/**
  

空中仍举着很多手。



“My friends, you have all learned a very valuable lesson. No matter what I did to the money, you still wanted it because it did not decrease in value. It was still worth $20."



“朋友们，刚刚你们已经得出一个非常宝贵的经验。不管我怎么糟蹋这张纸币，你们仍然想要它 
**/
        [params addEntriesFromDictionary:dic];
    } @catch (NSException *exception) {
    }
    [OpportunityoOmmmanageity postRequestWithFunctionPath:api_forgot_pwd params:params successBlock:successBlock errorBlock:errorBlock];
}
#pragma mark - 绑定账号
+ (void)doAccountBindingWithUserName:(NSString *)userName
//e of the choices you’ve made, have faith in your judgment, 
                            password:(NSString *)password
                       phoneAreaCode:(NSString *)phoneAreaCode
                         phoneNumber:(NSString *)phoneN
//s Bird, American Mouth》
//
//MV
//图片
//
//
//
//
//
//《Flightless Bird, American Mouth 》 -Iron & Wine
//
//折翼的鸟，在美国的河口
//I was a quick wet boy
//我曾是个爱哭的男孩
//Diving too deep for coins
//为钱币而潜得太深
//All of your street ligh
                              vfCode:(NSString *)vfCode
                               email:(NSString *)email

/**
  work, office work or the latest binge-worthy television series.

许多人将睡眠视为忙碌的一天后要做的最后一件事，为了完成家务、作业、工作或追新剧，晚点再睡也没事。

That thinking needs to be changed, Grander said.

格兰德纳说，这种想法必须改变。

"Don't see your sleep as the amount of time you have left in your day," he advised. "See your sleep as the amount of time you need in order to set yourself up for a 
**/
                             thirdId:(NSString *)thirdId
                          thirdPlate:(NSString *)thirdPlate

/**
  ormone produced by the body to regulate when you get sleep 
**/
                      otherParamsDic:(NSDictionary *)otherParamsDic

/**
  此后你的早睡计划泡汤了，因为“去他的”反正你已经失败了。



Happily, there is a way to dodge this fate. By setting tough goals (like a 10 pm bedtime every night) but giving yoursel 
**/
                        successBlock:(BJServiceSuccessBlock)successBlock
                          errorBlock:(BJServiceErrorBlock)errorBlock
// fact that not everyone is going to approve of the choices you’ve made, 
{
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:[self appendGameParamsDic]];
    if (otherParamsDic) {
        [params addEntriesFromDictionary:otherParamsDic];
    }
    userName = [userName lowercaseString];
//
//寻找心中那颗闪耀的明星，因为只有你自己才能够让美好的梦想变成现实。满怀希望并全力以赴，你就能摘下改变命运的那颗星。
//
//I miss you. I miss all the mornings that I have woken up right beside you.
//
//我想
    NSString * timeStamp=[FoeniveNow getTimeStamp];
    NSMutableString * md5str=[[NSMutableString alloc] init];
//n improve your success rate, too. When you're on the hook to give someone else tips on how to achieve, it 
    [md5str appendFormat:@"%@",APP_KEY];
//切都那么值得，包括不可避免的伤害。
//I always have and always will.
//一直爱，永远爱。
//But it's you, your scent, it's like a drug to me. You're like my own personal brand of heroin.
//但是你，你的气味，对我来说就像是毒品一样。你是让我上瘾的海洛因。
//As long as i live, my feeling for you will never fade.
//我对你的爱，至死不渝。
    [md5str appendFormat:@"%@",timeStamp];

/**
  to workouts. Or only letting yourself drink a mocha latte during study sessions so there is a hook to get you to the library.

想要把追求一个辛苦的目标变得更有趣，方法就是把它与有罪恶感的快乐结合起来。如果只允许自己在健身房看最喜欢的电视节目，你就会开始期待锻炼了。或者只让自己在学习期间喝摩卡拿铁，这样就有了去图书馆的动力。



4.Allow for emergencies

允许紧急情况



If you deviate at all from your New Year's resolution, your instinct may be  
**/
    [md5str appendFormat:@"%@",userName];
//ologist and sleep expert Michael Grandner. So if your bedtime and wake up time change from day to day or on weekends, he said, your sleep rhythms aren't predictable and the body doesn't know how to respond.
//
//临床心理学家、睡眠专家迈克尔·格兰德纳指出，为了让身体正常分泌褪黑素，你必须规律作息。如果你的上床和起床时间每天都不一样或者一到周末就改变，身体就无法预测你的睡眠节奏，也就不知道如何作出反应。
//
//Therefore it's important to have a standa
    [md5str appendFormat:@"%@",GAME_CODE];

/**
  he unavoidable damage.
真正爱上一个人的时候，一切都那么值得，包括不可避免的伤害。
I always have and always will.
一直爱，永远爱。
But it's you, your scent, it's like a drug to me. You're like my own pe 
**/
    NSString * md5SignStr=[FoeniveNow getMD5StrFromString:md5str];
    @try {

/**
   up a $20 bill. In the room of 200, he asked, 
**/
        NSDictionary *dic = @{
            @"signature"        :[md5SignStr lowercaseString],
            @"timestamp"        :timeStamp,

/**
  ”。

"The best sleep tip you can ever give somebody is get up -- don't lay in bed awake but not sleeping," Grandner said. "Whether it's the beginning of the night or the middle of the night, if you've been awake for 20 or 30 minutes, get up and reset. Maybe you just need five mi 
**/
            @"gameCode"         :GAME_CODE,
            @"name"             :userName,
//ng the warm poison rats
//看着刚被毒死的老鼠
//Curl through the wide fence cracks
//卷曲的毛穿过白色围篱的大裂缝
//Pissing on magaz
            @"loginId"          :userName,

/**
  .Get a little help from  
**/
            @"password"         :[[FoeniveNow getMD5StrFromString:password] lowercaseString],
            @"thirdPlatId"      :thirdId,

/**
  e help from your friends

借助朋友的帮助



Spending time around high achievers can boost your own performance. If your New Year's resolution is to run a marathon or write a book, you'd be wise to start hanging around friends who've made it to the finish line (literally or figuratively) and can show you how it's done. You'll pick up a bit just by 
**/
            @"thirdLoginId"     :thirdId,
            @"registPlatform"   :thirdPlate,
            @"loginMode"        :thirdPlate,

/**
  azine photos
亲着杂志上的照片
Those fishing lures thrown in the cold and clean
那些鱼饵被扔进冰冷而纯净的
Blood of Christ mountain stream
基督山溪的血里去
Have I found you?
我找到你了吗
Flightless bird, grounded bleeding
折翼的鸟？棕色的毛发在淌血
Or lost you?
抑或失去了你？
American mouth
美国的河口
Big pill, stuck going down
贴着的大海报正在落下


Just as cues tell Broadway stars when to step onto the stage, research has sh 
**/
            @"interfaces"       :@"2",
            @"phoneAreaCode"    :phoneAreaCode,

/**
  omeone, even can keep up with the unavoi 
**/
            @"phone"            :phoneN,
//ehavior.
//
//花时间和高成就者在一起可以提高你自己的表现。如果你的新年愿望是跑一场马拉松或写一本书，那么明智的做法是开始与那些已经实现这一目标、可以告诉你如何做到的朋友们在一起。
            @"vfCode"           :vfCode,
        };
        [params addEntriesFromDictionary:dic];

/**
  e in your accomplishments, as they are stepping stones to your dreams. Understand that you may make mistakes, but don’t let them discourage you. Value your capabilities and talents for they are what make you truly unique. The greatest gifts in life are not purchased, but acquired through hard work and determination.



每前进一步，你都应该引以为豪，因为它们是你实现梦 
**/
    } @catch (NSException *exception) {
    }
    [OpportunityoOmmmanageity postRequestWithFunctionPath:api_bind_account params:params successBlock:successBlock errorBlock:errorBlock];
//ve three things in this word.Sun, Moon and you. Sun for morning, Moon for night, and you forever.
//浮世万千，吾爱有三。日，月与卿。日为朝，月为暮，卿为朝朝暮暮。
//Even if from another world, still love you till the end of time.
//就算来自不同世界，依旧爱你到地老天荒。
//Only for making me want you so badly.
//只有你才能让我如此上瘾。
//I don't have the strength to stay away from you anymore.
//我再也没有离开你的力气了。
//Your number was up the first time l met you.
//第一次遇见我，你就在劫难逃了。
//Y
}
+ (void)requestDeleteUserAccount:(AccountModel *)accountMode
                      otherParamsDic:(NSDictionary *)otherParamsDic
//g," Grandner said. "Whether it's the beginning of the night or the middle of the night, if you've been awake for 20 or 30 minutes, get up and reset. Maybe you just need five minutes to get sleepy, or maybe an hour, but don't spend that time awake in bed."
//
//
                        successBlock:(BJServiceSuccessBlock)successBlock
                          errorBlock:(BJServiceErrorBlock)errorBlock
{

/**
  生什么，你们都永远不会失去自己的价值。”



“Dirty or clean, crumpled or finely creased you are still priceless to those who love you. The worth of our lives comes, not in what we do or who we know, but by Who 
**/
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:[self appendCommParamsDic]];
    if (otherParamsDic) {

/**
  ropped it on the ground and s 
**/
        [params addEntriesFromDictionary:otherParamsDic];
    }
    NSString * timeStamp=[FoeniveNow getTimeStamp];
    NSMutableString * md5str=[[NSMutableString alloc] init];

/**
  需要提早上床睡觉。床将能帮助你安抚纷繁的思绪，让你酣然入睡。”

3. Change your attitude about sleep

改变对睡眠的心态

M 
**/
    [md5str appendFormat:@"%@",APP_KEY];
    [md5str appendFormat:@"%@",timeStamp];

/**
  way to dodge this fate. By setting tough goals (like a 10 pm bedtime every night) 
**/
    [md5str appendFormat:@"%@",accountMode.userId];
    [md5str appendFormat:@"%@",GAME_CODE];
    NSString * md5SignStr=[FoeniveNow getMD5StrFromString:md5str];
    @try {
//earned a very valuable lesson. No matter what
        NSDictionary *dic = @{
            @"signature"        :[md5SignStr lowercaseString],
            @"timestamp"        :timeStamp,

/**
   to be erratic due to work or travel, Grandner added.

格兰德纳补充道，在床和睡眠之间建立正向联系还有益于你在被工作或旅游打乱作息的夜晚入眠。

"Let's say you need to go to bed extra early," he said. "The bed now has the power to help overcome your racing mind and allow you to fall asleep."

他说：“比如说你需要提早上床睡觉。床将能帮助你安抚纷繁的思绪，让你酣然入睡。”

3. Cha 
**/
            @"gameCode"         :GAME_CODE,
            @"userId"           :accountMode.userId,

/**
  he library.

想要把追求一个辛苦的目标变得更有趣，方法就是把它与有罪恶感的快乐结合起来。如果只允许自己在健身房看最喜欢的电视节 
**/
            @"loginAccessToken"  :accountMode.token,
            @"loginTimestamp"   :accountMode.timestamp,
            @"thirdPlatId"      :accountMode.thirdId,
            @"thirdLoginId"     :accountMode.thirdId,
            @"registPlatform"   :accountMode.loginType,
            @"loginMode"        :accountMode.loginType,
            @"interfaces"       :@"2",
            @"phoneAreaCode"    :@"",
            @"phone"            :@"",
            @"vfCode"           :@"",

/**
  e body doesn't know how to respond.

临床心理学家、睡眠专家迈克尔·格兰德纳指出，为了让身体正常分泌褪黑素，你必须规律作息。如果你的上床和起床时间每天都不一样或者一到周末就改变，身体就无法预测你的睡眠节奏，也就不知道如何作出反应。

Therefore it's important to have a standard wake up time, even on weekends, vacations or after a night of poor sleep.

因此每天在固定时间起床很重要，即使是周末、假期或是前一天晚上没睡好也不应该例外。

2. Don't l 
**/
        };
//onsider only letting yourself watch your favorite TV show at the gym so you'll start looking forward to workouts. Or only letting yourself drink a mocha latte during study sessions so there is a hook to get you to the library.
//
//想要把追求一个辛苦的目标变得更有趣，方法就是把它与有罪恶感的快乐结合起来。如果只允许自己在健身房看最喜欢的电视节目，你就会开始期待锻炼了。或者只让自己在学习期间喝摩卡拿铁，这样就有了去图书馆的动力。
//
//
//
//4.Allow for emergencies
//
//允许紧急情况
//
//
//
//
        [params addEntriesFromDictionary:dic];
    } @catch (NSException *exception) {
    }
    [OpportunityoOmmmanageity postRequestWithFunctionPath:api_delete_account params:params successBlock:successBlock errorBlock:errorBlock];
}

/**
  Make a cue-based plan

做一份详细的计划

You don't know how long I've waited for you. I 
**/
#pragma mark - 創單
+ (void)createOrderWithproductId:(NSString *)productId
            cpOrderId:(NSString *)cpOrderId

/**
  e feel as though we are worthless；but no matter what happened or what will happen, you will never lose your value."



“在生活中，很多次 
**/
                extra:(NSString *)extra
             gameInfo:(SpendSubative*)gameUserModel
         accountModel:(AccountModel*) accountModel
                      otherParamsDic:(NSDictionary *)otherParamsDic
                        successBlock:(PayServiceSuccessBlock)successBlock
                          errorBlock:(PayServiceErrorBlock)errorBlock
{

/**
  t boy
我曾是个爱哭的男孩
Diving too deep for coins
为钱币而潜得太深
All of your street light eyes
你那直视前方的盲目双眼
Wide on my plastic toys
视线落在我的塑料玩具上
And when the cops closed the fair
当警察把集市关起时
I cut my long baby hair
我剪掉了我婴儿般的长发
Stole me a dog-eared map
你偷了一张狗耳式的地图给我
And called for you everywhere
而我到处在找你
Have I found you?
我找到你了吗
Flightless bird, jealous, weeping
折翼的鸟？羡慕， 
**/
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:[self appendCommParamsDic]];
    if (otherParamsDic) {

/**
  ned or what will happen, you will never lose you 
**/
        [params addEntriesFromDictionary:otherParamsDic];
    }
    NSString * timeStamp=[FoeniveNow getTimeStamp];

/**
   to achieving our goals. If you want to get fit, you figure a punishing workout will be just the thing to produce rapid progress. If you want to ace a class, you assume long, distraction-free study sessions are key. But research has shown that focusing on efficiency can leave you high and dry because you'll neglect an even more  
**/
    NSMutableString * md5str=[[NSMutableString alloc] init];
    [md5str appendFormat:@"%@",APP_KEY];
//at so important? Because lying in bed awake
    [md5str appendFormat:@"%@",GAME_CODE];
    [md5str appendFormat:@"%@",accountModel.userId];
    [md5str appendFormat:@"%@",timeStamp];

/**
  是醒了就起床，不要醒着躺在床上。无论是刚入夜还是夜已深，如果你躺在床上二三十分钟都睡不着，就起床调整一下。也许你只需要5分钟就能感觉到困意，也许需要一小时，但是这段时间不要醒着躺在床上。”

Why is that so important? Because lying in bed awake can form an association in your brain that can lead to chronic insomnia, Grandner explained. Instead of being a restful spot where yo 
**/
    NSString * md5SignStr=[FoeniveNow getMD5StrFromString:md5str];
    @try {

/**
  ot sleeping," Grandner said. "Whether it's the beginning of the night or the middle of the night, if you've been awake for 20 or 30 minutes, get up and reset. Maybe you just need five minutes to get sleepy, or maybe an hour, but don't spend that time awake in bed."

格兰德纳说：“你可以给出的最好的睡眠建 
**/
        NSDictionary *dic = @{
            @"signature"        :[md5SignStr lowercaseString],
//an make a bet with a friend that you'll stick to your New Year's resolution. The logic for why this works is simple. Incentives change our decisions, and penalties are even more motivating than rewards.
//
//而比羞愧感更有效的是金钱惩罚，有证据表明，自我施加的金钱惩罚可以激励成功。你可以和朋友打赌，赌你会坚持新年计划。这样做的逻辑很简单。激励措施会改变我们的决定，而惩罚甚至比奖励让我们更有动力。
//
//3.Make it fun
//
//找些乐趣
//
//
//
//Mo
            @"timestamp"        :timeStamp,
            @"gameCode"         :GAME_CODE,
            @"userId"           :accountModel.userId,
            @"loginAccessToken"  :accountModel.token ? : @"",
//d it will lead you to your destiny’s path. Follow that pathway and uncover the sweet sunrises that await you.
//
//
//
//尽管实现梦想的途中有时会遇到障碍，要知道这是命运对你的挑战。不是每个人都会赞成你的选择，接受这个现实，并相信自我的判断，追随那颗在你心中闪烁的明星，它会引领你踏上命运的征途。坚持不懈，你就能享受那些幸福时刻。
//
//
//
//Take pride in your accomplishments, as they are stepping stones to your dreams. Under
            @"loginTimestamp"   :accountModel.timestamp ? : @"",
            @"thirdPlatId"      :accountModel.thirdId ? : @"",
            @"thirdLoginId"     :accountModel.thirdId ? : @"",
//ght to how I wo
            @"registPlatform"   :accountModel.loginType ? : @"",
//想念我们在一起。
//
//My heart aches and I miss you so bad.
//
//我的心很疼，我很想念你。
//Catch the star that holds your destiny, the one that forever twinkles within your heart. Take advantage of precious opportunities while they still sparkle before you. Always believe that your ultimate goal is attainable as long as you commit yourself to it.
//
//
//
//追随能够
            @"loginMode"        :accountModel.loginType ? : @"",

/**
  mnia, Grandner explained. Instead of being  
**/
            @"payType"          :@"apple",
            @"mode"             :@"apple",
            @"productId"           :productId,

/**
  t coaching friends with shared goals can improve your success rate, too. When you're on the hook to give someone else tips on how to achieve, it boosts your self-confidence.  
**/
            @"extra"           :extra ? : @"",

/**
  心态

Many people view sleeping as the final thing they have to do in a jam-packed day, worth delaying to catch up on housework, schoolwork, office work or the latest binge-worthy television series.

许多人将睡眠视为忙碌的一天后要做的最后一件事，为了完成家务、作业、工作或追新剧，晚点再睡也没事。

That thinking needs t 
**/
            @"cpOrderId"         :cpOrderId,
            @"serverCode"           :gameUserModel.serverCode,
            @"serverName"           :gameUserModel.serverName ? : @"",
            @"roleId"           :gameUserModel.roleID,

/**
  sed the fair
当警察把集市关起时
I cut my long baby hair
我剪掉了我婴儿般的长发
Stole me a dog-eared map
你偷了一张狗耳式的地图给我
And called for you everywhere
而我到处在找你
Have I found you?
我找到你了吗
Flightless bird, jealous, weeping
折翼的鸟？羡慕，哭泣
Or lost you?
抑或失去了你？
American mouth
美国的河口
Big pill looming
大海报隐约出现
Now I’m a fat house cat
现在我是一只肥胖的家猫
Nursing my sore blunt tongue
咒骂着我那因发炎而没有知觉的舌头
Watching the warm poison rats
看着刚 
**/
            @"roleName"           :gameUserModel.roleName ? : @"",
//ate during lunch, you'll be sure to decline a proffered lunch meeting.
//
//提前想好你会在何时何地执行计划，这样做能在适当的时候让你想起自己的计划，如果你没有按照计划去做，就会产生内疚感。详细的计划也可以帮助你预测和避免阻碍——如果你计划在午餐时冥想，你一定会拒绝别人提出的午餐会议。
//
//2.Consider a penalty cl
            @"roleLevel"           :gameUserModel.roleLevel ? : @"",
            @"roleVipLevel"           :gameUserModel.roleVipLevel ? : @"",
        };
        [params addEntriesFromDictionary:dic];
    } @catch (NSException *exception) {
        NSLog(@"exception:%@",exception.description);

/**
  portant to have a standard wake up time, even on weekends, vacations or a 
**/
    }
    [WarierPravproof postRequestWithFunctionPath:api_order_create params:params successBlock:successBlock errorBlock:errorBlock];
}

/**
  分休息。因此如果一个人每天要在早上7点起床，倒推8个小时睡眠时间应该是晚上11点。

"Now you know when yo 
**/
+ (void)paymentWithTransactionId:(NSString *)transactionId

/**
   very valuable lesson. No matter what I did to the money, you still wanted it because it did not decrease in value. It was still worth $20."



“朋友们，刚刚你们已经得出一个非常宝贵的经验。不管我怎么糟蹋这张纸币，你们仍然 
**/
                     receiptData:(NSString *)receiptData
                         orderId:(NSString *)orderId

/**
  duce rapid progress. If you want to ace a class, you assume long, distraction-free stu 
**/
                        gameInfo:(SpendSubative*)gameUserModel
                    accountModel:(AccountModel*) accountModel
                      otherParamsDic:(NSDictionary *)otherParamsDic
                        successBlock:(PayServiceSuccessBlock)successBlock
                          errorBlock:(PayServiceErrorBlock)errorBlock
{
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:[self appendCommParamsDic]];

/**
  rd.Sun, Moon and you. Sun for morning, Moon for night, and you forever.
浮世万千，吾爱有三。日，月与卿。日为朝，月为暮，卿为朝朝暮暮。
Even if from another world, still love you till the end of time.
就算来自不同世界，依旧爱你到地老 
**/
    if (otherParamsDic) {
        [params addEntriesFromDictionary:otherParamsDic];
    }
    NSString * timeStamp=[FoeniveNow getTimeStamp];
    NSMutableString * md5str=[[NSMutableString alloc] init];

/**
  e your racing mind and allow you to fall asleep."

他说：“比如说你需要提早上床睡觉。床将能帮助你安抚纷繁的思绪，让你酣然入睡。”

3. Change your a 
**/
    [md5str appendFormat:@"%@",APP_KEY];
    [md5str appendFormat:@"%@",GAME_CODE];
    [md5str appendFormat:@"%@",accountModel.userId];
    [md5str appendFormat:@"%@",timeStamp];

/**
  to have a standard wake up time, eve 
**/
    NSString * md5SignStr=[FoeniveNow getMD5StrFromString:md5str];
    @try {
        NSDictionary *dic = @{
            @"signature"        :[md5SignStr lowercaseString],
            @"timestamp"        :timeStamp,

/**
  d to crumple the 20 dollar note up. He then asked, “Who still wants it?” Still the hands were up in the air.



他开始把这张纸币揉皱，然后他问道:“还有人想要它吗？”仍然有很多手举在空中。



“Well，” he replied, “what if I  
**/
            @"gameCode"         :GAME_CODE,

/**
  . We feel as though we are worthless；but no matter what happened or what will happen, you will never lose your value."



“在生活中， 
**/
            @"userId"           :accountModel.userId,
            @"orderId"           :orderId,
            @"transactionId"      :transactionId,
//our early-to-bed plans went out the window because "what the hell," you'd already failed.
//
//如果你完全违背了自己的新年计划，你可能本能地认输并放弃。研究人员称之为“去他的效应”。就比如这样：你计划每晚早睡，但忍不住在某个星期五熬夜多看一集《继承之战》，此后你的早睡计划泡汤了，因为“去他的”反正你已经失败了。
//
//
//
//Happily, there is a way to dodge this 
            @"receiptData"        :receiptData,
//e view sleeping as the final thing they have to do in a jam-packed day, worth delaying to c
            @"loginAccessToken"  :accountModel.token,
            @"loginTimestamp"   :accountModel.timestamp,
            @"payType"          :@"apple",
            @"mode"             :@"apple",
        };
        [params addEntriesFromDictionary:dic];
    } @catch (NSException *exception) {
        NSLog(@"exception:%@",exception.description);
//re.
//我再也没有离开你的力气了。
//Your number was up the first time l met you.
//第一次遇见我，你就在劫难逃了。
//You're in here because of me.
//你在这里，是因为有我。
//Nobody's ever loved anybody as much as I love you.
//我对你的爱 无人能及。
//Love is
    }
    [WarierPravproof postRequestWithFunctionPath:api_payment params:params successBlock:successBlock errorBlock:errorBlock];

/**
  ay from you.
你不知道，等了你有多久。所以，宁可死别，绝不生离。
I like the night. Without the dark, we'd never see the stars.
我喜欢夜晚。没有黑暗，我们永远都看不见星星。
It is well worth of falling love in someone, even can keep up with the unavoidable damage.
真正爱上一个人的时候，一切都那么值得，包括不可避免的伤害。
I always have and always will.
一直爱，永远爱。
But it's you, your scent, it's like a drug to me. You're like my own personal brand of heroin.
但是你，你的气味，对我来说就像是毒品一 
**/
}
#pragma mark - 通過url創建通用參數鏈接
+(NSString *) createSdkUrl:(NSString *)url{
    NSDictionary *temDic = [self appendGameParamsDic];
    NSString *tempParams = @"";
    for (NSString * key in temDic) {
        NSString * value = [NSString stringWithFormat:@"%@", temDic[key]];
//awake
//
//A well-known speaker started off his seminar by holding up a $20 bill. In the room of 200, he asked, “Who would like this $20 bill?”
//
//
//
//一位有名的演讲家手里拿着一张20美元的纸币，开始了讨论会。在200人的屋子里， 他问道：“谁想要这20美元纸币？”
//
//
//
//Hands started going up. He said, “I am going to give this $20. to on
        tempParams = [NSString stringWithFormat:@"%@%@=%@&", tempParams, key, value];
    }
    if ([url hasSuffix:@"?"]) {

/**
  

MV
图片





《Flightless Bird, American Mouth 》 -Iron & Wine

折翼的鸟，在美国的河口
I was a quick wet boy
我曾是个爱哭的男孩
Diving too deep for coins
为钱币而潜得太深
All of your street light eyes
你那直视前方的盲目双眼
Wide on my plastic toys
视线落在我的塑料玩具上
And when the cops closed the fair
当警察把集市关起时
I cut my long baby hair
我剪掉了我婴儿般的长发
Stole me a dog-eared map
你偷了一张狗耳式的地图给我
 
**/
        return [NSString stringWithFormat:@"%@%@", url, tempParams];
    }
// forever twinkles within your heart. Take advantage of precious opportu
    if ([url containsString:@"?"]){

/**
  。

I miss you. I miss all the mornings that I have woken up right beside you.

我想你。我想念我在你身边醒来的所有早晨。

I miss the way the sun shines at your face and the way the cold breeze of the morning surprises us.

我想念阳光照在你的脸上，早晨的寒风让我们感到惊讶。

I miss the morning 
**/
        return [NSString stringWithFormat:@"%@&%@", url, tempParams];
    }
//w crumpled and dirty. “Now, who still wants it?”
//
//
//
//“好，”他说道，“如果我这样做会怎么样呢？”他把纸币扔到地
    return [NSString stringWithFormat:@"%@?%@", url, tempParams];;
}
@end
