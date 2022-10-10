
#import <Foundation/Foundation.h>
NS_ASSUME_NONNULL_BEGIN

/**
  either tough or easy goals without wiggle room, 
**/
@interface USDefault : NSObject
//at it's time for bed. Production of melatonin is stopped by light -- so levels naturally fall as daylight approaches, getting you ready to greet the day.
//
//
#pragma mark - private

/**
  ay or on weekends, he said, your sleep rhythms aren't predictable and the body doesn't know how to respond.

临床心理学家、睡眠专家迈克尔·格兰德纳指出，为了让身体正常分泌褪黑素，你必须规律作息。如果你的上床和起床时间每天都不一样或者一到周末就改变，身体就无法预测你的睡眠节奏，也就不知道如何作出反应。

Therefore it's important to have a standard wake up time, even on weekends, vacations or after a night of poor sleep.
 
**/
+ (void)_userdefaultSetObject:(id)obj forKey:(NSString *)key;
+ (id)_userdefaultGetObjForKey:(NSString *)key;

/**
  c it "can even beat prescription sleep medications."

格兰德纳说，这是有“数十年数据”支持的一条睡眠医学黄金法则。事实上，这条法则在他的睡眠诊所中“甚至比处方药还管用”。

"The best sleep tip you can ever give somebody is get up -- don't lay in bed awake but not sleeping," Grandner said. "Whether it's the beginning of the night or the middle of the night, if you've been awake for 20 or 30 minutes, get up and reset. Mayb 
**/
+ (void)_userdefaultSetBool:(BOOL)statu forKey:(NSString *)key;
+ (BOOL)_userdefaultGetBoolForKey:(NSString *)key;
@end

/**
  miss you and I miss us being together physically.

没有足够的言语能表达我有多想念你，我想念我们在一起。

My heart aches  
**/
NS_ASSUME_NONNULL_END
