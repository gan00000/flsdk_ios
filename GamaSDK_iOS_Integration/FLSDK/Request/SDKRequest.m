//
//  SDKRequest.m

//
//  Created by ganyuanrong on 2020/7/20.
//  Copyright © 2020 . All rights reserved.
//

#import "SDKRequest.h"
#import "CCSDKDATA.h"
#import "SwitchResp.h"

@implementation SDKRequest

//手机区号获取
+(void)getAreaInfoWithSuccessBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                                errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock
{
    BJBaseHTTPEngine *configHTTPEngine = [[BJBaseHTTPEngine alloc] initWithBasePath_MMMethodMMM:[SDKRES getCdnUrl_MMMethodMMM]];
    [configHTTPEngine getRequestWithFunctionPath_MMMethodMMM:[NSString stringWithFormat:@"sdk/config/areaCode/areaInfo.json?t=%@", [SUtil getTimeStamp_MMMethodMMM]] params_MMMethodMMM:nil successBlock_MMMethodMMM:^(NSURLSessionDataTask *task, id responseData) {
        
        NSArray *responseArray = responseData;
        SDK_LOG(@"sdk areaCode info:%@",responseArray);
        if (responseArray) {
            [SdkUtil savePhoneAreaInfo_MMMethodMMM:responseArray];
        }
        
    } errorBlock_MMMethodMMM:^(NSURLSessionDataTask *task, NSError *error) {
        if (errorBlock) {
            errorBlock(nil);
        }
    }];
    
}


//https://www.meowplayer.com/sdk/config/jjcs/v1/version.json
#pragma mark - 获取登录配置
+(void)getSdkConfigWithSuccessBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                                errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock
{
    BJBaseHTTPEngine *configHTTPEngine = [[BJBaseHTTPEngine alloc] initWithBasePath_MMMethodMMM:[SDKRES getCdnUrl_MMMethodMMM]];
    [configHTTPEngine getRequestWithFunctionPath_MMMethodMMM:[NSString stringWithFormat:@"sdk/config/%@/v1/version.json?t=%@", GAME_CODE, [SUtil getTimeStamp_MMMethodMMM]] params_MMMethodMMM:nil successBlock_MMMethodMMM:^(NSURLSessionDataTask *task, id responseData) {
        
        NSDictionary *responseDict = responseData;
        SDK_LOG(@"sdk config:%@",responseDict);
//        ConfigModel *allVersion = [ConfigModel yy_modelWithDictionary:responseDict[wwwww_tag_wwwww_allVersion]];//需要分开解析
        NSArray<ConfigModel *> *allVersion = [NSArray yy_modelArrayWithClass:[ConfigModel class] json:responseDict[wwwww_tag_wwwww_allVersion]];
        NSArray<ConfigModel *> *subVersion = [NSArray yy_modelArrayWithClass:[ConfigModel class] json:responseDict[wwwww_tag_wwwww_subVersion]];
        UrlMode *urls = [UrlMode yy_modelWithDictionary:responseDict[wwwww_tag_wwwww_url]];
        
//        ConfigResponse *mCr = [ConfigResponse yy_modelWithDictionary:responseDict];
        
        ConfigResponse *mCr = [[ConfigResponse alloc] init];
        mCr.subVersion = subVersion;
        mCr.allVersion = allVersion;
        mCr.url = urls;
        SDK_DATA.urls = urls;
        if (mCr) {
            if (successBlock) {
                successBlock(mCr);
            }
            
            if (mCr.subVersion){
                
                for (ConfigModel *cm in mCr.subVersion) {
                    
                    if ([cm.version isEqualToString:[SUtil getBundleVersion_MMMethodMMM]] && [cm.packageName isEqualToString:[SUtil getBundleIdentifier_MMMethodMMM]]) {//匹配子版本开关
                        SDK_DATA.mConfigModel = cm;
                        return;
                    }
                }
            }
            
//            if (mCr.allVersion && [mCr.allVersion.packageName isEqualToString:[SUtil getBundleIdentifier_MMMethodMMM]]) {//先匹配所有版本开关
//                SDK_DATA.mConfigModel = mCr.allVersion;
//            }
            
            if (mCr.allVersion){
                
                for (ConfigModel *cm in mCr.allVersion) {
                    
                    if ([cm.packageName isEqualToString:[SUtil getBundleIdentifier_MMMethodMMM]]) {//匹配子版本开关
                        SDK_DATA.mConfigModel = cm;
                        return;
                    }
                }
            }
            
        }else {
//            BJError *errorObject = [BJError yy_modelWithDictionary:responseDict];
            if (errorBlock) {
                errorBlock(nil);
            }
        }
        
    } errorBlock_MMMethodMMM:^(NSURLSessionDataTask *task, NSError *error) {
        if (errorBlock) {
            errorBlock(nil);
        }
    }];
    
}


#pragma mark - 上报自己服务器一些事件
+(void)reportSdkEventWithEventName_MMMethodMMM:(NSString *)eventName successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                                errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock
{
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:[self appendCommParamsDic_MMMethodMMM]];
    NSString * timeStamp=[SUtil getTimeStamp_MMMethodMMM];
    NSDictionary *dic = nil;
    @try {
        dic = @{
            wwwww_tag_wwwww_eventName        :eventName,
            wwwww_tag_wwwww_appTime          :timeStamp,
            wwwww_tag_wwwww_gameCode         :[NSString stringWithFormat:@"%@", GAME_CODE],
            wwwww_tag_wwwww_userId          : SDK_DATA.mLoginResponse.data.userId ? : @"",
        };
        [params addEntriesFromDictionary:dic];
        
    } @catch (NSException *exception) {
        //[self _presentAlertWithException:exception andDictionary:dic];
    }
    
    SDK_LOG(@"reportSdkEvent start EventName:%@", eventName);
    BJBaseHTTPEngine *logHTTPEngine = [[BJBaseHTTPEngine alloc] initWithBasePath_MMMethodMMM:[SDKRES getLogUrl_MMMethodMMM]];
    
    [logHTTPEngine getRequestWithFunctionPath_MMMethodMMM:@"sdk/event/log" params_MMMethodMMM:params successBlock_MMMethodMMM:^(NSURLSessionDataTask *task, id responseData) {
        
        SDK_LOG(@"reportSdkEvent finish success EventName:%@", eventName);
        
        if (successBlock) {
            successBlock(responseData);
        }
        
    } errorBlock_MMMethodMMM:^(NSURLSessionDataTask *task, NSError *error) {
        
        SDK_LOG(@"reportSdkEvent finish error EventName:%@, errorMsg:%@", eventName, error.description);
        if (errorBlock) {
            errorBlock(nil);
        }
    }];
    
}


#pragma mark - 免注册
+(void)freeLoginOrRegister_MMMethodMMM:(NSString *)thirdId
                            successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                            errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock
{
    
    [self thirdLoginOrReg_MMMethodMMM:thirdId andThirdPlate_MMMethodMMM:LOGIN_TYPE_GUEST addOtherParams_MMMethodMMM:nil successBlock_MMMethodMMM:successBlock errorBlock_MMMethodMMM:errorBlock];
    
}

#pragma mark - 三方登录
+(void)thirdLoginOrReg_MMMethodMMM:(NSString *)thirdId
          andThirdPlate_MMMethodMMM:(NSString *)thirdPlate
         addOtherParams_MMMethodMMM:(NSDictionary *)otherParams
           successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
             errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock
{
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:[self appendCommParamsDic_MMMethodMMM]];
    if (otherParams) {
        [params addEntriesFromDictionary:otherParams];
    }
    
    //获取时间戳
    NSString * timeStamp=[SUtil getTimeStamp_MMMethodMMM];
    
    BOOL isGuestLogin = [thirdPlate isEqualToString:LOGIN_TYPE_GUEST];
    // 签名顺序不能变
    NSMutableString * md5str= [[NSMutableString alloc] init];
    [md5str appendFormat:@"%@",APP_KEY]; //AppKey
    [md5str appendFormat:@"%@",timeStamp]; //时间戳
    [md5str appendFormat:@"%@",thirdId]; //用户名
    [md5str appendFormat:@"%@",GAME_CODE];//gamecode
//    isGuestLogin ? : [md5str appendFormat:@"%@",thirdPlate];
    NSString * md5SignStr=[SUtil getMD5StrFromString_MMMethodMMM:md5str];
    
    
    NSDictionary *dic = nil;
    
    // NSArray *expectDictArr = nil;
    @try {
        dic = @{
            wwwww_tag_wwwww_signature        :[md5SignStr lowercaseString],
            wwwww_tag_wwwww_timestamp        :timeStamp,
            wwwww_tag_wwwww_gameCode         :[NSString stringWithFormat:@"%@", GAME_CODE],
            wwwww_tag_wwwww_registPlatform   :thirdPlate,
            wwwww_tag_wwwww_loginMode        :thirdPlate,
            wwwww_tag_wwwww_thirdPlatId      :thirdId,
            wwwww_tag_wwwww_thirdLoginId     :thirdId,
        };
        [params addEntriesFromDictionary:dic];
        
    } @catch (NSException *exception) {
        //[self _presentAlertWithException:exception andDictionary:dic];
    }
    
    
    NSString *requestUrlPath = @"";
    if (isGuestLogin) {
        requestUrlPath = api_login_guest;
    }else{
        requestUrlPath = api_login_third;
    }
    [HttpServiceEngineLogin postRequestWithFunctionPath_MMMethodMMM:requestUrlPath params_MMMethodMMM:params successBlock_MMMethodMMM:successBlock errorBlock_MMMethodMMM:errorBlock];
}

#pragma mark - 登录
+(void)doLoginWithAccount_MMMethodMMM:(NSString *)userName
              andPassword_MMMethodMMM:(NSString *)password
                 otherDic_MMMethodMMM:(NSDictionary *)otherParamsDic
             successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
               errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock

{
    
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:[self appendCommParamsDic_MMMethodMMM]];
    if (otherParamsDic) {
        [params addEntriesFromDictionary:otherParamsDic];
    }
    userName = [userName lowercaseString];
    NSString *timestamp = [SUtil getTimeStamp_MMMethodMMM];
    //获取md5加密的值
    NSMutableString * md5str=[[NSMutableString alloc]init];
    [md5str appendFormat:@"%@",APP_KEY]; //AppKey
    [md5str appendFormat:@"%@",timestamp]; //时间戳
    [md5str appendFormat:@"%@",userName]; //用户名
//    [md5str appendFormat:@"%@",[[GamaFunction getMD5StrFromString_MMMethodMMM:password] lowercaseString]]; //用户密码
    [md5str appendFormat:@"%@",GAME_CODE];//gamecode
    NSString * md5SignStr=[SUtil getMD5StrFromString_MMMethodMMM:md5str];
    
    NSDictionary *dic = nil;
    @try {
        dic = @{
            wwwww_tag_wwwww_signature        :[md5SignStr lowercaseString],
            wwwww_tag_wwwww_timestamp        :timestamp,
            wwwww_tag_wwwww_gameCode         :[NSString stringWithFormat:@"%@",GAME_CODE],
            wwwww_tag_wwwww_loginId             :userName,
            wwwww_tag_wwwww_password              :[[SUtil getMD5StrFromString_MMMethodMMM:password] lowercaseString],
            wwwww_tag_wwwww_registPlatform   :LOGIN_TYPE_SELF,
            
        };
        
        [params addEntriesFromDictionary:dic];
    } @catch (NSException *exception) {
        
    }
    [HttpServiceEngineLogin postRequestWithFunctionPath_MMMethodMMM:api_login_account params_MMMethodMMM:params successBlock_MMMethodMMM:successBlock errorBlock_MMMethodMMM:errorBlock];
}

#pragma mark - 获取验证码
+ (void)requestVfCode_MMMethodMMM:(NSString *)phoneArea
                                 phoneNumber_MMMethodMMM:(NSString *)phoneN
                                 email_MMMethodMMM:(NSString *)email
                                  interfaces_MMMethodMMM:(NSString *)interfaces  //注册1 绑定2
                                    otherDic_MMMethodMMM:(NSDictionary *)otherParamsDic
                                successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                                  errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock
{
    
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:[self appendCommParamsDic_MMMethodMMM]];
    if (otherParamsDic) {
        [params addEntriesFromDictionary:otherParamsDic];
    }
    
    NSString *vf_acccount = phoneN;
    if (!vf_acccount || [vf_acccount isEqualToString:@""]) {
        vf_acccount = email;
    }
    
    NSString *timeStamp = [SUtil getTimeStamp_MMMethodMMM];
    NSMutableString * md5str=[[NSMutableString alloc]init];
    [md5str appendFormat:@"%@",APP_KEY]; //AppKey
    [md5str appendFormat:@"%@",timeStamp]; //时间戳
    [md5str appendFormat:@"%@",vf_acccount];
    [md5str appendFormat:@"%@",GAME_CODE];//gamecode
    
    NSString * md5SignStr=[SUtil getMD5StrFromString_MMMethodMMM:md5str];
    
    //字典未能设置nil
    NSDictionary *dic = @{wwwww_tag_wwwww_phone:phoneN,
                          wwwww_tag_wwwww_phoneAreaCode:phoneArea,
                          wwwww_tag_wwwww_email:email,
                          wwwww_tag_wwwww_interfaces:interfaces,
                          wwwww_tag_wwwww_gameCode:[NSString stringWithFormat:@"%@",GAME_CODE],
                          wwwww_tag_wwwww_timestamp:timeStamp,
                          wwwww_tag_wwwww_signature:md5SignStr
    };
    
    [params addEntriesFromDictionary:dic];
    [HttpServiceEngineLogin postRequestWithFunctionPath_MMMethodMMM:api_get_vfCode params_MMMethodMMM:params successBlock_MMMethodMMM:successBlock errorBlock_MMMethodMMM:errorBlock];
    
}

#pragma mark - 游戏内获取手机验证码
+ (void)requestMobileVfCode_MMMethodMMM:(NSString *)phoneArea
                                 phoneNumber_MMMethodMMM:(NSString *)phoneN
                                 email_MMMethodMMM:(NSString *)email
                                    otherDic_MMMethodMMM:(NSDictionary *)otherParamsDic
                                successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                                  errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock
{
    
    NSMutableDictionary *params = [self appendGameParamsDic_MMMethodMMM];
    if (otherParamsDic) {
        [params addEntriesFromDictionary:otherParamsDic];
    }
    
    NSString *vf_acccount = phoneN;
    if (!vf_acccount || [vf_acccount isEqualToString:@""]) {
        vf_acccount = email;
    }
    
//    NSString *timeStamp = [SUtil getTimeStamp_MMMethodMMM];
//    NSMutableString * md5str=[[NSMutableString alloc]init];
//    [md5str appendFormat:@"%@",APP_KEY]; //AppKey
//    [md5str appendFormat:@"%@",timeStamp]; //时间戳
//    [md5str appendFormat:@"%@",vf_acccount];
//    [md5str appendFormat:@"%@",GAME_CODE];//gamecode
//
//    NSString * md5SignStr=[SUtil getMD5StrFromString_MMMethodMMM:md5str];
    
    //字典未能设置nil
    NSDictionary *dic = @{wwwww_tag_wwwww_telephone:phoneN,
                          wwwww_tag_wwwww_areaCode:phoneArea,
                          wwwww_tag_wwwww_email:email,
    };
    
    [params addEntriesFromDictionary:dic];
    [HttpServiceEngineLogin postRequestWithFunctionPath_MMMethodMMM:api_sendMobileVcode params_MMMethodMMM:params successBlock_MMMethodMMM:successBlock errorBlock_MMMethodMMM:errorBlock];
    
}

#pragma mark - 游戏内绑定手机
+ (void)bindAccountPhone_MMMethodMMM:(NSString *)phoneArea
                                 phoneNumber_MMMethodMMM:(NSString *)phoneN
                      vCode_MMMethodMMM:(NSString *)vCode
                                    otherDic_MMMethodMMM:(NSDictionary *)otherParamsDic
                                successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                                  errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock
{
    
    NSMutableDictionary *params = [self appendGameParamsDic_MMMethodMMM];
    if (otherParamsDic) {
        [params addEntriesFromDictionary:otherParamsDic];
    }
    
    //字典不能设置nil
    NSDictionary *dic = @{wwwww_tag_wwwww_telephone:phoneN ? : @"",
                          wwwww_tag_wwwww_areaCode:phoneArea ? : @"",
                          wwwww_tag_wwwww_vCode:vCode ? : @"",
    };
    
    [params addEntriesFromDictionary:dic];
    [HttpServiceEngineLogin postRequestWithFunctionPath_MMMethodMMM:api_bind_phone params_MMMethodMMM:params successBlock_MMMethodMMM:successBlock errorBlock_MMMethodMMM:errorBlock];
    
}



#pragma mark - sdk基本参数
+ (NSDictionary *)appendCommParamsDic_MMMethodMMM
{
    NSDictionary * _commDic =
    @{
        // 公共的参数拼接
        wwwww_tag_wwwww_packageName      :     [SUtil getBundleIdentifier_MMMethodMMM],
        wwwww_tag_wwwww_adId             :     [[SUtil getIdfa_MMMethodMMM]       lowercaseString]? : @"",
        wwwww_tag_wwwww_idfa             :     [[SUtil getIdfa_MMMethodMMM]       lowercaseString]? : @"",
        wwwww_tag_wwwww_uuid             :     [[SUtil getGamaUUID_MMMethodMMM]     lowercaseString]? : @"",
        wwwww_tag_wwwww_versionName      :     [SUtil getBundleShortVersionString_MMMethodMMM]? : @"",
        wwwww_tag_wwwww_versionCode      :     [SUtil getBundleVersion_MMMethodMMM]? : @"",
        wwwww_tag_wwwww_systemVersion    :     [SUtil getSystemVersion_MMMethodMMM]? : @"",
        wwwww_tag_wwwww_osVersion        :     [SUtil getSystemVersion_MMMethodMMM]? : @"",
        wwwww_tag_wwwww_deviceType       :     [SUtil getDeviceType_MMMethodMMM]? : @"",
        wwwww_tag_wwwww_os               :     wwwww_tag_wwwww_ios, //os=ios
        wwwww_tag_wwwww_gameLanguage     :     GAME_LANGUAGE? : @"",
        wwwww_tag_wwwww_osLanguage       :     [SUtil getPreferredLanguage_MMMethodMMM]? : @"",
        
        //      wwwww_tag_wwwww_loginTimestamp   :     [GamaUserInfoModel shareInfoModel].timestamp ? : @"",
        //      wwwww_tag_wwwww_accessToken      :     [GamaUserInfoModel shareInfoModel].accessToken ? : @"",
        wwwww_tag_wwwww_uniqueId         :     [[SUtil getGamaUUID_MMMethodMMM] lowercaseString]? : @"",
        
        wwwww_tag_wwwww_platform       :   wwwww_tag_wwwww_ios,
        wwwww_tag_wwwww_appsflyerId     :   [[AppsFlyerLib shared] getAppsFlyerUID]? :@"",
        wwwww_tag_wwwww_layout     :   IS_PORTRAIT ? @"v":@"h", //横竖屏参数
    
    };
    
    return _commDic;
}

#pragma mark - sdk基本参数 + 角色相关数值参数
+ (NSMutableDictionary *)appendGameParamsDic_MMMethodMMM
{
    
    NSMutableDictionary *wDic = [[NSMutableDictionary alloc] initWithDictionary: [self appendCommParamsDic_MMMethodMMM]];
    @try {
        
        AccountModel *accountModel = SDK_DATA.mLoginResponse.data;
        GameUserModel *gameUserModel = SDK_DATA.gameUserModel;
        NSString *roleNameTemp = gameUserModel.roleName ? : @"";
        NSString *serverNameTemp = gameUserModel.serverName ? : @"";
        NSDictionary *dic = @{
            
            wwwww_tag_wwwww_gameCode         :GAME_CODE,
            wwwww_tag_wwwww_userId           :accountModel.userId ? : @"",
            wwwww_tag_wwwww_loginAccessToken  :accountModel.token ? : @"",
            wwwww_tag_wwwww_loginTimestamp   :accountModel.timestamp ? : @"",
//            wwwww_tag_wwwww_thirdPlatId      :accountModel.thirdId ? : @"",
//            wwwww_tag_wwwww_thirdLoginId     :accountModel.thirdId ? : @"",
            
//            wwwww_tag_wwwww_registPlatform   :accountModel.loginType ? : @"",
//            wwwww_tag_wwwww_loginMode        :accountModel.loginType ? : @"",
            
            wwwww_tag_wwwww_serverCode           :gameUserModel.serverCode ? : @"",
            wwwww_tag_wwwww_serverName           : [serverNameTemp urlEncode_MMMethodMMM],
            wwwww_tag_wwwww_roleId           :gameUserModel.roleID ? : @"",
            wwwww_tag_wwwww_roleName           :[roleNameTemp urlEncode_MMMethodMMM],
            wwwww_tag_wwwww_roleLevel           :gameUserModel.roleLevel ? : @"",
            wwwww_tag_wwwww_roleVipLevel           :gameUserModel.roleVipLevel ? : @"",

        };
        
        [wDic addEntriesFromDictionary:dic];
        
    } @catch (NSException *exception) {
        NSLog(@"exception:%@",exception.description);
    }
    return wDic;
    
}

#pragma mark - 注册账号
+(void)doRegisterAccountWithUserName_MMMethodMMM:(NSString *)userName
                         andPassword_MMMethodMMM:(NSString *)password
                       phoneAreaCode_MMMethodMMM:(NSString *)phoneAreaCode
                         phoneNumber_MMMethodMMM:(NSString *)phoneN
                              vfCode_MMMethodMMM:(NSString *)vfCode
                          interfaces_MMMethodMMM:(NSString *)interfaces
                      otherParamsDic_MMMethodMMM:(NSDictionary *)otherParamsDic
                        successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                          errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock
{
    
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:[self appendCommParamsDic_MMMethodMMM]];
    if (otherParamsDic) {
        [params addEntriesFromDictionary:otherParamsDic];
    }
    
    userName = !userName?@"":userName;
    userName = [userName lowercaseString];
    //获取时间戳
    NSString * timeStamp=[SUtil getTimeStamp_MMMethodMMM];
    //获取md5加密的值
    NSMutableString * md5str=[[NSMutableString alloc]init];
    [md5str appendFormat:@"%@",APP_KEY]; //AppKey
    [md5str appendFormat:@"%@",timeStamp]; //时间戳
    [md5str appendFormat:@"%@",userName]; //用户名
//    [md5str appendFormat:@"%@",[[GamaFunction getMD5StrFromString_MMMethodMMM:password] lowercaseString]]; //用户密码
    [md5str appendFormat:@"%@",GAME_CODE];
    NSString * md5SignStr=[SUtil getMD5StrFromString_MMMethodMMM:md5str];
    
    NSDictionary *dic = nil;
    
    @try {
        dic = @{
            wwwww_tag_wwwww_signature        :md5SignStr,
            wwwww_tag_wwwww_timestamp        :timeStamp,
            wwwww_tag_wwwww_gameCode         :GAME_CODE,
            wwwww_tag_wwwww_loginId          :userName,
            wwwww_tag_wwwww_password         :[SUtil getMD5StrFromString_MMMethodMMM:password],
            wwwww_tag_wwwww_phoneAreaCode    :phoneAreaCode,
            wwwww_tag_wwwww_phone            :phoneN,
            wwwww_tag_wwwww_vfCode           :vfCode,
            wwwww_tag_wwwww_registPlatform   :LOGIN_TYPE_SELF,
        };
        [params addEntriesFromDictionary:dic];
    } @catch (NSException *exception) {
        
    }
    
    
    [HttpServiceEngineLogin postRequestWithFunctionPath_MMMethodMMM:api_login_register params_MMMethodMMM:params successBlock_MMMethodMMM:successBlock errorBlock_MMMethodMMM:errorBlock];
    
}


+(void)doChangePasswordWithUserName_MMMethodMMM:(NSString *)userName
                     andOldPassword_MMMethodMMM:(NSString *)oldPassword
                     andNewPassword_MMMethodMMM:(NSString *)newPassword
                     otherParamsDic_MMMethodMMM:(NSDictionary *)otherParamsDic
                       successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                         errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock
{
    
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:[self appendCommParamsDic_MMMethodMMM]];
    if (otherParamsDic) {
        [params addEntriesFromDictionary:otherParamsDic];
    }
    
    //获取时间戳
    NSString * timeStamp=[SUtil getTimeStamp_MMMethodMMM];
    userName = [userName lowercaseString];
    
    //获取md5加密的值gamesPojo.getAppKey() + timestamp + name + pwd + newPwd + gameCode;
    NSMutableString * md5str=[[NSMutableString alloc]init];
    [md5str appendString:APP_KEY]; //AppKey
    [md5str appendString:timeStamp]; //时间戳
    [md5str appendFormat:@"%@",userName]; //用户名
//    [md5str appendString:[[GamaFunction getMD5StrFromString_MMMethodMMM:oldPassword] lowercaseString]]; //用户密码
//    [md5str appendString:[[GamaFunction getMD5StrFromString_MMMethodMMM:newPassword] lowercaseString]]; //新密码
    [md5str appendString:GAME_CODE]; //gamecode
    NSString * md5SignStr=[SUtil getMD5StrFromString_MMMethodMMM:md5str];
    
    NSDictionary *dic = nil;
    @try {
        dic = @{
            wwwww_tag_wwwww_signature        :md5SignStr,
            wwwww_tag_wwwww_timestamp        :timeStamp,
            wwwww_tag_wwwww_gameCode         :GAME_CODE,
            wwwww_tag_wwwww_name             :userName,
            wwwww_tag_wwwww_loginId          :userName,
            wwwww_tag_wwwww_oldPwd           :[[SUtil getMD5StrFromString_MMMethodMMM:oldPassword] lowercaseString],
            wwwww_tag_wwwww_newPwd           :[[SUtil getMD5StrFromString_MMMethodMMM:newPassword] lowercaseString],
            wwwww_tag_wwwww_registPlatform   :LOGIN_TYPE_SELF,
        };
        
        [params addEntriesFromDictionary:dic];
        
    } @catch (NSException *exception) {
        
    }
    
    [HttpServiceEngineLogin postRequestWithFunctionPath_MMMethodMMM:api_change_pwd params_MMMethodMMM:params successBlock_MMMethodMMM:successBlock errorBlock_MMMethodMMM:errorBlock];
    
}


+(void)doForgotPasswordWithUserName_MMMethodMMM:(NSString *)userName
                     phoneAreaCode_MMMethodMMM:(NSString *)phoneAreaCode
                       phoneNumber_MMMethodMMM:(NSString *)phoneN
                             email_MMMethodMMM:(NSString *)email
                            vfCode_MMMethodMMM:(NSString *)vfCode
                        interfaces_MMMethodMMM:(NSString *)interfaces
                    otherParamsDic_MMMethodMMM:(NSDictionary *)otherParamsDic
                      successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                        errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock
{
    
    
    
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:[self appendCommParamsDic_MMMethodMMM]];
    if (otherParamsDic) {
        [params addEntriesFromDictionary:otherParamsDic];
    }
    
    /*-----------获取参数----------*/
    //获取时间戳
    NSString * timeStamp=[SUtil getTimeStamp_MMMethodMMM];
    userName = userName?userName:@"";
    userName = [userName lowercaseString];
    email = [email lowercaseString];
    
    NSMutableString * md5str=[[NSMutableString alloc]init];
    [md5str appendString:APP_KEY]; //AppKey
    [md5str appendString:timeStamp]; //时间戳
    [md5str appendString:email]; //用户名
    [md5str appendString: GAME_CODE]; //gamecode
    NSString * md5SignStr=[SUtil getMD5StrFromString_MMMethodMMM:md5str];
    
    NSDictionary *dic = nil;
    
    @try {
        dic = @{
            wwwww_tag_wwwww_signature        :md5SignStr,
            wwwww_tag_wwwww_timestamp        :timeStamp,
            wwwww_tag_wwwww_gameCode         :GAME_CODE,
            wwwww_tag_wwwww_name             :userName,
            wwwww_tag_wwwww_phoneAreaCode    :phoneAreaCode,
            wwwww_tag_wwwww_phone            :phoneN,
            wwwww_tag_wwwww_vfCode           :vfCode,
            wwwww_tag_wwwww_verifyCode       :vfCode,
            wwwww_tag_wwwww_email            :email,
            wwwww_tag_wwwww_interfaces       :interfaces,
        };
        
        [params addEntriesFromDictionary:dic];
    } @catch (NSException *exception) {
        
    }
    
    [HttpServiceEngineLogin postRequestWithFunctionPath_MMMethodMMM:api_forgot_pwd params_MMMethodMMM:params successBlock_MMMethodMMM:successBlock errorBlock_MMMethodMMM:errorBlock];
    
}


#pragma mark - 绑定账号
+ (void)doAccountBindingWithUserName_MMMethodMMM:(NSString *)userName
                            password_MMMethodMMM:(NSString *)password
                       phoneAreaCode_MMMethodMMM:(NSString *)phoneAreaCode
                         phoneNumber_MMMethodMMM:(NSString *)phoneN
                              vfCode_MMMethodMMM:(NSString *)vfCode
                               email_MMMethodMMM:(NSString *)email
                             thirdId_MMMethodMMM:(NSString *)thirdId
                          thirdPlate_MMMethodMMM:(NSString *)thirdPlate
                      otherParamsDic_MMMethodMMM:(NSDictionary *)otherParamsDic
                        successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                          errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock
{
    //@{wwwww_tag_wwwww_vfCode: vfCode,wwwww_tag_wwwww_phone: phoneNum,wwwww_tag_wwwww_phoneAreaCode: areaCode}
    NSMutableDictionary *params = [self appendGameParamsDic_MMMethodMMM];
    if (otherParamsDic) {
        [params addEntriesFromDictionary:otherParamsDic];
    }
    
    userName = [userName lowercaseString];
    
    //获取时间戳
    NSString * timeStamp=[SUtil getTimeStamp_MMMethodMMM];
    //获取md5加密的值  appkey+ts+name+pwd+gamecode+thirdPlatId+thirdPlatform
    NSMutableString * md5str=[[NSMutableString alloc] init];
    [md5str appendFormat:@"%@",APP_KEY]; //AppKey
    [md5str appendFormat:@"%@",timeStamp]; //时间戳
    [md5str appendFormat:@"%@",userName]; //用户名
//    [md5str appendFormat:@"%@",[[GamaFunction getMD5StrFromString_MMMethodMMM:password] lowercaseString]]; //用户密码
    [md5str appendFormat:@"%@",GAME_CODE];
//    [md5str appendFormat:@"%@",[thirdId lowercaseString]];//thirdid
//    [md5str appendFormat:@"%@",[thirdPlate lowercaseString]];//thirdplatform
    
    NSString * md5SignStr=[SUtil getMD5StrFromString_MMMethodMMM:md5str];
    
    @try {
        NSDictionary *dic = @{
            wwwww_tag_wwwww_signature        :[md5SignStr lowercaseString],
            wwwww_tag_wwwww_timestamp        :timeStamp,
            wwwww_tag_wwwww_gameCode         :GAME_CODE,
            wwwww_tag_wwwww_name             :userName,
            wwwww_tag_wwwww_loginId          :userName,
            wwwww_tag_wwwww_password         :[[SUtil getMD5StrFromString_MMMethodMMM:password] lowercaseString],
            wwwww_tag_wwwww_thirdPlatId      :thirdId,
            wwwww_tag_wwwww_thirdLoginId     :thirdId,
        
            wwwww_tag_wwwww_registPlatform   :thirdPlate,
            wwwww_tag_wwwww_loginMode        :thirdPlate,
            
            wwwww_tag_wwwww_interfaces       :wwwww_tag_wwwww_2,
            wwwww_tag_wwwww_phoneAreaCode    :phoneAreaCode,
            wwwww_tag_wwwww_phone            :phoneN,
            wwwww_tag_wwwww_vfCode           :vfCode,
        };
        
        [params addEntriesFromDictionary:dic];
        
    } @catch (NSException *exception) {
        
    }
    
    [HttpServiceEngineLogin postRequestWithFunctionPath_MMMethodMMM:api_bind_account params_MMMethodMMM:params successBlock_MMMethodMMM:successBlock errorBlock_MMMethodMMM:errorBlock];
    
}

+ (void)requestDeleteUserAccount_MMMethodMMM:(AccountModel *)accountMode
                      otherParamsDic_MMMethodMMM:(NSDictionary *)otherParamsDic
                        successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                          errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock
{
    //@{wwwww_tag_wwwww_vfCode: vfCode,wwwww_tag_wwwww_phone: phoneNum,wwwww_tag_wwwww_phoneAreaCode: areaCode}
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:[self appendCommParamsDic_MMMethodMMM]];
    if (otherParamsDic) {
        [params addEntriesFromDictionary:otherParamsDic];
    }
    
    //获取时间戳
    NSString * timeStamp=[SUtil getTimeStamp_MMMethodMMM];
    //获取md5加密的值  appkey+ts+name+pwd+gamecode+thirdPlatId+thirdPlatform
    NSMutableString * md5str=[[NSMutableString alloc] init];
    [md5str appendFormat:@"%@",APP_KEY]; //AppKey
    [md5str appendFormat:@"%@",timeStamp]; //时间戳
    [md5str appendFormat:@"%@",accountMode.userId]; //用户名
//    [md5str appendFormat:@"%@",[[GamaFunction getMD5StrFromString_MMMethodMMM:password] lowercaseString]]; //用户密码
    [md5str appendFormat:@"%@",GAME_CODE];
//    [md5str appendFormat:@"%@",[thirdId lowercaseString]];//thirdid
//    [md5str appendFormat:@"%@",[thirdPlate lowercaseString]];//thirdplatform
    
    NSString * md5SignStr=[SUtil getMD5StrFromString_MMMethodMMM:md5str];
    
    @try {
        NSDictionary *dic = @{
            wwwww_tag_wwwww_signature        :[md5SignStr lowercaseString],
            wwwww_tag_wwwww_timestamp        :timeStamp,
            wwwww_tag_wwwww_gameCode         :GAME_CODE,
            wwwww_tag_wwwww_userId           :accountMode.userId,
            wwwww_tag_wwwww_loginAccessToken  :accountMode.token,
            wwwww_tag_wwwww_loginTimestamp   :accountMode.timestamp,
            wwwww_tag_wwwww_thirdPlatId      :accountMode.thirdId,
            wwwww_tag_wwwww_thirdLoginId     :accountMode.thirdId,
        
            wwwww_tag_wwwww_registPlatform   :accountMode.loginType,
            wwwww_tag_wwwww_loginMode        :accountMode.loginType,
            
            wwwww_tag_wwwww_interfaces       :wwwww_tag_wwwww_2,
            wwwww_tag_wwwww_phoneAreaCode    :@"",
            wwwww_tag_wwwww_phone            :@"",
            wwwww_tag_wwwww_vfCode           :@"",
        };
        
        [params addEntriesFromDictionary:dic];
        
    } @catch (NSException *exception) {
        
    }
    
    [HttpServiceEngineLogin postRequestWithFunctionPath_MMMethodMMM:api_delete_account params_MMMethodMMM:params successBlock_MMMethodMMM:successBlock errorBlock_MMMethodMMM:errorBlock];
    
}

#pragma mark - 創單
+ (void)createOrderWithproductId_MMMethodMMM:(NSString *)productId
            cpOrderId_MMMethodMMM:(NSString *)cpOrderId
                extra_MMMethodMMM:(NSString *)extra
             gameInfo_MMMethodMMM:(GameUserModel*)gameUserModel
         accountModel_MMMethodMMM:(AccountModel*) accountModel
                      otherParamsDic_MMMethodMMM:(NSDictionary *)otherParamsDic
                        successBlock_MMMethodMMM:(PayServiceSuccessBlock)successBlock
                          errorBlock_MMMethodMMM:(PayServiceErrorBlock)errorBlock
{
    //@{wwwww_tag_wwwww_vfCode: vfCode,wwwww_tag_wwwww_phone: phoneNum,wwwww_tag_wwwww_phoneAreaCode: areaCode}
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:[self appendCommParamsDic_MMMethodMMM]];
    if (otherParamsDic) {
        [params addEntriesFromDictionary:otherParamsDic];
    }
    
    //获取时间戳
    NSString * timeStamp=[SUtil getTimeStamp_MMMethodMMM];
    //获取md5加密的值  appkey+ts+name+pwd+gamecode+thirdPlatId+thirdPlatform
    NSMutableString * md5str=[[NSMutableString alloc] init];
    [md5str appendFormat:@"%@",APP_KEY]; //AppKey
    [md5str appendFormat:@"%@",GAME_CODE];
    [md5str appendFormat:@"%@",accountModel.userId]; //用户名
    [md5str appendFormat:@"%@",timeStamp]; //时间戳
    
//    [md5str appendFormat:@"%@",[[GamaFunction getMD5StrFromString_MMMethodMMM:password] lowercaseString]]; //用户密码
    
//    [md5str appendFormat:@"%@",[thirdId lowercaseString]];//thirdid
//    [md5str appendFormat:@"%@",[thirdPlate lowercaseString]];//thirdplatform
    
    NSString *md5SignStr=[SUtil getMD5StrFromString_MMMethodMMM:md5str];
    NSString *roleNameTemp = gameUserModel.roleName ? : @"";
    NSString *serverNameTemp = gameUserModel.serverName ? : @"";
    
    @try {
        NSDictionary *dic = @{
            wwwww_tag_wwwww_signature        :[md5SignStr lowercaseString],
            wwwww_tag_wwwww_timestamp        :timeStamp,
            wwwww_tag_wwwww_gameCode         :GAME_CODE,
            wwwww_tag_wwwww_userId           :accountModel.userId,
            wwwww_tag_wwwww_loginAccessToken  :accountModel.token ? : @"",
            wwwww_tag_wwwww_loginTimestamp   :accountModel.timestamp ? : @"",
            wwwww_tag_wwwww_thirdPlatId      :accountModel.thirdId ? : @"",
            wwwww_tag_wwwww_thirdLoginId     :accountModel.thirdId ? : @"",
            
            wwwww_tag_wwwww_registPlatform   :accountModel.loginType ? : @"",
            wwwww_tag_wwwww_loginMode        :accountModel.loginType ? : @"",
            
            wwwww_tag_wwwww_payType          :wwwww_tag_wwwww_apple,
            wwwww_tag_wwwww_mode             :wwwww_tag_wwwww_apple,//支付方式
            wwwww_tag_wwwww_productId           :productId,
            wwwww_tag_wwwww_extra           :extra ? : @"",
            wwwww_tag_wwwww_cpOrderId         :cpOrderId,
            wwwww_tag_wwwww_serverCode           :gameUserModel.serverCode,
            wwwww_tag_wwwww_serverName           :[serverNameTemp urlEncode_MMMethodMMM],
            wwwww_tag_wwwww_roleId           :gameUserModel.roleID,
            wwwww_tag_wwwww_roleName           : [roleNameTemp urlEncode_MMMethodMMM],
            wwwww_tag_wwwww_roleLevel           :gameUserModel.roleLevel ? : @"",
            wwwww_tag_wwwww_roleVipLevel           :gameUserModel.roleVipLevel ? : @"",

        };
        
        [params addEntriesFromDictionary:dic];
        
    } @catch (NSException *exception) {
        NSLog(@"exception:%@",exception.description);
    }
    
    [HttpServiceEnginePay postRequestWithFunctionPath_MMMethodMMM:api_order_create params_MMMethodMMM:params successBlock_MMMethodMMM:successBlock errorBlock_MMMethodMMM:errorBlock];
    
}

+ (void)paymentWithTransactionId_MMMethodMMM:(NSString *)transactionId
                     receiptData_MMMethodMMM:(NSString *)receiptData
                         orderId_MMMethodMMM:(NSString *)orderId
                         reissue_MMMethodMMM:(NSString *)reissue
                        gameInfo_MMMethodMMM:(GameUserModel*)gameUserModel
                    accountModel_MMMethodMMM:(AccountModel*) accountModel
                      otherParamsDic_MMMethodMMM:(NSDictionary *)otherParamsDic
                        successBlock_MMMethodMMM:(PayServiceSuccessBlock)successBlock
                          errorBlock_MMMethodMMM:(PayServiceErrorBlock)errorBlock
{
    //@{wwwww_tag_wwwww_vfCode: vfCode,wwwww_tag_wwwww_phone: phoneNum,wwwww_tag_wwwww_phoneAreaCode: areaCode}
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:[self appendCommParamsDic_MMMethodMMM]];
    if (otherParamsDic) {
        [params addEntriesFromDictionary:otherParamsDic];
    }
    
    //获取时间戳
    NSString * timeStamp=[SUtil getTimeStamp_MMMethodMMM];
    //获取md5加密的值  appkey+ts+name+pwd+gamecode+thirdPlatId+thirdPlatform
    NSMutableString * md5str=[[NSMutableString alloc] init];
    [md5str appendFormat:@"%@",APP_KEY]; //AppKey
    [md5str appendFormat:@"%@",GAME_CODE];
    [md5str appendFormat:@"%@",accountModel.userId]; //用户名
    [md5str appendFormat:@"%@",timeStamp]; //时间戳
    
//    [md5str appendFormat:@"%@",[[GamaFunction getMD5StrFromString_MMMethodMMM:password] lowercaseString]]; //用户密码
    
//    [md5str appendFormat:@"%@",[thirdId lowercaseString]];//thirdid
//    [md5str appendFormat:@"%@",[thirdPlate lowercaseString]];//thirdplatform
    
    NSString * md5SignStr=[SUtil getMD5StrFromString_MMMethodMMM:md5str];
    
    @try {
        NSDictionary *dic = @{
            wwwww_tag_wwwww_signature        :[md5SignStr lowercaseString],
            wwwww_tag_wwwww_timestamp        :timeStamp,
            wwwww_tag_wwwww_gameCode         :GAME_CODE,
            wwwww_tag_wwwww_userId           :accountModel.userId,
            
            wwwww_tag_wwwww_orderId           :orderId,
            wwwww_tag_wwwww_transactionId      :transactionId,
            wwwww_tag_wwwww_receiptData        :receiptData,
            
            wwwww_tag_wwwww_loginAccessToken  :accountModel.token,
            wwwww_tag_wwwww_loginTimestamp   :accountModel.timestamp,
            
            wwwww_tag_wwwww_payType          :wwwww_tag_wwwww_apple,
            wwwww_tag_wwwww_mode             :wwwww_tag_wwwww_apple,//支付方式
            wwwww_tag_wwwww_reissue             :reissue,//是否是补发调用

        };
        
        [params addEntriesFromDictionary:dic];
        
    } @catch (NSException *exception) {
        NSLog(@"exception:%@",exception.description);
    }
    
    [HttpServiceEnginePay postRequestWithFunctionPath_MMMethodMMM:api_payment params_MMMethodMMM:params successBlock_MMMethodMMM:successBlock errorBlock_MMMethodMMM:errorBlock];
    
}

+ (void)checkPayChannelWithSuccessBlock_MMMethodMMM:(NSString *)productId
                              cpOrderId_MMMethodMMM:(NSString *)cpOrderId
                                  extra_MMMethodMMM:(NSString *)extra
                               gameInfo_MMMethodMMM:(GameUserModel*)gameUserModel
                           accountModel_MMMethodMMM:(AccountModel*) accountModel
                         otherParamsDic_MMMethodMMM:(NSDictionary *)otherParamsDic
                           successBlock_MMMethodMMM:(PayServiceSuccessBlock)successBlock
                             errorBlock_MMMethodMMM:(PayServiceErrorBlock)errorBlock{
    
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:[self appendCommParamsDic_MMMethodMMM]];
    if (otherParamsDic) {
        [params addEntriesFromDictionary:otherParamsDic];
    }
    
    //获取时间戳
    NSString * timeStamp=[SUtil getTimeStamp_MMMethodMMM];
    //获取md5加密的值  appkey+ts+name+pwd+gamecode+thirdPlatId+thirdPlatform
    NSMutableString * md5str=[[NSMutableString alloc] init];
    [md5str appendFormat:@"%@",APP_KEY]; //AppKey
    [md5str appendFormat:@"%@",GAME_CODE];
    [md5str appendFormat:@"%@",accountModel.userId]; //用户名
    [md5str appendFormat:@"%@",timeStamp]; //时间戳
    
    //    [md5str appendFormat:@"%@",[[GamaFunction getMD5StrFromString_MMMethodMMM:password] lowercaseString]]; //用户密码
    
    //    [md5str appendFormat:@"%@",[thirdId lowercaseString]];//thirdid
    //    [md5str appendFormat:@"%@",[thirdPlate lowercaseString]];//thirdplatform
    
    NSString *md5SignStr=[SUtil getMD5StrFromString_MMMethodMMM:md5str];
    NSString *roleNameTemp = gameUserModel.roleName ? : @"";
    NSString *serverNameTemp = gameUserModel.serverName ? : @"";
    
    @try {
        NSDictionary *dic = @{
            wwwww_tag_wwwww_signature        :[md5SignStr lowercaseString],
            wwwww_tag_wwwww_timestamp        :timeStamp,
            wwwww_tag_wwwww_gameCode         :GAME_CODE,
            wwwww_tag_wwwww_userId           :accountModel.userId,
            wwwww_tag_wwwww_loginAccessToken  :accountModel.token ? : @"",
            wwwww_tag_wwwww_loginTimestamp   :accountModel.timestamp ? : @"",
            wwwww_tag_wwwww_thirdPlatId      :accountModel.thirdId ? : @"",
            wwwww_tag_wwwww_thirdLoginId     :accountModel.thirdId ? : @"",
            
            wwwww_tag_wwwww_registPlatform   :accountModel.loginType ? : @"",
            wwwww_tag_wwwww_loginMode        :accountModel.loginType ? : @"",
            
            wwwww_tag_wwwww_payType          :wwwww_tag_wwwww_apple,
            wwwww_tag_wwwww_mode             :wwwww_tag_wwwww_apple,//支付方式
            wwwww_tag_wwwww_productId           :productId,
            wwwww_tag_wwwww_extra           :extra ? : @"",
            wwwww_tag_wwwww_cpOrderId         :cpOrderId,
            wwwww_tag_wwwww_serverCode           :gameUserModel.serverCode,
            wwwww_tag_wwwww_serverName           :[serverNameTemp urlEncode_MMMethodMMM],
            wwwww_tag_wwwww_roleId           :gameUserModel.roleID,
            wwwww_tag_wwwww_roleName           : [roleNameTemp urlEncode_MMMethodMMM],
            wwwww_tag_wwwww_roleLevel           :gameUserModel.roleLevel ? : @"",
            wwwww_tag_wwwww_roleVipLevel           :gameUserModel.roleVipLevel ? : @"",
            
        };
        
        [params addEntriesFromDictionary:dic];
        
    } @catch (NSException *exception) {
        NSLog(@"exception:%@",exception.description);
    }
    
    [HttpServiceEnginePay postRequestWithFunctionPath_MMMethodMMM:api_check_payment_channel params_MMMethodMMM:params successBlock_MMMethodMMM:successBlock errorBlock_MMMethodMMM:errorBlock];
    
}

#pragma mark  - 活动开关
+ (void)checkActSwitchWithSuccessBlock_MMMethodMMM:(NSString *)xxx
                         otherParamsDic_MMMethodMMM:(NSDictionary *)otherParamsDic
                           successBlock_MMMethodMMM:(PayServiceSuccessBlock)successBlock
                             errorBlock_MMMethodMMM:(PayServiceErrorBlock)errorBlock{
    
    NSMutableDictionary *params = [self appendGameParamsDic_MMMethodMMM];
    if (otherParamsDic) {
        [params addEntriesFromDictionary:otherParamsDic];
    }
    AccountModel *accountModel = SDK_DATA.mLoginResponse.data;
    
    //获取时间戳
    NSString * timeStamp=[SUtil getTimeStamp_MMMethodMMM];
    //获取md5加密的值  appkey+ts+name+pwd+gamecode+thirdPlatId+thirdPlatform
    NSMutableString * md5str=[[NSMutableString alloc] init];
    [md5str appendFormat:@"%@",APP_KEY]; //AppKey
    [md5str appendFormat:@"%@",GAME_CODE];
    [md5str appendFormat:@"%@",accountModel.userId]; //用户名
    [md5str appendFormat:@"%@",timeStamp]; //时间戳
    
    NSString *md5SignStr=[SUtil getMD5StrFromString_MMMethodMMM:md5str];
    
    @try {
        NSDictionary *dic = @{
            
            wwwww_tag_wwwww_signature        :[md5SignStr lowercaseString],
            wwwww_tag_wwwww_timestamp        :timeStamp,
            wwwww_tag_wwwww_thirdPlatId      :accountModel.thirdId ? : @"",
            wwwww_tag_wwwww_thirdLoginId     :accountModel.thirdId ? : @"",
            
            wwwww_tag_wwwww_registPlatform   :accountModel.loginType ? : @"",
            wwwww_tag_wwwww_loginMode        :accountModel.loginType ? : @"",
            
        };
        
        [params addEntriesFromDictionary:dic];
        
    } @catch (NSException *exception) {
        NSLog(@"exception:%@",exception.description);
    }
    
    if (params) {
        NSString *aUrl = @"";
        for (NSString *key in params) {
            NSString *value = params[key];
            aUrl = [NSString stringWithFormat:@"%@%@=%@&",aUrl,key,value];
        }
        SDK_LOG(@"%@",aUrl);
    }
    
    BJBaseHTTPEngine *configHTTPEngine = [[BJBaseHTTPEngine alloc] initWithBasePath_MMMethodMMM:[SDKRES getPlatUrl_MMMethodMMM]];
    [configHTTPEngine postRequestWithFunctionPath_MMMethodMMM:@"sdk/api/market/switch"
                                           params_MMMethodMMM:params
                                     successBlock_MMMethodMMM:^(NSURLSessionDataTask *task, id responseData) {
        
        SDK_LOG(@"post: path = %@,requsetHeader = %@,data = %@", task.originalRequest.URL,task.originalRequest.HTTPBody, responseData);
        
        NSDictionary *responseDict = responseData;
        BJBaseResponceModel *responceModel = [BJBaseResponceModel yy_modelWithDictionary:responseDict];
        
        if ([responceModel isRequestSuccess_MMMethodMMM]) {
            
            SwitchResp *mSwitchResp = [SwitchResp yy_modelWithDictionary:responseData[wwwww_tag_wwwww_data]];
            
            if (successBlock) {
                successBlock(mSwitchResp);
            }
        } else {
            BJError *errorObject = [BJError yy_modelWithDictionary:responseDict];
            if (errorBlock) {
                errorBlock(errorObject);
            }
        }
        
    } errorBlock_MMMethodMMM:^(NSURLSessionDataTask *task, NSError *error) {
        if (errorBlock) {
            errorBlock(nil);
        }
    }];
    
}

+(void)getActConfigWithSuccessBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                                errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock
{
//    https://cdn-download.tthplay.com/sdk/config/vnmxw/v1/market.json

    BJBaseHTTPEngine *configHTTPEngine = [[BJBaseHTTPEngine alloc] initWithBasePath_MMMethodMMM:[SDKRES getCdnUrl_MMMethodMMM]];
    [configHTTPEngine getRequestWithFunctionPath_MMMethodMMM:[NSString stringWithFormat:@"sdk/config/%@/v1/market.json?t=%@", GAME_CODE, [SUtil getTimeStamp_MMMethodMMM]] params_MMMethodMMM:nil successBlock_MMMethodMMM:^(NSURLSessionDataTask *task, id responseData) {
        
        NSDictionary *responseDict = responseData;
        SDK_LOG(@"sdk config:%@",responseDict);
        NSArray<ExpoModel *> *expoModeArr = [NSArray yy_modelArrayWithClass:[ExpoModel class] json:responseDict];
        if (successBlock) {
            successBlock(expoModeArr);
        }
        
        
    } errorBlock_MMMethodMMM:^(NSURLSessionDataTask *task, NSError *error) {
        if (errorBlock) {
            errorBlock(nil);
        }
    }];
    
}


#pragma mark - 通過url創建通用參數鏈接
+(NSString *) createSdkUrl_MMMethodMMM:(NSString *)url otherDic_MMMethodMMM:(NSDictionary *) otherDic{
    
    NSMutableDictionary *temDic = [self appendGameParamsDic_MMMethodMMM];
    if(otherDic){
        [temDic addEntriesFromDictionary:otherDic];
    }
    
    NSString *tempParams = @"";
   
    for (NSString * key in temDic) {
    
        NSString * value = [NSString stringWithFormat:@"%@", temDic[key]];
        tempParams = [NSString stringWithFormat:@"%@%@=%@&", tempParams, key, value];
        
    }
    
    if ([tempParams hasSuffix:@"&"]){
        tempParams = [NSString stringWithFormat:@"%@aKey=1", tempParams];
    }
    
    if ([url hasSuffix:@"?"]) {
        return [NSString stringWithFormat:@"%@%@", url, tempParams];
    }
    
    if ([url containsString:@"?"]){
        return [NSString stringWithFormat:@"%@&%@", url, tempParams];
    }
    
    return [NSString stringWithFormat:@"%@?%@", url, tempParams];;
}

@end
