//
//  SDKRequest.m

//
//  Created by ganyuanrong on 2020/7/20.
//  Copyright © 2020 . All rights reserved.
//

#import "SDKRequest.h"
#import "CCSDKDATA.h"


@implementation SDKRequest

//https://www.meowplayer.com/sdk/config/jjcs/v1/version.json
#pragma mark - 获取登录配置
+(void)getSdkConfigWithSuccessBlock:(BJServiceSuccessBlock)successBlock
                                errorBlock:(BJServiceErrorBlock)errorBlock
{
    BJBaseHTTPEngine *configHTTPEngine = [[BJBaseHTTPEngine alloc] initWithBasePath:[SDKConReader getCdnUrl]];
    [configHTTPEngine getRequestWithFunctionPath:[NSString stringWithFormat:@"sdk/config/%@/v1/version.json?t=%@", GAME_CODE, [SUtil getTimeStamp]] params:nil successBlock:^(NSURLSessionDataTask *task, id responseData) {
        
        NSDictionary *responseDict = responseData;
        SDK_LOG(@"sdk config:%@",responseDict);
        ConfigModel *allVersion = [ConfigModel yy_modelWithDictionary:responseDict[@"allVersion"]];//需要分开解析
        NSArray<ConfigModel *> *subVersion = [NSArray yy_modelArrayWithClass:[ConfigModel class] json:responseDict[@"subVersion"]];
        
//        ConfigResponse *mCr = [ConfigResponse yy_modelWithDictionary:responseDict];
        
        ConfigResponse *mCr = [[ConfigResponse alloc] init];
        mCr.subVersion = subVersion;
        mCr.allVersion = allVersion;
        if (mCr) {
            if (successBlock) {
                successBlock(mCr);
            }
            
            if (mCr.subVersion){
                
                for (ConfigModel *cm in mCr.subVersion) {
                    
                    if ([cm.version isEqualToString:[SUtil getBundleVersion]] && [cm.packageName isEqualToString:[SUtil getBundleIdentifier]]) {//匹配子版本开关
                        SDK_DATA.mConfigModel = cm;
                        return;
                    }
                }
            }
            
            if (mCr.allVersion && [mCr.allVersion.packageName isEqualToString:[SUtil getBundleIdentifier]]) {//先匹配所有版本开关
                SDK_DATA.mConfigModel = mCr.allVersion;
            }
            
        }else {
//            BJError *errorObject = [BJError yy_modelWithDictionary:responseDict];
            if (errorBlock) {
                errorBlock(nil);
            }
        }
        
    } errorBlock:^(NSURLSessionDataTask *task, NSError *error) {
        if (errorBlock) {
            errorBlock(nil);
        }
    }];
    
}

#pragma mark - 免注册
+(void)freeLoginOrRegister:(NSString *)thirdId
                            successBlock:(BJServiceSuccessBlock)successBlock
                            errorBlock:(BJServiceErrorBlock)errorBlock
{
    
    [self thirdLoginOrReg:thirdId andThirdPlate:LOGIN_TYPE_GUEST addOtherParams:nil successBlock:successBlock errorBlock:errorBlock];
    
}

#pragma mark - 三方登录
+(void)thirdLoginOrReg:(NSString *)thirdId
          andThirdPlate:(NSString *)thirdPlate
         addOtherParams:(NSDictionary *)otherParams
           successBlock:(BJServiceSuccessBlock)successBlock
             errorBlock:(BJServiceErrorBlock)errorBlock
{
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:[self appendCommParamsDic]];
    if (otherParams) {
        [params addEntriesFromDictionary:otherParams];
    }
    
    //获取时间戳
    NSString * timeStamp=[SUtil getTimeStamp];
    
    BOOL isGuestLogin = [thirdPlate isEqualToString:LOGIN_TYPE_GUEST];
    // 签名顺序不能变
    NSMutableString * md5str= [[NSMutableString alloc] init];
    [md5str appendFormat:@"%@",APP_KEY]; //AppKey
    [md5str appendFormat:@"%@",timeStamp]; //时间戳
    [md5str appendFormat:@"%@",thirdId]; //用户名
    [md5str appendFormat:@"%@",GAME_CODE];//gamecode
//    isGuestLogin ? : [md5str appendFormat:@"%@",thirdPlate];
    NSString * md5SignStr=[SUtil getMD5StrFromString:md5str];
    
    
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
    [HttpServiceEngineLogin getRequestWithFunctionPath:requestUrlPath params:params successBlock:successBlock errorBlock:errorBlock];
}

#pragma mark - 登录
+(void)doLoginWithAccount:(NSString *)userName
              andPassword:(NSString *)password
                 otherDic:(NSDictionary *)otherParamsDic
             successBlock:(BJServiceSuccessBlock)successBlock
               errorBlock:(BJServiceErrorBlock)errorBlock

{
    
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:[self appendCommParamsDic]];
    if (otherParamsDic) {
        [params addEntriesFromDictionary:otherParamsDic];
    }
    userName = [userName lowercaseString];
    NSString *timestamp = [SUtil getTimeStamp];
    //获取md5加密的值
    NSMutableString * md5str=[[NSMutableString alloc]init];
    [md5str appendFormat:@"%@",APP_KEY]; //AppKey
    [md5str appendFormat:@"%@",timestamp]; //时间戳
    [md5str appendFormat:@"%@",userName]; //用户名
//    [md5str appendFormat:@"%@",[[GamaFunction getMD5StrFromString:password] lowercaseString]]; //用户密码
    [md5str appendFormat:@"%@",GAME_CODE];//gamecode
    NSString * md5SignStr=[SUtil getMD5StrFromString:md5str];
    
    NSDictionary *dic = nil;
    @try {
        dic = @{
            @"signature"        :[md5SignStr lowercaseString],
            @"timestamp"        :timestamp,
            @"gameCode"         :[NSString stringWithFormat:@"%@",GAME_CODE],
            @"loginId"             :userName,
            @"password"              :[[SUtil getMD5StrFromString:password] lowercaseString],
            @"registPlatform"   :LOGIN_TYPE_SELF,
            
        };
        
        [params addEntriesFromDictionary:dic];
    } @catch (NSException *exception) {
        
    }
    [HttpServiceEngineLogin getRequestWithFunctionPath:api_login_account params:params successBlock:successBlock errorBlock:errorBlock];
}

#pragma mark - 获取验证码
+ (void)requestVfCode:(NSString *)phoneArea
                                 phoneNumber:(NSString *)phoneN
                                 email:(NSString *)email
                                  interfaces:(NSString *)interfaces  //注册1 绑定2
                                    otherDic:(NSDictionary *)otherParamsDic
                                successBlock:(BJServiceSuccessBlock)successBlock
                                  errorBlock:(BJServiceErrorBlock)errorBlock
{
    
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:[self appendCommParamsDic]];
    if (otherParamsDic) {
        [params addEntriesFromDictionary:otherParamsDic];
    }
    
    NSString *vf_acccount = phoneN;
    if (!vf_acccount || [vf_acccount isEqualToString:@""]) {
        vf_acccount = email;
    }
    
    NSString *timeStamp = [SUtil getTimeStamp];
    NSMutableString * md5str=[[NSMutableString alloc]init];
    [md5str appendFormat:@"%@",APP_KEY]; //AppKey
    [md5str appendFormat:@"%@",timeStamp]; //时间戳
    [md5str appendFormat:@"%@",vf_acccount];
    [md5str appendFormat:@"%@",GAME_CODE];//gamecode
    
    NSString * md5SignStr=[SUtil getMD5StrFromString:md5str];
    
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
    [HttpServiceEngineLogin getRequestWithFunctionPath:api_get_vfCode params:params successBlock:successBlock errorBlock:errorBlock];
    
}

+ (NSDictionary *)appendCommParamsDic
{
    NSDictionary * _commDic =
    @{
        // 公共的参数拼接
        @"packageName"      :     [SUtil getBundleIdentifier],
        @"adId"             :     [[SUtil getIdfa]       lowercaseString]? : @"",
        @"idfa"             :     [[SUtil getIdfa]       lowercaseString]? : @"",
        @"uuid"             :     [[SUtil getGamaUUID]     lowercaseString]? : @"",
        @"versionName"      :     [SUtil getBundleShortVersionString]? : @"",
        @"versionCode"      :     [SUtil getBundleVersion]? : @"",
        @"systemVersion"    :     [SUtil getSystemVersion]? : @"",
        @"deviceType"       :     [SUtil getDeviceType]? : @"",
        @"os"               :     @"ios", //os=ios
        @"gameLanguage"     :     @"zh_TW",
        @"osLanguage"       :     [SUtil getPreferredLanguage]? : @"",
        
        //      @"loginTimestamp"   :     [GamaUserInfoModel shareInfoModel].timestamp ? : @"",
        //      @"accessToken"      :     [GamaUserInfoModel shareInfoModel].accessToken ? : @"",
        @"uniqueId"         :     [[SUtil getGamaUUID] lowercaseString]? : @"",
        
        @"spy_platForm"       :   GetConfigString(@"spy_platForm")? :@"",
        @"spy_advertiser"     :   GetConfigString(@"spy_advertiser")? :@"",
        
    };
    
    return _commDic;
}

#pragma mark - 注册账号
+(void)doRegisterAccountWithUserName:(NSString *)userName
                         andPassword:(NSString *)password
                       phoneAreaCode:(NSString *)phoneAreaCode
                         phoneNumber:(NSString *)phoneN
                              vfCode:(NSString *)vfCode
                          interfaces:(NSString *)interfaces
                      otherParamsDic:(NSDictionary *)otherParamsDic
                        successBlock:(BJServiceSuccessBlock)successBlock
                          errorBlock:(BJServiceErrorBlock)errorBlock
{
    
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:[self appendCommParamsDic]];
    if (otherParamsDic) {
        [params addEntriesFromDictionary:otherParamsDic];
    }
    
    userName = !userName?@"":userName;
    userName = [userName lowercaseString];
    //获取时间戳
    NSString * timeStamp=[SUtil getTimeStamp];
    //获取md5加密的值
    NSMutableString * md5str=[[NSMutableString alloc]init];
    [md5str appendFormat:@"%@",APP_KEY]; //AppKey
    [md5str appendFormat:@"%@",timeStamp]; //时间戳
    [md5str appendFormat:@"%@",userName]; //用户名
//    [md5str appendFormat:@"%@",[[GamaFunction getMD5StrFromString:password] lowercaseString]]; //用户密码
    [md5str appendFormat:@"%@",GAME_CODE];
    NSString * md5SignStr=[SUtil getMD5StrFromString:md5str];
    
    NSDictionary *dic = nil;
    
    @try {
        dic = @{
            @"signature"        :md5SignStr,
            @"timestamp"        :timeStamp,
            @"gameCode"         :GAME_CODE,
            @"loginId"          :userName,
            @"password"         :[SUtil getMD5StrFromString:password],
            @"phoneAreaCode"    :phoneAreaCode,
            @"phone"            :phoneN,
            @"vfCode"           :vfCode,
            @"registPlatform"   :LOGIN_TYPE_SELF,
        };
        [params addEntriesFromDictionary:dic];
    } @catch (NSException *exception) {
        
    }
    
    
    [HttpServiceEngineLogin getRequestWithFunctionPath:api_login_register params:params successBlock:successBlock errorBlock:errorBlock];
    
}


+(void)doChangePasswordWithUserName:(NSString *)userName
                     andOldPassword:(NSString *)oldPassword
                     andNewPassword:(NSString *)newPassword
                     otherParamsDic:(NSDictionary *)otherParamsDic
                       successBlock:(BJServiceSuccessBlock)successBlock
                         errorBlock:(BJServiceErrorBlock)errorBlock
{
    
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:[self appendCommParamsDic]];
    if (otherParamsDic) {
        [params addEntriesFromDictionary:otherParamsDic];
    }
    
    //获取时间戳
    NSString * timeStamp=[SUtil getTimeStamp];
    userName = [userName lowercaseString];
    
    //获取md5加密的值gamesPojo.getAppKey() + timestamp + name + pwd + newPwd + gameCode;
    NSMutableString * md5str=[[NSMutableString alloc]init];
    [md5str appendString:APP_KEY]; //AppKey
    [md5str appendString:timeStamp]; //时间戳
    [md5str appendFormat:@"%@",userName]; //用户名
//    [md5str appendString:[[GamaFunction getMD5StrFromString:oldPassword] lowercaseString]]; //用户密码
//    [md5str appendString:[[GamaFunction getMD5StrFromString:newPassword] lowercaseString]]; //新密码
    [md5str appendString:GAME_CODE]; //gamecode
    NSString * md5SignStr=[SUtil getMD5StrFromString:md5str];
    
    NSDictionary *dic = nil;
    @try {
        dic = @{
            @"signature"        :md5SignStr,
            @"timestamp"        :timeStamp,
            @"gameCode"         :GAME_CODE,
            @"name"             :userName,
            @"loginId"          :userName,
            @"oldPwd"           :[[SUtil getMD5StrFromString:oldPassword] lowercaseString],
            @"newPwd"           :[[SUtil getMD5StrFromString:newPassword] lowercaseString],
            @"registPlatform"   :LOGIN_TYPE_SELF,
        };
        
        [params addEntriesFromDictionary:dic];
        
    } @catch (NSException *exception) {
        
    }
    
    [HttpServiceEngineLogin getRequestWithFunctionPath:api_change_pwd params:params successBlock:successBlock errorBlock:errorBlock];
    
}


+(void)doForgotPasswordWithUserName:(NSString *)userName
                     phoneAreaCode:(NSString *)phoneAreaCode
                       phoneNumber:(NSString *)phoneN
                             email:(NSString *)email
                            vfCode:(NSString *)vfCode
                        interfaces:(NSString *)interfaces
                    otherParamsDic:(NSDictionary *)otherParamsDic
                      successBlock:(BJServiceSuccessBlock)successBlock
                        errorBlock:(BJServiceErrorBlock)errorBlock
{
    
    
    
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:[self appendCommParamsDic]];
    if (otherParamsDic) {
        [params addEntriesFromDictionary:otherParamsDic];
    }
    
    /*-----------获取参数----------*/
    //获取时间戳
    NSString * timeStamp=[SUtil getTimeStamp];
    userName = userName?userName:@"";
    userName = [userName lowercaseString];
    email = [email lowercaseString];
    
    NSMutableString * md5str=[[NSMutableString alloc]init];
    [md5str appendString:APP_KEY]; //AppKey
    [md5str appendString:timeStamp]; //时间戳
    [md5str appendString:email]; //用户名
    [md5str appendString: GAME_CODE]; //gamecode
    NSString * md5SignStr=[SUtil getMD5StrFromString:md5str];
    
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
    
    [HttpServiceEngineLogin getRequestWithFunctionPath:api_forgot_pwd params:params successBlock:successBlock errorBlock:errorBlock];
    
}


#pragma mark - 绑定账号
+ (void)doAccountBindingWithUserName:(NSString *)userName
                            password:(NSString *)password
                       phoneAreaCode:(NSString *)phoneAreaCode
                         phoneNumber:(NSString *)phoneN
                              vfCode:(NSString *)vfCode
                               email:(NSString *)email
                             thirdId:(NSString *)thirdId
                          thirdPlate:(NSString *)thirdPlate
                      otherParamsDic:(NSDictionary *)otherParamsDic
                        successBlock:(BJServiceSuccessBlock)successBlock
                          errorBlock:(BJServiceErrorBlock)errorBlock
{
    //@{@"vfCode": vfCode,@"phone": phoneNum,@"phoneAreaCode": areaCode}
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:[self appendCommParamsDic]];
    if (otherParamsDic) {
        [params addEntriesFromDictionary:otherParamsDic];
    }
    
    userName = [userName lowercaseString];
    
    //获取时间戳
    NSString * timeStamp=[SUtil getTimeStamp];
    //获取md5加密的值  appkey+ts+name+pwd+gamecode+thirdPlatId+thirdPlatform
    NSMutableString * md5str=[[NSMutableString alloc] init];
    [md5str appendFormat:@"%@",APP_KEY]; //AppKey
    [md5str appendFormat:@"%@",timeStamp]; //时间戳
    [md5str appendFormat:@"%@",userName]; //用户名
//    [md5str appendFormat:@"%@",[[GamaFunction getMD5StrFromString:password] lowercaseString]]; //用户密码
    [md5str appendFormat:@"%@",GAME_CODE];
//    [md5str appendFormat:@"%@",[thirdId lowercaseString]];//thirdid
//    [md5str appendFormat:@"%@",[thirdPlate lowercaseString]];//thirdplatform
    
    NSString * md5SignStr=[SUtil getMD5StrFromString:md5str];
    
    @try {
        NSDictionary *dic = @{
            @"signature"        :[md5SignStr lowercaseString],
            @"timestamp"        :timeStamp,
            @"gameCode"         :GAME_CODE,
            @"name"             :userName,
            @"loginId"          :userName,
            @"password"         :[[SUtil getMD5StrFromString:password] lowercaseString],
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
    
    [HttpServiceEngineLogin getRequestWithFunctionPath:api_bind_account params:params successBlock:successBlock errorBlock:errorBlock];
    
}

+ (void)deleteAccount:(AccountModel *)accountMode
                      otherParamsDic:(NSDictionary *)otherParamsDic
                        successBlock:(BJServiceSuccessBlock)successBlock
                          errorBlock:(BJServiceErrorBlock)errorBlock
{
    //@{@"vfCode": vfCode,@"phone": phoneNum,@"phoneAreaCode": areaCode}
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:[self appendCommParamsDic]];
    if (otherParamsDic) {
        [params addEntriesFromDictionary:otherParamsDic];
    }
    
    //获取时间戳
    NSString * timeStamp=[SUtil getTimeStamp];
    //获取md5加密的值  appkey+ts+name+pwd+gamecode+thirdPlatId+thirdPlatform
    NSMutableString * md5str=[[NSMutableString alloc] init];
    [md5str appendFormat:@"%@",APP_KEY]; //AppKey
    [md5str appendFormat:@"%@",timeStamp]; //时间戳
    [md5str appendFormat:@"%@",accountMode.userId]; //用户名
//    [md5str appendFormat:@"%@",[[GamaFunction getMD5StrFromString:password] lowercaseString]]; //用户密码
    [md5str appendFormat:@"%@",GAME_CODE];
//    [md5str appendFormat:@"%@",[thirdId lowercaseString]];//thirdid
//    [md5str appendFormat:@"%@",[thirdPlate lowercaseString]];//thirdplatform
    
    NSString * md5SignStr=[SUtil getMD5StrFromString:md5str];
    
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
    
    [HttpServiceEngineLogin getRequestWithFunctionPath:api_delete_account params:params successBlock:successBlock errorBlock:errorBlock];
    
}

#pragma mark - 創單
+ (void)createOrderWithproductId:(NSString *)productId
            cpOrderId:(NSString *)cpOrderId
                extra:(NSString *)extra
             gameInfo:(GameUserModel*)gameUserModel
         accountModel:(AccountModel*) accountModel
                      otherParamsDic:(NSDictionary *)otherParamsDic
                        successBlock:(PayServiceSuccessBlock)successBlock
                          errorBlock:(PayServiceErrorBlock)errorBlock
{
    //@{@"vfCode": vfCode,@"phone": phoneNum,@"phoneAreaCode": areaCode}
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:[self appendCommParamsDic]];
    if (otherParamsDic) {
        [params addEntriesFromDictionary:otherParamsDic];
    }
    
    //获取时间戳
    NSString * timeStamp=[SUtil getTimeStamp];
    //获取md5加密的值  appkey+ts+name+pwd+gamecode+thirdPlatId+thirdPlatform
    NSMutableString * md5str=[[NSMutableString alloc] init];
    [md5str appendFormat:@"%@",APP_KEY]; //AppKey
    [md5str appendFormat:@"%@",GAME_CODE];
    [md5str appendFormat:@"%@",accountModel.userId]; //用户名
    [md5str appendFormat:@"%@",timeStamp]; //时间戳
    
//    [md5str appendFormat:@"%@",[[GamaFunction getMD5StrFromString:password] lowercaseString]]; //用户密码
    
//    [md5str appendFormat:@"%@",[thirdId lowercaseString]];//thirdid
//    [md5str appendFormat:@"%@",[thirdPlate lowercaseString]];//thirdplatform
    
    NSString * md5SignStr=[SUtil getMD5StrFromString:md5str];
    
    @try {
        NSDictionary *dic = @{
            @"signature"        :[md5SignStr lowercaseString],
            @"timestamp"        :timeStamp,
            @"gameCode"         :GAME_CODE,
            @"userId"           :accountModel.userId,
            @"loginAccessToken"  :accountModel.token,
            @"loginTimestamp"   :accountModel.timestamp,
            @"thirdPlatId"      :accountModel.thirdId,
            @"thirdLoginId"     :accountModel.thirdId,
            
            @"registPlatform"   :accountModel.loginType,
            @"loginMode"        :accountModel.loginType,
            
            @"payType"          :@"apple",
            @"mode"             :@"apple",//支付方式
            @"productId"           :productId,
            @"extra"           :extra,
            @"cpOrderId"         :cpOrderId,
            @"serverCode"           :gameUserModel.serverCode,
            @"serverName"           :gameUserModel.serverName,
            @"roleId"           :gameUserModel.roleID,
            @"roleName"           :gameUserModel.roleName,
            @"roleLevel"           :gameUserModel.roleLevel,
            @"roleVipLevel"           :gameUserModel.roleVipLevel,

        };
        
        [params addEntriesFromDictionary:dic];
        
    } @catch (NSException *exception) {
        NSLog(@"exception:%@",exception.description);
    }
    
    [HttpServiceEnginePay getRequestWithFunctionPath:api_order_create params:params successBlock:successBlock errorBlock:errorBlock];
    
}

+ (void)paymentWithTransactionId:(NSString *)transactionId
                     receiptData:(NSString *)receiptData
                         orderId:(NSString *)orderId
                        gameInfo:(GameUserModel*)gameUserModel
                    accountModel:(AccountModel*) accountModel
                      otherParamsDic:(NSDictionary *)otherParamsDic
                        successBlock:(PayServiceSuccessBlock)successBlock
                          errorBlock:(PayServiceErrorBlock)errorBlock
{
    //@{@"vfCode": vfCode,@"phone": phoneNum,@"phoneAreaCode": areaCode}
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:[self appendCommParamsDic]];
    if (otherParamsDic) {
        [params addEntriesFromDictionary:otherParamsDic];
    }
    
    //获取时间戳
    NSString * timeStamp=[SUtil getTimeStamp];
    //获取md5加密的值  appkey+ts+name+pwd+gamecode+thirdPlatId+thirdPlatform
    NSMutableString * md5str=[[NSMutableString alloc] init];
    [md5str appendFormat:@"%@",APP_KEY]; //AppKey
    [md5str appendFormat:@"%@",GAME_CODE];
    [md5str appendFormat:@"%@",accountModel.userId]; //用户名
    [md5str appendFormat:@"%@",timeStamp]; //时间戳
    
//    [md5str appendFormat:@"%@",[[GamaFunction getMD5StrFromString:password] lowercaseString]]; //用户密码
    
//    [md5str appendFormat:@"%@",[thirdId lowercaseString]];//thirdid
//    [md5str appendFormat:@"%@",[thirdPlate lowercaseString]];//thirdplatform
    
    NSString * md5SignStr=[SUtil getMD5StrFromString:md5str];
    
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
            
//            @"thirdPlatId"      :accountModel.thirdId,
//            @"thirdLoginId"     :accountModel.thirdId,
//
//            @"registPlatform"   :accountModel.loginType,
//            @"loginMode"        :accountModel.loginType,
            
            @"payType"          :@"apple",
            @"mode"             :@"apple",//支付方式
//            @"serverCode"           :gameUserModel.serverCode,
//            @"serverName"           :gameUserModel.serverName,
//            @"roleId"           :gameUserModel.roleID,
//            @"roleName"           :gameUserModel.roleName,
//            @"roleLevel"           :gameUserModel.roleLevel,
//            @"roleVipLevel"           :gameUserModel.roleVipLevel,

        };
        
        [params addEntriesFromDictionary:dic];
        
    } @catch (NSException *exception) {
        NSLog(@"exception:%@",exception.description);
    }
    
    [HttpServiceEnginePay getRequestWithFunctionPath:api_payment params:params successBlock:successBlock errorBlock:errorBlock];
    
}


#pragma mark - 通過url創建通用參數鏈接
+(NSString *) createSdkUrl:(NSString *)url{
    
    return @"";
}

@end
