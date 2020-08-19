//
//
//

#import "GamaRequestor.h"

#define _v_appkey       SDKConReaderGetString(GAMA_GAME_KEY)
#define _v_gamecode     SDKConReaderGetString(SDK_GAME_CODE)

@implementation GamaRequestor (IAP_AppstoreCallback)

+ (void)newMethodToPostDataToValiteWithOrderID:(NSString * _Nonnull)orderID
                                      currencyCode:(NSString * _Nonnull)currencyCode
                                        localPrice:(NSString * _Nonnull)localPrice
                                     transactionId:(NSString * _Nonnull)transactionId
                                       receiptData:(NSData * _Nonnull)receiptData
                                            userId:(NSString * _Nonnull)userId
                                        serverCode:(NSString * _Nonnull)serverCode
                                        newOrderId:(NSString * _Nonnull)newOrderId
                              andComplitionHandler:(IAP_AppstoreCallBack _Nullable)handler
{
    NSString *base64Str = [GamaFunction encode:(uint8_t *)receiptData.bytes length:receiptData.length];
    
    // appkey + gamecode + timestamp
    NSString * timeStamp = [GamaFunction getTimeStamp];
    
    NSMutableString * md5str=[[[NSMutableString alloc]init]autorelease];
    [md5str appendFormat:@"%@",_v_appkey]; //AppKey
    [md5str appendFormat:@"%@",_v_gamecode];//@"brmmd"];//gamecode
    [md5str appendFormat:@"%@",timeStamp]; //时间戳
    NSString * md5SignStr=[[GamaFunction getMD5StrFromString:md5str] lowercaseString];
    
    NSDictionary *dic;
    @try
    {
        dic = @{
                @"gameCode"                 :           [NSString stringWithFormat:@"%@",_v_gamecode],
                @"orderId"                  :           orderID,
                @"transactionId"            :           transactionId,
                @"receiptData"              :           base64Str,
                @"userId"                   :           userId,
                @"serverCode"               :           serverCode,
                @"signature"                :           md5SignStr,
                @"newOrderId"               :           newOrderId,
                };
    }
    @catch (NSException *exception)
    {
        GAMA_FUNCTION_LOG(exception.description);
        dispatch_async(dispatch_get_main_queue(), ^
                       {
                           [GamaAlertView showAlertWithMessage:[NSString stringWithFormat:@"!!!ERROR Dic At postDataToValiteWithOrderID:\n %@ \n %@", dic, exception.description]];
                       });
    }
    
    
    NSString *tmpPojName = SDKConReaderGetString(GAMA_IAP_APPSTORE_CALLBACK);//向Gama服务器对账时的地址
    
    NSString *mainDomain = [NSString  stringWithFormat:@"%@%@", SDKConReaderGetString(GAMA_IAP_DOMAIN_NAME), tmpPojName];
    NSString *backDomain = [NSString  stringWithFormat:@"%@%@", SDKConReaderGetString(GAMA_IAP_SPASE_DOMAIN_NAME), tmpPojName];
    
    NSArray *expectResponseDicKeysArray = @[ @"code" ];
    
    [GamaRequestor requestByParams:dic
                     requestDomain:mainDomain
               requestSecondDomain:backDomain
        expectResponseDicKeysArray:expectResponseDicKeysArray
                        retryTimes:3
                    isReqestByPost:YES
                 ComplitionHandler:^(NSURLResponse * response, NSDictionary *resultJsonDic, NSError *jsonParseErr, NSString *resultStr, NSData *resultRawData, NSError *error){
                     
                     NSString *tmpResultCode = nil;
                     NSString *tmpOrderID = nil;
                     
                     if (!error && !jsonParseErr)
                     {
                     tmpResultCode = !resultJsonDic[@"code"] ? nil : [NSString stringWithFormat:@"%@", resultJsonDic[@"code"]];
                     tmpOrderID = !resultJsonDic[@"orderId"] ? nil : [NSString stringWithFormat:@"%@",resultJsonDic[@"orderId"]];
                         if (![tmpResultCode isEqualToString:@"1000"])//1000就是成功
                         {
                             error = [NSError errorWithDomain:@"Error IAP postDataToValiteWithOrderID" code:tmpOrderID.intValue userInfo:resultJsonDic];
                         }
                     }
                     
                     if (error) {
                         GAMA_FUNCTION_LOG(error.description);
                     }
                     
                     if (handler) {
                         handler(tmpResultCode, tmpOrderID, resultJsonDic, error);
                     }
                 }];
}


@end
