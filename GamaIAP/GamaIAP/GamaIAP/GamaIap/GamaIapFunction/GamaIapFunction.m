
#import "GamaIapFunction.h"
#import "GamaIapInfo.h"
#import "GamaIapData.h"
#import "GamaIapServerAccess.h"
#import "GamaIapRecodeAndLog.h"
#import "GamaIapAlertView.h"
#import "GamaIapTransactionRecorder.h"
#import "GamaIapMemoryAndLocalDataAdmin.h"

#import "GamaFunction.h"
#import "GamaAlertView.h"
#import "GamaCentreInfo.h"
#import "GamaSecurity.h"
#import "GamaRequestor.h"
#import "GamaSecurityFunction.h"

@implementation GamaIapFunction

#pragma mark -
#pragma mark 用户点击了某个商品的购买按钮以后，开始执行购买流程
#pragma mark -

//用户点击了购买按钮
+(void)userDidClickBuyBtnWithProductID:(NSString *)aWantBuyProductID
                             andUserID:(NSString *)aUserID
                             andRoleID:(NSString *)roleID
                           andCreditID:(NSString *)creditID
                         andServerCode:(NSString *)aServerCode
                             andRemark:(NSString *)aRemark
                          andRoleLevel:(NSString *)aRoleLevel
                           andRoleName:(NSString *)aRoleName
                            ServerName:(NSString *)serverName
                             cpOrderId:(NSString * _Nonnull)cpOrderId
                                 extra:(NSString * _Nonnull)extra
{
    NSLog(@"开始购买：");
    //1 监测是否不该为空的参数为空了
    if (aWantBuyProductID==nil||[aWantBuyProductID isEqualToString:@""]||
        aUserID==nil||[aUserID isEqualToString:@""]||
        roleID.length <= 0 || [roleID isEqualToString:@""] ||
        aServerCode==nil||[aServerCode isEqualToString:@""]||
        aRoleLevel==nil||[aRoleLevel isEqualToString:@""]||
        aRoleName==nil||[aRoleName isEqualToString:@""])
    {
        [GamaIapAlertView showAlertWithMessage:nil andCompletion:nil andType:GAMA_IAP_Parameter_nil];
        
        //拼接参数
        NSMutableString * logStr=[[[NSMutableString alloc]init]autorelease];
        [logStr appendFormat:@"productid=%@",aWantBuyProductID];
        [logStr appendFormat:@"aUserID=%@",aUserID];
        [logStr appendFormat:@"creditID=%@",creditID];
        [logStr appendFormat:@"roleId=%@",roleID];
        [logStr appendFormat:@"aServerCode=%@",aServerCode];
        [logStr appendFormat:@"aRoleLevel=%@",aRoleLevel];
        [logStr appendFormat:@"aRoleName=%@",aRoleName];
        [self postBuyLogToServerWithDomainName:SDKConReaderGetString(GAMA_IAP_DOMAIN_NAME)
                                           WithLog:logStr];
        //发送购买失败消息
        [[NSNotificationCenter defaultCenter]postNotificationName:GAMA_PHCHASE_FAIL_IN object:nil];
        return;
    }
    //2 检查是否正在购买
    if ([GamaIapData defaultData].ISPURCHASING)
    {
        GAMA_IAP_LOG(@"there is one transaction purchasing")
            //提示原因
        [GamaIapAlertView showAlertWithMessage:nil
                                 andCompletion:nil
                                       andType:GAMA_IAP_OneIsBuying];
            //发送购买失败消息
        [[NSNotificationCenter defaultCenter]postNotificationName:GAMA_PHCHASE_FAIL_IN object:nil];
        return;
    }
    //3 检查网络是否异常
    if (![SUtil connectedToNetWork])
    {
        GAMA_IAP_LOG(@"check no net")
        //提示原因
        [GamaIapAlertView showAlertWithMessage:nil
                                 andCompletion:nil
                                       andType:GAMA_IAP_NoNet];
        //发送购买失败消息
        [[NSNotificationCenter defaultCenter] postNotificationName:GAMA_PHCHASE_FAIL_IN object:nil];
        return;
    }
    //4 检查是否允许购买
    if (![SKPaymentQueue canMakePayments])
    {
        GAMA_IAP_LOG(@"payment queue not support make payment")
        //提示原因
        [GamaIapAlertView showAlertWithMessage:nil
                                 andCompletion:nil
                                       andType:GAMA_IAP_NoMakePayments];
        //发送购买失败消息
        [[NSNotificationCenter defaultCenter]postNotificationName:GAMA_PHCHASE_FAIL_IN object:nil];
        return;
    }
    //如果都没有问题，开始本地化数据
    GAMA_IAP_LOG(@"***************************");
    [GamaIapData defaultData].ISPURCHASING=YES;
    GAMA_IAP_LOG(@"－-－environment OK;begin save parameter to memory and local");
    if (aRemark==nil)
    {
        aRemark=GAMA_NIL;
    }
    if (aRoleLevel==nil)
    {
        aRoleLevel=GAMA_NIL;
    }
    if (aRoleName==nil)
    {
        aRoleName=GAMA_NIL;
    }
    [GamaIapMemoryAndLocalDataAdmin setUserID:aUserID
                                  andPlayerID:creditID
                                andServerCode:aServerCode
                                 andProductID:aWantBuyProductID
                                    andRemark:aRemark
                                 andRoleLevel:aRoleLevel
                                  andRoleName:aRoleName];
    
    GAMA_IAP_LOG(@"begin to get orderid")
    //开始访问服务器获得 order id
    [GamaIapServerAccess accessServerForOrderIDWithUserID:aUserID
                                               serverCode:aServerCode
                                                   roleID:roleID
                                                    level:aRoleLevel
                                                 creditID:creditID
                                                productID:aWantBuyProductID
                                                   remark:aRemark
                                               serverName:serverName
                                                 roleName:aRoleName
                                                cpOrderId:cpOrderId
                                                    extra:extra];
}

//告诉服务器，游戏内部传递过来的值有空异常,告诉服务器
+(void)postBuyLogToServerWithDomainName:(NSString *)domainName WithLog:(NSString *)log
{
//    GAMA_SHOW_CURRENT_FUNC_NAME
    //创建日志内容
    NSMutableString * logStr=[[[NSMutableString alloc]init]autorelease];
    [logStr appendFormat:@"厂商传递过来空值:%@(*#)",log];
    [logStr appendFormat:@"***********************(*#)"];
    [logStr appendFormat:@"mac=%@(*#)",[SUtil getMacaddress]];
    [logStr appendFormat:@"idfa=%@(*#)",[SUtil getIdfa]];
    [logStr appendFormat:@"ip=%@(*#)",[SUtil getIPAddress]];
    [logStr appendFormat:@"gameCode=%@(*#)",SDKConReaderGetString(SDK_GAME_CODE)];
    [logStr appendFormat:@"gameKey=%@(*#)",SDKConReaderGetString(GAMA_GAME_KEY)];
    //创建一个请求:
    NSURL * APOSTURL;
    //创建URL
    NSMutableString * URLStr=[[[NSMutableString alloc]init]autorelease];
    [URLStr appendFormat:@"%@",domainName];
    [URLStr appendFormat:@"%@",SDKConReaderGetString(GAMA_IAP_SENT_PAY_LOG_PROJECT_NAME)];
    APOSTURL=[NSURL URLWithString:URLStr];
    //请求头 下
    NSMutableURLRequest *postRequest=[NSMutableURLRequest requestWithURL:APOSTURL];
    //指定请求的方式为POST
    [postRequest setHTTPMethod:@"POST"];
    //设置请求体，把参数连接转换为data类型
    NSData * postData=[logStr dataUsingEncoding:NSUTF8StringEncoding];
    NSString * systemFlag=
    [NSString stringWithFormat:@"log(being posted)'length:%lu",(unsigned long)postData.length];
    GAMA_IAP_LOG(systemFlag)
    [postRequest setHTTPBody:postData];
    //格式设置
    [postRequest addValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
    //时间
    //连接本次请求
    [GamaURLConnect accessServerWithRequest:postRequest
                                 andHandler:^(NSData * resultData,NSString * resultStr,NSError * error){
        //服务器有响应
        if (!error)
        {
            NSString * systemFlag=[NSString stringWithFormat:@"发送购买日志的结果:%@;接下来remove日志",resultStr];
            GAMA_IAP_LOG(systemFlag)
        }
        //服务器没有响应
        else
        {
            if ([domainName isEqualToString:SDKConReaderGetString(GAMA_IAP_DOMAIN_NAME)]) {
                GAMA_IAP_LOG(@"sent server with log no net in monal domainName,beign with spase name")
                [self postBuyLogToServerWithDomainName:SDKConReaderGetString(GAMA_IAP_SPASE_DOMAIN_NAME)
                                               WithLog:log];
                return ;
            }
            GAMA_IAP_LOG(@"post log no net");
        }
    }];
}


#pragma mark - 向AppStore付款成功 -
+(void)completeTransaction:(SKPaymentTransaction *)transaction
{
    //验证字符串
    //
    NSData * receiptData=nil;
    
    //验证字符串,如果是8.0以上的系统，通过新的方式获取到receiptData
    //if ([GamaFunction getSystemVersion].intValue >= 8)
    if ([SUtil getSystemVersion].floatValue >= 7.0)
    {
        NSURL *receiptUrl = [[NSBundle mainBundle] appStoreReceiptURL];
        receiptData = [NSData dataWithContentsOfURL:receiptUrl];
    }
    else
    {
        receiptData = transaction.transactionReceipt; // sdk 已经仅支持 ios 7 以上了，不再需要用之前旧的方式，而且也不安全
    }
    
    if ([transaction.transactionIdentifier isEqualToString:@""]
        || transaction.transactionIdentifier == nil) {
        [GAMA_IAP_LOG recodeCurrentLocalWithNUM:100800 andTitle:@"异常苹果订单它返回空订单号,输出一下当前本地保存的东西吧" andNextStep:@"这个我不写也可以吧"];
        [GAMA_IAP_LOG insertOneDescription:@"---transaction.transactionIdentifier为空---"];
        [GAMA_IAP_LOG recodeExceptionOrderWithTransactionID:transaction.transactionIdentifier
                                         andTransactionData:receiptData];
        
        //告诉Gama服务器log
        [self postBuyLogToServerWithDomainName:SDKConReaderGetString(GAMA_IAP_DOMAIN_NAME)
                                   andRoleName:[GamaIapData defaultData].roleName
                              andTransactionId:[GamaIapData defaultData].transactionID
                                       andDate:[SUtil getTimeDate]];
        return;
    }
    
    [GAMA_IAP_LOG insertOneDescription:[NSString stringWithFormat:@"completeTransaction被调用:TRANSACTION ID:%@, TRANSACTION DATA:%@",
                                        transaction.transactionIdentifier,
                                        receiptData]];
    
    //打印日志
    NSString * systemFlag=[NSString stringWithFormat:@"pay success:have get transactionid:%@ transactionReciptData:%@",
                           transaction.transactionIdentifier,
                           receiptData];
    GAMA_IAP_LOG(systemFlag)
    GAMA_IAP_LOG(@"begin updata transaction to memory and local")
    
    /*通过判断iOS版本号确定通过哪个方式获取payment中订单信息*/
    
    NSString * parameterStr=nil;
    if ([SUtil getSystemVersion].intValue < 7)
    {
        [GAMA_IAP_LOG insertOneDescription:@"检查iOS版本<7,开始尝试获取requestData"];
        parameterStr = [[[NSString alloc]initWithData:transaction.payment.requestData encoding:NSUTF8StringEncoding] autorelease];
    }
    else
    {
        [GAMA_IAP_LOG insertOneDescription:@"检查iOS版本>=7,开始尝试获取applicationUsername"];
        parameterStr = transaction.payment.applicationUsername;
    }
    
    if (parameterStr==nil || [parameterStr isEqualToString:@""])
    {
        [GAMA_IAP_LOG insertOneDescription:GAMA_COMBIN(@"requestData为空，开始走单例参数post,transactionId->", transaction.transactionIdentifier)];
        [GamaIapServerAccess postToServerCheckTransactionAndSentGameColdAsUsual:transaction
                                                                 andReceiptData:receiptData];
        
        [[SKPaymentQueue defaultQueue] finishTransaction:transaction];
        return;
    }
    
    [GAMA_IAP_LOG insertOneDescription:GAMA_COMBIN(@"获取到requestData", parameterStr)];
    
    NSDictionary * parameterDic;
    @try {
        parameterDic = [self getParameterFromStr:parameterStr];
    } @catch (NSException *exception) {
        parameterDic = nil;
    } @finally {
        
    }
   // NSDictionary * parameterDic = [self getParameterFromStr:parameterStr];
    
    if(![parameterDic.allKeys containsObject:@"uid"] ||
       ![parameterDic.allKeys containsObject:@"serverCode"] ||
       ![parameterDic.allKeys containsObject:@"orderId"] ||
       ![parameterDic.allKeys containsObject:@"payasId"] )
    {
        [GAMA_IAP_LOG insertOneDescription:@"获取三个参数不完整，不能使用payment参数,要使用单粒参数"];
        [GamaIapServerAccess postToServerCheckTransactionAndSentGameColdAsUsual:transaction
                                                                     andReceiptData:receiptData];
    
        [[SKPaymentQueue defaultQueue] finishTransaction:transaction]; // 结束订单
        return;
    }
    //是否更新缓存和本地交易记录
    if([[parameterDic objectForKey:@"orderId"] isEqualToString:[GamaIapData defaultData].orderId])
    {
        [GAMA_IAP_LOG insertOneDescription:@"跟当前单例eoi相同"];
        //更新缓存＋购买参数
        [GamaIapData defaultData].transactionID=transaction.transactionIdentifier;
        [GamaIapData defaultData].transactionReciptData=receiptData;
        [GamaIapMemoryAndLocalDataAdmin paySuccessUpdataLocalDataWithTrasaction:transaction
                                                                 andReceiptData:receiptData];
        //纪录购买历史
        [GamaIapTransactionRecorder updataTransactionInfoAndLogAfterPaySuccess];
        GAMA_IAP_LOG(@"finish transaction")
    }
    else
    {
        [GAMA_IAP_LOG insertOneDescription:@"跟当前单例eoi不相同，需要保存本次信息"];
    }
    
    //设置状态为YES
    [GamaIapData defaultData].ISPURCHASING=YES;
    
    [GamaIapServerAccess postToServerCheckTransactionAndSentGameColdWithUserId:[parameterDic objectForKey:@"uid"]
                                                                 andServerCode:[parameterDic objectForKey:@"serverCode"]
                                                                    andOrderId:[parameterDic objectForKey:@"orderId"]
                                                               andCurrencyCode:[GamaIapData defaultData].currencyCode
                                                                 andLocalPrice:[GamaIapData defaultData].currentLocalPrice
                                                              andTransactionId:transaction.transactionIdentifier
                                                                   receiptData:receiptData];
    
    /* 20170502：为测试 in_app 数据在 fresh 后是否为空
     1. 客户端验证 in_app 数据
     2. 如有，则 refresh
     3. fresh 后再次验证 凭证，查看返回的 inapp 数据
     预期测试结果：
     第一次的 inapp 有数据
     第二次 fresh 后的 inapp 数据为空
     实际测试结果：
     第一次的 inapp 有数据
     第二次 fresh 后的 inapp 仍有数据
     结论：
     消费类型 refresh 时，需要用户再次输入 appleID 密码，==》体验不好
     且 refresh 后 inapp 数据没有如文档所说变为空
     */
//    [GamaIapServerAccess postToAppStoreCheckTransactionAndSentGameColdWithUserId:[parameterDic objectForKey:@"uid"]
//                                                               andServerCode:[parameterDic objectForKey:@"serverCode"]
//                                                                  andOrderId:[parameterDic objectForKey:@"orderId"]
//                                                             andCurrencyCode:[GamaIapData defaultData].currencyCode
//                                                               andLocalPrice:[GamaIapData defaultData].currentLocalPrice
//                                                            andTransactionId:transaction.transactionIdentifier
//                                                                 receiptData:receiptData];
    
    [[SKPaymentQueue defaultQueue] finishTransaction:transaction];// 结束订单
}


+(NSDictionary *)getParameterFromStr:(NSString *)parameterStr
{
    NSArray * parameterArray = [parameterStr componentsSeparatedByString:@"&"];
    NSMutableDictionary * paraDic = [[[NSMutableDictionary alloc] init] autorelease];
    for (NSString * oneParameterStr in parameterArray)
    {
        NSRange dengyuhaoRange=[oneParameterStr rangeOfString:@"="];// 等于号range ??
        NSString * paraKeyStr=[oneParameterStr substringWithRange:NSMakeRange(0, dengyuhaoRange.location)];
        NSString * paraValueStr=[oneParameterStr substringWithRange:NSMakeRange(dengyuhaoRange.location+1, oneParameterStr.length-dengyuhaoRange.location-1)];
        [paraDic addEntriesFromDictionary:[NSDictionary dictionaryWithObjectsAndKeys:paraValueStr,paraKeyStr, nil]];
    }
    return paraDic;
}

+(void)postBuyLogToServerWithDomainName:(NSString *)domainName
                                andRoleName:(NSString *)roleName
                           andTransactionId:(NSString *)transactionId
                                    andDate:(NSString *)date
{
    NSString * log=[GAMA_IAP_LOG getLogString];
//    NSLog(@"log:%@",log);
    //给本次post加上本次post的开头和结尾
    NSString * logStr=[NSString stringWithFormat:@"role=%@&transactionId=%@&orderId=%@&date=%@&log=%@",
                       roleName,
                       transactionId,
                       [GamaIapData defaultData].orderId,
                       date,
                       [SUtil urlEcodingFromString:log]];
    GAMA_IAP_LOG(logStr)
    NSString * logLength=[NSString stringWithFormat:@"log string length %lu",(unsigned long)log.length];
    GAMA_IAP_LOG(logLength)
    //创建一个请求:
    NSURL * APOSTURL;
    //创建URL
    NSMutableString * URLStr=[[[NSMutableString alloc]init]autorelease];
    [URLStr appendFormat:@"%@",domainName];
    [URLStr appendFormat:@"%@",SDKConReaderGetString(GAMA_IAP_SENT_PAY_LOG_PROJECT_NAME)];
    APOSTURL=[NSURL URLWithString:URLStr];
    //请求头 下
    NSMutableURLRequest *postRequest=[NSMutableURLRequest requestWithURL:APOSTURL];
    //指定请求的方式为POST
    [postRequest setHTTPMethod:@"POST"];
    //设置请求体，把参数连接转换为data类型
    NSData * postData=[logStr dataUsingEncoding:NSUTF8StringEncoding];
    NSString * systemFlag=[NSString stringWithFormat:@"log(being posted)'length:%lu",(unsigned long)postData.length];
    GAMA_IAP_LOG(systemFlag)
    [postRequest setHTTPBody:postData];
    //格式设置
    [postRequest addValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
    //时间
    //连接本次请求
    [GamaURLConnect accessServerWithRequest:postRequest
                                 andHandler:^(NSData * resultData,NSString * resultStr,NSError * error)
    {
        //服务器有响应
        if (!error)
        {
            NSString * systemFlag=[NSString stringWithFormat:@"发送购买日志的结果:%@;接下来remove日志",resultStr];
            GAMA_IAP_LOG(systemFlag)
        }
        //服务器没有响应
        else
        {
            if ([domainName isEqualToString:SDKConReaderGetString(GAMA_IAP_DOMAIN_NAME)])
            {
                GAMA_IAP_LOG(@"sent server with log no net in monal domainName,beign with spase name")
                [self postBuyLogToServerWithDomainName:SDKConReaderGetString(GAMA_IAP_SPASE_DOMAIN_NAME)
                                               andRoleName:[GamaIapData defaultData].roleName
                                          andTransactionId:[GamaIapData defaultData].transactionID
                                                   andDate:[SUtil getTimeDate]];
                return ;
            }
            GAMA_IAP_LOG(@"post log no net");
        }
    }];
}

#pragma mark -
#pragma mark 向AppStore支付失败以后

+(void)failedTransaction:(SKPaymentTransaction *)transaction
{
    //设置购买状态
    [GamaIapData defaultData].ISPURCHASING=NO;
    [GamaIapData defaultData].ISREPURCHASE=NO;
    GAMA_SHOW_CURRENT_FUNC_NAME
    //更新数据
    [GamaIapMemoryAndLocalDataAdmin payFailUpdataLocalDataWithTrasaction:transaction];
    GAMA_IAP_LOG(@"queue finish transaction")
    [[SKPaymentQueue defaultQueue]finishTransaction:transaction];
    //告知服务器

    //提示玩家失败原因
    if ([GamaIapData defaultData].APPLE_PAY_FAIL_CODE == SKErrorPaymentCancelled)
    {
        [GamaIapAlertView showAlertWithMessage:[NSString stringWithFormat:@"%ld\n%@\n%@",
                                                (long)[GamaIapData defaultData].APPLE_PAY_FAIL_CODE,
                                                [GamaIapData defaultData].orderId,
                                                transaction.transactionIdentifier]
                                 andCompletion:nil
                                       andType:GAMA_IAP_UserCancelToBuy];
        /***************************/
        [GAMA_IAP_LOG recodeOneStepDiscriptionWithNUM:10086
                                             andTitle:@"AppStore支付失败，用户取消了购买"
                                       andDiscription:transaction.transactionIdentifier
                                          andNextStep:@"-------over------"];
        [GamaIapTransactionRecorder userCancelPay];
        /***************************/
    }
    else
    {
        NSString *errorMsg = [transaction.error.userInfo objectForKey:@"NSLocalizedDescription"];
        [GamaIapAlertView showAlertWithMessage:[NSString stringWithFormat:@"%ld %@",
                                                (long)[GamaIapData defaultData].APPLE_PAY_FAIL_CODE,
                                                errorMsg
                                                ]
                                 andCompletion:nil
                                       andType:GAMA_IAP_AppStorePayFail];
        /***************************/
        [GAMA_IAP_LOG recodeOneStepDiscriptionWithNUM:10086
                                             andTitle:@"AppStore支付失败，苹果支付异常"
                                       andDiscription:transaction.transactionIdentifier
                                          andNextStep:@"-------over------"];
        [GamaIapTransactionRecorder payFailInAppStore];
        /***************************/
    }
    //发送购买失敗的广播
    [[NSNotificationCenter defaultCenter]postNotificationName:GAMA_PHCHASE_FAIL_IN object:nil];
}

#pragma mark -
#pragma mark 补单情况
#pragma mark -

#define _ASSERT_VAL_STR_(str) (!(str==nil) && ![str isEqualToString:@""])

//开启游戏，初始化paymentQueue代理以后，自动补单了，就开始初始化数据0
+(BOOL)setDataFromLocal
{
    GAMA_SHOW_CURRENT_FUNC_NAME
    //做的购买日志
    /***************************/
    [GAMA_IAP_LOG restartOnePurchaseWithTitle:@"苹果自动补单"];
    [GAMA_IAP_LOG recodeCurrentLocalWithNUM:0
                                   andTitle:@"重新启动游戏，发现苹果自动进行补单，先从本地初始化内存参数"
                                andNextStep:@"把读取的参数，初始化到内存中"];
    /***************************/
    //从本地读取数据：从本地获取数据（此时应该有九个参数，包括State）
    NSDictionary * lastTransactionInfodic=[GAMA_RECODE_IAP_DATA getParameterDictionary];
    NSString * aStateStr=[lastTransactionInfodic objectForKey:@"state"];
    NSString * aUserID=[lastTransactionInfodic objectForKey:@"userid"];
    NSString * aPlayerID=[lastTransactionInfodic objectForKey:@"playerid"];
    NSString * aServerCode=[lastTransactionInfodic objectForKey:@"serverCode"];
    NSString * aRemarkStr=[lastTransactionInfodic objectForKey:@"remarkStr"];
    NSString * aProductID=[lastTransactionInfodic objectForKey:@"productID"];
    NSString * aRoleLevel=[lastTransactionInfodic objectForKey:@"roleLevel"];
    NSString * aRoleName=[lastTransactionInfodic objectForKey:@"roleName"];
    NSString * aOrderID=[lastTransactionInfodic objectForKey:@"orderId"];
    //做的购买日志
    /***************************/
    [GAMA_IAP_LOG recodeCurrentLocalWithNUM:0
                                   andTitle:@"从本地初始化到内存参数完成"
                                andNextStep:@"进行补单下一步"];
    /***************************/NSString * systemFlag=[NSString stringWithFormat:@"get data from local:%@",lastTransactionInfodic];
    GAMA_IAP_LOG(systemFlag);
    //如果有記錄，並且三個值都不是空。
    if (
        _ASSERT_VAL_STR_(aUserID) ||
        _ASSERT_VAL_STR_(aPlayerID) ||
        _ASSERT_VAL_STR_(aServerCode)
        )
    {
        if (!
            ([aStateStr isEqualToString:GAMA_PARCHASE_APPLE_PAY_SUCCESS_WAIT_POST_RESOURT] &&
             !(lastTransactionInfodic==nil) &&
             !(aUserID==nil) && ![aUserID isEqualToString:@""] &&
             !(aPlayerID==nil) && ![aPlayerID isEqualToString:@""] &&
             !(aServerCode==nil) && ![aServerCode isEqualToString:@""] &&
             !(aProductID==nil) && ![aProductID isEqualToString:@""]&&
             !(aRoleLevel==nil) && ![aRoleLevel isEqualToString:@""]&&
             !(aRoleName==nil) && ![aRoleName isEqualToString:@""]&&
             !(aOrderID==nil) && ![aOrderID isEqualToString:@""])
            ) {
            [GAMA_IAP_LOG recodeCurrentLocalWithNUM:8889
                                           andTitle:@"setDataFromLocal函数。参数不完整"
                                        andNextStep:@"进行补单下一步"];
        }
        
        GAMA_IAP_LOG(@"start init memory from local");

        //给成员变量赋值
        _ASSERT_VAL_STR_(aUserID) ? [GamaIapData defaultData].userID      = aUserID : nil;
        _ASSERT_VAL_STR_(aPlayerID) ? [GamaIapData defaultData].playerID    = aPlayerID : nil;
        _ASSERT_VAL_STR_(aServerCode) ? [GamaIapData defaultData].serverCode  = aServerCode : nil;
        _ASSERT_VAL_STR_(aRemarkStr) ? [GamaIapData defaultData].remarkStr   = aRemarkStr : nil;
        _ASSERT_VAL_STR_(aProductID) ? [GamaIapData defaultData].productID   = aProductID : nil;
        _ASSERT_VAL_STR_(aRoleLevel) ? [GamaIapData defaultData].roleLevel   = aRoleLevel : nil;
        _ASSERT_VAL_STR_(aRoleName) ? [GamaIapData defaultData].roleName    = aRoleName : nil;
        _ASSERT_VAL_STR_(aOrderID) ? [GamaIapData defaultData].orderId = aOrderID : nil;
        return YES;
    }
    return NO;
}

/*有两种情况：一，支付成功，向服务器验证；二，支付失败，向服务器通知
此时有十个或者九个参数*/
+(void)checkTransactionUnfinished
{
    GAMA_SHOW_CURRENT_FUNC_NAME
    GAMA_IAP_LOG(@"check whether unfinished transaction")
    //从本地读取数据：从本地获取数据
    NSDictionary * lastTransactionInfodic=[GAMA_RECODE_IAP_DATA getParameterDictionary];
    NSString * aStateStr    =   [lastTransactionInfodic objectForKey:@"state"];
    NSString * aUserID      =   [lastTransactionInfodic objectForKey:@"userid"];
    NSString * aPlayerID    =   [lastTransactionInfodic objectForKey:@"playerid"];
    NSString * aServerCode  =   [lastTransactionInfodic objectForKey:@"serverCode"];
    NSString * aRemarkStr   =   [lastTransactionInfodic objectForKey:@"remarkStr"];
    NSString * aProductID   =   [lastTransactionInfodic objectForKey:@"productID"];
    NSString * aRoleLevel   =   [lastTransactionInfodic objectForKey:@"roleLevel"];
    NSString * aRoleName    =   [lastTransactionInfodic objectForKey:@"roleName"];
    NSString * aOrderID     =   [lastTransactionInfodic objectForKey:@"orderId"];
    NSData * aTransactionReciptData =   [lastTransactionInfodic objectForKey:@"transactionReciptData"];
    NSString * aTransactionID       =   [lastTransactionInfodic objectForKey:@"transactionID"];
    NSString * aCurrencyCode        =   [lastTransactionInfodic objectForKey:@"currencyCode"];
    //系统打印
    NSString * systemFlag=[NSString stringWithFormat:@"get info from local: %@",lastTransactionInfodic];
    GAMA_IAP_LOG(systemFlag);

    //如果有記錄，並且參數值都不是空。
    if (
        [aStateStr isEqualToString:GAMA_PARCHASE_APPLE_PAY_SUCCESS_WAIT_POST_RESOURT] &&
        !(lastTransactionInfodic==nil) &&
        !(aUserID==nil) && ![aUserID isEqualToString:@""] &&
        !(aPlayerID==nil) && ![aPlayerID isEqualToString:@""] &&
        !(aServerCode==nil) && ![aServerCode isEqualToString:@""] &&
        !(aProductID==nil) && ![aProductID isEqualToString:@""]&&
        !(aOrderID==nil) && ![aOrderID isEqualToString:@""]&&
        !(aTransactionReciptData==nil) &&
        !(aTransactionID==nil) && ![aTransactionID isEqualToString:@""]
        )
    {
        if (!
            ([aStateStr isEqualToString:GAMA_PARCHASE_APPLE_PAY_SUCCESS_WAIT_POST_RESOURT] &&
             !(lastTransactionInfodic==nil) &&
             !(aUserID==nil) && ![aUserID isEqualToString:@""] &&
             !(aPlayerID==nil) && ![aPlayerID isEqualToString:@""] &&
             !(aServerCode==nil) && ![aServerCode isEqualToString:@""] &&
             //        !(aRemarkStr==nil) && ![aRemarkStr isEqualToString:@""]&&
             !(aProductID==nil) && ![aProductID isEqualToString:@""]&&
             !(aRoleLevel==nil) && ![aRoleLevel isEqualToString:@""]&&
             !(aRoleName==nil) && ![aRoleName isEqualToString:@""]&&
             !(aOrderID==nil) && ![aOrderID isEqualToString:@""]&&
             !(aTransactionReciptData==nil) &&
             !(aTransactionID==nil) && ![aTransactionID isEqualToString:@""])
            ) {
            [GAMA_IAP_LOG recodeCurrentLocalWithNUM:8889
                                           andTitle:@"checkTransactionUnfinished函数。参数不完整"
                                        andNextStep:@"发现post没响应，进行补单"];
        }
        
        GAMA_IAP_LOG(@"last pay success post server fail,begin init data from localto memory")
        [GamaIapData defaultData].ISPURCHASING=YES;
//        //清理成员变量
//        [[GamaIapData defaultData]clearMemoryData];
        //做的购买日志
        /***************************/
        [GAMA_IAP_LOG restartOnePurchaseWithTitle:@"发现post没响应，进行补单"];
        [GAMA_IAP_LOG recodeCurrentLocalWithNUM:0
                                       andTitle:@"重新启动游戏，发现有AppStore支付成功，还没有得到post服务器结果的交易。"
                                    andNextStep:@"把读取的参数，初始化到内存中"];
        /***************************/
        //给成员变量赋值
        _ASSERT_VAL_STR_(aUserID) ? [GamaIapData defaultData].userID     = aUserID : nil;
        _ASSERT_VAL_STR_(aPlayerID) ? [GamaIapData defaultData].playerID    = aPlayerID : nil;
        _ASSERT_VAL_STR_(aServerCode) ? [GamaIapData defaultData].serverCode  = aServerCode : nil;
        _ASSERT_VAL_STR_(aRemarkStr) ? [GamaIapData defaultData].remarkStr   = aRemarkStr : nil;
        _ASSERT_VAL_STR_(aProductID) ? [GamaIapData defaultData].productID   = aProductID : nil;
        _ASSERT_VAL_STR_(aRoleLevel) ? [GamaIapData defaultData].roleLevel   = aRoleLevel : nil;
        _ASSERT_VAL_STR_(aRoleName) ? [GamaIapData defaultData].roleName    = aRoleName : nil;
        _ASSERT_VAL_STR_(aOrderID) ? [GamaIapData defaultData].orderId = aOrderID : nil;
        aTransactionReciptData ? [GamaIapData defaultData].transactionReciptData = aTransactionReciptData : nil;
        _ASSERT_VAL_STR_(aTransactionID) ? [GamaIapData defaultData].transactionID         = aTransactionID : nil;
        _ASSERT_VAL_STR_(aCurrencyCode) ? [GamaIapData defaultData].currencyCode = aCurrencyCode : nil;
        //做的购买日志
        /***************************/
        [GAMA_IAP_LOG recodeCurrentLocalWithNUM:0
                                       andTitle:@"初始化数据完成"
                                    andNextStep:@"post服务器"];
        /***************************/
        //开始补单
        GAMA_IAP_LOG(@"init memory from local success,begin post server check and sent game gold")
        [GamaIapServerAccess postToServerCheckTransactionAndSentGameColdWithUserId:[GamaIapData defaultData].userID
                                                                     andServerCode:[GamaIapData defaultData].serverCode
                                                                        andOrderId:[GamaIapData defaultData].orderId
                                                                   andCurrencyCode:[GamaIapData defaultData].currencyCode
                                                                     andLocalPrice:[GamaIapData defaultData].currentLocalPrice
                                                                  andTransactionId:[GamaIapData defaultData].transactionID
                                                                       receiptData:[GamaIapData defaultData].transactionReciptData];
    }
}

@end
