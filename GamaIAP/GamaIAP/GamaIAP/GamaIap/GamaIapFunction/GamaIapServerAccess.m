

#import "GamaIapServerAccess.h"

//#import "GamaIAPHeader.h"
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
#import "GamaURLConnect.h"
#import "GamaAlertView.h"
#import "GamaCentreInfo.h"
#import "GamaSecurity.h"
#import "GamaRequestor.h"
#import "GamaSecurityFunction.h"

#import <StoreKit/SKReceiptRefreshRequest.h>
#import <StoreKit/SKProductsRequest.h>

//static NSString *curReqUrl = @"https://buy.itunes.apple.com/verifyReceipt";
//static NSString *sandboxUrl = @"https://sandbox.itunes.apple.com/verifyReceipt";
static NSString *_verifyBase64Str = nil;
static int     _verifyCount = 0;

@interface GamaIapServerAccess () <SKProductsRequestDelegate>

@end


@implementation GamaIapServerAccess
@synthesize iapGetCurrencyQueue;
@synthesize iapPostQueue;

static GamaIapServerAccess *_instance;
- (instancetype)init
{
    iapGetCurrencyQueue = dispatch_queue_create("com.py.iapGetCurrencyBarrierQuere", DISPATCH_QUEUE_SERIAL);
    iapPostQueue = dispatch_queue_create("com.py.iapPostBarrierQuere", DISPATCH_QUEUE_SERIAL);
    
    return [super init];
}

+ (instancetype)defaultInstance {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[GamaIapServerAccess alloc] init];
    });
    return _instance;
}

+(void)postToServerCheckTransactionAndSentGameColdWithUserId:(NSString * _Nonnull)userId
                                               andServerCode:(NSString * _Nonnull)serverCode
                                                  andOrderId:(NSString * _Nonnull)orderId
                                             andCurrencyCode:(NSString * _Nonnull)currencyCode
                                               andLocalPrice:(NSString * _Nonnull)localPrice
                                            andTransactionId:(NSString * _Nonnull)transactionId
                                                 receiptData:(NSData * _Nonnull)receiptData
{
    dispatch_barrier_async(_instance.iapPostQueue,^{
        dispatch_async(dispatch_get_main_queue(), ^{
    
            [self _postToServerCheckTransactionAndSentGameColdWithUserId:userId
                                                           andServerCode:serverCode
                                                              andOrderId:orderId
                                                         andCurrencyCode:currencyCode
                                                           andLocalPrice:localPrice
                                                        andTransactionId:transactionId
                                                             receiptData:receiptData];
        });
    });
}

+(void)postToServerCheckTransactionAndSentGameColdAsUsual:(SKPaymentTransaction *)transaction
                                           andReceiptData:(NSData *)receiptData
{
    [GAMA_IAP_LOG insertOneDescription:@"开始走单里参数下的post验证接口"];
    //更新缓存＋购买参数
    [GamaIapData defaultData].transactionID=transaction.transactionIdentifier;
    [GamaIapData defaultData].transactionReciptData=receiptData;
    [GamaIapMemoryAndLocalDataAdmin paySuccessUpdataLocalDataWithTrasaction:transaction
                                                             andReceiptData:receiptData];
    //纪录购买历史
    [GamaIapTransactionRecorder updataTransactionInfoAndLogAfterPaySuccess];
    //设置状态为YES
    [GamaIapData defaultData].ISPURCHASING=YES;
    
    [self postToServerCheckTransactionAndSentGameColdWithUserId:[GamaIapData defaultData].userID
                                                  andServerCode:[GamaIapData defaultData].serverCode
                                                     andOrderId:[GamaIapData defaultData].orderId
                                                andCurrencyCode:[GamaIapData defaultData].currencyCode
                                                  andLocalPrice:[GamaIapData defaultData].currentLocalPrice
                                               andTransactionId:transaction.transactionIdentifier
                                                    receiptData:(NSData *)receiptData];
}

#define _ASSERT_VAL_STR_(str) (!(str==nil) && ![str isEqualToString:@""])

+(void)_postToServerCheckTransactionAndSentGameColdWithUserId:(NSString *)userId
                                                andServerCode:(NSString *)serverCode
                                                   andOrderId:(NSString *)orderId
                                              andCurrencyCode:(NSString *)currencyCode
                                                andLocalPrice:(NSString *)localPrice
                                             andTransactionId:(NSString *)transactionId
                                                  receiptData:(NSData *)receiptData
{
    GAMA_IAP_LOG(@"begin post to server to check and sent game gold")
    if (([[GamaIapData defaultData].orderId isEqualToString:@""] || [GamaIapData defaultData].orderId ==nil) &&
        ([[GamaIapData defaultData].userID isEqualToString:@""] || [GamaIapData defaultData].userID ==nil) &&
        ([[GamaIapData defaultData].serverCode isEqualToString:@""] || [GamaIapData defaultData].serverCode ==nil)) {
        if ((![orderId isEqualToString:@""] || orderId.length > 0)
            && (![userId isEqualToString:@""] || userId.length > 0)
            && (![serverCode isEqualToString:@""] || serverCode.length > 0)) {//**如果传值过程异常，则使用透传值；
            _ASSERT_VAL_STR_(userId) ? [GamaIapData defaultData].userID     = userId : nil;
            _ASSERT_VAL_STR_(serverCode) ? [GamaIapData defaultData].serverCode  = serverCode : nil;
            _ASSERT_VAL_STR_(orderId) ? [GamaIapData defaultData].orderId = orderId : nil;
            _ASSERT_VAL_STR_(currencyCode) ? [GamaIapData defaultData].currencyCode = currencyCode : nil;
            _ASSERT_VAL_STR_(localPrice)? [GamaIapData defaultData].currentLocalPrice = localPrice : nil;
            _ASSERT_VAL_STR_(transactionId)? [GamaIapData defaultData].transactionID = transactionId : nil;
            receiptData ? [GamaIapData defaultData].transactionReciptData = receiptData : nil;
        }else{
            dispatch_async(dispatch_get_main_queue(), ^{
                [GamaAlertView showAlertWithMessage:@"iap error: -404"];
            });
        }
    }
    static BOOL _isWaitForCurrencyCode = YES;
    
    NSString *tmpCurrencyCode = [GamaIapData defaultData].currencyCode;
    if (([tmpCurrencyCode isEqualToString:GAMA_CURRENCY_CODE_DEFAULT_VALUE] || !tmpCurrencyCode)
        && _isWaitForCurrencyCode) {
        
        dispatch_barrier_async(_instance.iapGetCurrencyQueue, ^{//barriered #1
            
            NSTimeInterval tmpStartTime = [[NSDate date] timeIntervalSince1970];
            while (true) {
                NSTimeInterval tmpEndTime = [[NSDate date] timeIntervalSince1970];
                if (![[GamaIapData defaultData].currencyCode isEqualToString:GAMA_CURRENCY_CODE_DEFAULT_VALUE]) {//already got it
                    break;
                } else if (tmpEndTime - tmpStartTime > 15) {//wait for 15 secounds
                    break;
                }
                [NSThread sleepForTimeInterval:0.5f];
            }
        });
        
        dispatch_async(_instance.iapGetCurrencyQueue, ^{// #2
            _isWaitForCurrencyCode = NO;
            dispatch_async(dispatch_get_main_queue(), ^{//需要拉回主线程，否则会导致长时间等待网络请求
                [self _postToServerCheckTransactionAndSentGameColdWithUserId:userId
                                                               andServerCode:serverCode
                                                                  andOrderId:orderId
                                                             andCurrencyCode:[GamaIapData defaultData].currencyCode
                                                               andLocalPrice:[GamaIapData defaultData].currentLocalPrice
                                                            andTransactionId:transactionId
                                                                 receiptData:receiptData];
            });
        });
        
        return;
    }
    
    _isWaitForCurrencyCode = YES;
    
    
    [GamaRequestor newMethodToPostDataToValiteWithOrderID:orderId
                                             currencyCode:currencyCode
                                               localPrice:localPrice
                                            transactionId:transactionId
                                              receiptData:receiptData
                                                   userId:userId
                                               serverCode:serverCode
                                               newOrderId:[GamaIapData defaultData].orderId
                                     andComplitionHandler:^(NSString * _Nullable code, NSString * _Nullable orderID, NSDictionary * _Nullable dic, NSError * _Nullable error) {
                                  
                                  //处理结果
                                  NSMutableDictionary *resultMutaDic = [[[NSMutableDictionary alloc] initWithDictionary:dic] autorelease];
                                  NSString * resultCode = code;

                                  //服务器有响应
                                  if (!error)
                                  {
                                      /***************************/
                                      [GAMA_IAP_LOG recodeOneStepDiscriptionWithNUM:10
                                                                           andTitle:@"获取验证和发送游戏比的结果："
                                                                     andDiscription:dic.description
                                                                        andNextStep:@"OVER"];
                                      /***************************/
                                      
                                      if (!([GamaIapData defaultData].productID == nil || [[GamaIapData defaultData].productID isEqualToString:@""]) &&code.length >1) {
                                          
                                          [resultMutaDic setObject:[GamaIapData defaultData].productID forKey:@"productID"];
                                          !orderID ? nil : [resultMutaDic setObject:orderID forKey:@"orderId"];
                                          [resultMutaDic setObject:code? :@"" forKey:@"result"];
                                      }
                                      //提示玩家，储值结果,发布储值结果消息
                                      if ([resultCode isEqualToString:@"1000"])
                                      {
                                          //提示购买成功
                                          [GamaIapAlertView showAlertWithMessage:[GamaIapData defaultData].orderId
                                                                   andCompletion:nil
                                                                         andType:GAMA_IAP_BuySuccess];
                                          
                                          // 平台返回购买成功，同时把商品ID返回，以便上报储值
                                          [resultMutaDic setObject:[GamaIapData defaultData].productID ? [GamaIapData defaultData].productID :@"" forKey:@"productID"];
                                          [resultMutaDic setObject:[GamaIapData defaultData].currentLocalPrice ? [GamaIapData defaultData].currentLocalPrice : localPrice forKey:@"currentLocalPrice"];
                                          [resultMutaDic setObject:[GamaIapData defaultData].currencyCode ? [GamaIapData defaultData].currencyCode: currencyCode forKey:@"currencyCode"];

                                          //广播交易成功消息
                                          [[NSNotificationCenter defaultCenter]postNotificationName:GAMA_PHCHASE_SUCCESS_IN
                                                                                             object:nil
                                                                                           userInfo:resultMutaDic];
                                          
                                          GAMA_IAP_LOG(@"buy success ,this purchase over")
                                          /***************************/
                                          [GAMA_IAP_LOG recodeOneStepDiscriptionWithNUM:10000
                                                                               andTitle:@"商品发放成功"
                                                                         andDiscription:resultCode andNextStep:@"-------over------"];
                                          [GamaIapTransactionRecorder gamaServerCheckSuccessAndSendGameGolf];
                                          /***************************/
                                          
                                          //设置购买状态未NO
                                          [GamaIapData defaultData].ISPURCHASING=NO;
                                          [GamaIapData defaultData].ISREPURCHASE=NO;
                                          //清除所有memory和本地数据
                                          [GamaIapMemoryAndLocalDataAdmin clearMemoryDataAndLocalData];
                                          //
                                          [GamaIapData defaultData].POST_TIME=0;
                                          
                                          GAMA_IAP_LOG(@"----------------------this purchase over")
                                      }
                                  }
                                  else
                                  {
//                                      if([resultCode isEqualToString:@"1002"])
//                                      {
//                                          [GamaIapAlertView showAlertWithMessage:[GamaIapData defaultData].orderId
//                                                                   andCompletion:nil
//                                                                         andType:GAMA_IAP_HaveSendGameGold];
//
//                                          // 平台返回购买成功，同时把商品ID返回，以便上报储值
//                                          [resultMutaDic setObject:[GamaIapData defaultData].productID forKey:@"productID"];
//                                          [resultMutaDic setObject:[GamaIapData defaultData].currentLocalPrice forKey:@"currentLocalPrice"];
//                                          [resultMutaDic setObject:[GamaIapData defaultData].currencyCode forKey:@"currencyCode"];
//
//                                          //广播交易成功消息
//                                          [[NSNotificationCenter defaultCenter] postNotificationName:GAMA_PHCHASE_SUCCESS_IN
//                                                                                             object:nil
//                                                                                           userInfo:resultMutaDic];
//                                          GAMA_IAP_LOG(@"game gold have send before,this purchase over")
//                                          /***************************/
//                                          [GAMA_IAP_LOG recodeOneStepDiscriptionWithNUM:10000
//                                                                               andTitle:@"商品已经发放，服务器返回0002"
//                                                                         andDiscription:resultCode andNextStep:@"-------over------"];
//                                          [GamaIapTransactionRecorder gamaServerCheckSuccessAndSendGameGolf];
//                                          /***************************/
//                                          //设置购买状态未NO
//                                          [GamaIapData defaultData].ISPURCHASING=NO;
//                                          [GamaIapData defaultData].ISREPURCHASE=NO;
//                                          //清除所有memory和本地数据
//                                          [GamaIapMemoryAndLocalDataAdmin clearMemoryDataAndLocalData];
//                                          //
//                                          [GamaIapData defaultData].POST_TIME=0;
//
//                                          GAMA_IAP_LOG(@"----------------------this purchase over")
//                                        }
                                        if (![resultCode isEqualToString:@""] && resultCode.length >0)
                                        {
                                            if (resultMutaDic[@"message"]) {
                                                [GamaAlertView showAlertWithMessage:resultMutaDic[@"message"]];
                                            }else{
                                                [GamaIapAlertView showAlertWithMessage:[NSString stringWithFormat:@"%@,tid:%@",
                                                                                        [GamaIapData defaultData].orderId ? [GamaIapData defaultData].orderId : orderId ,
                                                                                        [GamaIapData defaultData].transactionID ? [GamaIapData defaultData].transactionID : transactionId
                                                                                        ]
                                                                         andCompletion:nil
                                                                               andType:GAMA_IAP_BuyFail];
                                                /***************************/
                                            }
                                            
                                          [GAMA_IAP_LOG recodeOneStepDiscriptionWithNUM:1000
                                                                               andTitle:[NSString stringWithFormat:@"服务器验证结束，不能发放游戏比:%@",resultCode]
                                                                         andDiscription:resultCode andNextStep:@"-------over------"];
                                          [GamaIapTransactionRecorder gamaServerCheckFail];
                                          /***************************/
                                          //广播交易失败消息
                                          [[NSNotificationCenter defaultCenter]postNotificationName:GAMA_PHCHASE_FAIL_IN
                                                                                             object:nil
                                                                                           userInfo:resultMutaDic];
                                          GAMA_IAP_LOG(@"buy fail,this purchase over")
                                          //设置购买状态未NO
                                          [GamaIapData defaultData].ISPURCHASING=NO;
                                          [GamaIapData defaultData].ISREPURCHASE=NO;
                                          //清除所有memory和本地数据
                                          [GamaIapMemoryAndLocalDataAdmin clearMemoryDataAndLocalData];
                                          //
                                          [GamaIapData defaultData].POST_TIME=0;
                                          
                                          GAMA_IAP_LOG(@"----------------------this purchase over")
                                        }
                                        else
                                        {
                                          GAMA_IAP_LOG(@"post to server no net,show alert wait user repost")
                                          //提示用户网络不好，切换网络，当用户点击确定以后,重新提交给服务器
                                          [GamaIapAlertView showAlertWithMessage:[GamaIapData defaultData].orderId
                                                                   andCompletion:^(NSInteger index)
                                           {
                                               [self _postToServerCheckTransactionAndSentGameColdWithUserId:userId
                                                                                                  andServerCode:serverCode
                                                                                                 andOrderId:orderId
                                                                                                andCurrencyCode:currencyCode
                                                                                                  andLocalPrice:localPrice
                                                                                               andTransactionId:transactionId
                                                                                                    receiptData:receiptData];
                                           }andType:GAMA_IAP_PostNoNet];
                                        }
                                  }
                              }];
}

+(void)accessServerForOrderIDWithUserID:(NSString * _Nonnull)userId
                                 serverCode:(NSString * _Nonnull)serverCode
                                     roleID:(NSString * _Nonnull)roleId
                                      level:(NSString * _Nonnull)level
                                   creditID:(NSString * _Nonnull)creditId
                                  productID:(NSString * _Nonnull)productId
                                     remark:(NSString * _Nullable)remark
                                 serverName:(NSString * _Nullable)serverName
                                   roleName:(NSString * _Nullable)roleName
                                  cpOrderId:(NSString * _Nonnull)cpOrderId
                                      extra:(NSString * _Nonnull)extra
{
    [GamaRequestor createOrderIDWithUserID:userId
                                serverCode:serverCode
                                    roleID:roleId
                                     level:level
                                  creditID:creditId
                                 productID:productId
                                    remark:remark
                                serverName:serverName
                                  roleName:roleName
                                 cpOrderId:cpOrderId
                                     extra:extra
                      andComplitionHandler:^(NSString * _Nullable code, NSString * _Nullable orderID, NSDictionary * _Nullable dic, NSError * _Nullable error) {
//                           TODO：
//                           payasId: 2, // 拼到 applicationUsername 中去
//                           code: 1000,
//                           orderId: "BRMMDIOS01CDZPHBUA70",
//                           message: "创建成功"
                              if(productId.length > 1 && ![productId isEqualToString:[GamaIapData defaultData].productID]){
                                  [GamaIapData defaultData].productID = productId;
                              }
                              if (userId.length > 1 && ![userId isEqualToString:[GamaIapData defaultData].userID]) {
                                  [GamaIapData defaultData].userID = userId;
                              }
                              if (serverCode.length > 1 && ![serverCode isEqualToString:[GamaIapData defaultData].serverCode]) {
                                  [GamaIapData defaultData].serverCode = serverCode;
                              }
                                /*
                                 这三个判断只是为了保险;
                                 */
                              if (!error && ![orderID isEqualToString:@""] && orderID)
                              {
                                  NSString *payasId = [NSString stringWithFormat:@"%@",dic[@"payasId"]];
                                  
                                  // 1 获取订单号
                                  NSString * orderIDStr = orderID;
                                  // 2 重新整理相关数据
                                  //之前已经初始化过部分成员变量，这里只初始化orderID
                                  //重新纪录本地化数据,同时初始化成员变量
                                  [GamaIapMemoryAndLocalDataAdmin updataLocalDataWithOrderID:orderIDStr];
                                  // 3 纪录购买历史纪录
                                  [GamaIapTransactionRecorder creatOneTransactionRecordAfterGetOrderid];
                                  // 4 进行商品购买
                                  
                                  SKMutablePayment * aPayment=[[SKMutablePayment alloc]init];
                                  aPayment.productIdentifier=[GamaIapData defaultData].productID;
                                  /**************************************************************************/
                                  /**********************************************************************************/
                                  NSString * paramentsStr=[NSString stringWithFormat:@"uid=%@&serverCode=%@&orderId=%@&payasId=%@",
                                                           [GamaIapData defaultData].userID,
                                                           [GamaIapData defaultData].serverCode,
                                                           orderIDStr,
                                                           payasId];
                                  if ([GamaFunction getSystemVersion].intValue>7)
                                  {
                                      aPayment.applicationUsername=paramentsStr;
                                  }
                                  /**********************************************************************************/
                                  /**************************************************************************/
                                  [[SKPaymentQueue defaultQueue]addPayment:aPayment];
                                  [aPayment release];
                              }
                              else if (!orderID || [orderID isEqualToString:@""]) {
                                  //提示用户
                                  [GamaAlertView showAlertWithMessage:dic[@"message"]];
                                  //修改购买中状态
                                  [GamaIapData defaultData].ISPURCHASING=NO;
                                  [GamaIapData defaultData].ISREPURCHASE=NO;
                                  [[NSNotificationCenter defaultCenter] postNotificationName:GAMA_PHCHASE_FAIL_IN
                                                                                      object:nil
                                                                                    userInfo:dic];
                              }
                              //未获取到服务器正常
                              else
                              {
                                  /***************************/
                                  [GAMA_IAP_LOG recodeOneStepDiscriptionWithNUM:10086
                                                                       andTitle:@"获取 orderid 的时候，服务器返回异常"
                                                                 andDiscription:dic.description
                                                                    andNextStep:@"-------over------"];
                                  /***************************/
                                  GAMA_IAP_LOG(@"get orderid fail,transaction finish");
                                  //发送失败消息
                                  [[NSNotificationCenter defaultCenter] postNotificationName:GAMA_PHCHASE_FAIL_IN
                                                                                     object:nil
                                                                                   userInfo:dic];
                                  //
                                  
                                  //提示用户
                                  [GamaIapAlertView showAlertWithMessage:@"error"
                                                           andCompletion:nil
                                                                 andType:GAMA_IAP_BuyServerInMaintain];
                                  //修改购买中状态
                                  [GamaIapData defaultData].ISPURCHASING=NO;
                                  [GamaIapData defaultData].ISREPURCHASE=NO;
                                  GAMA_IAP_LOG(@"----------------------this purchase over")
                              }
                              
                          }];
}

- (void)_refreshTransaction
{
    /**！
     调用该方法时，会要求用户再次输入密码，因此需要告知用户是否需要刷新
     * test enviroment:       properties 必须传参，
                            dictionary{
                            SKReceiptPropertyIsExpired:
                            SKReceiptPropertyIsRevoked:
                            SKReceiptPropertyIsVolumePurchase:
                            }
     * production enviroment: properties 参数为 nil
     */
//    SKReceiptRefreshRequest *request = [[SKReceiptRefreshRequest alloc] initWithReceiptProperties:nil];
    
    NSDictionary *dict = @{
                            SKReceiptPropertyIsExpired:@1,
                            SKReceiptPropertyIsRevoked:@1,
                            SKReceiptPropertyIsVolumePurchase:@1,
                           };
    SKReceiptRefreshRequest *request = [[SKReceiptRefreshRequest alloc] initWithReceiptProperties:dict];
    request.delegate = self;
    [request start];
}

#pragma mark - delegate method

- (void)requestDidFinish:(SKRequest *)request
{
    NSLog(@"finish:%@",request);
    // 3. fresh 后再次验证 凭证，查看返回的 inapp 数据
    [GamaIapServerAccess verifyTransactionBase64Str:_verifyBase64Str];
    _verifyCount++;
}

- (void)request:(SKRequest *)request didFailWithError:(NSError *)error
{
    NSLog(@"fail");
}

- (void)productsRequest:(SKProductsRequest *)request didReceiveResponse:(SKProductsResponse *)response
{

}

@end
