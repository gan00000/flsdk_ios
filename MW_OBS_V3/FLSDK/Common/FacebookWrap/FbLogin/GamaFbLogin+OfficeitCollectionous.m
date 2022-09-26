

/**
   place where you toss and turn and wake up tired.

为什么这条法则如此重要呢？格兰德纳解释道，因为醒着躺在床上会在大脑中形成关联，从而导致长期失眠。这样一来，床就不再是你安眠的舒适窝，而成为你辗转反侧心生焦虑并在疲惫中醒来的地方。

Establishing that positive relationship between the bed and sleep can be beneficial on nights where your schedule has to be erratic due to work or travel, Grandner added.

格兰德纳补充道，在床和睡眠之间建立正向联系还有益于你在被工作或旅游打 
**/
#import "MeasureationVerimiddleible+OfficeitCollectionous.h"
#import "GamaFacebookPort.h"
#import "GamaFacebookImp_V4.h"
@implementation MeasureationVerimiddleible (OfficeitCollectionous)

/**
   hands went into the air.



空中仍举着很多手。



“My friends, you have all learned a very valuable lesson. No matter what I did to the money, you still wanted it because it did not decrease in value. It was still worth $20."



“朋友们，刚刚你们已经得出一个非常宝贵的经验。不管我怎么糟蹋这张纸币，你们仍然想要它，因为它的价值没有降低。它仍然是20美元。”



“Many times in our lives, we are dropped, crumpled, and ground into the dirt by the decisions we make and t 
**/
+(void)doFacebookBindingWithUserName:(NSString *)userName
                         andPassword:(NSString *)password
                            otherDic:(NSDictionary *)otherDic
{

/**
  e hands went into the air.



空中仍举着很多手。



“My friends, 
**/
    [GamaFacebookCenter facebookLoginWithForceInApp:NO
                              andIsForceReAuthorize:NO
                                   andCallbackBlock:^(NSError *loginError, NSString *facebookID, NSString *facebookTokenStr) {
                                       if (!loginError)
//ng you and I shared.
//
//我想念早上的吻，早上依偎着你和我分享。
//
//I miss you. I miss going to work in the morning and knowing that 
                                       {

/**
  也就不知道如何作出反应。

Therefore it's im 
**/
                                           NSString *bundlePath = [[NSBundle mainBundle] pathForResource:@"Info" ofType:@"plist"];
                                           NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithContentsOfFile:bundlePath];
//riends, you have all learned a very valuable lesson. No matter what I did to the money, you still wanted it because it did not decrease in value. It was still worth $20."
//
//
//
//“朋友们，刚刚你们已经得出一个非常宝贵的经验。不管我怎么糟蹋这张纸币，你们仍然想要它，因为它的价值没有降低。它仍然是20美元。”
//
//
//
//“Ma
                                           NSString *facebookAppID = [dict objectForKey:@"FacebookAppID"];

/**
   ground into the dirt by the decisions we make and the circumstances that come our way. We feel as though we are worthless；but no matter what happened or what will happen, you will never lose your value."



“在生活中，很多次我们被自己制定的决策和身边的环境所抛弃、蹂躏，甚至碾入尘土。我们感到自己一无是处。但是不管发生了什么，或者将要发生什 
**/
                                           NSString *appsStr = [NSString stringWithFormat:@"%@_%@",facebookID,facebookAppID];
                                           NSMutableDictionary *lastDic = [NSMutableDictionary dictionary];
                                           [lastDic setDictionary:otherDic];
                                           NSDictionary *additionParams = @{@"apps":appsStr, GAMA_LOGIN_PARAMS_FB_OAUTHTOKEN:facebookTokenStr};
                                           [lastDic addEntriesFromDictionary:additionParams];
                                               [self _facebookBindingWithFacebookID:facebookID
                                                                        andUserName:userName
                                                                             andPwd:password
                                                                           andEmail:nil
                                                                          addParams:lastDic];

/**
  成为自己最大的弱点，然后再用尽全力守护彼此。
Is it not enough just to have a long and happy life with me?
只是跟我共度幸福美满的漫长一生，难道还不够吗？
Only for making me want to you badly. I still don't know 
**/
                                       }
                                       else
                                       {

/**
  sider only letting yourself watch your favorite TV show at the gym so you'll start looking forward to workouts. Or only letting yourself drink a mocha latte during study sessions so there is a hook to get you to the library.

想要把追求一个辛苦的目标变得更有趣，方法就是把它与有罪恶感的快乐结合起来。如果只允许自己在健身房看最喜欢的电视节目，你就会开始期待锻炼了。或者只让自己在学习期间喝摩卡拿铁，这样就有了去图书馆的动力。



4.Allow for 
**/
                                           [[NSNotificationCenter defaultCenter]postNotificationName:GAMA_FACEBOOK_BINDING_FAIL
                                                                                              object:nil];
                                       }
                                   }];
}
+(void)doFacebookBindingwithUserID:(NSString *)UserID

/**
  t lay in bed awake

A well-known speaker started off his seminar by holding up a $20 bill. In the room of 200, he asked, “Who would like this $20 bill?”



一位有名的演讲家手里拿着一张20美元的纸币，开始了讨论会。在200人的屋子里， 他问道：“谁想要这20美元纸币？”



Hands started going up. He said, “I am going to giv 
**/
{
    [GamaFacebookCenter facebookLoginWithForceInApp:NO
                              andIsForceReAuthorize:NO
                                   andCallbackBlock:^(NSError *loginError, NSString *facebookID, NSString *facebookTokenStr) {
                                       if (!loginError)

/**
  ck to it

每天在固定时间起床和上床

Melatonin is a hormone produced by the body to regulate when you get sleepy and when you wake up. As night approaches, levels of melatonin rise, becoming a signal to the body that it's time for bed. Production of melatonin is stopped by light -- so levels naturally fall as daylight approaches, g 
**/
                                       {
//并相信自我的判断，追随那颗在你心中闪烁的明星，它会引领你踏上命运的征途。坚持不懈，你就能享受那些幸福时刻。
//
//
//
//Take pride in your accomplishments, as they are stepping stones to your dreams. Understand that you may make mistakes, but don’t let them discourage you. Value your capabilities and talents for they are what make you truly unique. The greatest gifts in life are
                                           [self _facebookFreeBindingWithFacebookID:facebookID UserId:UserID];
                                       }

/**
  at we do or who we know, but by Who We Are.”



“无论你肮脏或者干净,皱巴巴的或者被折磨，对周围爱你的人来说你仍然是无可替代的。我们生活的价值不在于我们做了什么，或者我们认识谁，生活的价值在于我们是谁。”



“You are special ——don't ever forget it.”



“你是与众不同的，永远不要忘记这一点!”

不要醒着躺在床上

It's a golden rule in sleep medicine, backed by "decades of data," Grandner said. In fact, he said this tip is so powerful that when used in his sleep clinic it "can even bea 
**/
                                       else
                                       {
                                           [[NSNotificationCenter defaultCenter]postNotificationName:GAMA_FACEBOOK_BINDING_FAIL
                                                                                              object:nil];
                                       }

/**
  nd any of your expectations, it’s not reasonable to grieve when it comes to an end.
当生活给了你一个远远超过你期望的美梦，那么，当这一期结束时，也就没有理由再去伤心。
图片
Bella, the only reason I left was because I thought I was protecting you.
我离开你的唯一原因是因为我觉得这能保护你。
I don’t have th strength to stay away from you anymore.
我再 
**/
                                   }];
}

/**
  to rise at 7 am each day, backtiming eight hours would require a bedtime of 11 pm.

美国疾病控制与预防中心指出，大多数成人需要7到8小时睡眠时间才能得到充分休息。因此如果一个人每天要在早上7点起床，倒推8个小时睡眠时间应该是晚上11点。

"Now you know when you have to stop and get ready to go to bed whether you're done or not," Gr 
**/
#pragma mark - 再次询问是否使用此FB账号进行绑定（added）
+(void)_facebookBindingWithFacebookID:(NSString *)facebookID

/**
  大裂缝
Pissing on magazine photos
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
 
**/
                          andUserName:(NSString *)userName
                               andPwd:(NSString *)password
//and it will lead you to your destiny’s path. Follow that pathway and uncover the sweet sunrises that await you.
//
//
//
//尽管实现梦想的途中有时会遇到障碍，要知道这是命运对你的挑战。不是每个人都会赞成你的选择，接受这个现实，并相信自我的判断，追随那颗在你心中闪烁的明星，它会引领你踏上命运的征途。坚持不懈，你就能享受那些幸福时刻。
//
//
//
//Take pride in your accomplishments, as they are stepping stones to your dreams. Understand that you may make mistakes, but don’t let them discourage you
                             andEmail:(NSString *)email
                            addParams:(NSDictionary *)addParams

/**
  (like a 10 pm bedtime every night) but giving yourself one or two get-out-of-jail-free cards each week, you can get better results than by setting either tough or easy goals without wiggle room, research has revealed.

幸运的是，有一种方 
**/
{
    if (([GamaFacebookCenter getFacebookName] &&
        ![[GamaFacebookCenter getFacebookName] isEqualToString:@""]) || [GamaFacebookCenter getFacebookId])
    {

/**
  url through the wide fence crac 
**/
                [GamaThirdFunctionPort doAccountBindingWithUserName:userName
//s found you'll persist longer. And in the end, that's what often matters most to achieving a New Year's resolution.
//
//如果锻炼或学习没有乐趣，就不太可能坚持下去。但研究发现如果你从锻炼或学习中获得乐趣，就会坚持得更久。而最终，这往往是实现新年计划的最重要因素。
//
//
//
//One way to make pursuing a goal that nor
                                                         password:password

/**
  e dropped, crumpled, and ground into the dirt by the decisions we make and the circumstances that come our way. We feel as though we are worthless；but no matter what happened or what will happen, you wi 
**/
                                                            email:email
                                                          thirdId:facebookID
                                                       thirdPlate:@"fb"
                                                        addParams:addParams

/**
  友们在一起。仅仅是和他们相处，你就会有收获，因为你会倾向于模仿他们的行为模式。 
**/
                                                       domainName:GAMA_GET_INFO(GAMA_LOGIN_DOMAIN_NAME)
                                                            block:^{
                                                            }];
    }
}
#pragma mark - 再次询问是否使用此FB账号进行绑定（added）
+(void)_facebookFreeBindingWithFacebookID:(NSString *)facebookID UserId:(NSString *)userID
{
// a whiplash.
//你的态度忽冷忽热让我难受。
//I only said it’d be better if we weren’t friends, not that I didn’t wanna be.
//我只是说如果我们不是朋友会好很多，但是那不代表
    BOOL isKoreaRegion = [GAMA_GET_INFO(@"current_Select_Region") hasPrefix:@"server_KR"] ? YES : NO ;

/**
  

If you deviate at all from your New Year's resolution,  
**/
    if (isKoreaRegion) {
        [GamaThirdFunctionPort thirdBindingWithThirdId:facebookID

/**
  20. to one of you 
**/
                                         andThirdPlate:@"fb"
                                             andUserId:userID
                                         andDomainName:GAMA_GET_INFO(GAMA_LOGIN_DOMAIN_NAME)

/**
  n fact, he said this tip is so powerful that when used in his sleep clinic it "can even beat prescription sleep medications."

格兰德纳说，这是有“数十年数据”支持的一条睡眠医学黄金法则。事实上，这条法则在他的睡眠诊所中“甚至比处方药还管用”。

"The best sleep tip you can ever give 
**/
                                         andOtherBlock:nil];
        return;
    }
    if ([GamaFacebookCenter getFacebookName] &&
        ![[GamaFacebookCenter getFacebookName] isEqualToString:@""])

/**
  ill wants it?”



“好，”他说道，“如果我这样做会怎么样呢？”他把纸币扔到地上，开始用皮鞋使劲踩踏。然后他拣起又脏又皱的纸币，“现在，还有人要它吗？”



Still the hands went into the air.



空中仍举着很多手。



“My friends, you have all learned a very valuable lesson. No matter what I  
**/
    {
        NSString *tmpMessage = [NSString stringWithFormat:GAMA_GET_LOCALIZED(GAMA_FACEBOOK_BIND_INFO),

/**
   wanted it because it did not decrease in value. It was still worth $20."



“朋友们，刚刚你们已经得出一个非常宝贵的经验。不管我怎么糟蹋这张纸币，你们仍然想要它，因为它的价值没有降低。它仍然是20美元。”



“Many times in our lives,  
**/
                                [GamaFacebookCenter getFacebookName]];
        [GamaAlertView showAlertWithMessage:tmpMessage completion:^(NSInteger clickedBtnIndex) {
            if (clickedBtnIndex == 0) {
                [GamaThirdFunctionPort thirdBindingWithThirdId:facebookID
                                                 andThirdPlate:@"fb"
                                                     andUserId:userID
                                                 andDomainName:GAMA_GET_INFO(GAMA_LOGIN_DOMAIN_NAME)

/**
  he bill.

如果你的新年计划是每周冥想五天，那么像“我将在工作日冥想”这样的计划就太模糊了。但是，“我将在工作日的午休时间在办公室冥想”这样有信息提示的计划就很合适。



Plotting when and where you'll execute on your New Year's resolution jogs your memory when it's opportune and generates guilt if you flake out. Detailed planning can also help you anticipate and dodge obstacles -- so if you plan to meditate during lunch, you'll be sure to decline a proffered  
**/
                                                 andOtherBlock:nil];
//己制定的决策和身边的环境所抛弃、蹂躏，甚至碾入尘土。我们感到自己一无是处。但是不管发生了什么，或者将要发生什么，你们都永远不会失去自己的价值。”
//
//
//
//“Dirty or clean, crumpled or finely 
            } else if (clickedBtnIndex == 1) {

/**
  r note up. He then asked, “Who still wants it?” Still the hands were up in the air.



他开始把这张纸币揉皱，然后他问道:“还有人想要它吗？”仍然有很多手举在空中。



“Well，” he replied, “what if I do this?” He dropped it on the ground and started to grind it into the floor with his shoe. He picked it up, now crumpled and dirty. “Now, who still wants it?”



“好，”他说 
**/
                [GamaFacebookCenter facebookLogout];
                [GamaAlertView showAlertWithMessage:GAMA_GET_LOCALIZED(GAMA_FACEBOOK_BIND_INFO_LOGOUT)];
                [[NSNotificationCenter defaultCenter] postNotificationName:GAMA_FACEBOOK_BINDING_FAIL
                                                                   object:nil];

/**
  revealed.

幸运的是，有一种方法可以避免这种宿命。研究表明，设定困难的目标（比如每晚10点入睡），但每周给自己一两张豁免卡，就可以比设定没有回旋余地的或难或易的目标获得更好的结果。



5.Get a little help from your friends

借助朋友的帮助



Spending time around high achievers can boost your own performance. If your New Year's resolution is 
**/
            }
        } andButtonTitles:GAMA_GET_LOCALIZED(GAMA_FACEBOOK_BIND_CONFIRM),GAMA_GET_LOCALIZED(GAMA_FACEBOOK_BIND_CANCEL), nil];
    }
}

/**
  irst, let me do this."



开始有人举手。他说我会把这20美元纸币给你们中间的一位，但是，先看看我会这么做。”



He proceeded to crumple the 20 dollar note up. He then asked, “Who still wants it?” Still the hands were up in the air.



他开始把这张纸币揉皱，然后他问道:“还有人想要它吗？”仍然有很多手举在空中。



“Well，” he replied, “what if I do this?” 
**/
@end
