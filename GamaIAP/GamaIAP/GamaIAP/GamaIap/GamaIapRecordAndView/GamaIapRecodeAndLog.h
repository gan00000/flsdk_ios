

/*
具体实现纪录，本地的参数保存纪录，购买日志的纪录。
 这个类是本地读写UserDefault的具体实现。
 */



#import <Foundation/Foundation.h>

@interface GAMA_IAP_LOG : NSObject

//某笔的状态
+(void)theTransaction:(NSString *)transactinId andState:(NSInteger)state payingState:(BOOL)isPaying date:(NSDate *)date;

//支付回调被调用
+(void)paymentQueue_updatedTransactionsCalled;

//应用进入后台
+(void)applicationDidEnterBackground;

//应用从后台到前端
+(void)applicationDidBecomeActive;

//购买初始化方法被调用一次
+(void)gamaPayClassInit;

//用户点击以后，操作接口被调用
+(void)buyMethodCalledOnce:(NSString *)parameterStr;

//购买日志，开始了一笔购买
+(void)beginOnePurchase;

//购买日志，重启了一笔购买
+(void)restartOnePurchaseWithTitle:(NSString *)title;

//购买日志，纪录某个监控点，内存中的数据是哪些
+(void)recodeCurrentMemoryWithNUM:(int)number
                         andTitle:(NSString *)title
                      andNextStep:(NSString *)nextStep;

//购买日志，纪录某个监控点，本地的参数是哪些
+(void)recodeCurrentLocalWithNUM:(int)number
                        andTitle:(NSString *)title
                     andNextStep:(NSString *)nextStep;

//购买日志，某个监控点的特别描述，比如URLString
+(void)recodeOneStepDiscriptionWithNUM:(int)number
                              andTitle:(NSString *)title
                        andDiscription:(NSString *)discription
                           andNextStep:(NSString *)nextStep;
//记录异常订单
+(void)recodeExceptionOrderWithTransactionID:(NSString *)transID
                          andTransactionData:(NSData *)transData;

//插入一句描述：
+(void)insertOneDescription:(NSString *)description;

//获取购买日志
+(NSString *)getLogString;

//删除购买日志
+(void)removeLog;

@end



@interface GAMA_RECODE_IAP_DATA : NSObject

//保存数据：某笔购买的参数
+(void)saveParameterDictionaryWithDictionary:(NSDictionary *)aDictionary;

//获取本地某笔购买的参数
+(NSDictionary *)getParameterDictionary;

//移除掉本地保存的某笔购买参数
+(void)removeIapData;


//记录一笔苹果支付成功，但是OrderId和[GamaIapData defautData]里面记录不一样的记录
+(void)saveAOrderIdDifferentPaySuccessRecord:(NSDictionary *)aDictionary;

//获取苹果返回成功却发现跟[GamaIapData defautData]里面OrderId不同的记录
+(NSArray *)getDifferentOrderIdsPayRecord;

//获取某个不同eoi未完成交易的信息
+(NSDictionary *)getDifferenctEOITransactionInfo:(NSString *)oneOrderId;

//移除某个不同eoi的未完成记录
+(void)removeDifferencTEOITransaction:(NSString *)OrderId;

@end
