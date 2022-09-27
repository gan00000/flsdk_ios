
#define SDK_DEFAULT_BUNDLE_NAME  [[CrepitnessBringic reader] getSdkBundleName]
#define SDK_CONFIG_INFO_PLIST_NAME     @"SDKCoreInfo"
#define SDK_BUNDLE_NAME_v1  @"SDKResources"
#import <Foundation/Foundation.h>
@interface CrepitnessBringic : NSObject{
}
@property (nonatomic) BOOL ISPRINT;
@property (nonatomic,strong) NSDictionary * coreConfDic;
@property (nonatomic,strong) NSDictionary * mainBundleConfDic;
@property (nonatomic, assign) BOOL phylaneousModerneer;
@property (nonatomic, strong) NSMutableDictionary *areaCodeDic;
@property (nonatomic, strong) NSMutableArray *areaInfoArray;
+ (CrepitnessBringic *)reader;

/**
  cting you.
我离开你的唯一原因是因为我觉得这能保护你。
I don’t have th strength to stay away  
**/
- (void)reloadCoreConf;
//ou'll follow through.
//
//正如出场提示告诉百老汇明星何时登台一样，研究表明，在你的计划中加入信息提示，能帮助你记住何时行动。一定要详细说明你将在何时何地做什么。
//
//
//
//If your New Year's resolution is to meditate five days each week, a plan like "I'll meditate on weekdays" would be too vague. But a cue-based plan like "I'll meditate at the office on weekdays during my lunch break" would fit the bill.
//
//如果你的新年计划是每周冥想五天，那么像“我将在工作日冥想”这样的计划就太模糊了。但是，“我将在工作日的午休时间在办公室冥想”这样有信息提示
- (NSString *)getStringForKey:(NSString *)key;
- (BOOL)getBoolForKey:(NSString *)key;
- (NSString *)getLocalizedStringForKey:(NSString *)key;
-(NSString *) getGameCode;
-(NSString *) getAppkey;

/**
   exercise or study, you're unlikely to keep at it. But if you get pleasure from your workouts or study sessions, research has found you'll persist longer. And in the end, that's what often matters most to achieving a New Year's resolution.

如果锻炼或学 
**/
-(NSString *) getGameLanguage;
//德纳说，这种想法必须改变。
//
//"Don't see your sleep as the amount of time you have left in your day," he advise
-(NSString *) getLoginUrl;

/**
  it looks like: You planned to get to bed early every night but couldn't resist staying up late one Friday to watch an extra episode of "Succession." After that, your early-to-bed plans went out the window because "what the hell," you'd already failed.

如果你完全违背了自己的新年计划，你可能本能地认输并放弃。研究人员称之为“去他的效应”。就比如这样：你计划每晚早睡，但忍不住在某个星期五熬夜多看一集《继承之战》，此后你的早睡计划泡汤了，因为“去他的”反正你已经失败了。



Happily, there is a way to d 
**/
-(NSString *) getPayUrl;
-(NSString *) getCdnUrl;
//o an end.
//当生活给了你一个远远超过你期望的美梦，那么，当这一期结束时，也就没有理由再去伤心。
//图片
//Bella, the only reason I left was because I thought I was protecting you.
//我离开你的唯一原因是因为我觉得这能保护你。
//I don’t have th strength to stay away from you anymore.
//我再也无法控制自己远离你了。
//Then don’t.
//那就不要。
//Childhood is the kingdom where nobody dies.
//童
-(NSString *) getTermsServiceUrl;
-(NSString *) getFacebookAppId;
-(NSString *) getAfDevKey;
-(NSString *) getAppId;

/**
  ake can form an association in your brain that can lead to chronic insomnia, Grandner explained. Instead of being a re 
**/
-(BOOL) isAdDebug;
-(BOOL) isVersion2;
-(BOOL) isMoreLanguage;
- (NSString *)getSdkBundleName;

-(NSString *) getLogUrl;
@end
