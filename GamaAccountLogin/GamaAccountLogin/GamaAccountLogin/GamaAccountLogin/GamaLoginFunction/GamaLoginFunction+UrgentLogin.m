#import "GamaLoginFunction.h"
#import "GamaLoginInfo.h"
#import "GamaLoginFuncionPort.h"
#import "GamaLoginData.h"

@implementation GamaLoginFunction (UrgentLogin)

// 判定第三方登录接口是否通畅
+ (void)doCanThirdPartyLoginGetThroughWithDomainName:(NSString *)domainName
                                          andHandler:(void (^)(NSDictionary*))callback
{    
    NSDictionary * versionsDic = [[NSBundle mainBundle] infoDictionary];
    NSString * versions =[versionsDic objectForKey:@"CFBundleShortVersionString"];
    
    NSMutableString *resultURL = [[[NSMutableString alloc] init] autorelease];
    
    [resultURL appendString:domainName];
    [resultURL appendString:[NSString stringWithFormat:@"%@?",EFUN_GET_INFO(EFUN_LOGIN_FIND_LOGIN_WAYS_PRO_NAME)]];
    
    [resultURL appendFormat:@"gameCode=%@ios",EFUN_GET_INFO(EFUN_GAME_SHORT_NAME)];
    [resultURL appendFormat:@"&versionCode=%@",versions];
    
    EFUN_FUNCTION_LOG([resultURL stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]);
    
    // EfunURLConnect 异步请求，block 回传
    [EFUNURLConnect accessServerWithRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:[resultURL stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]]] andHandler:^(NSData *resultData, NSString *resultStr, NSError *error) {
        // handle request state code
        if (!error) {
            NSDictionary *resultDict = [NSJSONSerialization JSONObjectWithData:resultData options:NSJSONReadingMutableLeaves error:&error];
            
            callback(resultDict);
        } else {
            callback(nil);
        }
        EFUN_FUNCTION_LOG(resultStr);
    }];
}


// 紧急登录
+ (void)doUrgentLoginWithAccount:(NSString *)account
                     andPassword:(NSString *)password
                   andThirdPlate:(NSString *)thirdPlate
                   andDomainName:(NSString *)domainName

{
    EFUN_SHOW_CURRENT_FUNC_NAME
    
    //空参数监测,这里只做简单处理。
    if (account==nil||
        [account isEqualToString:@""]||
        password==nil||
        [password isEqualToString:@""])
    {
        [EFUNAlertView showAlertWithMessage:EFUN_GET_INFO(EFUN_TEXT_PARAMETER_NULL)];
        [[NSNotificationCenter defaultCenter]postNotificationName:EFUN_LOGIN_FAIL_IN
                                                           object:nil];
        return;
    }
    
    /*-----------获取参数----------*/
    
    //获取游戏包名
    NSString * packageName = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleIdentifier"];
    //游戏包版本号
    NSString * CFBundleShortVersionString=[[EFUNFunction getProjectInfoPlist]objectForKey:@"CFBundleShortVersionString"];
    //上传苹果的bundle版本号
    NSString * CFBundleVersion=[[EFUNFunction getProjectInfoPlist]objectForKey:@"CFBundleVersion"];
    //获取时间戳
    NSString * timeStamp=[EFUNFunction getTimeStamp];
    //判断要不要前缀
    NSString * prefix=EFUN_GET_INFO(EFUN_LOGIN_ACCOUNT_PREFIX);
    if (prefix==nil)
    {
        prefix=@"";
    }
    NSString *advertiser = EFUN_GET_INFO(@"ptfAdvertiser");
    if (advertiser == nil) {
        advertiser = @"";
    }
    NSString * userNameWithPrefix=[NSString stringWithFormat:@"%@%@",prefix,account];
    //获取md5加密的值
    // Signature=Md5（Appkey+timestamp+loginName+loginPwd+gameCode+platForm）
    NSMutableString * md5str=[[[NSMutableString alloc]init]autorelease];
    [md5str appendString:EFUN_GET_INFO(EFUN_GAME_KEY)]; //AppKey
    [md5str appendString:timeStamp]; //timestamp
    [md5str appendString:userNameWithPrefix]; //loginName
    [md5str appendString:[EFUNFunction getMD5StrFromString:password]]; //loginPwd
    [md5str appendString:[NSString stringWithFormat:@"%@ios",EFUN_GET_INFO(EFUN_GAME_SHORT_NAME)]]; //gamecode
    [md5str appendString:[NSString stringWithFormat:@"%@",@"ios"]];  // platForm
    NSString * md5SignStr=[EFUNFunction getMD5StrFromString:md5str];
    
    /*-----------拼接URL字符串----------*/
    NSMutableString * URLStr=[[[NSMutableString alloc]init]autorelease];
    
    [URLStr appendFormat:@"%@",domainName];  // 正式的
    
    [URLStr appendFormat:@"%@?",EFUN_GET_INFO(EFUN_LOGIN_THIRD_URGENT_PRO_NAME)];
    //拼接参数
    [URLStr appendFormat:@"signature=%@&",md5SignStr];
    [URLStr appendFormat:@"timestamp=%@&",timeStamp];
    [URLStr appendFormat:@"loginName=%@&",[userNameWithPrefix efunUrlEncodeString]];
    [URLStr appendFormat:@"loginPwd=%@&",[EFUNFunction getMD5StrFromString:password]];
    [URLStr appendFormat:@"gameCode=%@ios&",EFUN_GET_INFO(EFUN_GAME_SHORT_NAME)];
    [URLStr appendFormat:@"mac=%@&",[EFUNFunction getMacaddress]];
    [URLStr appendFormat:@"imei=%@&",[EFUNFunction getIdfa]];
    [URLStr appendFormat:@"androidid=%@&",[EFUNFunction getEfunUUID]];
    [URLStr appendFormat:@"advertiser=%@&",advertiser];
    [URLStr appendFormat:@"packageName=%@&",packageName];
    [URLStr appendFormat:@"systemVersion=%@&",[EFUNFunction getSystemVersion]];
    [URLStr appendFormat:@"region=%@&",EFUN_GET_INFO(EFUN_GAME_REGION)]; //////////////////// 地区标识
    [URLStr appendFormat:@"platForm=%@&",@"ios"];////////////// 设备类型 ios / andriod
    [URLStr appendFormat:@"advertising_id=%@&",[EFUNFunction getIdfa]]; //////////////// 广告使用字段
    [URLStr appendFormat:@"partner=%@&",@"efun"]; ////////////////// 合作商標識
    [URLStr appendFormat:@"thirdPlate=%@&",thirdPlate]; //////////////////  第三方平台
    [URLStr appendFormat:@"appPlatform=%@&", EFUN_GET_INFO(EFUN_PTF_EFUN_MARK)];
    [URLStr appendFormat:@"gameVersion=%@&",CFBundleShortVersionString];
    [URLStr appendFormat:@"versionCode=%@&",CFBundleVersion];
    
    [URLStr appendFormat:@"&language=%@",[EFUNFunction getServerLocaleStrWithGameLanguage:EFUN_GET_INFO(EFUN_GAME_LANGUAGE)]];
    
    //系统打印
    NSString * systemFlag=[NSString stringWithFormat:@"efun_account_login_url:%@",URLStr];
    EFUN_LOGIN_LOG(systemFlag)
    
    /*-----------拼接URL字符串----------*/
    NSURLRequest * request=[NSURLRequest requestWithURL:[NSURL URLWithString:URLStr]
                                            cachePolicy:NSURLRequestReloadIgnoringCacheData
                                        timeoutInterval:30.0f];
    [EFUNURLConnect accessServerWithRequest:request
                                 andHandler:^(NSData * resultData,NSString * resultStr,NSError * error)
     {
         //受到結果
         if (!error)
         {
             if (resultStr==nil||
                 [resultStr isEqualToString:@""])
             {
                 [EFUNAlertView showAlertWithMessage:EFUN_GET_INFO(EFUN_TEXT_SERVER_RETURN_NULL)];
                 [[NSNotificationCenter defaultCenter]postNotificationName:EFUN_LOGIN_FAIL_IN
                                                                    object:nil];
                 return;
             }
             
             //系统打印
             NSString * systemFlag=[NSString stringWithFormat:@"efun_account_login_result:%@",resultStr];
             EFUN_LOGIN_LOG(systemFlag)
             //结果解析
             NSDictionary * resourtDic=[NSJSONSerialization JSONObjectWithData:resultData
                                                                       options:kNilOptions
                                                                         error:nil];
             //获取code参数
             NSString * codeStr=[resourtDic objectForKey:@"code"];
             //登陸成功
             if (codeStr.intValue==1000 || codeStr.intValue==1006)
             {
                 //紀錄上次登陸的用戶信息
                 [SPLoginFunction saveEncryptedUserInfoToUserDefaultWith:account
                                                               andPassword:password];
                 
                 //for the Platform
                 [SPLoginFunction saveUiserInfoForThePlatformWith:@"efun"
                                                         andLoginId:account
                                                          andUserId:[resourtDic objectForKey:@"userid"]];
                 
                 //记录登录成功的信息
                 [EfunUserInfoModel shareInfoModel].efunUID = [NSString stringWithFormat:@"%@",[resourtDic objectForKey:@"userid"]];
                 [EfunUserInfoModel shareInfoModel].timestamp = [resourtDic objectForKey:@"timestamp"];
                 [EfunUserInfoModel shareInfoModel].accessToken = [resourtDic objectForKey:@"accessToken"];
                 [[EfunUserInfoModel shareInfoModel] setLoginTypeWithStr:@"sp"];
                 
                 
                 //保存efunUserName
                 [SPLoginData defaultData].SPUserName=account;
                 
                 //發送廣播
                 [[NSNotificationCenter defaultCenter]postNotificationName:EFUN_LOGIN_SUCCESS_IN
                                                                    object:nil
                                                                  userInfo:resourtDic];
                 return;
             }
             //登陸失敗
             else if(codeStr.length==4)
             {
                 NSString * message=[resourtDic objectForKey:@"message"];
                 [EFUNAlertView showAlertWithMessage:message];
                 [[NSNotificationCenter defaultCenter]postNotificationName:EFUN_LOGIN_FAIL_IN
                                                                    object:nil];
                 return;
             }
             else
             {
                 [EFUNAlertView showAlertWithMessage:EFUN_GET_INFO(EFUN_TEXT_SERVER_RETURN_ERROR)];
                 [[NSNotificationCenter defaultCenter]postNotificationName:EFUN_LOGIN_FAIL_IN
                                                                    object:nil];
                 return;
             }
         }
         //服務器沒有反映
         else
         {
             EFUN_LOGIN_LOG(@"efun account login no net")
             [EFUNAlertView showAlertWithMessage:EFUN_GET_INFO(EFUN_TEXT_NO_NET)];
             [[NSNotificationCenter defaultCenter]postNotificationName:EFUN_LOGIN_FAIL_IN
                                                                object:nil];
             return;
         }
     }];
    
}

@end
