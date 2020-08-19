

#import "GamaLoginFunction.h"

#import "GamaLoginInfo.h"

#import "GamaLoginFuncionPort.h"

@implementation GamaLoginFunction (GetBindingInformation)

+ (void)getBindingInformationFromAccount:(NSString *)account
                                password:(NSString *)password
                                  encode:(NSString *)encode
                              domainName:(NSString *)domain
{
    NSString *timestamp = [GamaFunction getTimeStamp];
    NSMutableString *md5Str = [[[NSMutableString alloc] init]autorelease];
    [md5Str appendString:GAMA_GET_INFO(GAMA_GAME_KEY)];
    [md5Str appendString:timestamp];
    [md5Str appendString:account];
    [md5Str appendString:password];
    [md5Str appendString:[NSString stringWithFormat:@"%@ios",GAMA_GET_INFO(GAMA_GAME_SHORT_NAME)]];
    NSString *signature = [GamaFunction getMD5StrFromString:md5Str];
    
    /*-----------拼接URL字符串----------*/
    NSMutableString * URLStr=[[[NSMutableString alloc]init]autorelease];
    [URLStr appendFormat:@"%@", domain];
    [URLStr appendFormat:@"%@?", GAMA_GET_INFO(GAMA_LOGIN_ASSIST_VALIDATE_USER_MESSAGE)];
    
    //拼接参数
    [URLStr appendFormat:@"loginName=%@", account];
    [URLStr appendFormat:@"&loginPwd=%@", password];
    [URLStr appendFormat:@"&encode=%@", encode];
    [URLStr appendFormat:@"&userId=%@", @""];
    [URLStr appendFormat:@"&gameCode=%@ios", GAMA_GET_INFO(GAMA_GAME_SHORT_NAME)];
    [URLStr appendFormat:@"&signature=%@", signature];
    [URLStr appendFormat:@"&timestamp=%@", timestamp];

//    //全打印
//    NSString * systemFlag=[NSString stringWithFormat:@"get phone or email url:%@",URLStr];
//    //    GAMA_LOGIN_LOG(systemFlag)
//    
//    NSLog(@"%@",systemFlag);
    
    /*-----------访问服务器----------*/
    NSURLRequest * request=[NSURLRequest requestWithURL:[NSURL URLWithString:URLStr]
                                            cachePolicy:NSURLRequestReloadIgnoringCacheData
                                        timeoutInterval:30.0f];
    
    [GamaURLConnect accessServerWithRequest:request andHandler:^(NSData *resultData, NSString *resultStr, NSError *error)
    {
        //收到結果
        if (!error)
        {
            if (resultStr==nil || [resultStr isEqualToString:@""])
            {
                if ([domain isEqualToString:GAMA_GET_INFO(GAMA_LOGIN_DOMAIN_NAME)])
                {
                    [self getBindingInformationFromAccount:account
                                                  password:password
                                                    encode:encode
                                                domainName:GAMA_GET_INFO(GAMA_LOGIN_DOMAIN_NAME_IN_RESERVE)];
                    return ;
                }
                [[NSNotificationCenter defaultCenter] postNotificationName:GAMA_GET_BINDING_INFORMATION_FAIL
                                                                    object:nil];
            }
            
            //开始分析
            NSDictionary * resultDic = [NSJSONSerialization JSONObjectWithData:[resultStr dataUsingEncoding:NSUTF8StringEncoding]
                                                                       options:kNilOptions
                                                                         error:nil];
            
//            if([[resultDic objectForKey:@"code"] isEqualToString:@"1000"])
            if(  [resultDic[@"code"] isEqualToString:@"1000"])
            {
                //yao: 由前端决定显示什么信息
                [[NSNotificationCenter defaultCenter] postNotificationName:GAMA_GET_BINDING_INFORMATION_SUCCESS
                                                                   object:nil
                                                                 userInfo:resultDic];
            }
            else
            {
                [[NSNotificationCenter defaultCenter] postNotificationName:GAMA_GET_BINDING_INFORMATION_FAIL
                                                                   object:nil];
            }
        }
        //服務器沒有反映
        else
        {
            if ([domain isEqualToString:GAMA_GET_INFO(GAMA_LOGIN_DOMAIN_NAME)])
            {
                [self getBindingInformationFromAccount:account
                                              password:password
                                                encode:encode
                                            domainName:GAMA_GET_INFO(GAMA_LOGIN_DOMAIN_NAME_IN_RESERVE)];
                return ;
            }
            [[NSNotificationCenter defaultCenter] postNotificationName:GAMA_GET_BINDING_INFORMATION_FAIL
                                                               object:nil];
        }
    }];
}

@end
