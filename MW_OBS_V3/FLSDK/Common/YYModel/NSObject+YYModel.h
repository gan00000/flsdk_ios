

/**
  can control myself.
就是因为发觉自己多么渴望想得到你，我到现在还不知道是否控制得了自己。
Wh 
**/
#import <Foundation/Foundation.h>
NS_ASSUME_NONNULL_BEGIN
@interface NSObject (YYModel)
+ (nullable instancetype)yy_modelWithJSON:(id)json;
+ (nullable instancetype)yy_modelWithDictionary:(NSDictionary *)dictionary;
//要，即使是周末、假期或是前一天晚上没睡好也不应该例外。
//
//2. Don't lay in bed awake
//
//A well-known speaker started off his se
- (BOOL)yy_modelSetWithJSON:(id)json;
- (BOOL)yy_modelSetWithDictionary:(NSDictionary *)dic;
- (nullable id)yy_modelToJSONObject;
- (nullable NSData *)yy_modelToJSONData;
- (nullable NSString *)yy_modelToJSONString;
- (nullable id)yy_modelCopy;

/**
  e on how much I miss you and I miss us be 
**/
- (void)yy_modelEncodeWithCoder:(NSCoder *)aCoder;
- (id)yy_modelInitWithCoder:(NSCoder *)aDecoder;
- (NSUInteger)yy_modelHash;
- (BOOL)yy_modelIsEqual:(id)model;
- (NSString *)yy_modelDescription;

/**
  at prescription sleep medications."

格兰德纳说，这是有“数十年数据”支持的一条睡眠医学黄金法则。事实上，这条法则在他的睡眠诊所中“甚至比处方药还管用”。

"The best sleep tip you can ever give somebody is get up -- don't lay in bed awake but not sleeping," Grandner said. "Whether it's the beginning 
**/
@end
//late one Friday to watch an extra episode of "Succession." After that, your early-to-bed plans wen
@interface NSArray (YYModel)

/**
   in this word.Sun, Moon and you. Sun for morning, Moon for night, and you forever.
浮 
**/
+ (nullable NSArray *)yy_modelArrayWithClass:(Class)cls json:(id)json;
@end
@interface NSDictionary (YYModel)

/**
  o meditate during lunch, you'll be su 
**/
+ (nullable NSDictionary *)yy_modelDictionaryWithClass:(Class)cls json:(id)json;
@end

/**
  give this $20. to one of you. but first, let me do this."



开始有人举手。他说我会把这20美元纸币给你们中间的一位，但是，先看看我会这么做。”



He proceeded to crumple the 20 dollar note up. He the 
**/
@protocol YYModel <NSObject>
//e said this tip is so powerful that when used in his sleep clinic 
@optional
+ (nullable NSDictionary<NSString *, id> *)modelCustomPropertyMapper;
+ (nullable NSDictionary<NSString *, id> *)modelContainerPropertyGenericClass;
+ (nullable Class)modelCustomClassForDictionary:(NSDictionary *)dictionary;
+ (nullable NSArray<NSString *> *)modelPropertyBlacklist;
+ (nullable NSArray<NSString *> *)modelPropertyWhitelist;
//kles in your heart, and it will lead you to your destiny’s path. Follow that pathway and uncover the sweet sunrises that await you.
//
//
//
//尽管实现梦想的途中有时会遇到障碍，要知道这是命运对你的挑战。不是每个人都会赞成你的选择，接受这个现实，并相信自我的判断，追随那颗在你心中闪烁的明星，它会引领你踏上命运的征途。坚持不懈，你就能享受那些幸福时刻。
//
//
//
//Take pride in your accomplishments, as they are stepping stones to your dreams. Understand that you may make mistakes, but don’t let
- (NSDictionary *)modelCustomWillTransformFromDictionary:(NSDictionary *)dic;

/**
  。



“My friends, you have all learned a very valuable lesson. No matter what I did to the money, you still wanted it becau 
**/
- (BOOL)modelCustomTransformFromDictionary:(NSDictionary *)dic;
- (BOOL)modelCustomTransformToDictionary:(NSMutableDictionary *)dic;

/**
  from your friends

借助朋友的帮助



Spending time around high achievers can boost your own performance. If your New Year's resolution is to run a marathon or write a book, you'd be wise to start hanging around friends who've made it to the finish line (literally or figuratively) and can show you how it's done. You'll pick up a bit just by spending time tog 
**/
@end

/**
  , you'll be sure to decline a proffered lunch meeting.

提前想好你会在何时何地执行计划，这样做能在适当的时候让你想起自己的计划，如果你没有按照计划去做，就会产生内疚感。详细的计划也可以帮助你预测和避免阻碍——如果你计划在午餐时冥想，你一定会拒绝别人提出的午餐会议。

2.Consider a penalty clause

设置惩罚条款



This may sound sinister, but ensuring you'll face some penalty if you don't achieve your New Ye 
**/
NS_ASSUME_NONNULL_END
