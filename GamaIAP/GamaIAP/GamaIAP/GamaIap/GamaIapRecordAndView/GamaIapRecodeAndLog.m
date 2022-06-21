

#import "GamaIapRecodeAndLog.h"
#import "GamaIapFunction.h"
#import "GamaIapInfo.h"
#import "GamaIapData.h"
#import "GamaIapServerAccess.h"
#import "GamaIapRecodeAndLog.h"
#import "GamaIapAlertView.h"
#import "GamaIapTransactionRecorder.h"
#import "GamaIapMemoryAndLocalDataAdmin.h"
// --
#import "GamaFunction.h"//提供一些基本参数获取的方法
#import "GamaURLConnect.h"//访问服务器类
#import "GamaAlertView.h"//提示框的基本代理对象，可以给每个Alert单独指定
#import "GamaCentreInfo.h"
#import "GamaSecurity.h"
#import "GamaRequestor.h"
#import "GamaSecurityFunction.h"


@implementation GAMA_IAP_LOG

+(void)theTransaction:(NSString *)transactinId andState:(NSInteger)state payingState:(BOOL)isPaying date:(NSString *)date
{
    NSMutableString * payLogStr=[[[NSMutableString alloc]init]autorelease];
    [payLogStr appendFormat:@"时刻：%@(*#)",[self getCurrentMoment]];
    [payLogStr appendFormat:@"交易id:%@ 交易结果状态:%ld 日期：%@ 当前是否有交易正在进行:%d(*#)",transactinId,(long)state,date,isPaying];
    [self appendString:payLogStr];
}

+(void)paymentQueue_updatedTransactionsCalled
{
    NSMutableString * payLogStr=[[[NSMutableString alloc]init]autorelease];
    [payLogStr appendFormat:@"(*#)时刻：%@(*#)",[self getCurrentMoment]];
    [payLogStr appendFormat:@"-----(*#)"];
    [payLogStr appendFormat:@"paymentQueue_updatedTransactionsCalled方法被调用:(*#)"];
    [self appendString:payLogStr];
}

#pragma mark - 应用进入后台
+(void)applicationDidEnterBackground
{
    NSMutableString * payLogStr=[[[NSMutableString alloc]init]autorelease];
    [payLogStr appendFormat:@"(*#)时刻：%@(*#)",[self getCurrentMoment]];
    [payLogStr appendFormat:@"-----(*#)"];
    [payLogStr appendFormat:@"应用进入后台，applicationDidEnterBackground调用(*#)"];
    [self appendString:payLogStr];
}

#pragma mark - 应用从后台活跃到前端
+(void)applicationDidBecomeActive
{
    NSMutableString * payLogStr=[[[NSMutableString alloc]init]autorelease];
    [payLogStr appendFormat:@"(*#)时刻：%@(*#)",[self getCurrentMoment]];
    [payLogStr appendFormat:@"-----(*#)"];
    [payLogStr appendFormat:@"应用从后台跑到前面，applicationDidBecomeActive调用(*#)"];
    [self appendString:payLogStr];
}

#pragma mark - 初始化接口被调用
+(void)gamaPayClassInit
{
    NSMutableString * payLogStr=[[[NSMutableString alloc]init]autorelease];
    [payLogStr appendFormat:@"(*#)时刻：%@(*#)",[self getCurrentMoment]];
    [payLogStr appendFormat:@"-----(*#)"];
    [payLogStr appendFormat:@" iap 单例和苹果购买队列被初始化一次,即调用iap功能的startSDK方法一次(*#)"];
    [self appendString:payLogStr];
}

#pragma mark - 购买接口被调用了一次
+(void)buyMethodCalledOnce:(NSString *)parameterStr
{
    NSMutableString * payLogStr=[[[NSMutableString alloc]init]autorelease];
    [payLogStr appendFormat:@"(*#)(*#)(*#)时刻：%@(*#)",[self getCurrentMoment]];
    [payLogStr appendFormat:@"-----(*#)"];
    [payLogStr appendFormat:@"储值购买接口被调用了一次(*#)"];
    [payLogStr appendFormat:@"传递参数：(*#)%@",parameterStr];
    [self appendString:payLogStr];
}

#pragma mark - 插入一句描述：
+(void)insertOneDescription:(NSString *)description
{

    NSMutableString * payLogStr=[[[NSMutableString alloc]init]autorelease];
    [payLogStr appendFormat:@"(*#)时刻：%@(*#)",[self getCurrentMoment]];
    [payLogStr appendFormat:@"插入描述：(*#)"];
    [payLogStr appendFormat:@"%@(*#)",description];
    [self appendString:payLogStr];
}

#pragma mark - 购买日志，开始了一笔购买
+(void)beginOnePurchase
{
    
    NSMutableString * payLogStr=[[[NSMutableString alloc]init]autorelease];
    [payLogStr appendFormat:@"(*#)时刻：%@(*#)",[self getCurrentMoment]];
    [payLogStr appendFormat:@"-----(*#)"];
    [payLogStr appendFormat:@"******一笔储值纪录******(*#)"];
    [payLogStr appendFormat:@"-----(*#)"];
    
    [self appendString:payLogStr];
}

#pragma mark - 购买日志，重启了一笔购买
+(void)restartOnePurchaseWithTitle:(NSString *)title
{
    
    NSMutableString * payLogStr=[[[NSMutableString alloc]init]autorelease];
    [payLogStr appendFormat:@"(*#)(*#)(*#)时刻:%@(*#)",[self getCurrentMoment]];
    [payLogStr appendFormat:@"-----*********(*#)"];
    [payLogStr appendFormat:@"******这是补单纪录******(*#)"];
    [payLogStr appendFormat:@"-----(*#)"];
    [payLogStr appendFormat:@"%@(*#)",title];
    [self appendString:payLogStr];
}

#pragma mark - 购买日志，纪录某个监控点，内存中的数据是哪些
+(void)recodeCurrentMemoryWithNUM:(int)number
                         andTitle:(NSString *)title
                      andNextStep:(NSString *)nextStep
{
    
    NSMutableString * payLogStr=[[[NSMutableString alloc]init]autorelease];
    [payLogStr appendFormat:@"(*#)时刻:%@(*#)",[self getCurrentMoment]];
    [payLogStr appendFormat:@"-----------%d----------(*#)",number];
    [payLogStr appendFormat:@"%@(*#)",title];
    [payLogStr appendFormat:@"现在内存中的参数值:(*#)"];
    
    NSString * tempTransactionData=nil;
    if ([GamaIapData defaultData].transactionReciptData.length>10)
    {
        tempTransactionData=@"exist";
    }
    [payLogStr appendFormat:@"\"userID\"=\"%@\"(*#)",[GamaIapData defaultData].userID];
    [payLogStr appendFormat:@"\"playerID\"=\"%@\"(*#)",[GamaIapData defaultData].playerID];
    [payLogStr appendFormat:@"\"serverCode\"=\"%@\"(*#)",[GamaIapData defaultData].serverCode];
    [payLogStr appendFormat:@"\"productID\"=\"%@\"(*#)",[GamaIapData defaultData].productID];
    [payLogStr appendFormat:@"\"remarkStr\"=\"%@\"(*#)",[GamaIapData defaultData].remarkStr];
    [payLogStr appendFormat:@"\"roleLevel\"=\"%@\"(*#)",[GamaIapData defaultData].roleLevel];
    [payLogStr appendFormat:@"\"roleName\"=\"%@\"(*#)",[GamaIapData defaultData].roleName];
    [payLogStr appendFormat:@"\"orderId\"=\"%@\"(*#)",[GamaIapData defaultData].orderId];
    [payLogStr appendFormat:@"\"transactionID\"=\"%@\"(*#)",[GamaIapData defaultData].transactionID];
    [payLogStr appendFormat:@"\"transactionReciptData\"=\"%@\"(*#)",tempTransactionData];
    
    [payLogStr appendFormat:@"下一步:%@(*#)",nextStep];
    //写userdefault
    [self appendString:payLogStr];
}

#pragma mark - 购买日志，纪录某个监控点，本地的参数是哪些
+(void)recodeCurrentLocalWithNUM:(int)number
                        andTitle:(NSString *)title
                     andNextStep:(NSString *)nextStep
{
    
    NSDictionary * localDic=[[NSUserDefaults standardUserDefaults]objectForKey:GAMA_ONE_PURCHASE_INFO_KEY];
    //做的购买日志
    /*****/
    NSMutableString * payLogStr=[[[NSMutableString alloc]init]autorelease];
    [payLogStr appendFormat:@"(*#)时刻:%@(*#)",[self getCurrentMoment]];
    [payLogStr appendFormat:@"-----------%d----------(*#)",number];
    [payLogStr appendFormat:@"%@(*#)",title];
    [payLogStr appendFormat:@"现在从本地读取参数如下:(*#)"];
    NSArray * ParameterKeys=[localDic allKeys];
    for (NSString * encryOneKey in ParameterKeys) {
        NSString * encryOneValue=[localDic objectForKey:encryOneKey];
        if ([encryOneKey isEqualToString:@"transactionReciptData"])
        {
            if (encryOneValue.length>10)
            {
                encryOneValue=@"exist";
            }
        }
        NSString * decryptKey=[GamaIapTransactionRecorder iapDecodeFromString:encryOneKey];
        NSString * decryptValue=[GamaIapTransactionRecorder iapDecodeFromString:encryOneValue];
        [payLogStr appendFormat:@"\"%@\"=\"%@\"(*#)",decryptValue,decryptKey];
    }
    [payLogStr appendFormat:@"下一步:%@(*#)",nextStep];
    [self appendString:payLogStr];
}

#pragma mark - 购买日志，某个监控点的特别描述，比如URLString
+(void)recodeOneStepDiscriptionWithNUM:(int)number
                              andTitle:(NSString *)title
                        andDiscription:(NSString *)discription
                           andNextStep:(NSString *)nextStep
{
    
    NSMutableString * payLogStr=[[[NSMutableString alloc]init]autorelease];
    [payLogStr appendFormat:@"(*#)时刻:%@(*#)",[self getCurrentMoment]];
    [payLogStr appendFormat:@"-----------%d----------(*#)",number];
    [payLogStr appendFormat:@"%@(*#)",title];
    [payLogStr appendFormat:@"%@(*#)",discription];
    [payLogStr appendFormat:@"下一步:%@(*#)",nextStep];
    [self appendString:payLogStr];
}

#pragma mark - 记录异常订单
+(void)recodeExceptionOrderWithTransactionID:(NSString *)transID
                          andTransactionData:(NSData *)transData;
{
    NSString * BASE64str=[SUtil encode:(uint8_t *)transData.bytes
                                       length:transData.length];
    
    
    NSMutableString * payLogStr=[[[NSMutableString alloc]init]autorelease];
    [payLogStr appendFormat:@"-----------%d----------(*#)",888888];
    [payLogStr appendFormat:@"\"iosEX异常订单ID:%@(*#)",transID];
    [payLogStr appendFormat:@"\"iosEX异常订单:%@(*#)",BASE64str];
    
    [payLogStr appendFormat:@"\"iosEX异常订单userID\"=\"%@\"(*#)",[GamaIapData defaultData].userID];
    [payLogStr appendFormat:@"\"iosEX异常订单playerID\"=\"%@\"(*#)",[GamaIapData defaultData].playerID];
    [payLogStr appendFormat:@"\"iosEX异常订单serverCode\"=\"%@\"(*#)",[GamaIapData defaultData].serverCode];
    [payLogStr appendFormat:@"\"iosEX异常订单productID\"=\"%@\"(*#)",[GamaIapData defaultData].productID];
    [payLogStr appendFormat:@"\"iosEX异常订单remarkStr\"=\"%@\"(*#)",[GamaIapData defaultData].remarkStr];
    [payLogStr appendFormat:@"\"iosEX异常订单roleLevel\"=\"%@\"(*#)",[GamaIapData defaultData].roleLevel];
    [payLogStr appendFormat:@"\"iosEX异常订单roleName\"=\"%@\"(*#)",[GamaIapData defaultData].roleName];
    [payLogStr appendFormat:@"\"iosEX异常订单orderId\"=\"%@\"(*#)",[GamaIapData defaultData].orderId];
    
    [payLogStr appendFormat:@"----------------------(*#)"];
    [self appendString:payLogStr];
}

#pragma mark - 拼接日志，购买日志的长度不能超过75000个字符
+(void)appendString:(NSString *)contentStr
{
    
    //取出旧的加密字符串
    NSString * encodeOldStr=[[NSUserDefaults standardUserDefaults]objectForKey:GAMA_ONE_PURCHASE_PROCESS_LOG_KEY];
    /*判断旧的加密纪录是不是空，
            如果是空 把纪录contentStr直接加密转吗 写进纪录；
            如果不是空，把旧的字符串解密,把contentStr追加到解密的字符串后面，然后判断字符串长度是否超过75000，如果超过就进行截取，之后把字符串加密，保存。
     */
    if (encodeOldStr ==nil||[encodeOldStr isEqualToString:@""]) {
        NSString * encodeStr=[GamaIapTransactionRecorder iapEncryptFromString:contentStr];
        [[NSUserDefaults standardUserDefaults]setObject:encodeStr forKey:GAMA_ONE_PURCHASE_PROCESS_LOG_KEY];
        [[NSUserDefaults standardUserDefaults]synchronize];
    }
    else
    {
        NSString * decodeOldStr=[GamaIapTransactionRecorder iapDecodeFromString:encodeOldStr];
        NSMutableString * nowString =[NSMutableString stringWithFormat:@"%@%@",decodeOldStr,contentStr];
        if (nowString.length>75000)
        {
            nowString=(NSMutableString *)[nowString substringFromIndex:(nowString.length-75000)];
        }
        NSString * encodeNowString=[GamaIapTransactionRecorder iapEncryptFromString:nowString];
        [[NSUserDefaults standardUserDefaults]setObject:encodeNowString
                                                 forKey:GAMA_ONE_PURCHASE_PROCESS_LOG_KEY];
        [[NSUserDefaults standardUserDefaults]synchronize];
    }
}

#pragma mark - 获取购买日志
+(NSString *)getLogString
{
    GAMA_SHOW_CURRENT_FUNC_NAME
    NSString *tmpBuyStr = [[NSUserDefaults standardUserDefaults]objectForKey:GAMA_ONE_PURCHASE_PROCESS_LOG_KEY];
    NSString *decodeStr = [GamaIapTransactionRecorder iapDecodeFromString:tmpBuyStr];
    
    NSString *tmpStr = [NSString stringWithFormat:@"GET LOG STR:%@",decodeStr];
    GAMA_FUNCTION_LOG(tmpStr);
    return decodeStr;
}

#pragma mark - 删除购买日志
+(void)removeLog
{
    GAMA_SHOW_CURRENT_FUNC_NAME
    [[NSUserDefaults standardUserDefaults]removeObjectForKey:GAMA_ONE_PURCHASE_PROCESS_LOG_KEY];
    [[NSUserDefaults standardUserDefaults]synchronize];
}

+(NSString *)getCurrentMoment
{
    NSDate * nowDate=[NSDate date];
    NSDateFormatter * dateFormatter=[[[NSDateFormatter alloc] init]autorelease];
    [dateFormatter setDateFormat:@"yyyy-MM-dd_HH:mm_ss:SSS"];
    NSString *  locationString=[dateFormatter stringFromDate:nowDate];
    return locationString;
}

@end




#pragma mark - 

@implementation GAMA_RECODE_IAP_DATA

#pragma mark - 保存数据：某笔购买的参数
+(void)saveParameterDictionaryWithDictionary:(NSDictionary *)aDictionary
{
    GAMA_SHOW_CURRENT_FUNC_NAME
    NSMutableDictionary * tempDic=[[NSMutableDictionary alloc]initWithCapacity:2];
    for (NSString * key in aDictionary.allKeys)
    {
        if ([key isEqualToString:@"transactionReciptData"])
        {
            NSData * value=[aDictionary objectForKey:key];
            NSString * encryptKey=[GamaIapTransactionRecorder iapEncryptFromString:key];
            NSString * encryptValue=[GamaSecurity getEncodeStringFromData:value];
            NSDictionary * oneKeyValueDic=[NSDictionary dictionaryWithObject:encryptValue
                                                                      forKey:encryptKey];
            [tempDic addEntriesFromDictionary:oneKeyValueDic];
            continue;
        }
        NSString * value=[aDictionary objectForKey:key];
        NSString * encryptKey=[GamaIapTransactionRecorder iapEncryptFromString:key];
        NSString * encryptValue=[GamaIapTransactionRecorder iapEncryptFromString:value];
        NSDictionary * oneKeyValueDic=[NSDictionary dictionaryWithObject:encryptValue
                                                                  forKey:encryptKey];
        [tempDic addEntriesFromDictionary:oneKeyValueDic];
    }
    [[NSUserDefaults standardUserDefaults]setObject:tempDic forKey:GAMA_ONE_PURCHASE_INFO_KEY];
    [[NSUserDefaults standardUserDefaults]synchronize];
    [tempDic release];
}

#pragma mark - 获取本地某笔购买的参数
+(NSDictionary *)getParameterDictionary
{
    GAMA_SHOW_CURRENT_FUNC_NAME
    NSDictionary * encryptDic=[[NSUserDefaults standardUserDefaults]objectForKey:GAMA_ONE_PURCHASE_INFO_KEY];
    NSMutableDictionary * tempDic=[[NSMutableDictionary alloc]initWithCapacity:2];
    for (NSString * encryptKey in encryptDic.allKeys)
    {
        if ([encryptKey isEqualToString:[GamaIapTransactionRecorder iapEncryptFromString:@"transactionReciptData"]])
        {
            NSString * encryptValue=[encryptDic objectForKey:encryptKey];
            NSString * key=[GamaIapTransactionRecorder iapDecodeFromString:encryptKey];
            NSData * value=[GamaSecurity getEncodeDataFromString:encryptValue];
            NSDictionary * oneKeyValueDic=[NSDictionary dictionaryWithObject:value forKey:key];
            [tempDic addEntriesFromDictionary:oneKeyValueDic];
            continue;
        }
        
        NSString * encryptValue=[encryptDic objectForKey:encryptKey];
        NSString * key=[GamaIapTransactionRecorder iapDecodeFromString:encryptKey];
        NSString * value=[GamaIapTransactionRecorder iapDecodeFromString:encryptValue];
        NSDictionary * oneKeyValueDic=[NSDictionary dictionaryWithObject:value forKey:key];
        [tempDic addEntriesFromDictionary:oneKeyValueDic];
    }
    return [(NSDictionary *)tempDic autorelease];
}

#pragma mark - 移除掉本地保存的某笔购买参数
+(void)removeIapData
{
    GAMA_SHOW_CURRENT_FUNC_NAME
    [[NSUserDefaults standardUserDefaults]removeObjectForKey:GAMA_ONE_PURCHASE_INFO_KEY];
    [[NSUserDefaults standardUserDefaults]synchronize];
}

#pragma mark - 记录一笔苹果支付成功，但是OrderId和[GamaIapData defautData]里面记录不一样的记录
+(void)saveAOrderIdDifferentPaySuccessRecord:(NSDictionary *)aDictionary
{
    NSArray * differentOrderIds=[[NSUserDefaults standardUserDefaults]objectForKey:GAMA_THE_DIFFIENTE_GAMA_ORDER_IDS_KEY];
    NSString * newDifferentOrderId=[aDictionary objectForKey:@"orderId"];
    NSString * encryptDifferentOrderId=[GamaIapTransactionRecorder iapEncryptFromString:newDifferentOrderId];
    if (differentOrderIds && [differentOrderIds containsObject:encryptDifferentOrderId])
        return;
    NSMutableArray * nowDifferentOrderIds;
    if (differentOrderIds.count>0)
        nowDifferentOrderIds=[NSMutableArray arrayWithArray:differentOrderIds];
    else
        nowDifferentOrderIds=[[[NSMutableArray alloc]init]autorelease];
    [nowDifferentOrderIds addObject:encryptDifferentOrderId];
    [[NSUserDefaults standardUserDefaults]setObject:nowDifferentOrderIds forKey:GAMA_THE_DIFFIENTE_GAMA_ORDER_IDS_KEY];
    
    NSString * encryptTransactionKeyStr=[GamaIapTransactionRecorder iapEncryptFromString:[NSString stringWithFormat:@"%@Transaction",newDifferentOrderId]];
    NSMutableDictionary * tempTransactionInfoDic=[[[NSMutableDictionary alloc]init]autorelease];
    for (NSString * oneKey in aDictionary.allKeys)
    {
        NSString * encryptKey=[GamaIapTransactionRecorder iapEncryptFromString:oneKey];
        NSString * value=[aDictionary objectForKey:oneKey];
        NSString * encryptValue=[GamaIapTransactionRecorder iapEncryptFromString:value];
        [tempTransactionInfoDic addEntriesFromDictionary:[NSDictionary dictionaryWithObjectsAndKeys:
                                                          encryptValue,encryptKey, nil]];
    }
    [[NSUserDefaults standardUserDefaults]setObject:tempTransactionInfoDic forKey:encryptTransactionKeyStr];
    [[NSUserDefaults standardUserDefaults]synchronize];
}

+(NSArray *)getDifferentOrderIdsPayRecord
{
    NSArray * oneOrderIds = [[NSUserDefaults standardUserDefaults] objectForKey:GAMA_THE_DIFFIENTE_GAMA_ORDER_IDS_KEY];
    NSMutableArray * tempOrderIds = [[[NSMutableArray alloc] init] autorelease];
    for (NSString * oneEncryptOrderId in oneOrderIds)
    {
        NSString * oneDecryptOrderId =[GamaIapTransactionRecorder iapDecodeFromString:oneEncryptOrderId];
        [tempOrderIds addObject:oneDecryptOrderId];
    }
    return tempOrderIds;
}

+(NSDictionary *)getDifferenctEOITransactionInfo:(NSString *)oneOrderId
{
    NSString * encryptTransactionKeyStr=[GamaIapTransactionRecorder iapEncryptFromString:[NSString stringWithFormat:@"%@Transaction",oneOrderId]];
    NSDictionary * encryptTransactionInfoDic=[[NSUserDefaults standardUserDefaults]objectForKey:encryptTransactionKeyStr];
    NSMutableDictionary * tempDic=[[[NSMutableDictionary alloc]init]autorelease];
    for (NSString * encryptKey in encryptTransactionInfoDic.allKeys)
    {
        NSString * decryptKey=[GamaIapTransactionRecorder iapDecodeFromString:encryptKey];
        NSString * encryptValue=[encryptTransactionInfoDic objectForKey:encryptKey];
        NSString * decryptValue=[GamaIapTransactionRecorder iapDecodeFromString:encryptValue];
        [tempDic addEntriesFromDictionary:[NSDictionary dictionaryWithObjectsAndKeys:
                                           decryptValue,decryptKey, nil]];
    }
    return tempDic;
}

+(void)removeDifferencTEOITransaction:(NSString *)OrderId
{
    NSString * encryptOrderId=[GamaIapTransactionRecorder iapEncryptFromString:OrderId];
    NSString * encryptTransactionKeyStr=[GamaIapTransactionRecorder iapEncryptFromString:[NSString stringWithFormat:@"%@Transaction",OrderId]];
    NSArray * array=[[NSUserDefaults standardUserDefaults]objectForKey:GAMA_THE_DIFFIENTE_GAMA_ORDER_IDS_KEY];
    if (![array containsObject:encryptOrderId])
        return;
    NSMutableArray * tempArray=[NSMutableArray arrayWithArray:array];
    [tempArray removeObject:encryptOrderId];
    [[NSUserDefaults standardUserDefaults]setObject:tempArray forKey:GAMA_THE_DIFFIENTE_GAMA_ORDER_IDS_KEY];
    [[NSUserDefaults standardUserDefaults]removeObjectForKey:encryptTransactionKeyStr];
    [[NSUserDefaults standardUserDefaults]synchronize];
}

@end



