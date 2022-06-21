#import "GamaLoginFunction.h"
#import "GamaLoginInfo.h"
#import "GamaLoginFuncionPort.h"

@implementation GamaLoginFunction (FindPassword)

+(void)doRegetPasswordWithUserName:(NSString *)userName
                          andEmail:(NSString *)email
                     andDomainName:(NSString *)domainName
{
    
    //空参数处理
    if (userName==nil||
        [userName isEqualToString:@""]||
        email==nil||
        [email isEqualToString:@""])
    {
        [AlertUtil showAlertWithMessage:SDKConReaderGetString(GAMA_TEXT_PARAMETER_NULL)];
        [[NSNotificationCenter defaultCenter] postNotificationName:GAMA_REGET_PASSWORD_FAIL_IN
                                                           object:nil];
        return;
    }
    
    [GamaLoginFunction _doRegetPasswordWithUserName:userName
                                          andEmail:email
                                          andPhone:nil
                                 andIdentifierCode:nil
                                     andDomainName:domainName];
    
}

+(void)doRegetPasswordWithUserName:(NSString *)userName
                          otherDic:(NSDictionary *)otherDic
                     andDomainName:(NSString *)domainName
{
    
    //空参数处理
    if (userName==nil||
        [userName isEqualToString:@""] || otherDic.count < 0)
    {
        [AlertUtil showAlertWithMessage:SDKConReaderGetString(GAMA_TEXT_PARAMETER_NULL)];
        [[NSNotificationCenter defaultCenter] postNotificationName:GAMA_REGET_PASSWORD_FAIL_IN
                                                           object:nil];
        return;
    }
    
    [GamaLoginFunction _doRegetPasswordWithUserName:userName otherDic:otherDic andDomainName:domainName];
//    [GamaLoginFunction _doRegetPasswordWithUserName:userName
//                                          andEmail:nil
//                                          andPhone:nil
//                                 andIdentifierCode:nil
//                                     andDomainName:domainName];
    
}



+ (void)doRegetPasswordWithandPhone:(NSString *)phone andIdentifierCode:(NSString *)code andDomainName:(NSString *)domainName
{
    //空参数处理
    if (phone==nil||
        [phone isEqualToString:@""]||
        code==nil||
        [code isEqualToString:@""])
    {
        [AlertUtil showAlertWithMessage:SDKConReaderGetString(GAMA_TEXT_PARAMETER_NULL)];
        [[NSNotificationCenter defaultCenter]postNotificationName:GAMA_REGET_PASSWORD_FAIL_IN
                                                           object:nil];
        return;
    }
    
    [GamaLoginFunction _doRegetPasswordWithUserName:nil
                                          andEmail:nil
                                          andPhone:phone
                                 andIdentifierCode:code
                                     andDomainName:domainName];
}

+(void)_doRegetPasswordWithUserName:(NSString *)userName
                          andEmail:(NSString *)email
                          andPhone:(NSString *)phone
                 andIdentifierCode:(NSString *)code
                     andDomainName:(NSString *)domainName
{
    
    email = email?email:@"";
    phone = phone?phone:@"";
    code = code?code:@"";
    userName = userName?userName:@"";
    
    NSString * tmpUserName = [NSString stringWithString:userName];
    
    if (![phone isEqualToString:@""]&& [userName isEqualToString:@""]) {
        tmpUserName = phone;
    }
    
    /*-----------获取参数----------*/
    //获取时间戳
    NSString * timeStamp=[SUtil getTimeStamp];
    
    NSMutableString * md5str=[[[NSMutableString alloc]init]autorelease];
    [md5str appendString:SDKConReaderGetString(GAMA_GAME_KEY)]; //AppKey
    [md5str appendString:timeStamp]; //时间戳
    [md5str appendString:[userName lowercaseString]]; //用户名
    [md5str appendString:[NSString stringWithFormat:@"%@",SDKConReaderGetString(SDK_GAME_CODE)]]; //gamecode
    NSString * md5SignStr=[SUtil getMD5StrFromString:md5str];
    
    NSDictionary *dic = nil;
    NSDictionary *additionDic = nil;
    NSArray *expectDictArr = nil;
    @try {
        dic = @{
                @"signature"        :[md5SignStr lowercaseString],
                @"timestamp"        :timeStamp,
                @"gameCode"         :[NSString stringWithFormat:@"%@",GameCode],
                @"name"             :[userName lowercaseString],
                @"email"            :email,
                };
    } @catch (NSException *exception) {
        dispatch_async(dispatch_get_main_queue(),^
                       {
                           [AlertUtil showAlertWithMessage:[NSString stringWithFormat:@"!!!ERROR Dic At Register:\n %@ \n %@", dic, exception.description]];
                       });
        GAMA_FUNCTION_LOG(exception.description);
    }
    
    NSString *mainDomain = [NSString stringWithFormat:@"%@%@",domainName,SDKConReaderGetString(GAMA_LOGIN_STANDARD_FIND_PW_PRO_NAME)];
    NSString *backDomain = [NSString stringWithFormat:@"%@%@",domainName,SDKConReaderGetString(GAMA_LOGIN_STANDARD_FIND_PW_PRO_NAME)];
    
    [GamaRequestor requestByParams:dic
                additionalParams:additionDic
                   requestDomain:mainDomain
             requestSecondDomain:backDomain
      expectResponseDicKeysArray:expectDictArr
                      retryTimes:1
                  isReqestByPost:YES
               ComplitionHandler:^(NSURLResponse *response, NSDictionary *resultJsonDic, NSError *jsonParseErr, NSString *resultStr, NSData *resultRawData, NSError *error) {
    
         //受到結果
         if (!error && !jsonParseErr)
         {
             NSString * codeS = [NSString stringWithFormat:@"%@", resultJsonDic[@"code"]];
             //修改密码成功
             if (codeS.intValue==1000)
             {
                 //紀錄上次登陸的用戶信息
                 NSDictionary * thisUserInfoDic=[NSDictionary dictionaryWithObjectsAndKeys:
                                                 tmpUserName,@"GamaLastUserName",
                                                 @"",@"GamaLastUserPassword",
                                                 nil];
                 //提示用户
                 NSString * message=resultJsonDic[@"message"];
                 [AlertUtil showAlertWithMessage:message];
                 //發送廣播，让登陆view移出。
                 [[NSNotificationCenter defaultCenter]postNotificationName:GAMA_REGET_PASSWORD_SUCCESS_IN
                                                                    object:nil
                                                                  userInfo:thisUserInfoDic];
                 return;
             }
             //修改密码失敗
             else if(codeS.length==4)
             {
                 NSString * message = resultJsonDic[@"message"];
                 [AlertUtil showAlertWithMessage:message];
                 [[NSNotificationCenter defaultCenter]postNotificationName:GAMA_REGET_PASSWORD_FAIL_IN
                                                                    object:nil];
                 return;
             }
             else
             {
                 [AlertUtil showAlertWithMessage:SDKConReaderGetString(GAMA_TEXT_SERVER_RETURN_ERROR)];
                 [[NSNotificationCenter defaultCenter]postNotificationName:GAMA_REGET_PASSWORD_FAIL_IN
                                                                    object:nil];
                 return;
             }
             
         }
         //服務器沒有反映
         else
         {
             GAMA_LOGIN_LOG(@"reget Gama account password no net")
             [AlertUtil showAlertWithMessage:SDKConReaderGetString(GAMA_TEXT_NO_NET)];
             [[NSNotificationCenter defaultCenter]postNotificationName:GAMA_REGET_PASSWORD_FAIL_IN
                                                                object:nil];
             return;
         }
     }];
}



+(void)_doRegetPasswordWithUserName:(NSString *)userName
                           otherDic:(NSDictionary *)otherDic
                      andDomainName:(NSString *)domainName
{
    
    userName = userName?userName:@"";
    
    NSString * tmpUserName = [NSString stringWithString:userName];
    
//    if (![phone isEqualToString:@""]&& [userName isEqualToString:@""]) {
//        tmpUserName = phone;
//    }
    
    /*-----------获取参数----------*/
    //获取时间戳
    NSString * timeStamp=[SUtil getTimeStamp];
    
    NSMutableString * md5str=[[[NSMutableString alloc]init]autorelease];
    [md5str appendString:SDKConReaderGetString(GAMA_GAME_KEY)]; //AppKey
    [md5str appendString:timeStamp]; //时间戳
    [md5str appendString:[userName lowercaseString]]; //用户名
    [md5str appendString:[NSString stringWithFormat:@"%@",SDKConReaderGetString(SDK_GAME_CODE)]]; //gamecode
    NSString * md5SignStr=[SUtil getMD5StrFromString:md5str];
    
    NSDictionary *dic = nil;
    NSDictionary *additionDic = otherDic;
    NSArray *expectDictArr = nil;
    @try {
        dic = @{
                @"signature"        :[md5SignStr lowercaseString],
                @"timestamp"        :timeStamp,
                @"gameCode"         :[NSString stringWithFormat:@"%@",GameCode],
                @"name"             :[userName lowercaseString],
                };
    } @catch (NSException *exception) {
        dispatch_async(dispatch_get_main_queue(),^
                       {
                           [AlertUtil showAlertWithMessage:[NSString stringWithFormat:@"!!!ERROR Dic At Register:\n %@ \n %@", dic, exception.description]];
                       });
        GAMA_FUNCTION_LOG(exception.description);
    }
    
    NSString *mainDomain = [NSString stringWithFormat:@"%@%@",domainName,SDKConReaderGetString(GAMA_LOGIN_STANDARD_FIND_PW_PRO_NAME)];
    NSString *backDomain = [NSString stringWithFormat:@"%@%@",domainName,SDKConReaderGetString(GAMA_LOGIN_STANDARD_FIND_PW_PRO_NAME)];
    
    [GamaRequestor requestByParams:dic
                additionalParams:additionDic
                   requestDomain:mainDomain
             requestSecondDomain:backDomain
      expectResponseDicKeysArray:expectDictArr
                      retryTimes:1
                  isReqestByPost:YES
               ComplitionHandler:^(NSURLResponse *response, NSDictionary *resultJsonDic, NSError *jsonParseErr, NSString *resultStr, NSData *resultRawData, NSError *error) {
    
         //受到結果
         if (!error && !jsonParseErr)
         {
             NSString * codeS = [NSString stringWithFormat:@"%@", resultJsonDic[@"code"]];
             //修改密码成功
             if (codeS.intValue==1000)
             {
                 //紀錄上次登陸的用戶信息
                 NSDictionary * thisUserInfoDic=[NSDictionary dictionaryWithObjectsAndKeys:
                                                 tmpUserName,@"GamaLastUserName",
                                                 @"",@"GamaLastUserPassword",
                                                 nil];
                 //提示用户
                 NSString * message=resultJsonDic[@"message"];
                 [AlertUtil showAlertWithMessage:message];
                 //發送廣播，让登陆view移出。
                 [[NSNotificationCenter defaultCenter]postNotificationName:GAMA_REGET_PASSWORD_SUCCESS_IN
                                                                    object:nil
                                                                  userInfo:thisUserInfoDic];
                 return;
             }
             //修改密码失敗
             else if(codeS.length==4)
             {
                 NSString * message = resultJsonDic[@"message"];
                 [AlertUtil showAlertWithMessage:message];
                 [[NSNotificationCenter defaultCenter]postNotificationName:GAMA_REGET_PASSWORD_FAIL_IN
                                                                    object:nil];
                 return;
             }
             else
             {
                 [AlertUtil showAlertWithMessage:SDKConReaderGetString(GAMA_TEXT_SERVER_RETURN_ERROR)];
                 [[NSNotificationCenter defaultCenter]postNotificationName:GAMA_REGET_PASSWORD_FAIL_IN
                                                                    object:nil];
                 return;
             }
             
         }
         //服務器沒有反映
         else
         {
             GAMA_LOGIN_LOG(@"reget Gama account password no net")
             [AlertUtil showAlertWithMessage:SDKConReaderGetString(GAMA_TEXT_NO_NET)];
             [[NSNotificationCenter defaultCenter]postNotificationName:GAMA_REGET_PASSWORD_FAIL_IN
                                                                object:nil];
             return;
         }
     }];
}


@end
