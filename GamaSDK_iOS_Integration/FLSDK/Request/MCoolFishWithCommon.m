

#import "MCoolFishWithCommon.h"
#import "MCoolFishEncodingPhone.h"


@implementation MCoolFishWithCommon


+ (void)requestVfCode_MMMethodMMM:(NSString *)phoneArea
                                 phoneNumber_MMMethodMMM:(NSString *)phoneN
                                 email_MMMethodMMM:(NSString *)email
                                  interfaces_MMMethodMMM:(NSString *)interfaces  
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
    
    NSString *timeStamp = [MCoolFishResponse getTimeStamp_MMMethodMMM];
    NSMutableString * md5str=[[NSMutableString alloc]init];
    [md5str appendFormat:@"%@",APP_KEY]; 
    [md5str appendFormat:@"%@",timeStamp]; 
    [md5str appendFormat:@"%@",vf_acccount];
    [md5str appendFormat:@"%@",GAME_CODE];
    
    NSString * md5SignStr=[MCoolFishResponse getMD5StrFromString_MMMethodMMM:md5str];
    
    
    NSDictionary *dic = @{wwwww_tag_wwwww_phone:phoneN,
                          wwwww_tag_wwwww_phoneAreaCode:phoneArea,
                          wwwww_tag_wwwww_email:email,
                          wwwww_tag_wwwww_interfaces:interfaces,
                          wwwww_tag_wwwww_gameCode:[NSString stringWithFormat:@"%@",GAME_CODE],
                          wwwww_tag_wwwww_timestamp:timeStamp,
                          wwwww_tag_wwwww_signature:md5SignStr
    };
    
    [params addEntriesFromDictionary:dic];
    [MCoolFishElegate postRequestWithFunctionPath_MMMethodMMM:api_get_vfCode params_MMMethodMMM:params successBlock_MMMethodMMM:successBlock errorBlock_MMMethodMMM:errorBlock];
    
}


#pragma mark - 获取登录配置

+ (NSDictionary *)appendCommParamsDic_MMMethodMMM
{
    NSDictionary * _commDic =
    @{
        
        wwwww_tag_wwwww_packageName      :     [MCoolFishResponse getBundleIdentifier_MMMethodMMM],
        wwwww_tag_wwwww_adId             :     [[MCoolFishResponse getIdfa_MMMethodMMM]       lowercaseString]? : @"",
        wwwww_tag_wwwww_idfa             :     [[MCoolFishResponse getIdfa_MMMethodMMM]       lowercaseString]? : @"",
        wwwww_tag_wwwww_uuid             :     [[MCoolFishResponse getGamaUUID_MMMethodMMM]     lowercaseString]? : @"",
        wwwww_tag_wwwww_versionName      :     [MCoolFishResponse getBundleShortVersionString_MMMethodMMM]? : @"",
        wwwww_tag_wwwww_versionCode      :     [MCoolFishResponse getBundleVersion_MMMethodMMM]? : @"",
        wwwww_tag_wwwww_systemVersion    :     [MCoolFishResponse getSystemVersion_MMMethodMMM]? : @"",
        wwwww_tag_wwwww_osVersion        :     [MCoolFishResponse getSystemVersion_MMMethodMMM]? : @"",
        wwwww_tag_wwwww_deviceType       :     [MCoolFishResponse getDeviceType_MMMethodMMM]? : @"",
        wwwww_tag_wwwww_os               :     wwwww_tag_wwwww_ios, 
        wwwww_tag_wwwww_gameLanguage     :     GAME_LANGUAGE? : @"",
        wwwww_tag_wwwww_osLanguage       :     [MCoolFishResponse getPreferredLanguage_MMMethodMMM]? : @"",
        
        
        
        wwwww_tag_wwwww_uniqueId         :     [[MCoolFishResponse getGamaUUID_MMMethodMMM] lowercaseString]? : @"",
        
        wwwww_tag_wwwww_platform       :   wwwww_tag_wwwww_ios,
        
    };
    
    return _commDic;
}

#pragma mark - 上报自己服务器一些事件

+ (void)paymentWithTransactionId_MMMethodMMM:(NSString *)transactionId
                     receiptData_MMMethodMMM:(NSString *)receiptData
                         orderId_MMMethodMMM:(NSString *)orderId
                         reissue_MMMethodMMM:(NSString *)reissue
                        gameInfo_MMMethodMMM:(MCoolFishEncoding*)gameUserModel
                    accountModel_MMMethodMMM:(AccountModel*) accountModel
                      otherParamsDic_MMMethodMMM:(NSDictionary *)otherParamsDic
                        successBlock_MMMethodMMM:(PayServiceSuccessBlock)successBlock
                          errorBlock_MMMethodMMM:(PayServiceErrorBlock)errorBlock
{
    
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:[self appendCommParamsDic_MMMethodMMM]];
    if (otherParamsDic) {
        [params addEntriesFromDictionary:otherParamsDic];
    }
    
    
    NSString * timeStamp=[MCoolFishResponse getTimeStamp_MMMethodMMM];
    
    NSMutableString * md5str=[[NSMutableString alloc] init];
    [md5str appendFormat:@"%@",APP_KEY]; 
    [md5str appendFormat:@"%@",GAME_CODE];
    [md5str appendFormat:@"%@",accountModel.userId]; 
    [md5str appendFormat:@"%@",timeStamp]; 
    
    
    
    NSString * md5SignStr=[MCoolFishResponse getMD5StrFromString_MMMethodMMM:md5str];
    
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
            wwwww_tag_wwwww_mode             :wwwww_tag_wwwww_apple,
            wwwww_tag_wwwww_reissue             :reissue,

        };
        
        [params addEntriesFromDictionary:dic];
        
    } @catch (NSException *exception) {
        NSLog(@"exception:%@",exception.description);
    }
    
    [MCoolFishCenter postRequestWithFunctionPath_MMMethodMMM:api_payment params_MMMethodMMM:params successBlock_MMMethodMMM:successBlock errorBlock_MMMethodMMM:errorBlock];
    
}


#pragma mark - 免注册

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
    NSString *timestamp = [MCoolFishResponse getTimeStamp_MMMethodMMM];
    
    NSMutableString * md5str=[[NSMutableString alloc]init];
    [md5str appendFormat:@"%@",APP_KEY]; 
    [md5str appendFormat:@"%@",timestamp]; 
    [md5str appendFormat:@"%@",userName]; 
    [md5str appendFormat:@"%@",GAME_CODE];
    NSString * md5SignStr=[MCoolFishResponse getMD5StrFromString_MMMethodMMM:md5str];
    
    NSDictionary *dic = nil;
    @try {
        dic = @{
            wwwww_tag_wwwww_signature        :[md5SignStr lowercaseString],
            wwwww_tag_wwwww_timestamp        :timestamp,
            wwwww_tag_wwwww_gameCode         :[NSString stringWithFormat:@"%@",GAME_CODE],
            wwwww_tag_wwwww_loginId             :userName,
            wwwww_tag_wwwww_password              :[[MCoolFishResponse getMD5StrFromString_MMMethodMMM:password] lowercaseString],
            wwwww_tag_wwwww_registPlatform   :LOGIN_TYPE_SELF,
            
        };
        
        [params addEntriesFromDictionary:dic];
    } @catch (NSException *exception) {
        
    }
    [MCoolFishElegate postRequestWithFunctionPath_MMMethodMMM:api_login_account params_MMMethodMMM:params successBlock_MMMethodMMM:successBlock errorBlock_MMMethodMMM:errorBlock];
}

#pragma mark - 三方登录

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
    
    
    NSString * timeStamp=[MCoolFishResponse getTimeStamp_MMMethodMMM];
    userName = [userName lowercaseString];
    
    
    NSMutableString * md5str=[[NSMutableString alloc]init];
    [md5str appendString:APP_KEY]; 
    [md5str appendString:timeStamp]; 
    [md5str appendFormat:@"%@",userName]; 
    [md5str appendString:GAME_CODE]; 
    NSString * md5SignStr=[MCoolFishResponse getMD5StrFromString_MMMethodMMM:md5str];
    
    NSDictionary *dic = nil;
    @try {
        dic = @{
            wwwww_tag_wwwww_signature        :md5SignStr,
            wwwww_tag_wwwww_timestamp        :timeStamp,
            wwwww_tag_wwwww_gameCode         :GAME_CODE,
            wwwww_tag_wwwww_name             :userName,
            wwwww_tag_wwwww_loginId          :userName,
            wwwww_tag_wwwww_oldPwd           :[[MCoolFishResponse getMD5StrFromString_MMMethodMMM:oldPassword] lowercaseString],
            wwwww_tag_wwwww_newPwd           :[[MCoolFishResponse getMD5StrFromString_MMMethodMMM:newPassword] lowercaseString],
            wwwww_tag_wwwww_registPlatform   :LOGIN_TYPE_SELF,
        };
        
        [params addEntriesFromDictionary:dic];
        
    } @catch (NSException *exception) {
        
    }
    
    [MCoolFishElegate postRequestWithFunctionPath_MMMethodMMM:api_change_pwd params_MMMethodMMM:params successBlock_MMMethodMMM:successBlock errorBlock_MMMethodMMM:errorBlock];
    
}

#pragma mark - 登录

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
    
    
    NSDictionary *dic = @{wwwww_tag_wwwww_telephone:phoneN ? : @"",
                          wwwww_tag_wwwww_areaCode:phoneArea ? : @"",
                          wwwww_tag_wwwww_vCode:vCode ? : @"",
    };
    
    [params addEntriesFromDictionary:dic];
    [MCoolFishElegate postRequestWithFunctionPath_MMMethodMMM:api_bind_phone params_MMMethodMMM:params successBlock_MMMethodMMM:successBlock errorBlock_MMMethodMMM:errorBlock];
    
}

#pragma mark - 获取验证码

+ (NSDictionary *)appendGameParamsDic_MMMethodMMM
{
    
    NSMutableDictionary *wDic = [[NSMutableDictionary alloc] initWithDictionary: [self appendCommParamsDic_MMMethodMMM]];
    @try {
        
        AccountModel *accountModel = SDK_DATA.mLoginResponse.data;
        MCoolFishEncoding *gameUserModel = SDK_DATA.gameUserModel;
        
        NSDictionary *dic = @{
            
            wwwww_tag_wwwww_gameCode         :GAME_CODE,
            wwwww_tag_wwwww_userId           :accountModel.userId ? : @"",
            wwwww_tag_wwwww_loginAccessToken  :accountModel.token ? : @"",
            wwwww_tag_wwwww_loginTimestamp   :accountModel.timestamp ? : @"",
            
            
            wwwww_tag_wwwww_serverCode           :gameUserModel.serverCode ? : @"",
            wwwww_tag_wwwww_serverName           :gameUserModel.serverName ? : @"",
            wwwww_tag_wwwww_roleId           :gameUserModel.roleID ? : @"",
            wwwww_tag_wwwww_roleName           :gameUserModel.roleName ? : @"",
            wwwww_tag_wwwww_roleLevel           :gameUserModel.roleLevel ? : @"",
            wwwww_tag_wwwww_roleVipLevel           :gameUserModel.roleVipLevel ? : @"",

        };
        
        [wDic addEntriesFromDictionary:dic];
        
    } @catch (NSException *exception) {
        NSLog(@"exception:%@",exception.description);
    }
    return wDic;
    
}

#pragma mark - 游戏内获取手机验证码

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
    
    
    NSString * timeStamp=[MCoolFishResponse getTimeStamp_MMMethodMMM];
    
    BOOL isGuestLogin = [thirdPlate isEqualToString:LOGIN_TYPE_GUEST];
    
    NSMutableString * md5str= [[NSMutableString alloc] init];
    [md5str appendFormat:@"%@",APP_KEY]; 
    [md5str appendFormat:@"%@",timeStamp]; 
    [md5str appendFormat:@"%@",thirdId]; 
    [md5str appendFormat:@"%@",GAME_CODE];
    NSString * md5SignStr=[MCoolFishResponse getMD5StrFromString_MMMethodMMM:md5str];
    
    
    NSDictionary *dic = nil;
    
    
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
        
    }
    
    
    NSString *requestUrlPath = @"";
    if (isGuestLogin) {
        requestUrlPath = api_login_guest;
    }else{
        requestUrlPath = api_login_third;
    }
    [MCoolFishElegate postRequestWithFunctionPath_MMMethodMMM:requestUrlPath params_MMMethodMMM:params successBlock_MMMethodMMM:successBlock errorBlock_MMMethodMMM:errorBlock];
}

#pragma mark - 游戏内绑定手机

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
    
     
    
    NSString * timeStamp=[MCoolFishResponse getTimeStamp_MMMethodMMM];
    userName = userName?userName:@"";
    userName = [userName lowercaseString];
    email = [email lowercaseString];
    
    NSMutableString * md5str=[[NSMutableString alloc]init];
    [md5str appendString:APP_KEY]; 
    [md5str appendString:timeStamp]; 
    [md5str appendString:email]; 
    [md5str appendString: GAME_CODE]; 
    NSString * md5SignStr=[MCoolFishResponse getMD5StrFromString_MMMethodMMM:md5str];
    
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
    
    [MCoolFishElegate postRequestWithFunctionPath_MMMethodMMM:api_forgot_pwd params_MMMethodMMM:params successBlock_MMMethodMMM:successBlock errorBlock_MMMethodMMM:errorBlock];
    
}



#pragma mark - sdk基本参数

+(void)getAreaInfoWithSuccessBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                                errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock
{
    MCoolFishAlertReader *configHTTPEngine = [[MCoolFishAlertReader alloc] initWithBasePath_MMMethodMMM:[SDKRES getCdnUrl_MMMethodMMM]];
    [configHTTPEngine getRequestWithFunctionPath_MMMethodMMM:[NSString stringWithFormat:@"sdk/config/areaCode/areaInfo.json?t=%@", [MCoolFishResponse getTimeStamp_MMMethodMMM]] params_MMMethodMMM:nil successBlock_MMMethodMMM:^(NSURLSessionDataTask *task, id responseData) {
        
        NSArray *responseArray = responseData;
        SDK_LOG(@"sdk areaCode info:%@",responseArray);
        if (responseArray) {
            [MCoolFishEventFile savePhoneAreaInfo_MMMethodMMM:responseArray];
        }
        
    } errorBlock_MMMethodMMM:^(NSURLSessionDataTask *task, NSError *error) {
        if (errorBlock) {
            errorBlock(nil);
        }
    }];
    
}

#pragma mark - sdk基本参数 + 角色相关数值参数

+(void)freeLoginOrRegister_MMMethodMMM:(NSString *)thirdId
                            successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                            errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock
{
    
    [self thirdLoginOrReg_MMMethodMMM:thirdId andThirdPlate_MMMethodMMM:LOGIN_TYPE_GUEST addOtherParams_MMMethodMMM:nil successBlock_MMMethodMMM:successBlock errorBlock_MMMethodMMM:errorBlock];
    
}

#pragma mark - 注册账号

+(void)getSdkConfigWithSuccessBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                                errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock
{
    MCoolFishAlertReader *configHTTPEngine = [[MCoolFishAlertReader alloc] initWithBasePath_MMMethodMMM:[SDKRES getCdnUrl_MMMethodMMM]];
    [configHTTPEngine getRequestWithFunctionPath_MMMethodMMM:[NSString stringWithFormat:@"sdk/config/%@/v1/version.json?t=%@", GAME_CODE, [MCoolFishResponse getTimeStamp_MMMethodMMM]] params_MMMethodMMM:nil successBlock_MMMethodMMM:^(NSURLSessionDataTask *task, id responseData) {
        
        NSDictionary *responseDict = responseData;
        SDK_LOG(@"sdk config:%@",responseDict);
//        ConfigModel *allVersion = [ConfigModel yy_modelWithDictionary:responseDict[wwwww_tag_wwwww_allVersion]];
        NSArray<ConfigModel *> *allVersion = [NSArray yy_modelArrayWithClass:[ConfigModel class] json:responseDict[wwwww_tag_wwwww_allVersion]];
        NSArray<ConfigModel *> *subVersion = [NSArray yy_modelArrayWithClass:[ConfigModel class] json:responseDict[wwwww_tag_wwwww_subVersion]];
        UrlMode *urls = [UrlMode yy_modelWithDictionary:responseDict[wwwww_tag_wwwww_url]];
        
        
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
                    
                    if ([cm.version isEqualToString:[MCoolFishResponse getBundleVersion_MMMethodMMM]] && [cm.packageName isEqualToString:[MCoolFishResponse getBundleIdentifier_MMMethodMMM]]) {
                        SDK_DATA.mConfigModel = cm;
                        return;
                    }
                }
            }
            
//            if (mCr.allVersion && [mCr.allVersion.packageName isEqualToString:[MCoolFishResponse getBundleIdentifier_MMMethodMMM]]) {
//                SDK_DATA.mConfigModel = mCr.allVersion;
//            }
            
            if (mCr.allVersion){
                
                for (ConfigModel *cm in mCr.allVersion) {
                    
                    if ([cm.packageName isEqualToString:[MCoolFishResponse getBundleIdentifier_MMMethodMMM]]) {
                        SDK_DATA.mConfigModel = cm;
                        return;
                    }
                }
            }
            
        }else {
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
    
    NSString * timeStamp=[MCoolFishResponse getTimeStamp_MMMethodMMM];
    
    NSMutableString * md5str=[[NSMutableString alloc]init];
    [md5str appendFormat:@"%@",APP_KEY]; 
    [md5str appendFormat:@"%@",timeStamp]; 
    [md5str appendFormat:@"%@",userName]; 
    [md5str appendFormat:@"%@",GAME_CODE];
    NSString * md5SignStr=[MCoolFishResponse getMD5StrFromString_MMMethodMMM:md5str];
    
    NSDictionary *dic = nil;
    
    @try {
        dic = @{
            wwwww_tag_wwwww_signature        :md5SignStr,
            wwwww_tag_wwwww_timestamp        :timeStamp,
            wwwww_tag_wwwww_gameCode         :GAME_CODE,
            wwwww_tag_wwwww_loginId          :userName,
            wwwww_tag_wwwww_password         :[MCoolFishResponse getMD5StrFromString_MMMethodMMM:password],
            wwwww_tag_wwwww_phoneAreaCode    :phoneAreaCode,
            wwwww_tag_wwwww_phone            :phoneN,
            wwwww_tag_wwwww_vfCode           :vfCode,
            wwwww_tag_wwwww_registPlatform   :LOGIN_TYPE_SELF,
        };
        [params addEntriesFromDictionary:dic];
    } @catch (NSException *exception) {
        
    }
    
    
    [MCoolFishElegate postRequestWithFunctionPath_MMMethodMMM:api_login_register params_MMMethodMMM:params successBlock_MMMethodMMM:successBlock errorBlock_MMMethodMMM:errorBlock];
    
}



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
    
    
    
    NSDictionary *dic = @{wwwww_tag_wwwww_telephone:phoneN,
                          wwwww_tag_wwwww_areaCode:phoneArea,
                          wwwww_tag_wwwww_email:email,
    };
    
    [params addEntriesFromDictionary:dic];
    [MCoolFishElegate postRequestWithFunctionPath_MMMethodMMM:api_sendMobileVcode params_MMMethodMMM:params successBlock_MMMethodMMM:successBlock errorBlock_MMMethodMMM:errorBlock];
    
}


#pragma mark - 绑定账号

+(void)reportSdkEventWithEventName_MMMethodMMM:(NSString *)eventName successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                                errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock
{
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:[self appendCommParamsDic_MMMethodMMM]];
    NSString * timeStamp=[MCoolFishResponse getTimeStamp_MMMethodMMM];
    NSDictionary *dic = nil;
    @try {
        dic = @{
            wwwww_tag_wwwww_eventName        :eventName,
            wwwww_tag_wwwww_appTime          :timeStamp,
            wwwww_tag_wwwww_gameCode         :[NSString stringWithFormat:@"%@", GAME_CODE],
        };
        [params addEntriesFromDictionary:dic];
        
    } @catch (NSException *exception) {
        
    }
    
    SDK_LOG(@"reportSdkEvent start EventName:%@", eventName);
    MCoolFishAlertReader *logHTTPEngine = [[MCoolFishAlertReader alloc] initWithBasePath_MMMethodMMM:[SDKRES getLogUrl_MMMethodMMM]];
    
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


+ (void)requestDeleteUserAccount_MMMethodMMM:(AccountModel *)accountMode
                      otherParamsDic_MMMethodMMM:(NSDictionary *)otherParamsDic
                        successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                          errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock
{
    
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:[self appendCommParamsDic_MMMethodMMM]];
    if (otherParamsDic) {
        [params addEntriesFromDictionary:otherParamsDic];
    }
    
    
    NSString * timeStamp=[MCoolFishResponse getTimeStamp_MMMethodMMM];
    
    NSMutableString * md5str=[[NSMutableString alloc] init];
    [md5str appendFormat:@"%@",APP_KEY]; 
    [md5str appendFormat:@"%@",timeStamp]; 
    [md5str appendFormat:@"%@",accountMode.userId]; 
    [md5str appendFormat:@"%@",GAME_CODE];
    
    NSString * md5SignStr=[MCoolFishResponse getMD5StrFromString_MMMethodMMM:md5str];
    
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
    
    [MCoolFishElegate postRequestWithFunctionPath_MMMethodMMM:api_delete_account params_MMMethodMMM:params successBlock_MMMethodMMM:successBlock errorBlock_MMMethodMMM:errorBlock];
    
}

#pragma mark - 創單

+ (void)createOrderWithproductId_MMMethodMMM:(NSString *)productId
            cpOrderId_MMMethodMMM:(NSString *)cpOrderId
                extra_MMMethodMMM:(NSString *)extra
             gameInfo_MMMethodMMM:(MCoolFishEncoding*)gameUserModel
         accountModel_MMMethodMMM:(AccountModel*) accountModel
                      otherParamsDic_MMMethodMMM:(NSDictionary *)otherParamsDic
                        successBlock_MMMethodMMM:(PayServiceSuccessBlock)successBlock
                          errorBlock_MMMethodMMM:(PayServiceErrorBlock)errorBlock
{
    
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:[self appendCommParamsDic_MMMethodMMM]];
    if (otherParamsDic) {
        [params addEntriesFromDictionary:otherParamsDic];
    }
    
    
    NSString * timeStamp=[MCoolFishResponse getTimeStamp_MMMethodMMM];
    
    NSMutableString * md5str=[[NSMutableString alloc] init];
    [md5str appendFormat:@"%@",APP_KEY]; 
    [md5str appendFormat:@"%@",GAME_CODE];
    [md5str appendFormat:@"%@",accountModel.userId]; 
    [md5str appendFormat:@"%@",timeStamp]; 
    
    
    
    NSString * md5SignStr=[MCoolFishResponse getMD5StrFromString_MMMethodMMM:md5str];
    
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
            wwwww_tag_wwwww_mode             :wwwww_tag_wwwww_apple,
            wwwww_tag_wwwww_productId           :productId,
            wwwww_tag_wwwww_extra           :extra ? : @"",
            wwwww_tag_wwwww_cpOrderId         :cpOrderId,
            wwwww_tag_wwwww_serverCode           :gameUserModel.serverCode,
            wwwww_tag_wwwww_serverName           :gameUserModel.serverName ? : @"",
            wwwww_tag_wwwww_roleId           :gameUserModel.roleID,
            wwwww_tag_wwwww_roleName           :gameUserModel.roleName ? : @"",
            wwwww_tag_wwwww_roleLevel           :gameUserModel.roleLevel ? : @"",
            wwwww_tag_wwwww_roleVipLevel           :gameUserModel.roleVipLevel ? : @"",

        };
        
        [params addEntriesFromDictionary:dic];
        
    } @catch (NSException *exception) {
        NSLog(@"exception:%@",exception.description);
    }
    
    [MCoolFishCenter postRequestWithFunctionPath_MMMethodMMM:api_order_create params_MMMethodMMM:params successBlock_MMMethodMMM:successBlock errorBlock_MMMethodMMM:errorBlock];
    
}


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
    
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:[self appendGameParamsDic_MMMethodMMM]];
    if (otherParamsDic) {
        [params addEntriesFromDictionary:otherParamsDic];
    }
    
    userName = [userName lowercaseString];
    
    
    NSString * timeStamp=[MCoolFishResponse getTimeStamp_MMMethodMMM];
    
    NSMutableString * md5str=[[NSMutableString alloc] init];
    [md5str appendFormat:@"%@",APP_KEY]; 
    [md5str appendFormat:@"%@",timeStamp]; 
    [md5str appendFormat:@"%@",userName]; 
    [md5str appendFormat:@"%@",GAME_CODE];
    
    NSString * md5SignStr=[MCoolFishResponse getMD5StrFromString_MMMethodMMM:md5str];
    
    @try {
        NSDictionary *dic = @{
            wwwww_tag_wwwww_signature        :[md5SignStr lowercaseString],
            wwwww_tag_wwwww_timestamp        :timeStamp,
            wwwww_tag_wwwww_gameCode         :GAME_CODE,
            wwwww_tag_wwwww_name             :userName,
            wwwww_tag_wwwww_loginId          :userName,
            wwwww_tag_wwwww_password         :[[MCoolFishResponse getMD5StrFromString_MMMethodMMM:password] lowercaseString],
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
    
    [MCoolFishElegate postRequestWithFunctionPath_MMMethodMMM:api_bind_account params_MMMethodMMM:params successBlock_MMMethodMMM:successBlock errorBlock_MMMethodMMM:errorBlock];
    
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
