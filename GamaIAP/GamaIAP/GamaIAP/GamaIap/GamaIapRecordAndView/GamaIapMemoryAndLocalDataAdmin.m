//
//

#import "GamaIapMemoryAndLocalDataAdmin.h"
#import "GamaIapFunction.h"
#import "GamaIapInfo.h"
#import "GamaIapData.h"
#import "GamaIapServerAccess.h"
#import "GamaIapRecodeAndLog.h"
#import "GamaIapAlertView.h"
#import "GamaIapTransactionRecorder.h"
#import "GamaIapMemoryAndLocalDataAdmin.h"
// --
#import "GamaFunction.h"
#import "GamaAlertView.h"
#import "GamaCentreInfo.h"
#import "GamaSecurity.h"
#import "GamaRequestor.h"
#import "GamaSecurityFunction.h"

@implementation GamaIapMemoryAndLocalDataAdmin

#pragma mark -
#pragma mark 调整 本地 或者 memory 数据的方法
#pragma mark -

//保存游戏传过来的数据
+(void)setUserID:(NSString *)aUserID
     andPlayerID:(NSString *)aPlayerID
   andServerCode:(NSString *)aServerCode
    andProductID:(NSString *)aProductID
       andRemark:(NSString *)aRemark
    andRoleLevel:(NSString *)aRoleLevel
     andRoleName:(NSString *)aRoleName

{
    //清理成员变量
    [[GamaIapData defaultData]clearMemoryData];
    //初始化成员变量
    [GamaIapData defaultData].userID=aUserID;
    [GamaIapData defaultData].playerID=aPlayerID;
    [GamaIapData defaultData].serverCode=aServerCode;
    [GamaIapData defaultData].productID=aProductID;
    [GamaIapData defaultData].remarkStr=aRemark;
    [GamaIapData defaultData].roleLevel=aRoleLevel;
    [GamaIapData defaultData].roleName=aRoleName;
    //做的购买日志
    /***************************/
    [GAMA_IAP_LOG beginOnePurchase];
    [GAMA_IAP_LOG recodeCurrentMemoryWithNUM:1
                                    andTitle:@"监测购买环境都没问题,获取到了游戏传递过来的参数"
                                 andNextStep:@"把这些参数写进userdefault"];
    /***************************/
    //开始纪录
    NSDictionary * oneTransactionInfoDic=[NSDictionary dictionaryWithObjectsAndKeys:
                                          aUserID,@"userid",
                                          aPlayerID,@"playerid",
                                          aServerCode,@"serverCode",
                                          aProductID,@"productID",
                                          aRemark,@"remarkStr",
                                          aRoleLevel,@"roleLevel",
                                          aRoleName,@"roleName",
                                          GAMA_PARCHASE_WAIT_SP_SERVER_ORDERID,@"state",
                                          nil];
    [GAMA_RECODE_IAP_DATA saveParameterDictionaryWithDictionary:oneTransactionInfoDic];
    //做的购买日志
    /***************************/
    [GAMA_IAP_LOG recodeCurrentLocalWithNUM:2 andTitle:@"参数写本地成功"
                                andNextStep:@"开始向服务器请求order id"];
    /***************************/
    NSDictionary * localDic=[GAMA_RECODE_IAP_DATA getParameterDictionary];
    NSString * systemFlag0=[NSString stringWithFormat:@"now local data:%@(read from local)",localDic];
    GAMA_IAP_LOG(systemFlag0)
    GAMA_IAP_LOG(@"set data to momery and local success")
}
//本地纪录增加一个orderID
+(void)updataLocalDataWithOrderID:(NSString *)aOrderID
{
    //初始化成员变量
    [GamaIapData defaultData].orderId=aOrderID;
    
    //做的购买日志
    /***************************/
    [GAMA_IAP_LOG recodeCurrentMemoryWithNUM:4
                                    andTitle:@"从服务获取到orderid"
                                 andNextStep:@"开始更新本地保存的用户储值的参数信息"];
    /***************************/
    //修改本地保存状态
    NSDictionary * oldDic=[GAMA_RECODE_IAP_DATA getParameterDictionary];
    NSMutableDictionary * NowDic=[NSMutableDictionary dictionaryWithDictionary:oldDic];
    [NowDic addEntriesFromDictionary:[NSDictionary dictionaryWithObjectsAndKeys:aOrderID,@"orderId", nil]];
    [NowDic setObject:GAMA_PARCHASE_GET_SP_ORDERID_WAIT_PAY_RESULT forKey:@"state"];
    [GAMA_RECODE_IAP_DATA saveParameterDictionaryWithDictionary:NowDic];
    //做的购买日志
    /***************************/
    [GAMA_IAP_LOG recodeCurrentLocalWithNUM:5
                                   andTitle:@"更定 orderid 到本地成功，现在从本地读取参数如下:"
                                andNextStep:@"开始执行先AppStore支付，等待支付结果，如果支付成功，更新内存和本地数据"];
    /***************************/
    //系统输出
    NSDictionary * localDic=[GAMA_RECODE_IAP_DATA getParameterDictionary];
    NSString * systemFlag=[NSString stringWithFormat:@"now local:%@(this data read from local)",localDic];
    GAMA_IAP_LOG(systemFlag)
    NSDictionary * memoryDic=[NSDictionary dictionaryWithObjectsAndKeys:
                              [GamaIapData defaultData].userID,@"userid",
                              [GamaIapData defaultData].playerID,@"playerid",
                              [GamaIapData defaultData].serverCode,@"serverCode",
                              [GamaIapData defaultData].productID,@"productID",
                              [GamaIapData defaultData].remarkStr,@"remarkStr",
                              [GamaIapData defaultData].roleLevel,@"roleLevel",
                              [GamaIapData defaultData].roleName,@"roleName",
                              [GamaIapData defaultData].orderId,@"orderId",
                              nil];
    NSString * systemFlag0=[NSString stringWithFormat:@"now memory:%@(this data read from memory)",memoryDic];
    GAMA_IAP_LOG(systemFlag0)
    GAMA_IAP_LOG(@"updata to local and memory orderid success");
}
//把交易的id 和reciptData保存本地和缓存
+(void)paySuccessUpdataLocalDataWithTrasaction:(SKPaymentTransaction *)transaction
                                andReceiptData:(NSData *)receiptData
{
    [GamaIapData defaultData].transactionID=transaction.transactionIdentifier;
    [GamaIapData defaultData].transactionReciptData=receiptData;
    
    //做的购买日志
    /***************************/
    [GAMA_IAP_LOG recodeCurrentMemoryWithNUM:6
                                    andTitle:@"AppStore支付成功，交易id:"
                                 andNextStep:@"更新本地保存的信息"];
    /***************************/
    //保存本地
    NSDictionary * oldDic=[GAMA_RECODE_IAP_DATA getParameterDictionary];
    NSMutableDictionary * NowDic=[NSMutableDictionary dictionaryWithDictionary:oldDic];
    [NowDic addEntriesFromDictionary:[NSDictionary dictionaryWithObjectsAndKeys:
                                      transaction.transactionIdentifier,@"transactionID",
                                      nil]];
    [NowDic addEntriesFromDictionary:[NSDictionary dictionaryWithObjectsAndKeys:
                                      receiptData,@"transactionReciptData",
                                      nil]];
    [NowDic setObject:GAMA_PARCHASE_APPLE_PAY_SUCCESS_WAIT_POST_RESOURT forKey:@"state"];
    [GAMA_RECODE_IAP_DATA saveParameterDictionaryWithDictionary:NowDic];
    //做的购买日志
    /***************************/
    [GAMA_IAP_LOG recodeCurrentLocalWithNUM:7
                                   andTitle:@"更新交易信息到本地完成，现在从本地读取参数如下:"
                                andNextStep:@"下一步，开始post给服务器，进行验证交易，和发放游戏比"];
    /***************************/
    //系统输出
    NSDictionary * localDic=[GAMA_RECODE_IAP_DATA getParameterDictionary];
    NSString * systemFlag=[NSString stringWithFormat:@"now local:%@(this data read from local)",localDic];
    GAMA_IAP_LOG(systemFlag)
    NSDictionary * memoryDic=[NSDictionary dictionaryWithObjectsAndKeys:
                              [GamaIapData defaultData].userID,@"userid",
                              [GamaIapData defaultData].playerID,@"playerid",
                              [GamaIapData defaultData].serverCode,@"serverCode",
                              [GamaIapData defaultData].productID,@"productID",
                              [GamaIapData defaultData].remarkStr,@"remarkStr",
                              [GamaIapData defaultData].roleLevel,@"roleLevel",
                              [GamaIapData defaultData].roleName,@"roleName",
                              [GamaIapData defaultData].orderId,@"orderId",
                              [GamaIapData defaultData].transactionID,@"transactionID",
                              [GamaIapData defaultData].transactionReciptData,@"transactionReciptData",
                              nil];
    NSString * systemFlag0=[NSString stringWithFormat:@"now memory:%@(this data read from memory)",memoryDic];
    GAMA_IAP_LOG(systemFlag0)
    GAMA_IAP_LOG(@"save transaction to local success")
}


+(void)paySuccessButNotSameOrderIdWithParameterDic:(NSDictionary *)parameterDic
{
    [GAMA_RECODE_IAP_DATA saveAOrderIdDifferentPaySuccessRecord:parameterDic];
}


//把交易的id 和reciptData保存本地和缓存
+(void)payFailUpdataLocalDataWithTrasaction:(SKPaymentTransaction *)transaction
{
    [GamaIapData defaultData].transactionID=transaction.transactionIdentifier;
    [GamaIapData defaultData].APPLE_PAY_FAIL_CODE=transaction.error.code;
    //
    NSDictionary * oldDic=[GAMA_RECODE_IAP_DATA getParameterDictionary];
    NSMutableDictionary * NowDic=[NSMutableDictionary dictionaryWithDictionary:oldDic];
    [NowDic addEntriesFromDictionary:[NSDictionary dictionaryWithObjectsAndKeys:
                                      transaction.transactionIdentifier,@"transactionID",
                                      nil]];
    [NowDic setObject:GAMA_PARCHASE_APPLE_PAY_FAIL_WAIT_TELL_SP_SERVER forKey:@"state"];
    [GAMA_RECODE_IAP_DATA saveParameterDictionaryWithDictionary:NowDic];
    //系统输出
    NSDictionary * localDic=[GAMA_RECODE_IAP_DATA getParameterDictionary];
    NSString * systemFlag=
    [NSString stringWithFormat:@"now local:%@(this data read from local)",localDic];
    GAMA_IAP_LOG(systemFlag)
    NSDictionary * memoryDic=[NSDictionary dictionaryWithObjectsAndKeys:
                              [GamaIapData defaultData].userID,@"userid",
                              [GamaIapData defaultData].playerID,@"playerid",
                              [GamaIapData defaultData].serverCode,@"serverCode",
                              [GamaIapData defaultData].productID,@"productID",
                              [GamaIapData defaultData].remarkStr,@"remarkStr",
                              [GamaIapData defaultData].roleLevel,@"roleLevel",
                              [GamaIapData defaultData].roleName,@"roleName",
                              [GamaIapData defaultData].orderId,@"orderId",
                              [GamaIapData defaultData].transactionID,@"transactionID",
                              [GamaIapData defaultData].transactionReciptData,@"transactionReciptData",
                              nil];
    NSString * systemFlag0=[NSString stringWithFormat:@"now memory:%@(this data read from memory)",memoryDic];
    GAMA_IAP_LOG(systemFlag0)
    GAMA_IAP_LOG(@"save transaction to local success")
}

+(void)paySuccessUpdateLocalDataWithCurrencyCode:(NSString *)currencyCode andLocalPrice:(NSString *)localPrice
{
    [GamaIapData defaultData].currencyCode = currencyCode;
    [GamaIapData defaultData].currentLocalPrice = localPrice;
    //
    NSDictionary * oldDic=[GAMA_RECODE_IAP_DATA getParameterDictionary];
    NSMutableDictionary * NowDic=[NSMutableDictionary dictionaryWithDictionary:oldDic];
    [NowDic addEntriesFromDictionary:[NSDictionary dictionaryWithObjectsAndKeys:
                                      [GamaIapData defaultData].currencyCode,@"currencyCode",
                                      nil]];
    [NowDic setObject:GAMA_PARCHASE_APPLE_PAY_SUCCESS_WAIT_POST_RESOURT forKey:@"state"];
    [GAMA_RECODE_IAP_DATA saveParameterDictionaryWithDictionary:NowDic];
    //系统输出
    NSDictionary * localDic=[GAMA_RECODE_IAP_DATA getParameterDictionary];
    NSString * systemFlag=
    [NSString stringWithFormat:@"now local:%@(this data read from local)",localDic];
    GAMA_IAP_LOG(systemFlag)
    NSDictionary * memoryDic=[NSDictionary dictionaryWithObjectsAndKeys:
                              [GamaIapData defaultData].userID,@"userid",
                              [GamaIapData defaultData].playerID,@"playerid",
                              [GamaIapData defaultData].serverCode,@"serverCode",
                              [GamaIapData defaultData].productID,@"productID",
                              [GamaIapData defaultData].remarkStr,@"remarkStr",
                              [GamaIapData defaultData].roleLevel,@"roleLevel",
                              [GamaIapData defaultData].roleName,@"roleName",
                              [GamaIapData defaultData].orderId,@"orderId",
                              [GamaIapData defaultData].transactionID,@"transactionID",
                              [GamaIapData defaultData].transactionReciptData,@"transactionReciptData",
                              [GamaIapData defaultData].currencyCode,@"currencyCode",
                              nil];
    NSString * systemFlag0=[NSString stringWithFormat:@"now memory:%@(this data read from memory)",memoryDic];
    GAMA_IAP_LOG(systemFlag0)
    GAMA_IAP_LOG(@"save currencyCode to local success")
}
//清除緩存和本地數據
+(void)clearMemoryDataAndLocalData
{
//    //清除緩存數據
//    [[GamaIapData defaultData]clearMemoryData];
    //清除本地數據
    [GAMA_RECODE_IAP_DATA removeIapData];
    
    // reset the currencyCode and price
    [GamaIapData defaultData].currencyCode = GAMA_CURRENCY_CODE_DEFAULT_VALUE;
    [GamaIapData defaultData].currentLocalPrice = GAMA_CURRENCY_CODE_DEFAULT_VALUE;
}

@end
