//
//  SDKRequest.m

//
//  Created by ganyuanrong on 2020/7/20.
//  Copyright © 2020 . All rights reserved.
//

#import "SDKRequest.h"
#import "CCSDKDATA.h"


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
        ConfigModel *allVersion = [ConfigModel yy_modelWithDictionary:responseDict[@"allVersion"]];//需要分开解析
        NSArray<ConfigModel *> *subVersion = [NSArray yy_modelArrayWithClass:[ConfigModel class] json:responseDict[@"subVersion"]];
        UrlMode *urls = [UrlMode yy_modelWithDictionary:responseDict[@"url"]];
        
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
            
            if (mCr.allVersion && [mCr.allVersion.packageName isEqualToString:[SUtil getBundleIdentifier_MMMethodMMM]]) {//先匹配所有版本开关
                SDK_DATA.mConfigModel = mCr.allVersion;
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

//https://log.meowplayer.com/sdk/event/log
#pragma mark - 上报自己服务器一些事件
+(void)reportSdkEventWithEventName_MMMethodMMM:(NSString *)eventName successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                                errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock
{
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:[self appendCommParamsDic_MMMethodMMM]];
    NSString * timeStamp=[SUtil getTimeStamp_MMMethodMMM];
    NSDictionary *dic = nil;
    @try {
        dic = @{
            @"eventName"        :eventName,
            @"appTime"          :timeStamp,
            @"gameCode"         :[NSString stringWithFormat:@"%@", GAME_CODE],
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
            @"signature"        :[md5SignStr lowercaseString],
            @"timestamp"        :timeStamp,
            @"gameCode"         :[NSString stringWithFormat:@"%@", GAME_CODE],
            @"registPlatform"   :thirdPlate,
            @"loginMode"        :thirdPlate,
            @"thirdPlatId"      :thirdId,
            @"thirdLoginId"     :thirdId,
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
            @"signature"        :[md5SignStr lowercaseString],
            @"timestamp"        :timestamp,
            @"gameCode"         :[NSString stringWithFormat:@"%@",GAME_CODE],
            @"loginId"             :userName,
            @"password"              :[[SUtil getMD5StrFromString_MMMethodMMM:password] lowercaseString],
            @"registPlatform"   :LOGIN_TYPE_SELF,
            
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
    NSDictionary *dic = @{@"phone":phoneN,
                          @"phoneAreaCode":phoneArea,
                          @"email":email,
                          @"interfaces":interfaces,
                          @"gameCode":[NSString stringWithFormat:@"%@",GAME_CODE],
                          @"timestamp":timeStamp,
                          @"signature":md5SignStr
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
    
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:[self appendGameParamsDic_MMMethodMMM]];
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
    NSDictionary *dic = @{@"telephone":phoneN,
                          @"areaCode":phoneArea,
                          @"email":email,
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
    
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:[self appendGameParamsDic_MMMethodMMM]];
    if (otherParamsDic) {
        [params addEntriesFromDictionary:otherParamsDic];
    }
    
    //字典不能设置nil
    NSDictionary *dic = @{@"telephone":phoneN ? : @"",
                          @"areaCode":phoneArea ? : @"",
                          @"vCode":vCode ? : @"",
    };
    
    [params addEntriesFromDictionary:dic];
    [HttpServiceEngineLogin postRequestWithFunctionPath_MMMethodMMM:api_bind_phone params_MMMethodMMM:params successBlock_MMMethodMMM:successBlock errorBlock_MMMethodMMM:errorBlock];
    
}



#pragma mark - sdk基本参数

- (NSUInteger)opoGoodsion:(NSString *)saveability teamitious:(NSString *)teamitious sessit:(NSString *)sessit foldsourceics:(BOOL)foldsourceics
{
    return 2132029 * 9798857 + 8564581 ; 
}
- (void)quesitattorneydomTredecally:(CGFloat)parentaire phylactoard:(NSString *)phylactoard cidee:(BOOL)cidee
{
    [NSString stringWithFormat:@"%@%@", @"urbtion" , @"dipsaceous"]; 
}
+ (NSDictionary *)appendCommParamsDic_MMMethodMMM
{
    NSDictionary * _commDic =
    @{
        // 公共的参数拼接
        @"packageName"      :     [SUtil getBundleIdentifier_MMMethodMMM],
        @"adId"             :     [[SUtil getIdfa_MMMethodMMM]       lowercaseString]? : @"",
        @"idfa"             :     [[SUtil getIdfa_MMMethodMMM]       lowercaseString]? : @"",
        @"uuid"             :     [[SUtil getGamaUUID_MMMethodMMM]     lowercaseString]? : @"",
        @"versionName"      :     [SUtil getBundleShortVersionString_MMMethodMMM]? : @"",
        @"versionCode"      :     [SUtil getBundleVersion_MMMethodMMM]? : @"",
        @"systemVersion"    :     [SUtil getSystemVersion_MMMethodMMM]? : @"",
        @"deviceType"       :     [SUtil getDeviceType_MMMethodMMM]? : @"",
        @"os"               :     @"ios", //os=ios
        @"gameLanguage"     :     GAME_LANGUAGE? : @"",
        @"osLanguage"       :     [SUtil getPreferredLanguage_MMMethodMMM]? : @"",
        
        //      @"loginTimestamp"   :     [GamaUserInfoModel shareInfoModel].timestamp ? : @"",
        //      @"accessToken"      :     [GamaUserInfoModel shareInfoModel].accessToken ? : @"",
        @"uniqueId"         :     [[SUtil getGamaUUID_MMMethodMMM] lowercaseString]? : @"",
        
        @"platform"       :   @"ios",
//        @"spy_advertiser"     :   GetConfigString(@"spy_advertiser")? :@"",
        
    };
    
    return _commDic;
}

#pragma mark - sdk基本参数 + 角色相关数值参数
+ (NSDictionary *)appendGameParamsDic_MMMethodMMM
{
    
    NSMutableDictionary *wDic = [[NSMutableDictionary alloc] initWithDictionary: [self appendCommParamsDic_MMMethodMMM]];
    @try {
        
        AccountModel *accountModel = SDK_DATA.mLoginResponse.data;
        GameUserModel *gameUserModel = SDK_DATA.gameUserModel;
        
        NSDictionary *dic = @{
            
            @"gameCode"         :GAME_CODE,
            @"userId"           :accountModel.userId ? : @"",
            @"loginAccessToken"  :accountModel.token ? : @"",
            @"loginTimestamp"   :accountModel.timestamp ? : @"",
//            @"thirdPlatId"      :accountModel.thirdId ? : @"",
//            @"thirdLoginId"     :accountModel.thirdId ? : @"",
            
//            @"registPlatform"   :accountModel.loginType ? : @"",
//            @"loginMode"        :accountModel.loginType ? : @"",
            
            @"serverCode"           :gameUserModel.serverCode ? : @"",
            @"serverName"           :gameUserModel.serverName ? : @"",
            @"roleId"           :gameUserModel.roleID ? : @"",
            @"roleName"           :gameUserModel.roleName ? : @"",
            @"roleLevel"           :gameUserModel.roleLevel ? : @"",
            @"roleVipLevel"           :gameUserModel.roleVipLevel ? : @"",

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
            @"signature"        :md5SignStr,
            @"timestamp"        :timeStamp,
            @"gameCode"         :GAME_CODE,
            @"loginId"          :userName,
            @"password"         :[SUtil getMD5StrFromString_MMMethodMMM:password],
            @"phoneAreaCode"    :phoneAreaCode,
            @"phone"            :phoneN,
            @"vfCode"           :vfCode,
            @"registPlatform"   :LOGIN_TYPE_SELF,
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
            @"signature"        :md5SignStr,
            @"timestamp"        :timeStamp,
            @"gameCode"         :GAME_CODE,
            @"name"             :userName,
            @"loginId"          :userName,
            @"oldPwd"           :[[SUtil getMD5StrFromString_MMMethodMMM:oldPassword] lowercaseString],
            @"newPwd"           :[[SUtil getMD5StrFromString_MMMethodMMM:newPassword] lowercaseString],
            @"registPlatform"   :LOGIN_TYPE_SELF,
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
            @"signature"        :md5SignStr,
            @"timestamp"        :timeStamp,
            @"gameCode"         :GAME_CODE,
            @"name"             :userName,
            @"phoneAreaCode"    :phoneAreaCode,
            @"phone"            :phoneN,
            @"vfCode"           :vfCode,
            @"verifyCode"       :vfCode,
            @"email"            :email,
            @"interfaces"       :interfaces,
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
    //@{@"vfCode": vfCode,@"phone": phoneNum,@"phoneAreaCode": areaCode}
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:[self appendGameParamsDic_MMMethodMMM]];
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
            @"signature"        :[md5SignStr lowercaseString],
            @"timestamp"        :timeStamp,
            @"gameCode"         :GAME_CODE,
            @"name"             :userName,
            @"loginId"          :userName,
            @"password"         :[[SUtil getMD5StrFromString_MMMethodMMM:password] lowercaseString],
            @"thirdPlatId"      :thirdId,
            @"thirdLoginId"     :thirdId,
        
            @"registPlatform"   :thirdPlate,
            @"loginMode"        :thirdPlate,
            
            @"interfaces"       :@"2",
            @"phoneAreaCode"    :phoneAreaCode,
            @"phone"            :phoneN,
            @"vfCode"           :vfCode,
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
    //@{@"vfCode": vfCode,@"phone": phoneNum,@"phoneAreaCode": areaCode}
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
            @"signature"        :[md5SignStr lowercaseString],
            @"timestamp"        :timeStamp,
            @"gameCode"         :GAME_CODE,
            @"userId"           :accountMode.userId,
            @"loginAccessToken"  :accountMode.token,
            @"loginTimestamp"   :accountMode.timestamp,
            @"thirdPlatId"      :accountMode.thirdId,
            @"thirdLoginId"     :accountMode.thirdId,
        
            @"registPlatform"   :accountMode.loginType,
            @"loginMode"        :accountMode.loginType,
            
            @"interfaces"       :@"2",
            @"phoneAreaCode"    :@"",
            @"phone"            :@"",
            @"vfCode"           :@"",
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
    //@{@"vfCode": vfCode,@"phone": phoneNum,@"phoneAreaCode": areaCode}
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
            @"signature"        :[md5SignStr lowercaseString],
            @"timestamp"        :timeStamp,
            @"gameCode"         :GAME_CODE,
            @"userId"           :accountModel.userId,
            @"loginAccessToken"  :accountModel.token ? : @"",
            @"loginTimestamp"   :accountModel.timestamp ? : @"",
            @"thirdPlatId"      :accountModel.thirdId ? : @"",
            @"thirdLoginId"     :accountModel.thirdId ? : @"",
            
            @"registPlatform"   :accountModel.loginType ? : @"",
            @"loginMode"        :accountModel.loginType ? : @"",
            
            @"payType"          :@"apple",
            @"mode"             :@"apple",//支付方式
            @"productId"           :productId,
            @"extra"           :extra ? : @"",
            @"cpOrderId"         :cpOrderId,
            @"serverCode"           :gameUserModel.serverCode,
            @"serverName"           :gameUserModel.serverName ? : @"",
            @"roleId"           :gameUserModel.roleID,
            @"roleName"           :gameUserModel.roleName ? : @"",
            @"roleLevel"           :gameUserModel.roleLevel ? : @"",
            @"roleVipLevel"           :gameUserModel.roleVipLevel ? : @"",

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
                        gameInfo_MMMethodMMM:(GameUserModel*)gameUserModel
                    accountModel_MMMethodMMM:(AccountModel*) accountModel
                      otherParamsDic_MMMethodMMM:(NSDictionary *)otherParamsDic
                        successBlock_MMMethodMMM:(PayServiceSuccessBlock)successBlock
                          errorBlock_MMMethodMMM:(PayServiceErrorBlock)errorBlock
{
    //@{@"vfCode": vfCode,@"phone": phoneNum,@"phoneAreaCode": areaCode}
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
            @"signature"        :[md5SignStr lowercaseString],
            @"timestamp"        :timeStamp,
            @"gameCode"         :GAME_CODE,
            @"userId"           :accountModel.userId,
            
            @"orderId"           :orderId,
            @"transactionId"      :transactionId,
            @"receiptData"        :receiptData,
            
            @"loginAccessToken"  :accountModel.token,
            @"loginTimestamp"   :accountModel.timestamp,
            
            @"payType"          :@"apple",
            @"mode"             :@"apple",//支付方式

        };
        
        [params addEntriesFromDictionary:dic];
        
    } @catch (NSException *exception) {
        NSLog(@"exception:%@",exception.description);
    }
    
    [HttpServiceEnginePay postRequestWithFunctionPath_MMMethodMMM:api_payment params_MMMethodMMM:params successBlock_MMMethodMMM:successBlock errorBlock_MMMethodMMM:errorBlock];
    
}


#pragma mark - 通過url創建通用參數鏈接
+(NSString *) createSdkUrl_MMMethodMMM:(NSString *)url{
    
    NSDictionary *temDic = [self appendGameParamsDic_MMMethodMMM];
    NSString *tempParams = @"";
   
    for (NSString * key in temDic) {
    
        NSString * value = [NSString stringWithFormat:@"%@", temDic[key]];
        tempParams = [NSString stringWithFormat:@"%@%@=%@&", tempParams, key, value];
        
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
