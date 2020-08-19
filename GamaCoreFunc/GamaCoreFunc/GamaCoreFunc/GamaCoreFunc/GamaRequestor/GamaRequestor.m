

#import "GamaRequestor.h"

#import "NSString+GamaSStringAddition.h"
#import "GamaAlertView.h"

@implementation GamaRequestor

+ (NSDictionary *)commDic
{
    NSDictionary * _commDic =
    @{
      // 公共的参数拼接
      @"packageName"      :     [GamaFunction getBundleIdentifier],
      
      @"adId"             :     [[GamaFunction getIdfa]       lowercaseString]? : @"",
      @"idfa"             :     [[GamaFunction getIdfa]       lowercaseString]? : @"",
      @"uuid"             :     [[GamaFunction getGamaUUID]     lowercaseString]? : @"",
      @"versionName"      :     [GamaFunction getBundleShortVersionString]? : @"",
      @"versionCode"      :     [GamaFunction getBundleVersion]? : @"",
      @"systemVersion"    :     [GamaFunction getSystemVersion]? : @"",
      @"deviceType"       :     [GamaFunction getDeviceType]? : @"",
      @"operatingSystem"  :     @"ios",
      @"gameLanguage"     :     SDKConReaderGetBool(GAMA_GMAE_mLanguge) ?[GamaFunction getServerLanguage]:[GamaFunction getServerLocaleStrWithGameLanguage:SDKConReaderGetString(GAMA_GAME_LANGUAGE)]? : @"",
      @"osLanguage"       :     [GamaFunction getPreferredLanguage]? : @"",
      
      @"loginTimestamp"   :     [SdkUserInfoModel shareInfoModel].timestamp ? : @"",
      @"accessToken"      :     [SdkUserInfoModel shareInfoModel].accessToken ? : @"",
      @"uniqueId"         :     [[GamaFunction getGamaUUID] lowercaseString]? : @"",
      
      @"spy_platForm"       :   SDKConReaderGetString(@"gama_platForm")? :@"",
      @"spy_advertiser"     :   SDKConReaderGetString(@"gama_advertiser")? :@"",
      
      };
    
    return _commDic;
}

+ (void)requestByParams:(NSDictionary * _Null_unspecified)dic
          requestDomain:(NSString * _Nonnull)domain
         isReqestByPost:(BOOL)isReqByPost
      ComplitionHandler:(GamaServerResponsedHandler _Nullable)requestHandler
{
    if (isReqByPost) {
        [self requestPostWithRequestDomain:domain
                               andHTTPBody:[[self _resolveGetStringWithDic:dic andIsAddingCommonDic:YES] dataUsingEncoding:NSUTF8StringEncoding]
                        andConverTypeValue:@"application/x-www-form-urlencoded"
                         ComplitionHandler:requestHandler];
    } else {
        [self requestGetWithRequestDomain:domain
                                andParams:dic
                           isAddCommonDic:YES
                        ComplitionHandler:requestHandler];
    }
}

+ (void)requestByParams:(NSDictionary * _Null_unspecified)dic
          requestDomain:(NSString * _Nonnull)domain
    requestSecondDomain:(NSString * _Nonnull)secoundDomain
             retryTimes:(NSInteger)retryTimes
         isReqestByPost:(BOOL)isReqByPost
      ComplitionHandler:(GamaServerResponsedHandler _Nullable)requestHandler
{
    [self requestByParams:dic
            requestDomain:domain
      requestSecondDomain:secoundDomain
expectResponseDicKeysArray:nil
               retryTimes:retryTimes
           isReqestByPost:isReqByPost
        ComplitionHandler:requestHandler];
}

+ (void)requestByParams:(NSDictionary * _Null_unspecified)dic
          requestDomain:(NSString * _Nonnull)domain
    requestSecondDomain:(NSString * _Nonnull)secoundDomain
expectResponseDicKeysArray:(NSArray * _Nullable)expectKeysArray
             retryTimes:(NSInteger)retryTimes
         isReqestByPost:(BOOL)isReqByPost
      ComplitionHandler:(GamaServerResponsedHandler _Nullable)requestHandler
{
    [self requestByParams:dic
         additionalParams:nil
            requestDomain:domain
      requestSecondDomain:secoundDomain
expectResponseDicKeysArray:expectKeysArray
               retryTimes:retryTimes
           isReqestByPost:isReqByPost
        ComplitionHandler:requestHandler];
}

+ (void)requestByParams:(NSDictionary * _Null_unspecified)dic
       additionalParams:(NSDictionary * _Nullable)addDic
          requestDomain:(NSString * _Nonnull)domain
    requestSecondDomain:(NSString * _Nonnull)secoundDomain
expectResponseDicKeysArray:(NSArray * _Nullable)expectKeysArray
             retryTimes:(NSInteger)retryTimes
         isReqestByPost:(BOOL)isReqByPost
      ComplitionHandler:(GamaServerResponsedHandler _Nullable)requestHandler
{
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        __block BOOL isEndWaiting = NO;
//        __block NSInteger curRetryTimes = 0;
        
        NSMutableDictionary *tmpNewDic = [NSMutableDictionary dictionaryWithDictionary:dic];
        if (addDic) {
            [tmpNewDic addEntriesFromDictionary:addDic];
        }
        
//        NSInteger maxRetryTimes = retryTimes * 2;
//        if (maxRetryTimes <= 0) {
//            maxRetryTimes = 2;
//        }
//
//        for ( ; curRetryTimes < maxRetryTimes ; ) {       //loop two times for different domain
//
//            isEndWaiting = NO;
//            NSString *currentDomain = (curRetryTimes % 2 == 0) ? domain : secoundDomain;    // 0 for main domain, 1 for secound domain
//
            [GamaRequestor requestByParams:tmpNewDic
                             requestDomain:domain
                            isReqestByPost:isReqByPost
                         ComplitionHandler:^(NSURLResponse * response, NSDictionary *resultJsonDic, NSError *jsonParseErr, NSString *resultStr, NSData *resultRawData, NSError *error) {
                             
                             if (!jsonParseErr) {
                                 for (NSString *tmpKey in expectKeysArray) {
                                     BOOL isHasKey = NO;
                                     for (NSString *tmpDicKey in resultJsonDic.allKeys) {
                                         if ([tmpDicKey isEqualToString:tmpKey]) {
                                             isHasKey = YES;
                                             continue;
                                         }
                                     }
                                     
                                     if (!isHasKey) {
                                         error = [NSError errorWithDomain:@"expectResponseDic Not the Same" code:1042 userInfo:resultJsonDic];
                                     }
                                 }
                             }
                             
                             if (error) {
//                                 curRetryTimes ++ ;     // add the retry time
//                                 if (curRetryTimes >= maxRetryTimes) {
                                     if (requestHandler) {
                                         requestHandler(response, resultJsonDic, jsonParseErr, resultStr, resultRawData, error);
                                     }
//                                 }
                             } else {
//                                 curRetryTimes = maxRetryTimes + 1;     // end the loop
                                 if (requestHandler) {
                                     requestHandler(response, resultJsonDic, jsonParseErr, resultStr, resultRawData, error);
                                 }
                             }
                             
                             isEndWaiting = YES;
                             
                         }];
            
            while (1) {
                if (isEndWaiting) {
                    break;
                } else {
                    [NSThread sleepForTimeInterval:0.1f];
                }
            }
            
//            if (curRetryTimes > 0) {
//                [NSThread sleepForTimeInterval:10];         //change the server domain your need to wait for ten seconds
//            }
//        }
    });
}

#pragma mark - Addtional NSURLRequest
+ (void)requestByNSURLRequest:(NSURLRequest * _Nullable)request
            ComplitionHandler:(GamaServerResponsedHandler _Nullable)requestHandler
{
    NSString *tmpLog = [NSString stringWithFormat:@"---Request URL: %@ ", request.URL.relativeString];
    GAMA_FUNCTION_LOG(tmpLog)
    
    [GamaURLConnect requestWithoutComDicUsingRequest:request
                                          oldHandler:nil
                                          newHandler:requestHandler];
}

#pragma mark - post
+ (void)requestPostWithRequestDomain:(NSString * _Nonnull)domain
                         andHTTPBody:(NSData * _Nonnull)data
                  andConverTypeValue:(NSString * _Nonnull)converTypeVal
                   ComplitionHandler:(GamaServerResponsedHandler _Nullable)requestHandler
{
    NSMutableURLRequest *req = [self _makeRequestByPostWithDomain:domain
                                                      andHTTPBody:data
                                               andConverTypeValue:converTypeVal];
    
    NSString *tmpLog = [NSString stringWithFormat:@"---Request URL: %@ \n PostStr: %@",
                        req.URL.relativeString,
                        [[[NSString alloc] initWithData:req.HTTPBody encoding:NSUTF8StringEncoding] autorelease]
                        ];
    GAMA_FUNCTION_LOG(tmpLog)
    
    [GamaURLConnect requestWithoutComDicUsingRequest:req
                                          oldHandler:nil
                                          newHandler:requestHandler];
}

#pragma mark - get
+ (void)requestGetWithRequestDomain:(NSString * _Nonnull)doamin
                          andParams:(NSDictionary * _Nullable)parDic
                     isAddCommonDic:(BOOL)isAddCommonDic
                  ComplitionHandler:(GamaServerResponsedHandler _Nullable)requestHandler
{
    
    NSMutableURLRequest *req = nil;
    req = [self _makeRequestByGetWithDomain:doamin
                                  andParams:parDic
                       andIsAddingCommonDic:isAddCommonDic];

    NSString *tmpLog = [NSString stringWithFormat:@"---Request URL: %@ ", req.URL.relativeString];
    GAMA_FUNCTION_LOG(tmpLog)
    
    [GamaURLConnect requestWithoutComDicUsingRequest:req
                                          oldHandler:nil
                                          newHandler:requestHandler];
}


#pragma mark - Interval

+ (NSMutableURLRequest *)_makeRequestByPostWithDomain:(NSString * _Nonnull)domain
                                          andHTTPBody:(NSData * _Nonnull)httpBody
                                   andConverTypeValue:(NSString * _Nonnull)convertTypeVal
{
    NSMutableURLRequest *req = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:domain]
                                                       cachePolicy:NSURLRequestReloadIgnoringCacheData
                                                   timeoutInterval:60.0f];
    
    [req setHTTPMethod:@"POST"];
    [req setHTTPBody:httpBody];
    [req addValue:convertTypeVal forHTTPHeaderField:@"Content-Type"];
    
    return req;
}


+ (NSMutableURLRequest *)_makeRequestByGetWithDomain:(NSString * _Nonnull)domain
                                           andParams:(NSDictionary * _Nullable)parDic
                                andIsAddingCommonDic:(BOOL)isAddCommonDic
{
    NSString *requestURLStr;
    
    NSString *requestStr = [self _resolveGetStringWithDic:parDic andIsAddingCommonDic:isAddCommonDic];
    
    if (requestStr != NULL && ![requestStr isEqualToString:@""]) {
        requestURLStr = [NSString stringWithFormat:@"%@?%@", domain, requestStr];
    } else {
        requestURLStr = domain;
    }
    
    NSMutableURLRequest *req = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:requestURLStr]
                                                       cachePolicy:NSURLRequestReloadIgnoringCacheData
                                                   timeoutInterval:60.0f];
    return req;
}

+ (NSString *)_resolveGetStringWithDic:(NSDictionary *)dic
                  andIsAddingCommonDic:(BOOL)isAddCommonDic
{
    NSString *requestString = @"";
    
    if (dic != NULL) {
        
        if (dic.count == 0) {
            dispatch_async(dispatch_get_main_queue(), ^{
                [GamaAlertView showAlertWithMessage:[NSString stringWithFormat:@"!!!ERROR Dic At _resolveGetStringWithDic: %@", dic]];
            });
            return NULL;
        }
        
        NSMutableDictionary *tmpMutableDic = [NSMutableDictionary dictionaryWithDictionary:
                                              isAddCommonDic ? [self commDic] : @{}
                                              ];
        
        // this means the [commdic] will be overrided by the [dic], when a key is same
        [tmpMutableDic addEntriesFromDictionary:dic];
        
        for (NSString* key in tmpMutableDic.allKeys) {
            
            NSString *tmpVal = tmpMutableDic[key];
            if (![tmpVal isKindOfClass:[NSString class]]) {
                NSString *errorInfo = [NSString stringWithFormat:@"ERROR Type:%@, key:%@, value:%@\n allValue: %@",[tmpVal class],key, tmpVal,dic];
                [GamaAlertView showAlertWithMessage:errorInfo];
                NSString *fullDicInfo = [NSString stringWithFormat:@"%@",tmpMutableDic];
                GAMA_FUNCTION_LOG(fullDicInfo)
                continue ;
            }
            tmpVal = [tmpVal gamaUrlDecodeString];
            
            requestString = [requestString stringByAppendingString:[NSString stringWithFormat:
                                                                    @"%@=%@&",                                                                    
                                                                    key,
                                                                    [GamaFunction urlEcodingFromString:tmpVal]
                                                                    ]];
    
        }
        requestString = [requestString substringToIndex:requestString.length - 1];
    }
    
    return requestString;
}

@end
