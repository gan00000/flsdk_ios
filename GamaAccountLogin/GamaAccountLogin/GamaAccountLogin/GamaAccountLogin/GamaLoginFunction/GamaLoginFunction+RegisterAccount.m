#import "GamaLoginFunction.h"
#import "GamaLoginInfo.h"
#import "GamaLoginFuncionPort.h"

@implementation GamaLoginFunction (RegisterAccount)


+(void)doRegisterAccountWithUserName:(NSString *)userName
                             andPassword:(NSString *)password
                                andEmail:(NSString *)email
                           andDomainName:(NSString *)domainName
{
    
    userName = !userName?@"":userName;
    email = !email?@"":email;
    
    //获取时间戳
    NSString * timeStamp=[GamaFunction getTimeStamp];
    //获取md5加密的值
    NSMutableString * md5str=[[[NSMutableString alloc]init]autorelease];
    [md5str appendFormat:@"%@",SDKConReaderGetString(GAMA_GAME_KEY)]; //AppKey
    [md5str appendFormat:@"%@",timeStamp]; //时间戳
    [md5str appendFormat:@"%@",[userName lowercaseString]]; //用户名
    [md5str appendFormat:@"%@",[[GamaFunction getMD5StrFromString:password] lowercaseString]]; //用户密码
    [md5str appendFormat:@"%@",SDKConReaderGetString(SDK_GAME_CODE)];
    NSString * md5SignStr=[GamaFunction getMD5StrFromString:md5str];

    NSDictionary *dic = nil;
    NSDictionary *additionDic = nil;
    NSArray *expectDictArr = nil;
    @try {
        dic = @{
                @"signature"        :[md5SignStr lowercaseString],
                @"timestamp"        :timeStamp,
                @"gameCode"         :[NSString stringWithFormat:@"%@",SDKConReaderGetString(SDK_GAME_CODE)],
                @"name"             :[userName lowercaseString],
                @"pwd"              :[[GamaFunction getMD5StrFromString:password] lowercaseString],
                @"email"            :email,
                };
        
    } @catch (NSException *exception) {
        dispatch_async(dispatch_get_main_queue(),^
                       {
                           [GamaAlertView showAlertWithMessage:[NSString stringWithFormat:@"!!!ERROR Dic At Register:\n %@ \n %@", dic, exception.description]];
                       });
        GAMA_FUNCTION_LOG(exception.description);
    }
    
    NSString *mainDomain = [NSString stringWithFormat:@"%@%@",domainName,SDKConReaderGetString(GAMA_LOGIN_STANDARD_REGISTER_PRO_NAME)];
    NSString *backDomain = [NSString stringWithFormat:@"%@%@",domainName,SDKConReaderGetString(GAMA_LOGIN_STANDARD_REGISTER_PRO_NAME)];
    
    [GamaRequestor requestByParams:dic
                additionalParams:additionDic
                   requestDomain:mainDomain
             requestSecondDomain:backDomain
      expectResponseDicKeysArray:expectDictArr
                      retryTimes:1
                  isReqestByPost:YES
               ComplitionHandler:^(NSURLResponse *response, NSDictionary *resultJsonDic, NSError *jsonParseErr, NSString *resultStr, NSData *resultRawData, NSError *error) {
                   
                   
                   if (!error && !jsonParseErr)
                   {
                       NSString * codeStr= [NSString stringWithFormat:@"%@",resultJsonDic[@"code"]];
                       //注册成功
                       if (codeStr.intValue==1000 || codeStr.intValue == 1001)
                       {
                           //紀錄上次登陸的用戶信息
                           [self saveEncryptedUserInfoToUserDefaultWith:userName
                                                            andPassword:password];
                           //for the Platform
                           [self saveUiserInfoForThePlatformWith:@"gama"
                                                      andLoginId:@""
                                                       andUserId:[NSString stringWithFormat:@"%@",resultJsonDic[@"userid"]]];
                           
                           //记录登录成功的信息
                           [SdkUserInfoModel shareInfoModel].userId = [NSString stringWithFormat:@"%@",resultJsonDic[@"userId"]];
                           [SdkUserInfoModel shareInfoModel].timestamp = [NSString stringWithFormat:@"%@",resultJsonDic[@"timestamp"]];
                           [SdkUserInfoModel shareInfoModel].accessToken = resultJsonDic[@"accessToken"];
                           [[SdkUserInfoModel shareInfoModel] setLoginTypeWithStr:LoginTypeName];
                           
                           //發送廣播
                           [[NSNotificationCenter defaultCenter] postNotificationName:GAMA_REGISTER_SUCCESS_IN
                                                                              object:nil
                                                                            userInfo:resultJsonDic];
                           return;
                       }
                       //注册失敗
                       else if(codeStr.length==4)
                       {
                           NSString * message=resultJsonDic[@"message"];
                           [GamaAlertView showAlertWithMessage:message];
                           [[NSNotificationCenter defaultCenter]postNotificationName:GAMA_REGISTER_FAIL_IN
                                                                              object:nil];
                           return;
                       }
                       else
                       {
                           [GamaAlertView showAlertWithMessage:SDKConReaderGetString(GAMA_TEXT_SERVER_RETURN_ERROR)];
                           [[NSNotificationCenter defaultCenter]postNotificationName:GAMA_REGISTER_FAIL_IN
                                                                              object:nil];
                           return;
                       }
                   }
                   // 无网络
                   else
                   {
                       GAMA_LOGIN_LOG(@"register Gama account no net")
                       [GamaAlertView showAlertWithMessage:SDKConReaderGetString(GAMA_TEXT_NO_NET)];
                       [[NSNotificationCenter defaultCenter]postNotificationName:GAMA_REGISTER_FAIL_IN
                                                                          object:nil];
                       return;
                   }
               }];
    
}

+(void)doRegisterAccountWithUserName:(NSString *)userName
                         andPassword:(NSString *)password
                            otherDic:(NSDictionary *)parDic
                       andDomainName:(NSString *)domainName
{
    
    userName = !userName?@"":userName;
    
    //获取时间戳
    NSString * timeStamp=[GamaFunction getTimeStamp];
    //获取md5加密的值
    NSMutableString * md5str=[[[NSMutableString alloc]init]autorelease];
    [md5str appendFormat:@"%@",SDKConReaderGetString(GAMA_GAME_KEY)]; //AppKey
    [md5str appendFormat:@"%@",timeStamp]; //时间戳
    [md5str appendFormat:@"%@",[userName lowercaseString]]; //用户名
    [md5str appendFormat:@"%@",[[GamaFunction getMD5StrFromString:password] lowercaseString]]; //用户密码
    [md5str appendFormat:@"%@",SDKConReaderGetString(SDK_GAME_CODE)];
    NSString * md5SignStr=[GamaFunction getMD5StrFromString:md5str];

    NSDictionary *dic = nil;
    NSDictionary *additionDic = parDic;
    NSArray *expectDictArr = nil;
    @try {
        dic = @{
                @"signature"        :[md5SignStr lowercaseString],
                @"timestamp"        :timeStamp,
                @"gameCode"         :[NSString stringWithFormat:@"%@",SDKConReaderGetString(SDK_GAME_CODE)],
                @"name"             :[userName lowercaseString],
                @"pwd"              :[[GamaFunction getMD5StrFromString:password] lowercaseString],
                };
        
    } @catch (NSException *exception) {
        dispatch_async(dispatch_get_main_queue(),^
                       {
                           [GamaAlertView showAlertWithMessage:[NSString stringWithFormat:@"!!!ERROR Dic At Register:\n %@ \n %@", dic, exception.description]];
                       });
        GAMA_FUNCTION_LOG(exception.description);
    }
    
    NSString *mainDomain = [NSString stringWithFormat:@"%@%@",domainName,SDKConReaderGetString(GAMA_LOGIN_STANDARD_REGISTER_PRO_NAME)];
    NSString *backDomain = [NSString stringWithFormat:@"%@%@",domainName,SDKConReaderGetString(GAMA_LOGIN_STANDARD_REGISTER_PRO_NAME)];
    
    [GamaRequestor requestByParams:dic
                additionalParams:additionDic
                   requestDomain:mainDomain
             requestSecondDomain:backDomain
      expectResponseDicKeysArray:expectDictArr
                      retryTimes:1
                  isReqestByPost:YES
               ComplitionHandler:^(NSURLResponse *response, NSDictionary *resultJsonDic, NSError *jsonParseErr, NSString *resultStr, NSData *resultRawData, NSError *error) {
                   
                   
                   if (!error && !jsonParseErr)
                   {
                       NSString * codeStr= [NSString stringWithFormat:@"%@",resultJsonDic[@"code"]];
                       //注册成功
                       if (codeStr.intValue==1000 || codeStr.intValue == 1001)
                       {
                           //紀錄上次登陸的用戶信息
                           [self saveEncryptedUserInfoToUserDefaultWith:userName
                                                            andPassword:password];
                           //for the Platform
                           [self saveUiserInfoForThePlatformWith:@"gama"
                                                      andLoginId:@""
                                                       andUserId:[NSString stringWithFormat:@"%@",resultJsonDic[@"userid"]]];
                           
                           //记录登录成功的信息
                           [SdkUserInfoModel shareInfoModel].userId = [NSString stringWithFormat:@"%@",resultJsonDic[@"userId"]];
                           [SdkUserInfoModel shareInfoModel].timestamp = [NSString stringWithFormat:@"%@",resultJsonDic[@"timestamp"]];
                           [SdkUserInfoModel shareInfoModel].accessToken = resultJsonDic[@"accessToken"];
                           [[SdkUserInfoModel shareInfoModel] setLoginTypeWithStr:LoginTypeName];
                           
                           //發送廣播
                           [[NSNotificationCenter defaultCenter] postNotificationName:GAMA_REGISTER_SUCCESS_IN
                                                                              object:nil
                                                                            userInfo:resultJsonDic];
                           return;
                       }
                       //注册失敗
                       else if(codeStr.length==4)
                       {
                           NSString * message=resultJsonDic[@"message"];
                           [GamaAlertView showAlertWithMessage:message];
                           [[NSNotificationCenter defaultCenter]postNotificationName:GAMA_REGISTER_FAIL_IN
                                                                              object:nil];
                           return;
                       }
                       else
                       {
                           [GamaAlertView showAlertWithMessage:SDKConReaderGetString(GAMA_TEXT_SERVER_RETURN_ERROR)];
                           [[NSNotificationCenter defaultCenter]postNotificationName:GAMA_REGISTER_FAIL_IN
                                                                              object:nil];
                           return;
                       }
                   }
                   // 无网络
                   else
                   {
                       GAMA_LOGIN_LOG(@"register Gama account no net")
                       [GamaAlertView showAlertWithMessage:SDKConReaderGetString(GAMA_TEXT_NO_NET)];
                       [[NSNotificationCenter defaultCenter]postNotificationName:GAMA_REGISTER_FAIL_IN
                                                                          object:nil];
                       return;
                   }
               }];
    
}


@end
