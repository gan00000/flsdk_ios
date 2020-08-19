

#import "GamaRequestor.h"

@implementation GamaRequestor (IAP_CreateOrder)

+ (void)createOrderIDWithUserID:(NSString * _Nonnull) userID
                     serverCode:(NSString * _Nonnull) serverCode
                         roleID:(NSString * _Nonnull) roleID
                          level:(NSString * _Nonnull) level
                       creditID:(NSString * _Nullable) creditID
                      productID:(NSString * _Nonnull) productID
                         remark:(NSString * _Nullable) remark
                     serverName:(NSString * _Nullable) serverName
                       roleName:(NSString * _Nullable) roleName
                      cpOrderId:(NSString * _Nullable) cpOrderId
                          extra:(NSString * _Nullable) extra
           andComplitionHandler:(IAP_CreateOrder _Nullable) completionHandler
{

        [GamaRequestor newMethodToCreateOrderIDWithUserID:userID
                                               serverCode:serverCode
                                                   roleID:roleID
                                                    level:level
                                                 creditID:creditID
                                                productID:productID
                                                   remark:remark
                                               serverName:serverName
                                                 roleName:roleName
                                                cpOrderId:cpOrderId
                                                    extra:extra
                                     andComplitionHandler:completionHandler];
}

+ (void)newMethodToCreateOrderIDWithUserID:(NSString * _Nonnull) userID
                                serverCode:(NSString * _Nonnull) serverCode
                                    roleID:(NSString * _Nonnull) roleID
                                     level:(NSString * _Nonnull) level
                                  creditID:(NSString * _Nullable) creditID
                                 productID:(NSString * _Nonnull) productID
                                    remark:(NSString * _Nullable) remark
                                serverName:(NSString * _Nullable) serverName
                                  roleName:(NSString * _Nullable) roleName
                                 cpOrderId:(NSString * _Nullable)cpOrderId
                                     extra:(NSString * _Nullable)extra
                      andComplitionHandler:(IAP_CreateOrder _Nullable) completionHandler
{
    [self newMethodToCreateOrderIDWithUserID:userID
                                  serverCode:serverCode
                                      roleID:roleID
                                       level:level
                                    creditID:creditID
                                   productID:productID
                                      remark:remark
                                  serverName:serverName
                                    roleName:roleName
                                   cpOrderId:cpOrderId
                                       extra:extra
                               additionalDic:nil
                        andComplitionHandler:completionHandler];
}

+ (void)newMethodToCreateOrderIDWithUserID:(NSString *)userID
                                serverCode:(NSString *)serverCode
                                    roleID:(NSString *)roleID
                                     level:(NSString *)level
                                  creditID:(NSString *)creditID
                                 productID:(NSString *)productID
                                    remark:(NSString *)remark
                                serverName:(NSString *)serverName
                                  roleName:(NSString *)roleName
                                 cpOrderId:(NSString *)cpOrderId
                                     extra:(NSString *)extra
                             additionalDic:(NSDictionary *)addDic
                          andComplitionHandler:(IAP_CreateOrder)completionHandler
{
    // appkey + gamecode + timestamp
    NSString * timeStamp = [GamaFunction getTimeStamp];
    
    NSMutableString * md5str=[[[NSMutableString alloc]init]autorelease];
    [md5str appendFormat:@"%@",SDKConReaderGetString(GAMA_GAME_KEY)]; //AppKey
    [md5str appendFormat:@"%@",SDKConReaderGetString(SDK_GAME_CODE)];//@"brmmd"];//gamecode
    [md5str appendFormat:@"%@",timeStamp]; //时间戳
    NSString * md5SignStr=[[GamaFunction getMD5StrFromString:md5str] lowercaseString];
    
    
    NSDictionary *dic;
    @try {
        dic = @{
                @"userId"                   :           userID,
                @"gameCode"                 :           [NSString stringWithFormat:@"%@",SDKConReaderGetString(SDK_GAME_CODE)],
                @"serverCode"               :           serverCode,
                @"roleId"                   :           roleID,
                @"roleLevel"                :           level,
                @"roleName"                 :           roleName ? roleName : @"",
                @"cpOrderId"                :           cpOrderId ? cpOrderId : @"",
                @"extra"                    :           extra ? extra : @"",
                @"productId"                :           productID,
                @"payFrom"                  :           @"gamamobi",
                @"timestamp"                :           timeStamp,
                @"signature"                :           md5SignStr,
                @"psid"                     :           @"60",
                };
    }
    @catch (NSException *exception)
    {
        dispatch_async(dispatch_get_main_queue(),^
           {
               [GamaAlertView showAlertWithMessage:[NSString stringWithFormat:@"!!!ERROR Dic At createOrderIDWithUserID:\n %@ \n %@", dic, exception.description]];
           });
        GAMA_FUNCTION_LOG(exception.description);
    }
    
    NSString *tmpPojName = SDKConReaderGetString(GAMA_IAP_CHECKOUT_ORDER);
    
    NSString *mainDomain = [NSString  stringWithFormat:@"%@%@", SDKConReaderGetString(GAMA_IAP_DOMAIN_NAME), tmpPojName];
    NSString *backDomain = [NSString  stringWithFormat:@"%@%@", SDKConReaderGetString(GAMA_IAP_SPASE_DOMAIN_NAME), tmpPojName];
    
    NSArray * expectResponseDicKeysArray = @[ @"code", @"orderId" ];
    
    [GamaRequestor requestByParams:dic
                  additionalParams:addDic
                     requestDomain:mainDomain
               requestSecondDomain:backDomain
        expectResponseDicKeysArray:expectResponseDicKeysArray
                        retryTimes:1
                    isReqestByPost:YES
                 ComplitionHandler:^(NSURLResponse *response, NSDictionary *resultJsonDic, NSError *jsonParseErr, NSString *resultStr, NSData *resultRawData, NSError *error) {

                     NSString *tmpResultCode = nil;
                     NSString *tmpOrderID = nil;
                 
                     if (!error && !jsonParseErr)
                     {
                     tmpResultCode = !resultJsonDic[@"code"] ? nil : [NSString stringWithFormat:@"%@", resultJsonDic[@"code"]];
                     tmpOrderID = !resultJsonDic[@"orderId"] ? nil : [NSString stringWithFormat:@"%@",resultJsonDic[@"orderId"]];
                         if (![tmpResultCode isEqualToString:@"1000"])
                         {
                             error = [NSError errorWithDomain:@"Error IAP CreateOrder" code:tmpResultCode.intValue userInfo:resultJsonDic];
                         }
                     }
                     
                     if (error)
                     {
                         GAMA_FUNCTION_LOG(error.description);
                     }

                     if (completionHandler)
                     {
                         completionHandler(tmpResultCode, tmpOrderID, resultJsonDic, error);
                     }
                 }];
}

@end
