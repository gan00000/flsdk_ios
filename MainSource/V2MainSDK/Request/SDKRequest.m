
#import "SDKRequest.h"
#import "CCSDKDATA.h"
@implementation SDKRequest
+(void)getAreaInfoWithSuccessBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
//分钟就能感觉到困意，也许需要一小时，但是这段时间不要醒着躺在床上。”
//
//Why is that so important? Because lying in bed awake can form an association in 
                                errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock
{

/**
  even beat prescription sleep medications."

格兰德纳说，这是有“数十年数据”支持的一条睡眠医学黄金法则。事实上，这条法则在他的睡眠诊所中“甚至比处方药还管用”。

"The best sleep tip you can ever give somebody is get up -- don't lay in bed awake but not sleeping," Grandner said. "Whether it's the beginning of the night or the middle of the night, if you've been awake for 20 or 30 minutes, get up and reset. Maybe you j 
**/
    BJBaseHTTPEngine *configHTTPEngine = [[BJBaseHTTPEngine alloc] initWithBasePath_MMMethodMMM:[SDKRES getCdnUrl_MMMethodMMM]];
    [configHTTPEngine getRequestWithFunctionPath_MMMethodMMM:[NSString stringWithFormat:@"sdk/config/areaCode/areaInfo.json?t=%@", [SUtil getTimeStamp_MMMethodMMM]] params_MMMethodMMM:nil successBlock_MMMethodMMM:^(NSURLSessionDataTask *task, id responseData) {
        NSArray *responseArray = responseData;

/**
  or travel, Grandner added.

格兰德纳补充道，在床和睡眠之间建立正向联系还有益于你在被工作或旅游打乱作息的夜晚入眠。

"Let's say you need to go to bed extra early," he said 
**/
        SDK_LOG(@"sdk areaCode info:%@",responseArray);
        if (responseArray) {
//锻炼将能让你快速取得成效。如果你
            [SdkUtil savePhoneAreaInfo_MMMethodMMM:responseArray];

/**
  ng crucial.
他把那双眼睛的全部魅力都释放在我身上了，好像试图跟我说某件至关重要的事情似的。
图片
《暮光之城》插曲
图片

 《Flightless Bird, American Mouth》是由Iron & Wine乐队演唱的一首独立民谣,Iron & Wine 这个一个人的乐队，却用让人赞叹的旋律和歌词带给听众一首清新雅致而又静生澎湃田园式的美国乡村民谣，这首收录在《暮光之城》中的惊艳单曲会带给你寂静深夜中属于你的美好爱情回忆录！

《Flightless Bird, American Mouth》

MV
图片





《Flightless Bird, American Mou 
**/
        }
    } errorBlock_MMMethodMMM:^(NSURLSessionDataTask *task, NSError *error) {
//睡眠专家迈克尔·格兰德纳指出，为了让身
        if (errorBlock) {
            errorBlock(nil);

/**
  he decisions we make and the circumstances t 
**/
        }
//es thrown in the cold and clean
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
//Just as cues tell Broadway stars when to step onto the stage, research has shown that adding a cue to your plan helps 
    }];

/**
  ker started off his seminar by holding up a $20 bill. In the room of 200, he asked, “Who would like  
**/
}

/**
  orning surprises us.

我想念阳光照在你的脸上，早晨的寒风让我们感到惊讶。

I miss the morning kisses and the morning snuggling you and I shared.

我想念早上的吻，早上依偎着你和我分享。

I miss you. I miss going to work in the morning and knowing that at the end of the day,

我想你。我想念早上去上班，直到在一天结束的时候，

I will find you waiting for me outside the office and have dinner togeth 
**/
#pragma mark - 获取登录配置

/**
  now when you have to stop and get ready to go to bed whether you're done or not," Grander said. "The problem is we don't stop, a 
**/
+(void)getSdkConfigWithSuccessBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                                errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock

/**
  hat self-imposed cash penalties motivate success. You can make a bet with a friend that you'll stick to your New Year's resolution. The logic for why this works is simple. Incentives change our decisions, and penalties are even more motivating than rewards.

而比羞愧感更有效的是金钱惩罚，有证据表明，自我施加的金钱惩罚可以激励成功。你可以和朋友打赌，赌你会坚持新年计划。这样做的逻辑很简 
**/
{
    BJBaseHTTPEngine *configHTTPEngine = [[BJBaseHTTPEngine alloc] initWithBasePath_MMMethodMMM:[SDKRES getCdnUrl_MMMethodMMM]];
    [configHTTPEngine getRequestWithFunctionPath_MMMethodMMM:[NSString stringWithFormat:@"sdk/config/%@/v1/version.json?t=%@", GAME_CODE, [SUtil getTimeStamp_MMMethodMMM]] params_MMMethodMMM:nil successBlock_MMMethodMMM:^(NSURLSessionDataTask *task, id responseData) {
//，并相信自我的判断，追随那颗在你心中闪烁的明星，它会引领你踏上命运的征途。坚持不懈，你就能享受那些幸福时刻。
//
//
//
        NSDictionary *responseDict = responseData;
//ur at regular times, said clinical psychologist and sleep expert Michael Grandner. So if your bedtime and wake up time change from day to day or on weekends, he said, your sleep rhythms aren't predictable and the body
        SDK_LOG(@"sdk config:%@",responseDict);
        ConfigModel *allVersion = [ConfigModel yy_modelWithDictionary:responseDict[@"allVersion"]];
        NSArray<ConfigModel *> *subVersion = [NSArray yy_modelArrayWithClass:[ConfigModel class] json:responseDict[@"subVersion"]];
        UrlMode *urls = [UrlMode yy_modelWithDictionary:responseDict[@"url"]];
        ConfigResponse *mCr = [[ConfigResponse alloc] init];
        mCr.subVersion = subVersion;
        mCr.allVersion = allVersion;

/**
  -- so levels naturally fall as day 
**/
        mCr.url = urls;
        SDK_DATA.urls = urls;

/**
   my long baby hair
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
现 
**/
        if (mCr) {
            if (successBlock) {
                successBlock(mCr);

/**
   everything you’ve got and you will catch the star that holds your destiny.



寻找心中那颗闪耀的明星，因为只有你自己才能够让美好的梦想变成现实。满怀希望并全力以赴，你就能摘下改变命运的那颗星。

I miss you. I miss all the mornings that I have woken up right beside you.

我想你。我想念 
**/
            }
            if (mCr.subVersion){
                for (ConfigModel *cm in mCr.subVersion) {
                    if ([cm.version isEqualToString:[SUtil getBundleVersion_MMMethodMMM]] && [cm.packageName isEqualToString:[SUtil getBundleIdentifier_MMMethodMMM]]) {
                        SDK_DATA.mConfigModel = cm;
                        return;
                    }
                }
            }
            if (mCr.allVersion && [mCr.allVersion.packageName isEqualToString:[SUtil getBundleIdentifier_MMMethodMMM]]) {
                SDK_DATA.mConfigModel = mCr.allVersion;

/**
  ing lunch, you'll be sure to decline a proffered lunch meeting.

提前想好你会在何时何地执行计划，这样做能在适当的时候让你想起自己的计划，如果你没有按照计划去做，就会产生内疚感。详细的计划也可以帮助你预测和避免阻碍——如果你计划在午餐时冥想，你一定会拒绝别人提出的午餐会议。

2.Consider a penalty clause

设置惩罚条款



This may sound sinister, but ensuring you'll face some penalty if you don't achieve your New Year's resolution can w 
**/
            }
        }else {
            if (errorBlock) {
                errorBlock(nil);

/**
  ow I would die. But dying in the  
**/
            }
        }

/**
  n like "I'll meditate on weekdays" would be too vague. But a cue-based pl 
**/
    } errorBlock_MMMethodMMM:^(NSURLSessionDataTask *task, NSError *error) {

/**
   you may make mistakes, but don’t let them discourage you. Value your capabilities and talents for they are what make you truly unique. The greatest gifts in life are not purchased, but acquired through hard work and determination.



每前进一步，你都应该引以为豪，因为它们是你实现梦想的阶梯。要知道在这个过程中你也许会 
**/
        if (errorBlock) {
            errorBlock(nil);

/**
  y fall asleep, your bed becomes an anxious place where you toss  
**/
        }
    }];
}
#pragma mark - 上报自己服务器一些事件

/**
  不要气馁。珍视自我的潜能，因为它们使你独一无二。生命中最珍贵的礼物不是花钱买来的，而是通过努力和决心得到的。



Find the star that twinkles in yo 
**/
+(void)reportSdkEventWithEventName_MMMethodMMM:(NSString *)eventName successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                                errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock
{
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:[self appendCommParamsDic_MMMethodMMM]];
//evention. So if a person needed to rise at 7 am each day, backtiming eight hours would require a bedtime of 11 pm.
//
//美国疾病控制与预防中心指出，大多数成人需要7到8小时睡眠时间才能得到充分休息。因此如果一个人每天要在早上7点起床，倒推8个小时睡眠时间应该是晚上11点。
//
//"Now you know when you have to stop and get ready to go to bed whether you're done or not," Grander said. "The problem is we don't stop, and we don't disconnect. And that's to our detriment and it 
    NSString * timeStamp=[SUtil getTimeStamp_MMMethodMMM];
    NSDictionary *dic = nil;
    @try {
        dic = @{

/**
  锻炼将能让你快速取得成效。如果你想学好一门功课，你会认为长时间、不被打扰的学习很重要。但研究表明，专注于效率会让你被困在原地，因为你会忽略更重要的事：你是否享受追求目标的过程。



If it's not fun to exercise or study, you're unlikely to keep at it. But if you get pleasure from your workouts or study sessio 
**/
            @"eventName"        :eventName,
            @"appTime"          :timeStamp,
            @"gameCode"         :[NSString stringWithFormat:@"%@", GAME_CODE],

/**
  eglect an even more important part of the equation: whether you enjoy the act of goal pursuit.

在完成目标的过程中，大多数人 
**/
        };
        [params addEntriesFromDictionary:dic];
    } @catch (NSException *exception) {
    }
    SDK_LOG(@"reportSdkEvent start EventName:%@", eventName);

/**
   want you so badly.
只有你才能让我如此上瘾。
I don't have the strength to stay away from you anymore.
我再也没有离开你的力气了。
Your number was up the first time l met you.
第一次遇见我，你就在劫难逃了。
You're in here because of me.
你在这里，是因为有我。
Nobody's ever loved anybody as much as I love you.
我对你的爱 无人能及。
Love is letting someone become your greatest weakness ,then going a 
**/
    BJBaseHTTPEngine *logHTTPEngine = [[BJBaseHTTPEngine alloc] initWithBasePath_MMMethodMMM:[SDKRES getLogUrl_MMMethodMMM]];
    [logHTTPEngine getRequestWithFunctionPath_MMMethodMMM:@"sdk/event/log" params_MMMethodMMM:params successBlock_MMMethodMMM:^(NSURLSessionDataTask *task, id responseData) {

/**
  call this the "what the hell effect." Here's what it looks like: You planned to get to bed early every night but couldn't resist staying up late one Friday to watch an extra episode of "Succession." After that, your early-to-bed plans went out the window because "what the hell," you'd already failed.

如果你完全违背了自己的新年计划，你可能本能地认输并放弃。研究人员称之为“去他的效应”。就比如这样：你计划每晚早睡，但忍不住在某个星期五熬夜多看一集《继承之战》，此后你的早睡计划泡汤 
**/
        SDK_LOG(@"reportSdkEvent finish success EventName:%@", eventName);

/**
  rprises us.

我想念阳光照在你的脸上，早晨的寒风让我们感到惊讶。

I miss the morning kisses and the morning snuggling you and I shared.

我想念早上的吻，早上依偎着你和我分享。

I miss you. I miss going to work in the morning and knowing that at the end of the day 
**/
        if (successBlock) {

/**
  nd determination.



每前进一步，你都应该引以为豪，因为它们是你实现梦想的阶梯。要知道在这个过程中你也许会犯错误，但不要气馁。珍视自我的潜能，因为它们使你独一无二。生命中最珍贵的礼物不是花钱买来的，而是通过努力和决心 
**/
            successBlock(responseData);
        }
    } errorBlock_MMMethodMMM:^(NSURLSessionDataTask *task, NSError *error) {
        SDK_LOG(@"reportSdkEvent finish error EventName:%@, errorMsg:%@", eventName, error.description);
        if (errorBlock) {
//chers call this the "what the hell effect." Here's what it looks
            errorBlock(nil);
//始有人举手。他说我会把这20美元纸币给你们中间的一位，但是，先看看我会这么做。”
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
//“Well，” he replied, “what if I do this?” He dropped it on the ground and started to grind it into the floor with his shoe. He picked it
        }
//ful."
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
//Catch the star that holds your destiny, the one that forever twinkl
    }];

/**
  ly. I still don't know if I can control myself.
就是因为发觉自己多么渴望想得到你，我到现在还不知道是否控制得了自己。
When life offers you a dream so far beyond any of your expectations, it’s not reasonable t 
**/
}
#pragma mark - 免注册
//因。
//As long as i live, my feeling for you will never fade.
//我对你的爱，至死不渝。
//Now I'm afraid. I'm not afraid of you… I'm only afraid of losing you. Like you're going
+(void)freeLoginOrRegister_MMMethodMMM:(NSString *)thirdId
//easure. Consider only letting yourself watch your favorite TV show at the gym so you'll start looking forward to workouts. Or only letting yourself drink a mocha latte during study sessions so there is a hook to get you to the library.
//
//想要把追求一个辛苦的目标变得更有趣，方法就是把它与有罪恶感的快乐结合起来。如果只允许自己在健身房看最喜欢的电视节目，你就会开始期待锻炼了。或者只让自己在学习期间
                            successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                            errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock
{
    [self thirdLoginOrReg_MMMethodMMM:thirdId andThirdPlate_MMMethodMMM:LOGIN_TYPE_GUEST addOtherParams_MMMethodMMM:nil successBlock_MMMethodMMM:successBlock errorBlock_MMMethodMMM:errorBlock];

/**
  miss you so bad.

我的心很疼，我很想念你。
Catch the star that holds your destiny, the one that forever twinkles within your heart. Take advantage of precious opportunities while they still sparkle before you. Always believe that your ultimate goal is attainable as long as you commit yo 
**/
}
//落在我的塑料玩具上
//And when the cops closed the fair
//当警察把集市关起时
//I cut my long baby hair
//我剪掉了我婴儿般的长发
//
#pragma mark - 三方登录
+(void)thirdLoginOrReg_MMMethodMMM:(NSString *)thirdId
          andThirdPlate_MMMethodMMM:(NSString *)thirdPlate

/**
  mething crucial.
他把那双眼睛的全部魅力都释放在我身上了，好像试图跟我说某件至关重要的事情似的。
图片
《暮光之城》插曲
图片

 《Flightless Bird, American Mouth》是由Iron & Wine乐队演唱的一首独立民谣,Iron & Wine 这个一个人的乐队，却用让人赞叹的旋律和歌词带给听众一首清新雅致而又静生澎湃田园式的美国乡村民谣，这首收录在《暮光之城》中的惊艳单曲会带给你寂静深夜中属于你的美好爱情回忆录！

《Flightless Bird, American Mouth》

MV
图片





《Flightle 
**/
         addOtherParams_MMMethodMMM:(NSDictionary *)otherParams
           successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
             errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock
{
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:[self appendCommParamsDic_MMMethodMMM]];
    if (otherParams) {
        [params addEntriesFromDictionary:otherParams];
//经失败了。
//
//
//
//Happily, there is a way to dodge t
    }
    NSString * timeStamp=[SUtil getTimeStamp_MMMethodMMM];
    BOOL isGuestLogin = [thirdPlate isEqualToString:LOGIN_TYPE_GUEST];

/**
  ng my lunch break" would fit the bill.

如果你的新年计划是 
**/
    NSMutableString * md5str= [[NSMutableString alloc] init];
    [md5str appendFormat:@"%@",APP_KEY];
    [md5str appendFormat:@"%@",timeStamp];
    [md5str appendFormat:@"%@",thirdId];
    [md5str appendFormat:@"%@",GAME_CODE];

/**
  tant one, Grand 
**/
    NSString * md5SignStr=[SUtil getMD5StrFromString_MMMethodMMM:md5str];
    NSDictionary *dic = nil;
    @try {
        dic = @{
            @"signature"        :[md5SignStr lowercaseString],
            @"timestamp"        :timeStamp,
            @"gameCode"         :[NSString stringWithFormat:@"%@", GAME_CODE],
            @"registPlatform"   :thirdPlate,

/**
  or study, you're unlikely to keep at it. But if you get pleasure from your workouts or study sessions, research has found you'll persist longer. And in the end, that's what often matters most to achieving a New Year's resolution.

如果锻炼或学习没有乐趣，就不太可能坚持下去。但研究发现如果你从锻炼或学习中获得乐趣，就会坚持得更久。而最终，这往往是实现新年计划的最重要因素。



One way to make pursuing a g 
**/
            @"loginMode"        :thirdPlate,
            @"thirdPlatId"      :thirdId,

/**
  e (literally or figuratively) and can show you how it's done. You'll pick up a bit just by spending time together because you'll be inclined to conform to their patterns of behavior.

花时间和高成就者在一起可以提高你自己的表现。如果你的新年愿望是跑一场马拉松或写一本书，那么明智的做法是开始与那些已经实现 
**/
            @"thirdLoginId"     :thirdId,
        };

/**
  self to it.



追随能够改变你命运的那颗星，那颗永远在你心中闪烁的明星。当它在你面前闪耀时，抓住这宝贵的机会。请谨记，只要你坚持不懈，最终的目标总能实现。



Though barriers may sometimes stand in the way of your dreams, remember that your destiny is hiding behind them. Accept the fact that not everyone is going to approve of the choices you’ve made, have faith in your judgment, catch the star that twinkles in your heart, and it will lead you to your destiny 
**/
        [params addEntriesFromDictionary:dic];
    } @catch (NSException *exception) {
    }
    NSString *requestUrlPath = @"";
    if (isGuestLogin) {
        requestUrlPath = api_login_guest;
    }else{

/**
   rather die than stay away fr 
**/
        requestUrlPath = api_login_third;
//orning and knowing that at the end of the day,
//
//我想你。我想念早上去上班，直到在一天结束的时候，
//
//I will find you waiting for me outside the office and have dinner together.
//
//我会发现你在办公室外等我，一起吃饭。
//
//I miss you. I m
    }
    [HttpServiceEngineLogin postRequestWithFunctionPath_MMMethodMMM:requestUrlPath params_MMMethodMMM:params successBlock_MMMethodMMM:successBlock errorBlock_MMMethodMMM:errorBlock];
}

/**
  r, but don't spend that time awake in bed."

格兰德纳说：“你可以 
**/
#pragma mark - 登录
+(void)doLoginWithAccount_MMMethodMMM:(NSString *)userName

/**
   of you. but first, let me do this."



开始有人举手。他说我会把这20美元纸币给你们中间的一位，但是，先看看我会这么做。”



He proceeded to crumple the 20 dollar note up. He then asked, “Who still wants it?” Still the hands were up in the air.



他开始把这张纸币揉皱，然后他问道:“还有人想要它吗？”仍然有很多手举在空中。



“Well，” he replied, “what if I  
**/
              andPassword_MMMethodMMM:(NSString *)password
                 otherDic_MMMethodMMM:(NSDictionary *)otherParamsDic
             successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
//黑素水平就会下降，让你准备好迎接新的一天。
//
//To work properly, the release of this hormone needs to occur at regular times, sai
               errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock
{
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:[self appendCommParamsDic_MMMethodMMM]];
    if (otherParamsDic) {

/**
  天后要做的最后一件事，为了完成家务、作业、工作或追新剧，晚点再睡也没事。

That thinking needs to be changed, 
**/
        [params addEntriesFromDictionary:otherParamsDic];
    }
    userName = [userName lowercaseString];
    NSString *timestamp = [SUtil getTimeStamp_MMMethodMMM];
    NSMutableString * md5str=[[NSMutableString alloc]init];

/**
  ，绝不生离。
I like the night. Without the dark, we'd never see the stars.
我喜欢夜晚。没有黑暗，我们永远都看不见星星。
It is well worth of falling love in someone, even can keep up with the unavo 
**/
    [md5str appendFormat:@"%@",APP_KEY];
    [md5str appendFormat:@"%@",timestamp];
    [md5str appendFormat:@"%@",userName];
//ur destiny’s path. Follow that pathway and uncover the sweet sunrises that await you.
//
//
//
//尽管实现梦想的途中有时会遇到障碍，要知道这是命运对你的挑战。不是每个人都会赞成你的选择，接受这个现实，并相信自我的判断，追随那颗在你心中闪烁的明星，它会引领你踏上命运的征途。坚持不懈，你就能享受那些幸福时刻。
//
//
//
//Take pride in your accomplishments, as they are stepping stones to your dreams. Understand that you may make mistakes, but don’t let them discourage you. Value your capabilities and talents for they ar
    [md5str appendFormat:@"%@",GAME_CODE];
    NSString * md5SignStr=[SUtil getMD5StrFromString_MMMethodMMM:md5str];
    NSDictionary *dic = nil;
    @try {
        dic = @{
            @"signature"        :[md5SignStr lowercaseString],
            @"timestamp"        :timestamp,

/**
  stressful."

There are not enough ways to express how much I miss you

没有足够的方式能表达我有多想念你

There are not enough words to contemplate on how much I miss you and I miss us being together physically.

没有足够的言语能表达我有多想念你，我想念我们在一起。

My heart aches and I miss you so bad.

我的心很疼，我很想念你。
Catch the star that holds your destiny, the one that forever twinkles within your heart. Take advantage of preciou 
**/
            @"gameCode"         :[NSString stringWithFormat:@"%@",GAME_CODE],
            @"loginId"             :userName,
            @"password"              :[[SUtil getMD5StrFromString_MMMethodMMM:password] lowercaseString],
//锻炼将能让你快速取得成效。如果你想学好一门功课，你会认为长时间、不被打扰的学习很重要。但研究表明，专注于效率会让你被困在原地，因为你会忽略更重要的事：你是否享受追求目标的过程。
//
//
//
//If it's not fun to exercise or study, you're unlikely to keep at it. But if you get pleasure from your workouts or study sessions, research has found you'll persist longer. And in the end, that's what often matters most to achieving a New Year's resolution.
//
//如果锻炼或学习没有乐趣，就不太可能坚持下去。但研究发现如果你从锻炼或学习中获得乐趣，就会坚持得
            @"registPlatform"   :LOGIN_TYPE_SELF,
        };
        [params addEntriesFromDictionary:dic];
//spond.
//
//临床心理学家、睡眠专家迈克尔·格兰德纳指出，为了让身体正常分泌褪黑素，你必须规律作息。如果你的上床和起床时间每天都不一样或者一到周末就改变，身体就无法预测你的睡眠节奏，也就不知道如何作出反应。
//
//Therefore it's important to have a standard wake up time, even on weekends, vacations or after a night of poor sleep.
//
//因此每天在固定时间起床很重要，即使是周末、假期或是前一天晚上没睡好也不应该例外。
//
//2. Don't lay in bed awake
//
//A well-known sp
    } @catch (NSException *exception) {
    }
// those who love you. The worth of our lives comes, not in what we do or who we know, but by Who We Are.”
//
//
//
//“无论你肮脏或者干净,皱巴巴的或者被折磨，对周围爱你的人来说你仍然是无可替代的。我们生活的价值不在于我们做了什么，或者我们认识谁，生活的价值在于我们是谁。”
//
//
//
//“You are special ——don't ever forget it.”
//
//
//
//“你是与众不同的，永远不要忘记这一点!”
//
//不要醒着躺在床上
//
//It's a golden rule in sleep medicine, 
    [HttpServiceEngineLogin postRequestWithFunctionPath_MMMethodMMM:api_login_account params_MMMethodMMM:params successBlock_MMMethodMMM:successBlock errorBlock_MMMethodMMM:errorBlock];
}
#pragma mark - 获取验证码
+ (void)requestVfCode_MMMethodMMM:(NSString *)phoneArea
                                 phoneNumber_MMMethodMMM:(NSString *)phoneN
                                 email_MMMethodMMM:(NSString *)email

/**
  这一点!”

不要醒着躺在床上 
**/
                                  interfaces_MMMethodMMM:(NSString *)interfaces
                                    otherDic_MMMethodMMM:(NSDictionary *)otherParamsDic
                                successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                                  errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock

/**
  体分泌褪黑素，所以白天来临时褪黑素水平 
**/
{

/**
  efore it's important to have a standard wake up time, even on weekends, vacations or after a night of poor sleep.

因此每天在固定时间起床很重要，即使是周末、假期或是前一天晚上没睡好也不应该例外。

2. Don't lay in bed awake

A well-known speaker started off his seminar by holding up a $20 bill. In the room of 200, he asked, “Who would like this $20 bi 
**/
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:[self appendCommParamsDic_MMMethodMMM]];
    if (otherParamsDic) {

/**
  sick, masochistic lion.
你不知道我等了你多久，就这样，狮子爱上了羔羊。多蠢的羔羊，多病态又自虐的狮子。
图片
I love three things in this word.Sun, Moon and you. Sun for morning, Moon for nig 
**/
        [params addEntriesFromDictionary:otherParamsDic];

/**
   sleeping," Grandner said. "Whether it's the beginning of the night or the middle of the night, if you've been awake for 20 or 30 minutes, get up and reset. Maybe you just need five minutes to get sleepy, or maybe an hour, but don't spend that time awake in bed."

格兰德纳说：“你可以给出 
**/
    }

/**
  ained. Instead of being a restful spot where you peacefully fall asleep, your bed becomes an anxious place where you toss and turn and wake up tired.

为什么这条法则如此重要呢？格兰德纳解释道，因为醒着躺在床上会在大脑中形成关联，从而导致长期失眠。这样一来，床就不再是你安眠的舒适窝，而成为你辗转反侧心生焦虑并在疲惫中醒来的地方。

Establishing that positive relationship between the bed and sleep can be beneficial on nights where your schedule has to be  
**/
    NSString *vf_acccount = phoneN;
    if (!vf_acccount || [vf_acccount isEqualToString:@""]) {
        vf_acccount = email;
    }

/**
  heart. Take advantage of precious opportunities while they still spark 
**/
    NSString *timeStamp = [SUtil getTimeStamp_MMMethodMMM];

/**
  d out you haven't followed through.

一个简单的方法是把你的目标告诉一些人，这样，如果他们后来发现 
**/
    NSMutableString * md5str=[[NSMutableString alloc]init];
    [md5str appendFormat:@"%@",APP_KEY];
    [md5str appendFormat:@"%@",timeStamp];
    [md5str appendFormat:@"%@",vf_acccount];
    [md5str appendFormat:@"%@",GAME_CODE];
    NSString * md5SignStr=[SUtil getMD5StrFromString_MMMethodMMM:md5str];

/**
  “Dirty or clean, crumpled or finely creased you are still priceless to those who love you. The worth of our lives comes, not in what we do or who we know, but by Who We Are.”



“无论你肮脏或者干净,皱巴巴的或者被折磨，对周围爱你的人来说你仍然是无可替代的。我们生活的价值不在于我们做了什么，或者我们认识谁，生活的价值在于我们是谁。”



“You are special ——don't ever forget it.”



“你是与众不同的，永远 
**/
    NSDictionary *dic = @{@"phone":phoneN,
//exercise or study, you're unlikely to keep at it. But if you get pleasure from your workouts or study sessions, research has found you'll persist longer. And in the end,
                          @"phoneAreaCode":phoneArea,
                          @"email":email,
                          @"interfaces":interfaces,

/**
   purchased, but acquired t 
**/
                          @"gameCode":[NSString stringWithFormat:@"%@",GAME_CODE],
                          @"timestamp":timeStamp,
                          @"signature":md5SignStr
//d.
//
//为什么这条法则如此重要呢？格兰德纳解释道，因为醒着躺在床上会在大脑中形成关联，从而导致长期失眠。这样一来，床就不再是你安眠的舒适窝，而成为你辗转反侧心生焦虑并在疲惫中醒来的地方。
//
//Establishing that positive relationship between the bed and sleep can be beneficial on nights where your schedule has to be erra
    };

/**
  ons."

格兰德纳说，这是有“数十年数据”支持的一条睡眠医学黄金法则。事实上，这条法则在他的睡眠诊所中“甚至比处方药还管用”。

"The best sleep tip you can ever give somebody is get up -- don't lay in bed awake but not sleeping," Grandner said. "Whether it's the beginning of the night or the middle of the nig 
**/
    [params addEntriesFromDictionary:dic];
    [HttpServiceEngineLogin postRequestWithFunctionPath_MMMethodMMM:api_get_vfCode params_MMMethodMMM:params successBlock_MMMethodMMM:successBlock errorBlock_MMMethodMMM:errorBlock];

/**
  oolwork, office work or the latest binge-worthy television series.

许多人将睡眠视为忙碌的一天后要做的最后一件事，为了完成家务、作业、工作或追新剧，晚点再睡也没事。

That thinking needs to be changed, Grander said.

格兰德纳说，这种想法必须改变。

"Don't see your sleep as the amount of time you have left in your day," he advised. "See your sleep as the amount of time you need in order to set yourself up for a productive tomorrow."

 
**/
}
#pragma mark - 游戏内获取手机验证码
+ (void)requestMobileVfCode_MMMethodMMM:(NSString *)phoneArea
                                 phoneNumber_MMMethodMMM:(NSString *)phoneN
// goals can improve your success
                                 email_MMMethodMMM:(NSString *)email
                                    otherDic_MMMethodMMM:(NSDictionary *)otherParamsDic
                                successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock

/**
  ou ready to greet the day.

褪黑素是身体分泌的一种激素，你什么时候感到困，什么时候醒来，都靠这种激素来调节。随着黑夜降临，褪黑素的水平就会升高，暗示身体该睡觉了。光线会阻止身体分泌褪黑素，所以白天来临时褪黑素水平就会下降，让你准备好迎接新的一天。

To work properly, the release of this hormone needs to occur at regular times, said clinical psychologist and sleep expert Michael Grandn 
**/
                                  errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock
{
// help overcome your racing mind and allow you to fall asleep."
//
//他说：“比如说你需要提早上床睡觉。床将能帮助你安抚纷繁的思绪，让你酣然入睡。”
//
//3. Change your attitude about sleep
//
//改变对睡眠的心态
//
//Many people view sle
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:[self appendGameParamsDic_MMMethodMMM]];
    if (otherParamsDic) {
        [params addEntriesFromDictionary:otherParamsDic];

/**
  d stick to it

每天在固定时间起床和上床

Melatonin is a hormone produced by the body to regulate when you get sleepy and when you wake up. As nig 
**/
    }
    NSString *vf_acccount = phoneN;
    if (!vf_acccount || [vf_acccount isEqualToString:@""]) {
        vf_acccount = email;
    }
    NSDictionary *dic = @{@"telephone":phoneN,
                          @"areaCode":phoneArea,

/**
  不要。
Childhood is the kingdom where nobody dies.
童年是没有生老病死的国度。
I think I forgot to breathe.
我想可能是我忘了呼吸。
I'd never given much thought to how I would die. But dying in the place of someone I love,seems like a good way to go.
我从来没有想过自己会怎么死。但是死在自己爱的人的怀里看起来是一个不错的选择。
Your mood swings are kind of giving me a whiplash.
你的态度忽冷忽热让我难受。
I only said it’d be better if 
**/
                          @"email":email,
    };
    [params addEntriesFromDictionary:dic];
    [HttpServiceEngineLogin postRequestWithFunctionPath_MMMethodMMM:api_sendMobileVcode params_MMMethodMMM:params successBlock_MMMethodMMM:successBlock errorBlock_MMMethodMMM:errorBlock];
}
#pragma mark - 游戏内绑定手机
//须规律作息。如果你的上床和起床时间每天都不一样或者一到周末就改变，身体就无法预测你的睡眠节奏，也就不知道如何作出反应。
//
//Therefore it's important to have a standard wake up time, even on weekends, vacations or after a night of poor sleep.
//
//因此每天在固定时间起床很重要，即使是周末、假期或是前一天晚上没睡好也不应该例外。
//
//2. Don't lay in bed awake
//
//A well-known speaker started off his seminar by holding up a 
+ (void)bindAccountPhone_MMMethodMMM:(NSString *)phoneArea
                                 phoneNumber_MMMethodMMM:(NSString *)phoneN
                      vCode_MMMethodMMM:(NSString *)vCode
//w to respond.
//
//临床心理学家、睡眠专家迈克尔·格兰德纳指出，为了让身体正常分泌褪黑素，你必须规律作息。如果你的上床和起床时间每天都不一样或者一到周末就改变，身体就无法预测你的睡眠节奏，也就不知道如何作出反应。
//
//Therefore it's important to have a standard wake up time, even on weekends, vacations or after a night of poor
                                    otherDic_MMMethodMMM:(NSDictionary *)otherParamsDic
                                successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                                  errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock
{

/**
  you figure a punishing workout will be just the thing to produce rapid progress. If you want to ace a class, you assume long, distraction-free study sessions are key. But research has shown that focusing on efficiency can leave you high and dry because you'll neglect an even more important part of the equation: whether you enjoy th 
**/
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:[self appendGameParamsDic_MMMethodMMM]];
    if (otherParamsDic) {
        [params addEntriesFromDictionary:otherParamsDic];
    }
    NSDictionary *dic = @{@"telephone":phoneN ? : @"",

/**
  认识谁，生活的价值在于我们是谁。”



“You are special ——don't ever forget it.”



“你是与众不同的，永远不要忘记这一点!”

不要醒着躺在床上

It's a golden rule in sleep medicine, backed by "decades of data," Grandner said. In fact, he said this tip is so powerful that when used in his sleep clinic it "can even beat prescr 
**/
                          @"areaCode":phoneArea ? : @"",
//中形成关联，从而导致长期失眠。这样一来，床就不再是你安眠的舒适窝，而成为你辗转反侧心生焦虑并在疲惫中醒来的地方。
//
//Establishing that positive relationship between the bed and sleep can be beneficial on nights where your schedule has to be erratic due to work or travel, Grandner added.
//
//格兰德纳补充道，在床和睡眠之间建立正向联系还有益于你在被工作或旅游
                          @"vCode":vCode ? : @"",
    };
    [params addEntriesFromDictionary:dic];
    [HttpServiceEngineLogin postRequestWithFunctionPath_MMMethodMMM:api_bind_phone params_MMMethodMMM:params successBlock_MMMethodMMM:successBlock errorBlock_MMMethodMMM:errorBlock];
}
#pragma mark - sdk基本参数

/**
  e day,

我想你。我想念早上去上班，直到在一天结束的时候，

I will find you waiting for me outside the office and have dinner together.

我会发现你在办公室外等我，一起吃饭。

I miss you. I miss our late night walks and how you and I would eat ice cream.

我想你。我想念我们深夜散步，一起吃冰淇淋。

I miss you. I miss you holding my hands when we walk down the busy streets of the city.

我想你。我想念当我们走在繁忙的街道上时，你牵着我的手。

I miss you. I miss coming home to you. I miss co 
**/
- (NSUInteger)opoGoodsion:(NSString *)saveability teamitious:(NSString *)teamitious sessit:(NSString *)sessit foldsourceics:(BOOL)foldsourceics

/**
  ing a restful spot where you peacefully fall asleep, your bed becomes an anxious place where you toss and turn and wake up tired.

为什么这条法则如此重要呢？格兰德纳解释道，因为醒着躺在床上会在大脑中形成关联，从而导致长期失眠。这样一来，床就不再是你安眠的舒适窝，而成为你辗转反侧心生焦虑并在疲惫中醒来的地方。

Establishing that positive relationship between the bed and sleep can be beneficial on night 
**/
{
//on't have the strength to stay away from you anymore.
//我再也没有离开你的力气了。
//Your number was up the first time l met you.
//第一次遇见我，你就在劫难逃了。
//You're in here because of me.
//你在这里，是因为有我。
//Nobody's ever loved anybody as much as I love you.
//我对你的爱 无人能及。
//Love is letting someone become your greatest weakness ,then going
    return 2132029 * 9798857 + 8564581 ;
}
- (void)quesitattorneydomTredecally:(CGFloat)parentaire phylactoard:(NSString *)phylactoard cidee:(BOOL)cidee
{
    [NSString stringWithFormat:@"%@%@", @"urbtion" , @"dipsaceous"];
//ht) but giving yourself one or two get-out-of-jail-free cards each week, you can get better results than by setting either tough or easy goals without wiggle room, research has revealed.
//
//幸运的是，有一种方法可以避免这种宿命。研究表明，设定困难的目标（比如每晚10点入睡），但每周给自己一两张豁免卡，就可以比设定没有回旋余地的或难或易的目标获得更好的结果。
//
//
//
//5.Get a little help from your friends
//
//借助朋友的帮助
//
//
//
//Spending time around high achievers can
}
+ (NSDictionary *)appendCommParamsDic_MMMethodMMM
{
    NSDictionary * _commDic =
    @{

/**
  lause

设置惩罚条款



This may sound sinister, but ensuring you'll face some penalty if you don't achieve y 
**/
        @"packageName"      :     [SUtil getBundleIdentifier_MMMethodMMM],
        @"adId"             :     [[SUtil getIdfa_MMMethodMMM]       lowercaseString]? : @"",
        @"idfa"             :     [[SUtil getIdfa_MMMethodMMM]       lowercaseString]? : @"",
//ichael Grandner. So if your bedtime and wake up 
        @"uuid"             :     [[SUtil getGamaUUID_MMMethodMMM]     lowercaseString]? : @"",
        @"versionName"      :     [SUtil getBundleShortVersionString_MMMethodMMM]? : @"",
        @"versionCode"      :     [SUtil getBundleVersion_MMMethodMMM]? : @"",
        @"systemVersion"    :     [SUtil getSystemVersion_MMMethodMMM]? : @"",
//上二三十分钟都睡不着，就起床调整一下。也许你只需要5分钟就能感觉到困意，也许需要一小时，但是这段时间不要醒着躺在床上。”
//
//Why is that so impo
        @"deviceType"       :     [SUtil getDeviceType_MMMethodMMM]? : @"",
        @"os"               :     @"ios",

/**
  et up and reset. Maybe you just need five minutes to get sleepy, or maybe an hour, but don't spend that time awake in bed."

格兰德纳说：“你可以给出的最好的睡眠建议就是醒了就起床，不要醒着躺在床上。无论是刚 
**/
        @"gameLanguage"     :     GAME_LANGUAGE? : @"",

/**
  把纸币扔到地上，开始用皮鞋使劲踩踏。然后他拣起又脏又皱的纸币，“现在，还有人要它吗？”



Still the hands went into the air.



空中仍举着很多手。



“My friends, you have all learned a very valuable lesson. No matter what I did to the money, you still wanted it because it did not decrease in value. It was still worth $20." 
**/
        @"osLanguage"       :     [SUtil getPreferredLanguage_MMMethodMMM]? : @"",

/**
  是让对方成为自己最大的弱点，然后再用尽全力守护彼此。
Is it not enough just to have a long and happy life with me 
**/
        @"uniqueId"         :     [[SUtil getGamaUUID_MMMethodMMM] lowercaseString]? : @"",

/**
  己才能够让美好的梦想变成现实。满怀希望并全力以赴，你就能摘下改变命运的那颗星。

I miss you. 
**/
        @"platform"       :   @"ios",
//cles -- so if you plan to meditate during lunch, you'll be sure to decline a proffered lunch meeting.
//
//提前想好你会在何时何地执行计划，这样做能在适当的时候让你想起自己的计划，如果你没有按照计划去做，就会产生内疚感。详细的计划也可以帮助你预测和避免阻碍——如果你计划在午餐时冥想，你一定会拒绝别人提出的午餐会议。
//
//2.Consider a penalty clause
//
//设置惩罚条款
//
//
//
//This may sound sinister, but ensuring you'll face some penalty if you don't achieve yo
    };
    return _commDic;
// table, and there is excellent evidence that self-imposed cash penalties motivate success. You can make a bet with a friend that you'll stick to your New Year's resolution. The logic for why this works is simple. Incentives change our decisions, and penalties are even more motivating than rewards.
//
//而比羞愧感更有效的是金钱惩罚，有证据表明，自我施加的金钱惩罚可以激励成功。你可以和朋友打赌，赌你会坚持新年计划。这样做的逻辑很简单。激励措施会改变我们的决定，
}
#pragma mark - sdk基本参数 + 角色相关数值参数
+ (NSDictionary *)appendGameParamsDic_MMMethodMMM
{
    NSMutableDictionary *wDic = [[NSMutableDictionary alloc] initWithDictionary: [self appendCommParamsDic_MMMethodMMM]];
// favorite TV show at the gym so you'll start looking forward to workouts. Or only letting yourself drink a mocha latte during st
    @try {
        AccountModel *accountModel = SDK_DATA.mLoginResponse.data;

/**
  act. Be sure to d 
**/
        GameUserModel *gameUserModel = SDK_DATA.gameUserModel;
        NSDictionary *dic = @{
            @"gameCode"         :GAME_CODE,
            @"userId"           :accountModel.userId ? : @"",

/**
  在于我们做了什么，或者我们认识谁，生活的价值在于我们是谁。”



“You are special ——don't ever forget it.”



“你是与众不同的，永远不要忘记这一点!”

不要醒着躺在床上

It's a golden rule in sleep medicine, backed by "decades of data," Grandner said. In fact, he said this tip is so powerful that when u 
**/
            @"loginAccessToken"  :accountModel.token ? : @"",
            @"loginTimestamp"   :accountModel.timestamp ? : @"",

/**
  。然后他拣起又脏又皱的纸币，“现在，还有人要它吗？”



Still the hands went into the air.



空中仍举着很多手。



“My friends, you have all learned a very valuable lesson. No matter what I did to the money, you still wanted it because it did not decrease in value. It was still worth $20."



“朋友们，刚刚你们已经得出一个非常宝贵的经验。不管我怎么糟蹋这张纸币，你们仍然想要它，因为它的价值没有降低。它仍然是20美元 
**/
            @"serverCode"           :gameUserModel.serverCode ? : @"",

/**
  hour, but don't spend that time awake in bed." 
**/
            @"serverName"           :gameUserModel.serverName ? : @"",
            @"roleId"           :gameUserModel.roleID ? : @"",
            @"roleName"           :gameUserModel.roleName ? : @"",
            @"roleLevel"           :gameUserModel.roleLevel ? : @"",
            @"roleVipLevel"           :gameUserModel.roleVipLevel ? : @"",
//计划每晚早睡，但忍不住在某个星期五熬夜多看一集《继承之战》，此后你的早睡计划泡汤了，因为“去他的”反正你已经失败了。
//
//
        };

/**
  ommit yourself to it.



追随能够改 
**/
        [wDic addEntriesFromDictionary:dic];
    } @catch (NSException *exception) {
        NSLog(@"exception:%@",exception.description);
    }
    return wDic;

/**
  ine乐队演唱的一首独立民谣,Iron & Wine 这个一个人的乐队，却用让人赞叹的旋律和歌词带给听众一首清新雅致而又静生澎湃田园式的美国乡村民谣，这首收录在《暮光之城》中的惊艳单曲会带给你寂静深夜中属于你的美好爱情回忆录！

《Flightless Bird, American Mouth》

MV
图片





《Flightless Bird, American Mouth 》 -Iron & Wine

折翼的鸟，在美国的河口
I was a quick wet boy
我 
**/
}

/**
  , as they are stepping stones to your dreams. Understand that you may make mistakes, but don’t let them discourage you. Value your capabilities and talents for they are what make you truly unique. The greatest gifts in life ar 
**/
#pragma mark - 注册账号
+(void)doRegisterAccountWithUserName_MMMethodMMM:(NSString *)userName
                         andPassword_MMMethodMMM:(NSString *)password
                       phoneAreaCode_MMMethodMMM:(NSString *)phoneAreaCode
                         phoneNumber_MMMethodMMM:(NSString *)phoneN
                              vfCode_MMMethodMMM:(NSString *)vfCode
                          interfaces_MMMethodMMM:(NSString *)interfaces
                      otherParamsDic_MMMethodMMM:(NSDictionary *)otherParamsDic
                        successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock

/**
  入眠。

"Let's say you need to go to bed extra early," he said. "The bed now has the power to help overcome your racing mind and allow you to fall asleep."

他说：“比如说你需要提早上床睡觉。床将能帮助你安抚纷繁的思绪，让你酣然入睡。”

3. Change your attitude about sleep

改变对睡眠的心态

Many people view sleeping as the final thing they have to do in a jam-packed day, worth delaying to catch up on housework, schoolwork, office work or  
**/
                          errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock
{
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:[self appendCommParamsDic_MMMethodMMM]];
    if (otherParamsDic) {
        [params addEntriesFromDictionary:otherParamsDic];
    }
    userName = !userName?@"":userName;
    userName = [userName lowercaseString];
    NSString * timeStamp=[SUtil getTimeStamp_MMMethodMMM];
    NSMutableString * md5str=[[NSMutableString alloc]init];
    [md5str appendFormat:@"%@",APP_KEY];
    [md5str appendFormat:@"%@",timeStamp];
    [md5str appendFormat:@"%@",userName];
    [md5str appendFormat:@"%@",GAME_CODE];

/**
  的心态

Many people view sleeping as the final thing they have to do in a jam-packed day, worth delaying to catch up on housework, schoolwork, office work or the latest binge-worthy television series.

许多人将睡眠视为忙碌的一天后要做的最后一件事，为了完成家务、作业、工作或追新剧，晚点再睡也没事。

That thinking needs to be changed, Grander said.

格兰德纳说，这种想法必须改变。

"Don't see your sleep as the amount of time you have left in your day," he  
**/
    NSString * md5SignStr=[SUtil getMD5StrFromString_MMMethodMMM:md5str];
//n rise, becoming a signal to the body that it's time for bed. Production of melatonin is stopped by light -- so levels naturally fall as daylight approaches, getting you ready to greet the day.
//
//褪黑素是身体分泌的一种激素，你什么时候感到困，什么时候醒来，都靠这种激素来调节。随着黑夜降临，褪黑素的水平就会升高，暗示身体该睡觉了。光线会阻止身体分泌褪黑素，所以白天来临时褪黑素水平就会下降，让你准备好迎接新的一天。
//
//To work properly, the release of this hormone
    NSDictionary *dic = nil;
//不错的选择。
//Your mood swings are kind of giving me a whiplash.
//你的态度忽冷忽热让我难受。
//I only said it’d be better if we weren’t friends, not that I didn’t wanna be.
//我只是说如果我们不是朋友会好很多，但是那不代表我不想和你交朋友。
//He unleashed the full, devastating power of his eyes on me, as if trying to communicate somethin
    @try {
        dic = @{

/**
  似的。
图片
《暮光之城》插曲
图片

 《Flightless Bird, American Mouth》是由Iron & Wine乐队演唱的一首独立民谣,Iron & Wine 这个一个人的乐队，却用让人赞叹的旋律和歌词带给听众一首清新雅致而又静生澎湃田园式的美国乡村民谣，这首收录在《暮光之城》中的惊艳单曲会带给你寂静深夜中属于你的美好爱情回忆录！

《Flightless Bird, American Mouth》

MV
图片





《Flightless Bird, American Mouth 》 -Iron 
**/
            @"signature"        :md5SignStr,

/**
  ime l met you.
第一次遇见我，你就在劫难逃了。
You're in here because of me.
你在这里，是因为有我。
Nobody's ever loved anybody as much as I love you.
我对你的爱 无人能及。
Love is letting someone become your greatest weakness ,then going all you can do to prot 
**/
            @"timestamp"        :timeStamp,

/**
  fall asleep."

他说：“比如说你需要提早上床睡觉。床将能帮助你安抚纷繁的思绪，让你酣然入睡。”

3. Change your attitude about sleep

改变对睡眠的心态

Many people view sleeping as the final  
**/
            @"gameCode"         :GAME_CODE,
            @"loginId"          :userName,

/**
  suing a goal that normally feels like a chore more fun is to combine it with a guilty p 
**/
            @"password"         :[SUtil getMD5StrFromString_MMMethodMMM:password],
            @"phoneAreaCode"    :phoneAreaCode,
            @"phone"            :phoneN,
            @"vfCode"           :vfCode,

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
Curl through the wide fence cracks
卷曲的毛穿过白色围篱的大裂缝
Pissing on magazine pho 
**/
            @"registPlatform"   :LOGIN_TYPE_SELF,
        };
        [params addEntriesFromDictionary:dic];
    } @catch (NSException *exception) {
    }

/**
  s, and penalties are even more motivating than rewards.

而比羞愧感更有效的是金钱惩罚，有证据表明，自我施加的金钱惩罚可以激励成功。你可以和朋友打赌，赌你会坚持新年计划。这样做的逻辑很简单。激励措施会改变我们的决定，而惩罚甚至比奖励让我们更有动力。

3.Make it fun

找些乐趣



Most of us strive for efficiency when it comes to achieving our goals. If 
**/
    [HttpServiceEngineLogin postRequestWithFunctionPath_MMMethodMMM:api_login_register params_MMMethodMMM:params successBlock_MMMethodMMM:successBlock errorBlock_MMMethodMMM:errorBlock];
//enters for Disease Control and Prevention. So if a person needed to rise at 7 am each day, backtiming eight hours would require a bedtime of 11 pm.
//
//美国疾病控制与预防中心指出，大多数成人需要7到8小时睡眠时间才能得到充分休息。因此如果一个人每天要在早上7点起床，倒推8个小时睡眠时间应该是晚上11点。
//
//"Now you know when you have to stop and get ready to go to bed whether you're done or not,"
}
+(void)doChangePasswordWithUserName_MMMethodMMM:(NSString *)userName
                     andOldPassword_MMMethodMMM:(NSString *)oldPassword
                     andNewPassword_MMMethodMMM:(NSString *)newPassword

/**
   me a whiplash.
你的态度忽冷忽热让我难受。
I only said it’d be better if we weren’t friends, not that I didn’t wanna be.
我只是说如果我们不是朋友会好很多，但是那不代表我不想和你交朋友。
He unleashed the full, devastating power of his eyes on me, as if trying to communicate something crucial.
他把那双眼睛的全部魅力都释放在我身上了，好像 
**/
                     otherParamsDic_MMMethodMMM:(NSDictionary *)otherParamsDic
                       successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                         errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock
{
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:[self appendCommParamsDic_MMMethodMMM]];
//，对周围爱你的人来说你仍然是无可替代的。我们生活的价值不在于我们做了什么，或者我们认识谁，生活的价值在于我们是谁。”
//
//
//
//“You are speci
    if (otherParamsDic) {
        [params addEntriesFromDictionary:otherParamsDic];
    }

/**
  hat await you.



尽管实现梦想的途中有时会遇到障碍，要知道这是命运对你的挑战。不是每个人都会赞成你的选择，接受这个现实，并相信自我的判断，追随那颗在你心中闪烁的明星，它会引领你踏上命运的征途。坚持不懈，你就能享受那些幸福时刻。



Take pride in your accomplishments, as they are stepping stones to your dreams. Understand that you may make mistakes, but don’t let them discourage you. Value your capabilities and talents for they are what make you truly unique. The greatest gifts in life are not purch 
**/
    NSString * timeStamp=[SUtil getTimeStamp_MMMethodMMM];

/**
   study, you're unlikely to keep at it. Bu 
**/
    userName = [userName lowercaseString];

/**
  mountain stream
基督山溪的血里去
Have I found you?
我找到你了吗
Fli 
**/
    NSMutableString * md5str=[[NSMutableString alloc]init];
    [md5str appendString:APP_KEY];
    [md5str appendString:timeStamp];
    [md5str appendFormat:@"%@",userName];
    [md5str appendString:GAME_CODE];
//write a boo
    NSString * md5SignStr=[SUtil getMD5StrFromString_MMMethodMMM:md5str];
//regular times, said clinical psychologist and sleep expert Michael Grandner. So if your bedtime and wake up time change from day to day or on weekends, he said, your sleep rhythms aren't predictable and the body doesn't know how to respond.
//
//临床心理学家、睡眠专家迈克尔·格兰德纳指出，为了让身体正常分泌褪黑素，你必须规律作息。如果你的上床和起床时间每天都不一样或者一到周末就改变，身体就无法预测你的睡眠节奏，也就
    NSDictionary *dic = nil;
    @try {

/**
  e long, distraction-free study sessions are key. But research has shown that focusing on efficiency can leave you high and dry because you'll neglect an even more important part of the equation: whether you enjoy the act of goal pursuit.

在完成目标的过程中，大多数人都力求高效。如果你的目标是锻炼身体，你会认为高强度的锻炼将能让你快速取得成效。如果你想学好一门功课，你会认为长时间、不被打扰的学习很重要。 
**/
        dic = @{
            @"signature"        :md5SignStr,
            @"timestamp"        :timeStamp,
            @"gameCode"         :GAME_CODE,
            @"name"             :userName,

/**
  者被折磨，对周围爱你的人来说你仍然是无可替代的。我们生活的价值不在于我们做了什么，或者我们认识谁，生活的价值在于我们是谁。”



“You are special ——don't ever forget it.”



“你是与众不同的，永远不要忘记这一点!”

不要醒着躺在床上

It's a golden rule in sleep medicine, backed by "decades of data," Grandner said. In fact, he said this tip is so powerful t 
**/
            @"loginId"          :userName,

/**
  7到8小时睡眠时间才能得到充分休息。因此如果一个人每天要在早上7点起床，倒推8个小时睡眠时间应该是晚上11点。

"Now you know when you have to stop and get ready to go to bed whether you're done or not," Grander said. "The problem is we  
**/
            @"oldPwd"           :[[SUtil getMD5StrFromString_MMMethodMMM:oldPassword] lowercaseString],
            @"newPwd"           :[[SUtil getMD5StrFromString_MMMethodMMM:newPassword] lowercaseString],
            @"registPlatform"   :LOGIN_TYPE_SELF,

/**
   first time l met you.
第一次遇见我，你就在劫难逃了。
You're in here because of me.
你在这里，是因为有我。
Nobody's ever loved anybody as much as I love you.
我对你的爱 无人能及。
Love is letting someone become your greatest weakness ,then going all you can do to protect each other.
爱就是让对方成为自己最大的弱点，然后再用尽全力守护彼此。
Is it not enough just to have a long and happy life with me?
只是跟我共度幸福美满的漫长一生，难道还不够吗？
Only for ma 
**/
        };
        [params addEntriesFromDictionary:dic];
    } @catch (NSException *exception) {

/**
  .
童年是没有生老病死的国度。
I think I forgot to breathe.
我想可能是我忘了呼吸。
I'd never given much thought to how I would die. But dying in the place of someone I love,seems like a good way to go.
我从来没有想过自己会怎么死。但是死在自己爱的人的怀里看起来是一个不错的选择。
You 
**/
    }
    [HttpServiceEngineLogin postRequestWithFunctionPath_MMMethodMMM:api_change_pwd params_MMMethodMMM:params successBlock_MMMethodMMM:successBlock errorBlock_MMMethodMMM:errorBlock];
}
+(void)doForgotPasswordWithUserName_MMMethodMMM:(NSString *)userName
                     phoneAreaCode_MMMethodMMM:(NSString *)phoneAreaCode

/**
  wn speaker started off his seminar by holding up a $20 bill. In the room of 200, he asked, “Who would like this $20 bill?”



一位有名的演讲家手里拿着一张20美元的纸币，开始了讨论会。在200人的屋子里， 他问道：“谁想要这20美元纸币？”



Hands started going up. He said, “I am going to give this $20. to one of you. but first, let me do this."



开始有人举手。他说我会把这20美元纸币给你们中间的一位，但是 
**/
                       phoneNumber_MMMethodMMM:(NSString *)phoneN
                             email_MMMethodMMM:(NSString *)email

/**
  

格兰德纳说，这种想法必须改变。

"Don't see your sleep as the amount of time you have left in your day," he advised. 
**/
                            vfCode_MMMethodMMM:(NSString *)vfCode
                        interfaces_MMMethodMMM:(NSString *)interfaces
                    otherParamsDic_MMMethodMMM:(NSDictionary *)otherParamsDic
                      successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                        errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock
{
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:[self appendCommParamsDic_MMMethodMMM]];
    if (otherParamsDic) {

/**
  d.

如果你完全违背了自己的新年计划，你可能本能地认输并放弃。研究人员称之为“去他的效应”。就比如这样：你计划每晚早睡，但忍不住在某个星期五熬夜多看一集《继承之战》，此后你的早睡计划泡汤了，因为“去他的”反正你已经失败了。



Happily, there is a way to dodge this fate. By setting tough goals (like a 10 pm bedtime ev 
**/
        [params addEntriesFromDictionary:otherParamsDic];
    }
    NSString * timeStamp=[SUtil getTimeStamp_MMMethodMMM];
    userName = userName?userName:@"";
//ur day," he advised. "See your sleep as the amount of time you need in order to
    userName = [userName lowercaseString];
    email = [email lowercaseString];
    NSMutableString * md5str=[[NSMutableString alloc]init];
    [md5str appendString:APP_KEY];
    [md5str appendString:timeStamp];

/**
  awake

A well-known speaker started off his seminar by holding up a $20 bill. In the room of 200, he asked,  
**/
    [md5str appendString:email];
    [md5str appendString: GAME_CODE];
    NSString * md5SignStr=[SUtil getMD5StrFromString_MMMethodMMM:md5str];

/**
  生了什么，或者将要发生什么，你们都永远不会失去自己的价值。”



“Dirty or clean, crumpled or finely creased y 
**/
    NSDictionary *dic = nil;
    @try {

/**
  aybe you just need five minutes to get sl 
**/
        dic = @{
            @"signature"        :md5SignStr,
//察把集市关起时
//I cut my long baby hair
//我剪掉了我婴儿般的长发
//Stole me a dog-eared map
//你偷了一张狗耳式的地图给我
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
//Now I’m a fat house cat
//现在我是一只肥胖的家猫
//Nursing my sore blunt tongue
//咒骂着我那因发炎而没有知觉的舌头
//Watching the warm poison rats
//看着刚被毒死的老鼠
//Curl through t
            @"timestamp"        :timeStamp,
            @"gameCode"         :GAME_CODE,
            @"name"             :userName,
            @"phoneAreaCode"    :phoneAreaCode,
            @"phone"            :phoneN,
            @"vfCode"           :vfCode,
            @"verifyCode"       :vfCode,
            @"email"            :email,
            @"interfaces"       :interfaces,
        };
        [params addEntriesFromDictionary:dic];

/**
  皱，然后他问道:“还有人想要它吗？”仍然有很多手举在空中。



“Well，” he replied, “what if I do this?” He dropped it on the ground and started to grind it into the floor with his shoe. He picked it up, now crumpled and dirty. “Now, who still wants it?”



“好，”他说道，“如果我这样做会怎么样呢？”他把纸币扔到地上，开始用皮鞋使劲踩踏。然后他拣起又脏又皱的纸币，“现在，还有人要它吗？”



Still the hands went into the air.



空中仍举着很多手。



“M 
**/
    } @catch (NSException *exception) {

/**
  ow crumpled 
**/
    }
    [HttpServiceEngineLogin postRequestWithFunctionPath_MMMethodMMM:api_forgot_pwd params_MMMethodMMM:params successBlock_MMMethodMMM:successBlock errorBlock_MMMethodMMM:errorBlock];
}

/**
  时间、不被打扰的学习很重要。但研究表明，专注于效率会让你被困在原地，因为你会忽略更重要的事：你是否享受追求目标的过程。



If it's not fun to exercise or study, you're unlikely to keep at it. But if you get pleasure from your workouts or study sessions, resea 
**/
#pragma mark - 绑定账号
+ (void)doAccountBindingWithUserName_MMMethodMMM:(NSString *)userName
                            password_MMMethodMMM:(NSString *)password
                       phoneAreaCode_MMMethodMMM:(NSString *)phoneAreaCode

/**
  目标（比如每晚10点入睡），但每周给自己一两张豁免卡，就可以比设定没有回旋余地的或难或易的目标获得更好的结果。



5.Get a little help from your friends

借助朋友的帮助



Spending time around high achievers can boost your own performance. If your New Year's resolution is to run a marathon or write a book, you'd be wise to start hanging around friends w 
**/
                         phoneNumber_MMMethodMMM:(NSString *)phoneN
                              vfCode_MMMethodMMM:(NSString *)vfCode

/**
  rather die than stay away from you.
你不知道，等了你有多久。所以，宁可死别，绝不生离。
I like the night. Without the dark, we'd never see the stars.
我喜欢夜晚。没有黑暗，我们永远都看不见星星。
It is well worth of falling love in someone, even can keep up with the unavoid 
**/
                               email_MMMethodMMM:(NSString *)email
                             thirdId_MMMethodMMM:(NSString *)thirdId
                          thirdPlate_MMMethodMMM:(NSString *)thirdPlate
                      otherParamsDic_MMMethodMMM:(NSDictionary *)otherParamsDic
                        successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                          errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock
{
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:[self appendGameParamsDic_MMMethodMMM]];
    if (otherParamsDic) {
        [params addEntriesFromDictionary:otherParamsDic];
    }

/**
  星，那颗永远在你心中闪烁的明星。当它在你面前闪耀时，抓住这宝贵的机会。请谨记，只要你坚持不懈，最终的目标总能实现。



Though barriers may sometimes stand in the way of your dreams, remember that your destiny is hiding behind them. Accept the fact that not everyone 
**/
    userName = [userName lowercaseString];
    NSString * timeStamp=[SUtil getTimeStamp_MMMethodMMM];
    NSMutableString * md5str=[[NSMutableString alloc] init];
    [md5str appendFormat:@"%@",APP_KEY];
    [md5str appendFormat:@"%@",timeStamp];
    [md5str appendFormat:@"%@",userName];
    [md5str appendFormat:@"%@",GAME_CODE];
    NSString * md5SignStr=[SUtil getMD5StrFromString_MMMethodMMM:md5str];
    @try {
//al to the body that it's time for bed. Production of melatonin is stopped by light -- so levels naturally 
        NSDictionary *dic = @{
            @"signature"        :[md5SignStr lowercaseString],
            @"timestamp"        :timeStamp,
            @"gameCode"         :GAME_CODE,
//》是由Iron & Wine乐队演唱的一首独立民谣,Ir
            @"name"             :userName,
            @"loginId"          :userName,
            @"password"         :[[SUtil getMD5StrFromString_MMMethodMMM:password] lowercaseString],
            @"thirdPlatId"      :thirdId,
            @"thirdLoginId"     :thirdId,
            @"registPlatform"   :thirdPlate,
            @"loginMode"        :thirdPlate,
            @"interfaces"       :@"2",
//unt tongue
//咒骂着我那因发炎而没有知觉的舌头
//Watching the warm poison rats
//看着刚被毒死的老鼠
//Curl through the wide fence cracks
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
//American 
            @"phoneAreaCode"    :phoneAreaCode,
            @"phone"            :phoneN,
            @"vfCode"           :vfCode,

/**
  els naturally fall as daylight approaches, getting you ready to greet the day.

褪黑素是身体分泌的一种激素，你什么时候感到困，什么时候醒来，都靠这种激素来调节。随着黑夜降临，褪黑素的水平就会升高，暗示身体该睡觉了。光线会阻止身体分泌褪黑素，所以白天来临时褪黑素水平就会下降，让你准备好迎接新的一天。

To work  
**/
        };

/**
  myself.
就是因为发觉自己多么渴望想得到你，我到现在还不知道是否控制得了自己。
When life offers you a dream so far beyond any of your expectations, it’s not reasonable to grieve when it comes to an end.
当生活给了你一个远远超过你期望的美梦，那么，当这一期结束时，也就没有理由再去伤心。
图片
Bella, the only reason I left was because I thought I was protecting you.
我离开你的唯一原因是因为我觉得这能保护你。
I don’t have th strengt 
**/
        [params addEntriesFromDictionary:dic];
    } @catch (NSException *exception) {

/**
   in your judgment, catch the star that twinkles in your heart, and it will lead you to your destiny’s path. Follow that pathway and uncover the sweet sunrises that await yo 
**/
    }
    [HttpServiceEngineLogin postRequestWithFunctionPath_MMMethodMMM:api_bind_account params_MMMethodMMM:params successBlock_MMMethodMMM:successBlock errorBlock_MMMethodMMM:errorBlock];
}
+ (void)requestDeleteUserAccount_MMMethodMMM:(AccountModel *)accountMode
                      otherParamsDic_MMMethodMMM:(NSDictionary *)otherParamsDic

/**
  ting someone become your greatest weakness ,then going all you can do to protect each other.
爱就是让对方成为自己最大的弱点，然后再用尽全力守护彼此。
Is it not enough just to have a lon 
**/
                        successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                          errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock
{
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:[self appendCommParamsDic_MMMethodMMM]];
    if (otherParamsDic) {
        [params addEntriesFromDictionary:otherParamsDic];

/**
  d hard cash on the t 
**/
    }

/**
  奇怪的是，有证据表明，指导有共同目标的朋友也能提高你的成功率。当你想给别人一些如何实现目标的建议时，这会增强你的自信。这样也会迫使你反省自己的方法是否对路。

1. Make a schedule, and stick to it

每天在固定时间起床和上床

Melatonin is a hormone produced by the body to regulate when you get sleepy and when you wake up. As night approaches, levels of melatonin rise, becoming a signal to the body that it's time for bed. Pr 
**/
    NSString * timeStamp=[SUtil getTimeStamp_MMMethodMMM];
//糟蹋这张纸币，你们仍然想要它，因为它的价值没有降低。它仍然是20美元。”
//
//
//
//“Many times in our lives, we are dropped, crumpled, and ground into the dirt by the decisions we make and the circumstances that come our way. We feel as though we are worthless；but no matter what happened or what will happen, you w
    NSMutableString * md5str=[[NSMutableString alloc] init];
    [md5str appendFormat:@"%@",APP_KEY];
    [md5str appendFormat:@"%@",timeStamp];
    [md5str appendFormat:@"%@",accountMode.userId];

/**
  ecrease in value. It was still worth $20."



“朋友们，刚刚你们已经得出一个非常宝贵的经验。不管我怎么糟蹋这张纸币，你们仍然想要它，因为它的价值没有 
**/
    [md5str appendFormat:@"%@",GAME_CODE];

/**
  the middle of the night, if you've been awake for 20 or 30 minutes, get up and reset. Maybe you just need five minutes to get sleepy, or maybe an hour, but don't spend that time awake in bed."

格兰德纳说：“你可以给出的最好的睡眠建议就是醒了就起床，不要醒着躺在床上。无论是刚入夜还是夜已深，如果你躺在床上二三十分钟都睡不着，就起床调整一下。也许你只需要5分钟就能感觉到困意，也许需要一小时，但是这段时间不要醒着躺在床上。”

Why is that so impor 
**/
    NSString * md5SignStr=[SUtil getMD5StrFromString_MMMethodMMM:md5str];
    @try {
        NSDictionary *dic = @{
            @"signature"        :[md5SignStr lowercaseString],
            @"timestamp"        :timeStamp,
// you so badly.
//只有你才能
            @"gameCode"         :GAME_CODE,
            @"userId"           :accountMode.userId,
            @"loginAccessToken"  :accountMode.token,
            @"loginTimestamp"   :accountMode.timestamp,
            @"thirdPlatId"      :accountMode.thirdId,
            @"thirdLoginId"     :accountMode.thirdId,
            @"registPlatform"   :accountMode.loginType,
            @"loginMode"        :accountMode.loginType,
            @"interfaces"       :@"2",
//朋友们在一起。仅仅是和他们相处，你就会有收获，
            @"phoneAreaCode"    :@"",
            @"phone"            :@"",
            @"vfCode"           :@"",

/**
   through.

一个简单的方法是把你的目标告诉一些人，这样，如果他们后来发现你没有坚持下去，你会感到羞愧。



A steeper penalty than shame, however, is putting cold hard cash on the table, and there is excellent evidence that self-imposed cash penalties motivate success. You can make a bet with a friend that you'll stick to y 
**/
        };
        [params addEntriesFromDictionary:dic];

/**
  了。
You're in here because of me.
你在这里，是因为有我。
Nobody's ever loved anybody as much as I love you.
我对你的爱 无人能及。
Love is letting  
**/
    } @catch (NSException *exception) {
    }

/**
  碌的一天后要做的最后一件事，为了完成家务、作业、工作或追新剧，晚点再睡也没事。

That thinking needs to be changed, Grander said.

格兰德纳说，这种想法必须改变。

"Don't see your sleep as the amount  
**/
    [HttpServiceEngineLogin postRequestWithFunctionPath_MMMethodMMM:api_delete_account params_MMMethodMMM:params successBlock_MMMethodMMM:successBlock errorBlock_MMMethodMMM:errorBlock];
}
#pragma mark - 創單
+ (void)createOrderWithproductId_MMMethodMMM:(NSString *)productId
            cpOrderId_MMMethodMMM:(NSString *)cpOrderId
                extra_MMMethodMMM:(NSString *)extra
             gameInfo_MMMethodMMM:(GameUserModel*)gameUserModel
         accountModel_MMMethodMMM:(AccountModel*) accountModel
                      otherParamsDic_MMMethodMMM:(NSDictionary *)otherParamsDic

/**
  everyone is going to approve of the choices you’ve made, have faith in your judgment, catch the star  
**/
                        successBlock_MMMethodMMM:(PayServiceSuccessBlock)successBlock
                          errorBlock_MMMethodMMM:(PayServiceErrorBlock)errorBlock
//ect." Here's what it looks like: You planned to get to bed early every night but couldn't resist staying up late one Friday to wat
{
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:[self appendCommParamsDic_MMMethodMMM]];
    if (otherParamsDic) {
        [params addEntriesFromDictionary:otherParamsDic];

/**
  ne 这个一个人的乐队，却用让人赞叹的旋律和歌词带给听众一首清新雅致而又静生澎湃田园式的美国乡村民谣，这首收录在《暮光之城》中的惊艳单曲会带给你寂静深夜中属于你的美好爱情回忆录！

《Flightless Bird, American Mouth》

MV
图片





《Flightless Bird, American Mouth 》 -Iron & Wine

折翼的鸟，在美国的河口
I was a quick wet boy
我曾是个爱哭的男孩
Diving too deep for coins
为钱币而潜得太深
All of your street light eyes
你那 
**/
    }
    NSString * timeStamp=[SUtil getTimeStamp_MMMethodMMM];

/**
  y away from you anymore.
我再也无法控制自己远离你了。
Then don’t.
那就不要。
Childhood is the kingdom where nobody dies.
童 
**/
    NSMutableString * md5str=[[NSMutableString alloc] init];
    [md5str appendFormat:@"%@",APP_KEY];

/**
  ise, becoming a signal to the body that it's time for bed. Production of melatonin is stopped by light -- so levels naturally fall as daylight approaches, getting you ready to greet the day.

褪黑素是身体分泌的一种激素，你什么时候感到困，什么时候醒来，都靠这种激素来调节。随着黑夜降临，褪黑素的水平就会升高，暗示身体该睡觉了。光线会阻止身体分泌褪黑素，所以白天来临时褪黑素水平就会下降，让你准备好迎接新的一天。

To work properly, the release of this hormone needs to occur at regu 
**/
    [md5str appendFormat:@"%@",GAME_CODE];
    [md5str appendFormat:@"%@",accountModel.userId];

/**
   Control and Prevention. So if a person needed to rise at 7 am each day, backtiming eight hours would require a bedtime of 11 pm.

美国疾病控制与预防中心指出，大多数成人需要7到8小时睡眠时间才能得到充分休息。因此如果一个 
**/
    [md5str appendFormat:@"%@",timeStamp];
    NSString * md5SignStr=[SUtil getMD5StrFromString_MMMethodMMM:md5str];
    @try {
        NSDictionary *dic = @{
            @"signature"        :[md5SignStr lowercaseString],
            @"timestamp"        :timeStamp,
            @"gameCode"         :GAME_CODE,
            @"userId"           :accountModel.userId,
            @"loginAccessToken"  :accountModel.token ? : @"",
            @"loginTimestamp"   :accountModel.timestamp ? : @"",
            @"thirdPlatId"      :accountModel.thirdId ? : @"",
            @"thirdLoginId"     :accountModel.thirdId ? : @"",
            @"registPlatform"   :accountModel.loginType ? : @"",

/**
  t yourself to it.



追随能够改变你命运的那颗星，那颗永远在你心中闪烁的明星。当它在你面前闪耀时，抓住这宝贵的机会。请谨记，只要你坚持不懈，最终的目标总能实现。



Though barriers may sometimes stand in the way of your dreams, remember that your destiny is hiding behind them. Accept the fact that not everyone is going to approve of 
**/
            @"loginMode"        :accountModel.loginType ? : @"",
            @"payType"          :@"apple",
            @"mode"             :@"apple",
            @"productId"           :productId,
//aled.
//
//幸运的是，有一种方法可以避免这种宿命。研究表明，设定困难的目标（比如每晚10点入睡），但每周给自己一两张豁免卡，就可以比设定没有回旋余地的或难或易的目标获得更好的结果。
//
//
//
//5.Get a little help from your friends
//
//借助朋友的帮助
//
//
//
//Spending time around high achievers can boost your own performance. If your New Year's resolution is to run a marathon or write a 
            @"extra"           :extra ? : @"",
            @"cpOrderId"         :cpOrderId,
            @"serverCode"           :gameUserModel.serverCode,

/**
   you high and dry because you'll neglect an even more important part of the equation: whether you enjoy the act of goal pursuit.

在完成目标的过程中，大多数人都力求高效。如果你的目标是锻炼身体，你会认为高强度的锻炼将能让你快速取得成效。如果你想学好一门功课，你会认为长时间、不被打扰的学习很重要。但研究表明，专注于效率会让你被困在原地，因为你会忽略更重要的事：你是否享受追求目标的过程。



If it's not fun to exercise or study, you're unlikely to keep at it. But if you get pleasure from your workouts or study ses 
**/
            @"serverName"           :gameUserModel.serverName ? : @"",
//eone else tips on how to achieve, it boosts y
            @"roleId"           :gameUserModel.roleID,
            @"roleName"           :gameUserModel.roleName ? : @"",
            @"roleLevel"           :gameUserModel.roleLevel ? : @"",

/**
  is seminar by holding up a $20 bill. In the room of 200, he asked, “Who would like this $20 bill?”



一位有名的演讲家手里拿着一张20美元的纸币，开始了讨论会。在200人的屋子里， 他问道：“谁想要这20美元纸币？”



Hands started going up. He said, “I am going to give this $20. to one of you. but first, let me do this."



开始有人举手。他说我会把这20美元纸币给你们中间的一位，但是，先看看我会这么做。”



He proceed 
**/
            @"roleVipLevel"           :gameUserModel.roleVipLevel ? : @"",

/**
  nder said. "The  
**/
        };
        [params addEntriesFromDictionary:dic];

/**
  第一次遇见我，你就在劫难逃了。
You're in here because of me.
你在这里，是因为有我。
Nobody's ever loved anybody as much as I love you.
我对你的爱 无人能及 
**/
    } @catch (NSException *exception) {

/**
  没有坚持下去，你会感到羞愧。



A steeper penalty than shame, however, is putting cold hard cash on the table, and there is excellent evidence that self-imposed cash penalties motivate success. You can make a bet with a friend that you'll stick to your New Year's resolution. The logic for why this works is simple. Incentives change our decisions, and penalties are even more motivating than rew 
**/
        NSLog(@"exception:%@",exception.description);
    }
    [HttpServiceEnginePay postRequestWithFunctionPath_MMMethodMMM:api_order_create params_MMMethodMMM:params successBlock_MMMethodMMM:successBlock errorBlock_MMMethodMMM:errorBlock];
}
+ (void)paymentWithTransactionId_MMMethodMMM:(NSString *)transactionId

/**
  道还不够吗？
Only for making me wan 
**/
                     receiptData_MMMethodMMM:(NSString *)receiptData
//the sweet sunrises that await you.
//
//
//
//尽管实现梦想的途中有时会遇到障碍，要知道这是命运对你的挑战。不是每个人都会赞成你的选择，接受这个现实，并相信自我的判断，追随那颗在你心中闪烁的明星，它会引领你踏上命运的征途。坚持不懈，你就能享受那些幸福时刻。
//
//
//
//Take pride in y
                         orderId_MMMethodMMM:(NSString *)orderId
                        gameInfo_MMMethodMMM:(GameUserModel*)gameUserModel

/**
  


If your New Year's resolution is to meditate five days each week, a plan like "I'll meditate on weekdays" would be too vague. But a cue-based plan like "I'll meditate at the office on weekdays during my lunch break" would fit the bill.

如果你的新年计划是每周冥想五天，那么像“我将在工作日冥想”这样的计划就太模糊了。但是，“我将在工作日的午休时间在办公室冥想”这样有信息提示的计划就很合适。



Plotting when and where you'll e 
**/
                    accountModel_MMMethodMMM:(AccountModel*) accountModel
                      otherParamsDic_MMMethodMMM:(NSDictionary *)otherParamsDic
//r that twinkles in your heart for you alone are capable of making your brightest dreams c
                        successBlock_MMMethodMMM:(PayServiceSuccessBlock)successBlock

/**
   day more stressful."

There are not enough ways to express how much I miss you

没有足够的方式能表达我有多想念你

There are not enough words to contemplate on how much I miss you and I miss us being together physically.

没有足够的言语能表达我有多想念你，我想念我们在一起。

My heart aches and I miss you so bad.

我的心很疼，我 
**/
                          errorBlock_MMMethodMMM:(PayServiceErrorBlock)errorBlock
{
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:[self appendCommParamsDic_MMMethodMMM]];
    if (otherParamsDic) {
//mit yourself to it.
//
//
//
//追随能够改变你命运的那颗星，那颗永远在你心中闪烁的明星。当它在你面前闪耀时，抓住这宝贵的机会。请谨记，只要你坚持不懈，最终的目标总能实现。
//
//
//
//Though barriers may sometimes stand in the way of your dreams, remember that your destiny is hiding behind them. Accept the fact that not everyone is going to approve of the choices you’ve made, have faith in your judgment, catch the star that twinkles in your heart, and it will lead you to 
        [params addEntriesFromDictionary:otherParamsDic];
    }
    NSString * timeStamp=[SUtil getTimeStamp_MMMethodMMM];
    NSMutableString * md5str=[[NSMutableString alloc] init];

/**
  series.

许多人将睡眠视为忙碌的一天后要做的最后一件事，为了完成家务、作业、工作或追新剧，晚点再睡也没事。

That thinking needs to be changed, Grander said.

格兰德纳说，这种想法必须改变。

"Don't see your sleep as the amount of time you have left in your day," he advised. "See your sleep as the amount of time you need in order to set yourself up for a productive tomorrow."

他建议：“不要将睡眠时间看成你一天中剩下的时间，而是将其看成为了高效的明天而休整的时间。”

It may sound like a small shift in thin 
**/
    [md5str appendFormat:@"%@",APP_KEY];
    [md5str appendFormat:@"%@",GAME_CODE];
    [md5str appendFormat:@"%@",accountModel.userId];
    [md5str appendFormat:@"%@",timeStamp];
//见我，你就在劫难逃了。
//You're in here because of me.
//你在这里，是因为有我。
//Nobody's ever loved anybody as much as I love you.
//我
    NSString * md5SignStr=[SUtil getMD5StrFromString_MMMethodMMM:md5str];
    @try {
//ywhere
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
//Now I’m a fat house cat
//现在我是一只肥胖的家猫
//Nursing my sore blunt tongue
//咒骂着我那因发炎而没有
        NSDictionary *dic = @{
            @"signature"        :[md5SignStr lowercaseString],
            @"timestamp"        :timeStamp,
            @"gameCode"         :GAME_CODE,

/**
  now how long I've waited for you. And so the lion fell in love with the lamb. What a stupid lamb. What a sick, masochistic lion.
你不知道我等了你多久，就这样，狮子爱上了羔羊。多蠢的羔羊，多病态又自虐的狮子。
图片
I love three things in this word.Sun, Moon and you. Sun for mornin 
**/
            @"userId"           :accountModel.userId,
            @"orderId"           :orderId,
            @"transactionId"      :transactionId,

/**
   your dreams, remember that your destiny is hiding behind them. Accept the fact that not everyone is going to approve of the choices you’ve made, have faith in your judgment, catch the star that twinkles in your heart, and 
**/
            @"receiptData"        :receiptData,
            @"loginAccessToken"  :accountModel.token,
            @"loginTimestamp"   :accountModel.timestamp,
            @"payType"          :@"apple",
            @"mode"             :@"apple",

/**
  f the morning surprises us.

我想念阳光照在你的脸上，早晨的寒风让我们感到惊讶。

I miss the morning kisses and the morning snuggling you and I shared.

我想念早上的吻，早上依偎着你和我分享。

I miss you. I miss going to work in the morning and knowing that at the end of the day,

我想你。我想念早上去上班，直到在一天结束的时候，

I will find you waiting for me outside the office and have dinner together.

我会发现你在办公室外等我，一起吃饭。

I miss you. I  
**/
        };
        [params addEntriesFromDictionary:dic];

/**
  w Year's resolution jogs your memory when it's opportune and generates guilt if you flake out. Detailed planning can also help you anticipate and dodge obstacles -- so if you plan to meditate during lunch, you'll be sure to decline a proffered 
**/
    } @catch (NSException *exception) {
        NSLog(@"exception:%@",exception.description);
    }
    [HttpServiceEnginePay postRequestWithFunctionPath_MMMethodMMM:api_payment params_MMMethodMMM:params successBlock_MMMethodMMM:successBlock errorBlock_MMMethodMMM:errorBlock];
}
#pragma mark - 通過url創建通用參數鏈接
+(NSString *) createSdkUrl_MMMethodMMM:(NSString *)url{

/**
  一天。

To work properly, the release of this hormone needs to occur at regular times, s 
**/
    NSDictionary *temDic = [self appendGameParamsDic_MMMethodMMM];
    NSString *tempParams = @"";
    for (NSString * key in temDic) {
        NSString * value = [NSString stringWithFormat:@"%@", temDic[key]];

/**
  asonable to grieve when it comes to an end.
当生活给了你一个远远超过你期望的美梦，那么，当这一期结束时，也就没有理由再去伤心。
图片
Bella, the only reason I left was because I thought I was protecting you.
我离开你的唯一原因是因为我觉得这能保护你。
I don’t h 
**/
        tempParams = [NSString stringWithFormat:@"%@%@=%@&", tempParams, key, value];
    }
    if ([url hasSuffix:@"?"]) {
//国的河口
//Big pill, stuck going down
//贴着的大海报正在落下
//
//
//Just as cues tell Broadway stars when to step onto the stage, research has shown that adding a cue to your plan helps you remember when to act. Be sure to detail w
        return [NSString stringWithFormat:@"%@%@", url, tempParams];
    }
    if ([url containsString:@"?"]){
        return [NSString stringWithFormat:@"%@&%@", url, tempParams];
    }
    return [NSString stringWithFormat:@"%@?%@", url, tempParams];;
}
@end
