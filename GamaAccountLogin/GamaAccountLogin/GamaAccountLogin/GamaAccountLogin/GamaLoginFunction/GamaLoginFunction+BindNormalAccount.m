

#import "GamaLoginFunction.h"
#import "GamaLoginInfo.h"
#import "GamaLoginFuncionPort.h"



@implementation GamaLoginFunction (BindNormalAccount)

+(void)getVerificationCodeWithAccount:(NSString *)account
                          andPassword:(NSString *)password
                          andPhoneNum:(NSString *)phoneNum
                             andEmail:(NSString *)email
                        andDomainName:(NSString *)domain
                         andForceCode:(NSString *)forceCode
{
    //获取游戏包名
    NSString * packageName = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleIdentifier"];
    //游戏包版本号
    NSString * CFBundleShortVersionString=[[GamaFunction getProjectInfoPlist]objectForKey:@"CFBundleShortVersionString"];
    //上传苹果的bundle版本号
    NSString * CFBundleVersion=[[GamaFunction getProjectInfoPlist]objectForKey:@"CFBundleVersion"];
    //增加前缀
    NSString * prefix=GAMA_GET_INFO(GAMA_LOGIN_ACCOUNT_PREFIX);
    if (prefix==nil)
    {
        prefix=@"";
    }
    
    NSString * userNameWithPrefix=[NSString stringWithFormat:@"%@%@",prefix,account];
    
    
    /*-----------拼接URL字符串----------*/
    NSMutableString * URLStr=[[[NSMutableString alloc]init]autorelease];
    [URLStr appendFormat:@"%@",domain];
    [URLStr appendFormat:@"%@?",GAMA_GET_INFO(GAMA_LOGIN_ASSIST_VERIFICATION_BIND_EMAIL_PHONE)];
    //拼接参数
    [URLStr appendFormat:@"loginName=%@",[userNameWithPrefix gamaUrlEncodeString]];
    [URLStr appendFormat:@"&loginPwd=%@",[password gamaUrlEncodeString]];
    [URLStr appendFormat:@"&phone=%@",[phoneNum?phoneNum:@"" gamaUrlEncodeString]];
    [URLStr appendFormat:@"&email=%@",[email?email:@"" gamaUrlEncodeString]];
    [URLStr appendFormat:@"&gameCode=%@ios",GameCode];
    [URLStr appendFormat:@"&packageName=%@",packageName];
    [URLStr appendFormat:@"&gameVersion=%@",CFBundleShortVersionString];
    [URLStr appendFormat:@"&versionCode=%@",CFBundleVersion];
    [URLStr appendFormat:@"&language=%@",Language];
    [URLStr appendFormat:@"&forceCode=%@",forceCode];
    //全打印
    NSString * systemFlag=[NSString stringWithFormat:@"bind phone or email url:%@",URLStr];
    NSLog(@"%@",systemFlag);
    
    /*-----------访问服务器----------*/
    NSURLRequest * request=[NSURLRequest requestWithURL:[NSURL URLWithString:URLStr]
                                            cachePolicy:NSURLRequestReloadIgnoringCacheData
                                        timeoutInterval:30.0f];
    
    [GamaURLConnect accessServerWithRequest:request andHandler:^(NSData *resultData, NSString *resultStr, NSError *error) {
        //受到結果
        if (!error)
        {
            if (resultStr==nil||
                [resultStr isEqualToString:@""])
            {
                if ([domain isEqualToString:FirstDomain])
                {
                    [self getVerificationCodeWithAccount:account
                                             andPassword:password
                                             andPhoneNum:phoneNum
                                                andEmail:email
                                           andDomainName:SecondDomain];
                    return ;
                }
                [GamaAlertView showAlertWithMessage:GAMA_GET_INFO(GAMA_TEXT_SERVER_RETURN_NULL)];
                [[NSNotificationCenter defaultCenter]postNotificationName:GAMA_VERIFICATION_BIND_FAIL_IN
                                                                   object:nil];
            }
            
            //开始分析
            NSString * systemFlag=[NSString stringWithFormat:@"getVerification result:%@",resultStr];
            GAMA_LOGIN_LOG(systemFlag)
            NSDictionary * resourtDic=
            [NSJSONSerialization JSONObjectWithData:[resultStr dataUsingEncoding:NSUTF8StringEncoding]
                                            options:kNilOptions
                                              error:nil];
            NSString * code=[resourtDic objectForKey:@"code"];
            
            //绑定成功
            if([code isEqualToString:@"1000"])
            {
                //提示用户
                NSString * message=[resourtDic objectForKey:@"message"];
                [GamaAlertView showAlertWithMessage:message];
                //發送廣播，让登陆view移出。
                [[NSNotificationCenter defaultCenter]postNotificationName:GAMA_VERIFICATION_BIND_SUCCESS_IN
                                                                   object:nil
                                                                 userInfo:nil];
            }
            else
            {
                //提示用户
                NSString * message=[resourtDic objectForKey:@"message"];
                [GamaAlertView showAlertWithMessage:message];
                //發送廣播，让登陆view移出。
                [[NSNotificationCenter defaultCenter]postNotificationName:GAMA_VERIFICATION_BIND_FAIL_IN
                                                                   object:nil
                                                                 userInfo:nil];
            }
        }
        //服務器沒有反映
        else
        {
            if ([domain isEqualToString:FirstDomain])
            {
                GAMA_LOGIN_LOG(@"no net with nomal domain name,begin test domain name:getVerification")
                [self getVerificationCodeWithAccount:account
                                         andPassword:password
                                         andPhoneNum:phoneNum
                                            andEmail:email
                                       andDomainName:SecondDomain];
                return ;
            }
            GAMA_LOGIN_LOG(@"getVerification no net")
            [GamaAlertView showAlertWithMessage:GAMA_GET_INFO(GAMA_TEXT_NO_NET)];
            [[NSNotificationCenter defaultCenter]postNotificationName:GAMA_VERIFICATION_BIND_FAIL_IN
                                                               object:nil];
            return;
        }
    }];
}

+ (void)getVerificationCodeWithAccount:(NSString *)account
                           andPassword:(NSString *)password
                           andPhoneNum:(NSString *)phoneNum
                         andDomainName:(NSString *)domain
{
    [GamaLoginFunction getVerificationCodeWithAccount:account
                                          andPassword:password
                                          andPhoneNum:phoneNum
                                             andEmail:nil
                                        andDomainName:domain];
}
+ (void)bindAccountConfirm:(NSString *)account
               andPassword:(NSString *)password
                  andEmail:(NSString *)email
             andDomainName:(NSString *)domain
{
    [GamaLoginFunction getVerificationCodeWithAccount:account
                                          andPassword:password
                                          andPhoneNum:nil
                                             andEmail:email
                                        andDomainName:domain];
}

+ (void)bindAccountWithAccount:(NSString *)account
                       andCode:(NSString *)code
                      andPhone:(NSString *)phoneNum
                      andEmail:(NSString *)email
                 andDomainName:(NSString *)domain
{
    //获取游戏包名
    NSString * packageName = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleIdentifier"];
    
    //游戏包版本号
    NSString * CFBundleShortVersionString=[[GamaFunction getProjectInfoPlist]objectForKey:@"CFBundleShortVersionString"];
    //上传苹果的bundle版本号
    NSString * CFBundleVersion=[[GamaFunction getProjectInfoPlist]objectForKey:@"CFBundleVersion"];
    //增加前缀
    NSString * prefix=GAMA_GET_INFO(GAMA_LOGIN_ACCOUNT_PREFIX);
    if (prefix==nil)
    {
        prefix=@"";
    }
    
    NSString * userNameWithPrefix=[NSString stringWithFormat:@"%@%@",prefix,account];
    
    /*-----------拼接URL字符串----------*/
    NSMutableString * URLStr=[[[NSMutableString alloc]init]autorelease];
    [URLStr appendFormat:@"%@",domain];
    [URLStr appendFormat:@"%@?",GAMA_GET_INFO(GAMA_LOGIN_ASSIST_BIND_EMAIL_PHONE)];
    //拼接参数
    [URLStr appendFormat:@"loginName=%@",[userNameWithPrefix gamaUrlEncodeString]];
    [URLStr appendFormat:@"&code=%@",[code gamaUrlEncodeString]];
    [URLStr appendFormat:@"&phone=%@",[phoneNum?phoneNum:@"" gamaUrlEncodeString]];
    [URLStr appendFormat:@"&email=%@",[email?email:@"" gamaUrlEncodeString]];
    [URLStr appendFormat:@"&gameCode=%@ios",GameCode];
    [URLStr appendFormat:@"&packageName=%@",packageName];
    [URLStr appendFormat:@"&gameVersion=%@",CFBundleShortVersionString];
    [URLStr appendFormat:@"&versionCode=%@",CFBundleVersion];
    [URLStr appendFormat:@"&language=%@",Language];
    //全打印
    NSString * systemFlag=[NSString stringWithFormat:@"bind phone or email url:%@",URLStr];
    NSLog(@"%@",systemFlag);
    
    /*-----------访问服务器----------*/
    NSURLRequest * request=[NSURLRequest requestWithURL:[NSURL URLWithString:URLStr]
                                            cachePolicy:NSURLRequestReloadIgnoringCacheData
                                        timeoutInterval:30.0f];
    
    [GamaURLConnect accessServerWithRequest:request
                               andHandler:^(NSData *resultData, NSString *resultStr, NSError *error) {
                                   
        if (!error)
        {
            if (resultStr==nil||
                [resultStr isEqualToString:@""])
            {
                if ([domain isEqualToString:FirstDomain])
                {
                    [self bindAccountWithAccount:account andCode:code andPhone:phoneNum andEmail:email andDomainName:SecondDomain];
                    return ;
                }
                [GamaAlertView showAlertWithMessage:GAMA_GET_INFO(GAMA_TEXT_SERVER_RETURN_NULL)];
                [[NSNotificationCenter defaultCenter] postNotificationName:GAMA_BIND_EMAIL_OR_PHONE_FAIL_IN
                                                                   object:nil];
            }
            
            //开始分析
            NSString * systemFlag=[NSString stringWithFormat:@"reget password result:%@",resultStr];
            GAMA_LOGIN_LOG(systemFlag)
            NSDictionary * resourtDic=
            [NSJSONSerialization JSONObjectWithData:[resultStr dataUsingEncoding:NSUTF8StringEncoding]
                                            options:kNilOptions
                                              error:nil];
            NSString * code=[resourtDic objectForKey:@"code"];
            
            //绑定成功
            if([code isEqualToString:@"1000"])
            {
                //提示用户
                NSString * message=[resourtDic objectForKey:@"message"];
                [GamaAlertView showAlertWithMessage:message];
                //發送廣播，让登陆view移出。
                [[NSNotificationCenter defaultCenter]postNotificationName:GAMA_BIND_EMAIL_OR_PHONE_SUCCESS_IN
                                                                   object:nil
                                                                 userInfo:nil];
            }
            else
            {
                //提示用户
                NSString * message=[resourtDic objectForKey:@"message"];
                [GamaAlertView showAlertWithMessage:message];
                //發送廣播，让登陆view移出。
                [[NSNotificationCenter defaultCenter]postNotificationName:GAMA_BIND_EMAIL_OR_PHONE_FAIL_IN
                                                                   object:nil
                                                                 userInfo:nil];
            }
        }
        //服務器沒有反映
        else
        {
            if ([domain isEqualToString:FirstDomain])
            {
                GAMA_LOGIN_LOG(@"no net with nomal domain name,begin test second domain name: account change password")
                [self bindAccountWithAccount:account andCode:code andPhone:phoneNum andEmail:email andDomainName:SecondDomain];
                return ;
            }

            [GamaAlertView showAlertWithMessage:GAMA_GET_INFO(GAMA_TEXT_NO_NET)];
            [[NSNotificationCenter defaultCenter]postNotificationName:GAMA_BIND_EMAIL_OR_PHONE_FAIL_IN
                                                               object:nil];
            return;
        }
    }];
}

+ (void)findPasswordWithAccount:(NSString *)account
                       andPhone:(NSString *)phoneNum
                       andEmail:(NSString *)email
                  andDomainName:(NSString *)domain
{
    //获取游戏包名
    NSString * packageName = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleIdentifier"];
    
    //游戏包版本号
    NSString * CFBundleShortVersionString=[[GamaFunction getProjectInfoPlist]objectForKey:@"CFBundleShortVersionString"];
    //上传苹果的bundle版本号
    NSString * CFBundleVersion=[[GamaFunction getProjectInfoPlist]objectForKey:@"CFBundleVersion"];
    //增加前缀
    NSString * prefix=GAMA_GET_INFO(GAMA_LOGIN_ACCOUNT_PREFIX);
    if (prefix==nil)
    {
        prefix=@"";
    }
    
    NSString * userNameWithPrefix=[NSString stringWithFormat:@"%@%@",prefix,account];
    
    /*-----------拼接URL字符串----------*/
    NSMutableString * URLStr=[[[NSMutableString alloc]init]autorelease];
    [URLStr appendFormat:@"%@",domain];
    [URLStr appendFormat:@"%@?",GAMA_GET_INFO(GAMA_LOGIN_ASSIST_Find_EMAIL_PHONE)];//@"assist_retrievePassword.shtml"
    //拼接参数
    [URLStr appendFormat:@"loginName=%@",[userNameWithPrefix gamaUrlEncodeString]];
    [URLStr appendFormat:@"&phone=%@",[phoneNum?phoneNum:@"" gamaUrlEncodeString]];
    [URLStr appendFormat:@"&email=%@",[email?email:@"" gamaUrlEncodeString]];
    [URLStr appendFormat:@"&gameCode=%@ios",GameCode];
    [URLStr appendFormat:@"&packageName=%@",packageName];
    [URLStr appendFormat:@"&gameVersion=%@",CFBundleShortVersionString];
    [URLStr appendFormat:@"&versionCode=%@",CFBundleVersion];
    [URLStr appendFormat:@"&language=%@",Language];
    //全打印
    NSString * systemFlag=[NSString stringWithFormat:@"bind phone or email url:%@",URLStr];
    NSLog(@"%@",systemFlag);
    
    /*-----------访问服务器----------*/
    NSURLRequest * request=[NSURLRequest requestWithURL:[NSURL URLWithString:URLStr]
                                            cachePolicy:NSURLRequestReloadIgnoringCacheData
                                        timeoutInterval:30.0f];
    
    [GamaURLConnect accessServerWithRequest:request andHandler:^(NSData *resultData, NSString *resultStr, NSError *error) {
        if (!error)
        {
            if (resultStr==nil||
                [resultStr isEqualToString:@""])
            {
                if ([domain isEqualToString:FirstDomain])
                {
                    [self findPasswordWithAccount:account
                                         andPhone:phoneNum
                                         andEmail:email
                                    andDomainName:SecondDomain];
                    return ;
                }
                [GamaAlertView showAlertWithMessage:GAMA_GET_INFO(GAMA_TEXT_SERVER_RETURN_NULL)];
                [[NSNotificationCenter defaultCenter]postNotificationName:GAMA_REGET_PASSWORD_FAIL_IN
                                                                   object:nil];
            }
            
            //开始分析
            NSString * systemFlag=[NSString stringWithFormat:@"reget password result:%@",resultStr];
            GAMA_LOGIN_LOG(systemFlag)
            NSDictionary * resourtDic=
            [NSJSONSerialization JSONObjectWithData:[resultStr dataUsingEncoding:NSUTF8StringEncoding]
                                            options:kNilOptions
                                              error:nil];
            NSString * code=[resourtDic objectForKey:@"code"];
            
            //绑定成功
            if([code isEqualToString:@"1000"])
            {
                //提示用户
                NSString * message=[resourtDic objectForKey:@"message"];
                [GamaAlertView showAlertWithMessage:message];
                //發送廣播，让登陆view移出。
                [[NSNotificationCenter defaultCenter]postNotificationName:GAMA_REGET_PASSWORD_SUCCESS_IN
                                                                   object:nil
                                                                 userInfo:nil];
            }
            else
            {
                //提示用户
                NSString * message=[resourtDic objectForKey:@"message"];
                [GamaAlertView showAlertWithMessage:message];
                //發送廣播，让登陆view移出。
                [[NSNotificationCenter defaultCenter]postNotificationName:GAMA_REGET_PASSWORD_FAIL_IN
                                                                   object:nil
                                                                 userInfo:nil];
            }
        }
        //服務器沒有反映
        else
        {
            if ([domain isEqualToString:GAMA_GET_INFO(GAMA_LOGIN_DOMAIN_NAME)])
            {
                
                [self findPasswordWithAccount:account
                                     andPhone:phoneNum
                                     andEmail:email
                                andDomainName:GAMA_GET_INFO(GAMA_LOGIN_DOMAIN_NAME_IN_RESERVE)];
                return ;
            }
            
            [GamaAlertView showAlertWithMessage:GAMA_GET_INFO(GAMA_TEXT_NO_NET)];
            [[NSNotificationCenter defaultCenter]postNotificationName:GAMA_REGET_PASSWORD_FAIL_IN
                                                               object:nil];
            return;
        }
    }];
}

+ (void)bindAccountNoConfirm:(NSString *)account
                 andPassword:(NSString *)password
                    andEmail:(NSString *)email
               andDomainName:(NSString *)domain
{
    
    /*-----------获取参数----------*/
    //游戏包版本号
    NSString * CFBundleShortVersionString=[[GamaFunction getProjectInfoPlist]objectForKey:@"CFBundleShortVersionString"];
    //上传苹果的bundle版本号
    NSString * CFBundleVersion=[[GamaFunction getProjectInfoPlist]objectForKey:@"CFBundleVersion"];
    //邮箱空处理
    if (email==nil)
    {
        email=@"";
    }
    //增加前缀
    NSString * prefix=GAMA_GET_INFO(GAMA_LOGIN_ACCOUNT_PREFIX);
    if (prefix==nil)
    {
        prefix=@"";
    }
    NSString * userNameWithPrefix=[NSString stringWithFormat:@"%@%@",prefix,account];
    /*-----------拼接URL字符串----------*/
    NSMutableString * URLStr=[[[NSMutableString alloc]init]autorelease];
    [URLStr appendFormat:@"%@",domain];
    [URLStr appendFormat:@"%@?",GAMA_GET_INFO(GAMA_LOGIN_STANDARD_BINDING_EMAIL_PRO_NAME)];
    //拼接参数
    [URLStr appendFormat:@"loginName=%@&",userNameWithPrefix];
    [URLStr appendFormat:@"loginPwd=%@&",password];
    [URLStr appendFormat:@"email=%@&",[GamaFunction urlEcodingFromString:email]];
    [URLStr appendFormat:@"gameCode=%@ios&",GameCode];
    [URLStr appendFormat:@"language=%@&",@"zh_CH"];
    [URLStr appendFormat:@"gameVersion=%@&",CFBundleShortVersionString];
    [URLStr appendFormat:@"versionCode=%@",CFBundleVersion];
    
    
    /*-----------访问服务器----------*/
    NSURLRequest * request=[NSURLRequest requestWithURL:[NSURL URLWithString:URLStr]
                                            cachePolicy:NSURLRequestReloadIgnoringCacheData
                                        timeoutInterval:30.0f];
    //开始访问服务器
    [GamaURLConnect accessServerWithRequest:request
                                 andHandler:^(NSData * resultData,NSString * resultStr,NSError * error)
     {
         //受到結果
         if (!error)
         {
             if (resultStr==nil||
                 [resultStr isEqualToString:@""])
             {
                 if ([domain isEqualToString:GAMA_GET_INFO(GAMA_LOGIN_DOMAIN_NAME)])
                 {
                     GAMA_FUNCTION_LOG(@"get result nil ;begin test domian name in reserve ::bindEmail")
                     [self bindAccountNoConfirm:account andPassword:password andEmail:email andDomainName:GAMA_GET_INFO(GAMA_LOGIN_DOMAIN_NAME_IN_RESERVE)];
                     return ;
                 }
                 GAMA_FUNCTION_LOG(@"get result nil")
                 [GamaAlertView showAlertWithMessage:GAMA_GET_INFO(GAMA_TEXT_SERVER_RETURN_NULL)];
                 [[NSNotificationCenter defaultCenter]postNotificationName:GAMA_BIND_EMAIL_OR_PHONE_FAIL_IN
                                                                    object:nil];
                 return;
             }
             
             
             NSDictionary * resourtDic=
             [NSJSONSerialization JSONObjectWithData:resultData
                                             options:kNilOptions
                                               error:nil];
             NSString * codeStr=[resourtDic objectForKey:@"code"];
             //注册成功
             if (codeStr.intValue==1000)
             {
                 NSString * message=[resourtDic objectForKey:@"message"];
                 [GamaAlertView showAlertWithMessage:message];
                 //發送廣播
                 [[NSNotificationCenter defaultCenter]postNotificationName:GAMA_BIND_EMAIL_OR_PHONE_SUCCESS_IN
                                                                    object:nil
                                                                  userInfo:resourtDic];
                 return;
             }
             //注册失敗
             else if(codeStr.length==4)
             {
                 NSString * message=[resourtDic objectForKey:@"message"];
                 [GamaAlertView showAlertWithMessage:message];
                 [[NSNotificationCenter defaultCenter]postNotificationName:GAMA_BIND_EMAIL_OR_PHONE_FAIL_IN
                                                                    object:nil];
                 return;
             }
             else
             {
                 if ([domain isEqualToString:GAMA_GET_INFO(GAMA_LOGIN_DOMAIN_NAME)])
                 {
                  
                     [self bindAccountNoConfirm:account
                                    andPassword:password
                                       andEmail:email
                                  andDomainName:GAMA_GET_INFO(GAMA_LOGIN_DOMAIN_NAME_IN_RESERVE)];
                     return ;
                 }
                 GAMA_FUNCTION_LOG(@"get result error")
                 [GamaAlertView showAlertWithMessage:GAMA_GET_INFO(GAMA_TEXT_SERVER_RETURN_ERROR)];
                 [[NSNotificationCenter defaultCenter]postNotificationName:GAMA_BIND_EMAIL_OR_PHONE_FAIL_IN
                                                                    object:nil];
                 return;
             }
         }
         //服務器沒有反映
         else
         {
             if ([domain isEqualToString:GAMA_GET_INFO(GAMA_LOGIN_DOMAIN_NAME)])
             {
                 [self bindAccountNoConfirm:account
                                andPassword:password
                                   andEmail:email
                              andDomainName:GAMA_GET_INFO(GAMA_LOGIN_DOMAIN_NAME_IN_RESERVE)];
                 return ;
             }
             
             [GamaAlertView showAlertWithMessage:GAMA_GET_INFO(GAMA_TEXT_NO_NET)];
             [[NSNotificationCenter defaultCenter]postNotificationName:GAMA_BIND_EMAIL_OR_PHONE_FAIL_IN
                                                                object:nil];
             return;
         }
     }];
    
}
@end
