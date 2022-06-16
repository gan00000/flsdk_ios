#import "GamaLoginFunction.h"
#import "GamaLoginInfo.h"
#import "GamaLoginFuncionPort.h"

@implementation GamaLoginFunction (ResetPassword)

+(void)doResetPasswordWithUserName:(NSString *)userName
                    andOldPassword:(NSString *)oldPassword
                    andNewPassword:(NSString *)newPassword
                     andDomainName:(NSString *)domainName
{
        
    //空参数处理
    if (userName==nil||
        [userName isEqualToString:@""]||
        oldPassword==nil||
        [oldPassword isEqualToString:@""]||
        newPassword==nil||
        [newPassword isEqualToString:@""])
    {
        [AlertUtil showAlertWithMessage:SDKConReaderGetString(GAMA_TEXT_PARAMETER_NULL)];
        [[NSNotificationCenter defaultCenter]postNotificationName:GAMA_RESET_PASSWORD_FAIL_IN
                                                           object:nil];
        return;
    }
    
    //获取时间戳
    NSString * timeStamp=[GamaFunction getTimeStamp];
    
    //获取md5加密的值gamesPojo.getAppKey() + timestamp + name + pwd + newPwd + gameCode;
    NSMutableString * md5str=[[[NSMutableString alloc]init]autorelease];
    [md5str appendString:SDKConReaderGetString(GAMA_GAME_KEY)]; //AppKey
    [md5str appendString:timeStamp]; //时间戳
    [md5str appendFormat:@"%@",[userName lowercaseString]]; //用户名
    [md5str appendString:[[GamaFunction getMD5StrFromString:oldPassword] lowercaseString]]; //用户密码
    [md5str appendString:[[GamaFunction getMD5StrFromString:newPassword] lowercaseString]]; //新密码
    [md5str appendString:[NSString stringWithFormat:@"%@",SDKConReaderGetString(SDK_GAME_CODE)]]; //gamecode
    NSString * md5SignStr=[GamaFunction getMD5StrFromString:md5str];


    NSDictionary *dic = nil;
    NSDictionary *additionDic = nil;
    NSArray *expectDictArr = nil;
    @try {
        dic = @{
                @"signature"        :[md5SignStr lowercaseString],
                @"timestamp"        :timeStamp,
                @"gameCode"         :[NSString stringWithFormat:@"%@",GameCode],
                @"name"             :[userName lowercaseString],
                @"pwd"              :[[GamaFunction getMD5StrFromString:oldPassword] lowercaseString],
                @"newPwd"           :[[GamaFunction getMD5StrFromString:newPassword] lowercaseString],
                };
    } @catch (NSException *exception) {
        dispatch_async(dispatch_get_main_queue(),^
                       {
                           [AlertUtil showAlertWithMessage:[NSString stringWithFormat:@"!!!ERROR Dic At Register:\n %@ \n %@", dic, exception.description]];
                       });
        GAMA_FUNCTION_LOG(exception.description);
    }
    
    NSString *mainDomain = [NSString stringWithFormat:@"%@%@",domainName,SDKConReaderGetString(GAMA_LOGIN_STANDARD_CHANGE_PW_PRO_NAME)];
    NSString *backDomain = [NSString stringWithFormat:@"%@%@",domainName,SDKConReaderGetString(GAMA_LOGIN_STANDARD_CHANGE_PW_PRO_NAME)];
    
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
             NSString * codeStr= [NSString stringWithFormat:@"%@",resultJsonDic[@"code"]];
             //重置密码成功
             if (codeStr.intValue==1000)
             {
                 //提示用户
                 NSString * message = resultJsonDic[@"message"];
                 [AlertUtil showAlertWithMessage:message];
                 //發送廣播，
                 //这个字典，用来修改登陆界面的帐号，密码;其中密码是空，为了让用户再次输入
                 NSDictionary * nowUserDic=[NSDictionary dictionaryWithObjectsAndKeys:
                                            userName,@"userName",
                                            newPassword,@"userPassword",
                                            nil];
                 //发送广播
                 [[NSNotificationCenter defaultCenter]
                  postNotificationName:GAMA_RESET_PASSWORD_SUCCESS_IN
                  object:nil
                  userInfo:nowUserDic];
                 return;
             }
             //重置密码失敗
             else if(codeStr.length==4)
             {
                 NSString * message = resultJsonDic[@"message"];
                 [AlertUtil showAlertWithMessage:message];
                 [[NSNotificationCenter defaultCenter]
                  postNotificationName:GAMA_RESET_PASSWORD_FAIL_IN object:nil];
                 return;
             }
             else
             {
                 [AlertUtil showAlertWithMessage:SDKConReaderGetString(GAMA_TEXT_SERVER_RETURN_ERROR)];
                 [[NSNotificationCenter defaultCenter]postNotificationName:GAMA_RESET_PASSWORD_FAIL_IN
                                                                    object:nil];
                 return;
             }
         }
         //服務器沒有反映
         else
         {
             [AlertUtil showAlertWithMessage:SDKConReaderGetString(GAMA_TEXT_NO_NET)];
             [[NSNotificationCenter defaultCenter]postNotificationName:GAMA_RESET_PASSWORD_FAIL_IN
                                                                object:nil];
             return;
         }
     }];
}

@end
