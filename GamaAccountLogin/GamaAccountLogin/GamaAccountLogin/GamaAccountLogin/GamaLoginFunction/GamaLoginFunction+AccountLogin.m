

#import "GamaLoginFunction.h"
#import "GamaLoginInfo.h"
#import "GamaLoginFuncionPort.h"
#import "GamaAlertView.h"
#import "GamaLoginData.h"

@implementation GamaLoginFunction (AccountLogin)

+(void)doLoginWithAccount:(NSString *)userName
                  andPassword:(NSString *)password
                andDomainName:(NSString *)domainName
{    
    //空参数监测,这里只做简单处理。
    if (userName==nil||
        [userName isEqualToString:@""]||
        password==nil||
        [password isEqualToString:@""])
    {
        [AlertUtil showAlertWithMessage:SDKConReaderGetLocalizedString(GAMA_TEXT_PARAMETER_NULL)];
        [[NSNotificationCenter defaultCenter]postNotificationName:GAMA_LOGIN_FAIL_IN
                                                           object:nil];
        return;
    }

    NSString *timestamp = [GamaFunction getTimeStamp];
    //获取md5加密的值
    NSMutableString * md5str=[[[NSMutableString alloc]init]autorelease];
    [md5str appendFormat:@"%@",SDKConReaderGetString(GAMA_GAME_KEY)]; //AppKey
    [md5str appendFormat:@"%@",timestamp]; //时间戳
    [md5str appendFormat:@"%@",[userName lowercaseString]]; //用户名
    [md5str appendFormat:@"%@",[[GamaFunction getMD5StrFromString:password] lowercaseString]]; //用户密码
    [md5str appendFormat:@"%@",SDKConReaderGetString(SDK_GAME_CODE)];//gamecode
    NSString * md5SignStr=[GamaFunction getMD5StrFromString:md5str];
    
    NSDictionary *dic = nil;
    NSDictionary *additionDic = nil;
    NSArray *expectDictArr = nil;
    @try {
        dic = @{
                @"signature"        :[md5SignStr lowercaseString],
                @"timestamp"        :timestamp,
                @"gameCode"         :[NSString stringWithFormat:@"%@",SDKConReaderGetString(SDK_GAME_CODE)],
                @"name"             :[userName lowercaseString],
                @"pwd"              :[[GamaFunction getMD5StrFromString:password] lowercaseString],
                
                };
    } @catch (NSException *exception) {
        dispatch_async(dispatch_get_main_queue(),^
                       {
                           [AlertUtil showAlertWithMessage:[NSString stringWithFormat:@"!!!ERROR Dic At Login:\n %@ \n %@", dic, exception.description]];
                       });
        GAMA_FUNCTION_LOG(exception.description);
    }
    
    NSString *mainDomain = [NSString stringWithFormat:@"%@%@",domainName,SDKConReaderGetString(GAMA_LOGIN_STANDARD_LOGIN_PRO_NAME)];
    NSString *backDomain = [NSString stringWithFormat:@"%@%@",SDKConReaderGetString(GAMA_LOGIN_DOMAIN_NAME_IN_RESERVE),SDKConReaderGetString(GAMA_LOGIN_STANDARD_LOGIN_PRO_NAME)];

    
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
                       if (codeStr.intValue==1000)
                       {
                           //for the Platform
                           [self saveUiserInfoForThePlatformWith:LoginTypeName
                                                      andLoginId:userName
                                                       andUserId:[NSString stringWithFormat:@"%@",resultJsonDic[@"userid"]]];

                           //记录登录成功的信息
                           [SdkUserInfoModel shareInfoModel].userId = [NSString stringWithFormat:@"%@",resultJsonDic[@"userId"]];
                           [SdkUserInfoModel shareInfoModel].timestamp = [NSString stringWithFormat:@"%@",resultJsonDic[@"timestamp"]];
                           [SdkUserInfoModel shareInfoModel].accessToken = resultJsonDic[@"accessToken"];
                           [[SdkUserInfoModel shareInfoModel] setLoginTypeWithStr:LoginTypeName];
                           
                           //保存GamaUserName
                           [GamaLoginData defaultData].GamaUserName=userName;

                           //發送廣播
                           [[NSNotificationCenter defaultCenter] postNotificationName:GAMA_LOGIN_SUCCESS_IN
                                                                              object:nil
                                                                            userInfo:resultJsonDic];
                           return;
                       }
                       else if(codeStr.length==4)
                       {
                           NSString * message=resultJsonDic[@"message"];
                           [AlertUtil showAlertWithMessage:message];
                           [[NSNotificationCenter defaultCenter]postNotificationName:GAMA_LOGIN_FAIL_IN
                                                                              object:nil];
                           return;
                       }
                   }
                   //服務器沒有反映
                   else
                   {                       
                       GAMA_LOGIN_LOG(@" account login no net")
                       [AlertUtil showAlertWithMessage:SDKConReaderGetString(GAMA_TEXT_NO_NET)];
                       [[NSNotificationCenter defaultCenter]postNotificationName:GAMA_LOGIN_FAIL_IN
                                                                          object:nil];
                       return;
                   }
               }];
}


+(void)doLoginWithAccount:(NSString *)userName
              andPassword:(NSString *)password
                 otherDic:(NSDictionary *)otherDic
                andDomainName:(NSString *)domainName
{
    //空参数监测,这里只做简单处理。
    if (userName==nil||
        [userName isEqualToString:@""]||
        password==nil||
        [password isEqualToString:@""])
    {
        [AlertUtil showAlertWithMessage:SDKConReaderGetString(GAMA_TEXT_PARAMETER_NULL)];
        [[NSNotificationCenter defaultCenter]postNotificationName:GAMA_LOGIN_FAIL_IN
                                                           object:nil];
        return;
    }

    NSString *timestamp = [GamaFunction getTimeStamp];
    //获取md5加密的值
    NSMutableString * md5str=[[[NSMutableString alloc]init]autorelease];
    [md5str appendFormat:@"%@",SDKConReaderGetString(GAMA_GAME_KEY)]; //AppKey
    [md5str appendFormat:@"%@",timestamp]; //时间戳
    [md5str appendFormat:@"%@",[userName lowercaseString]]; //用户名
    [md5str appendFormat:@"%@",[[GamaFunction getMD5StrFromString:password] lowercaseString]]; //用户密码
    [md5str appendFormat:@"%@",SDKConReaderGetString(SDK_GAME_CODE)];//gamecode
    NSString * md5SignStr=[GamaFunction getMD5StrFromString:md5str];
    
    NSDictionary *dic = nil;
    NSDictionary *additionDic = otherDic;
    NSArray *expectDictArr = nil;
    @try {
        dic = @{
                @"signature"        :[md5SignStr lowercaseString],
                @"timestamp"        :timestamp,
                @"gameCode"         :[NSString stringWithFormat:@"%@",SDKConReaderGetString(SDK_GAME_CODE)],
                @"name"             :[userName lowercaseString],
                @"pwd"              :[[GamaFunction getMD5StrFromString:password] lowercaseString],
                
                };
    } @catch (NSException *exception) {
        dispatch_async(dispatch_get_main_queue(),^
                       {
                           [AlertUtil showAlertWithMessage:[NSString stringWithFormat:@"!!!ERROR Dic At Login:\n %@ \n %@", dic, exception.description]];
                       });
        GAMA_FUNCTION_LOG(exception.description);
    }
    
    NSString *mainDomain = [NSString stringWithFormat:@"%@%@",domainName,SDKConReaderGetString(GAMA_LOGIN_STANDARD_LOGIN_PRO_NAME)];
    NSString *backDomain = [NSString stringWithFormat:@"%@%@",SDKConReaderGetString(GAMA_LOGIN_DOMAIN_NAME_IN_RESERVE),SDKConReaderGetString(GAMA_LOGIN_STANDARD_LOGIN_PRO_NAME)];

    
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
                       if (codeStr.intValue==1000)
                       {
                           //for the Platform
                           [self saveUiserInfoForThePlatformWith:LoginTypeName
                                                      andLoginId:userName
                                                       andUserId:[NSString stringWithFormat:@"%@",resultJsonDic[@"userid"]]];

                           //记录登录成功的信息
                           [SdkUserInfoModel shareInfoModel].userId = [NSString stringWithFormat:@"%@",resultJsonDic[@"userId"]];
                           [SdkUserInfoModel shareInfoModel].timestamp = [NSString stringWithFormat:@"%@",resultJsonDic[@"timestamp"]];
                           [SdkUserInfoModel shareInfoModel].accessToken = resultJsonDic[@"accessToken"];
                           [[SdkUserInfoModel shareInfoModel] setLoginTypeWithStr:LoginTypeName];
                           
                           //保存GamaUserName
                           [GamaLoginData defaultData].GamaUserName=userName;

                           //發送廣播
                           [[NSNotificationCenter defaultCenter] postNotificationName:GAMA_LOGIN_SUCCESS_IN
                                                                              object:nil
                                                                            userInfo:resultJsonDic];
                           return;
                       }
                       else if(codeStr.length==4)
                       {
                           NSString * message=resultJsonDic[@"message"];
                           [AlertUtil showAlertWithMessage:message];
                           [[NSNotificationCenter defaultCenter]postNotificationName:GAMA_LOGIN_FAIL_IN
                                                                              object:nil];
                           return;
                       }
                   }
                   //服務器沒有反映
                   else
                   {
                       GAMA_LOGIN_LOG(@" account login no net")
                       [AlertUtil showAlertWithMessage:SDKConReaderGetString(GAMA_TEXT_NO_NET)];
                       [[NSNotificationCenter defaultCenter]postNotificationName:GAMA_LOGIN_FAIL_IN
                                                                          object:nil];
                       return;
                   }
               }];
}



@end
