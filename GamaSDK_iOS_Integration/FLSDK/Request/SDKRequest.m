//
//  SDKRequest.m

//
//  Created by ganyuanrong on 2020/7/20.
//  Copyright © 2020 . All rights reserved.
//

#import "SDKRequest.h"


@implementation SDKRequest

#pragma mark - 免注册
+(void)freeLoginOrRegisterWithSuccessBlock:(BJServiceSuccessBlock)successBlock
                                errorBlock:(BJServiceErrorBlock)errorBlock
{
    NSString *loginId =[GamaFunction getGamaUUID]; 
    [self thirdLoginOrReg:loginId andThirdPlate:_SDK_PLAT_MAC addOtherParams:nil successBlock:successBlock errorBlock:errorBlock];
    
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
    NSString * timeStamp=[GamaFunction getTimeStamp];
    
    BOOL isGuestLogin = [thirdPlate isEqualToString:_SDK_PLAT_MAC];
    // 签名顺序不能变
    NSMutableString * md5str= [[NSMutableString alloc] init];
    [md5str appendFormat:@"%@",APP_KEY]; //AppKey
    [md5str appendFormat:@"%@",timeStamp]; //时间戳
    [md5str appendFormat:@"%@",[thirdId lowercaseString]]; //用户名
    [md5str appendFormat:@"%@",GAME_CODE];//gamecode
//    isGuestLogin ? : [md5str appendFormat:@"%@",thirdPlate];
    NSString * md5SignStr=[GamaFunction getMD5StrFromString:md5str];
    
    
    NSDictionary *dic = nil;
    
    // NSArray *expectDictArr = nil;
    @try {
        dic = @{
            @"signature"        :[md5SignStr lowercaseString],
            @"timestamp"        :timeStamp,
            @"gameCode"         :[NSString stringWithFormat:@"%@", GAME_CODE],
            @"registPlatform"   :thirdPlate,
            @"thirdPlatId"      :thirdId,
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
    NSString *timestamp = [GamaFunction getTimeStamp];
    //获取md5加密的值
    NSMutableString * md5str=[[NSMutableString alloc]init];
    [md5str appendFormat:@"%@",APP_KEY]; //AppKey
    [md5str appendFormat:@"%@",timestamp]; //时间戳
    [md5str appendFormat:@"%@",[userName lowercaseString]]; //用户名
//    [md5str appendFormat:@"%@",[[GamaFunction getMD5StrFromString:password] lowercaseString]]; //用户密码
    [md5str appendFormat:@"%@",GAME_CODE];//gamecode
    NSString * md5SignStr=[GamaFunction getMD5StrFromString:md5str];
    
    NSDictionary *dic = nil;
    @try {
        dic = @{
            @"signature"        :[md5SignStr lowercaseString],
            @"timestamp"        :timestamp,
            @"gameCode"         :[NSString stringWithFormat:@"%@",GAME_CODE],
            @"loginId"             :[userName lowercaseString],
            @"password"              :[[GamaFunction getMD5StrFromString:password] lowercaseString],
            @"registPlatform"   :_SDK_PLAT_SELF,
            
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
    
    NSString *timeStamp = [GamaFunction getTimeStamp];
    NSMutableString * md5str=[[NSMutableString alloc]init];
    [md5str appendFormat:@"%@",APP_KEY]; //AppKey
    [md5str appendFormat:@"%@",timeStamp]; //时间戳
    [md5str appendFormat:@"%@",vf_acccount];
    [md5str appendFormat:@"%@",GAME_CODE];//gamecode
    
    NSString * md5SignStr=[GamaFunction getMD5StrFromString:md5str];
    
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
        @"packageName"      :     [GamaFunction getBundleIdentifier],
        @"adId"             :     [[GamaFunction getIdfa]       lowercaseString]? : @"",
        @"idfa"             :     [[GamaFunction getIdfa]       lowercaseString]? : @"",
        @"uuid"             :     [[GamaFunction getGamaUUID]     lowercaseString]? : @"",
        @"versionName"      :     [GamaFunction getBundleShortVersionString]? : @"",
        @"versionCode"      :     [GamaFunction getBundleVersion]? : @"",
        @"systemVersion"    :     [GamaFunction getSystemVersion]? : @"",
        @"deviceType"       :     [GamaFunction getDeviceType]? : @"",
        @"os"               :     @"ios", //os=ios
        @"gameLanguage"     :     @"zh_TW",
        @"osLanguage"       :     [GamaFunction getPreferredLanguage]? : @"",
        
        //      @"loginTimestamp"   :     [GamaUserInfoModel shareInfoModel].timestamp ? : @"",
        //      @"accessToken"      :     [GamaUserInfoModel shareInfoModel].accessToken ? : @"",
        @"uniqueId"         :     [[GamaFunction getGamaUUID] lowercaseString]? : @"",
        
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
    NSString * timeStamp=[GamaFunction getTimeStamp];
    //获取md5加密的值
    NSMutableString * md5str=[[NSMutableString alloc]init];
    [md5str appendFormat:@"%@",APP_KEY]; //AppKey
    [md5str appendFormat:@"%@",timeStamp]; //时间戳
    [md5str appendFormat:@"%@",userName]; //用户名
//    [md5str appendFormat:@"%@",[[GamaFunction getMD5StrFromString:password] lowercaseString]]; //用户密码
    [md5str appendFormat:@"%@",GAME_CODE];
    NSString * md5SignStr=[GamaFunction getMD5StrFromString:md5str];
    
    NSDictionary *dic = nil;
    
    @try {
        dic = @{
            @"signature"        :md5SignStr,
            @"timestamp"        :timeStamp,
            @"gameCode"         :GAME_CODE,
            @"loginId"          :userName,
            @"password"         :[GamaFunction getMD5StrFromString:password],
            @"phoneAreaCode"    :phoneAreaCode,
            @"phone"            :phoneN,
            @"vfCode"           :vfCode,
            @"registPlatform"   :_SDK_PLAT_SELF,
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
    
    //空参数处理
    if (userName==nil||
        [userName isEqualToString:@""]||
        oldPassword==nil||
        [oldPassword isEqualToString:@""]||
        newPassword==nil||
        [newPassword isEqualToString:@""])
    {
        BJError *err = [[BJError alloc] init];
        err.message = GetConfigString(GAMA_TEXT_PARAMETER_NULL);
        errorBlock(err);
        return;
    }
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:[self appendCommParamsDic]];
    if (otherParamsDic) {
        [params addEntriesFromDictionary:otherParamsDic];
    }
    
    //获取时间戳
    NSString * timeStamp=[GamaFunction getTimeStamp];
    
    //获取md5加密的值gamesPojo.getAppKey() + timestamp + name + pwd + newPwd + gameCode;
    NSMutableString * md5str=[[NSMutableString alloc]init];
    [md5str appendString:GetConfigString(GAMA_GAME_KEY)]; //AppKey
    [md5str appendString:timeStamp]; //时间戳
    [md5str appendFormat:@"%@",[userName lowercaseString]]; //用户名
    [md5str appendString:[[GamaFunction getMD5StrFromString:oldPassword] lowercaseString]]; //用户密码
    [md5str appendString:[[GamaFunction getMD5StrFromString:newPassword] lowercaseString]]; //新密码
    [md5str appendString:[NSString stringWithFormat:@"%@",GetConfigString(SDK_GAME_CODE)]]; //gamecode
    NSString * md5SignStr=[GamaFunction getMD5StrFromString:md5str];
    
    NSDictionary *dic = nil;
    @try {
        dic = @{
            @"signature"        :md5SignStr,
            @"timestamp"        :timeStamp,
            @"gameCode"         :SDKConReader.getGameCode,
            @"name"             :[userName lowercaseString],
            @"pwd"              :[[GamaFunction getMD5StrFromString:oldPassword] lowercaseString],
            @"newPwd"           :[[GamaFunction getMD5StrFromString:newPassword] lowercaseString],
            @"registPlatform"   :_SDK_PLAT_SELF,
        };
        
        [params addEntriesFromDictionary:dic];
        
    } @catch (NSException *exception) {
        
    }
    
    [HttpServiceEngineLogin getRequestWithFunctionPath:GetConfigString(GAMA_LOGIN_STANDARD_CHANGE_PW_PRO_NAME) params:params successBlock:successBlock errorBlock:errorBlock];
    
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
    NSString * timeStamp=[GamaFunction getTimeStamp];
    userName = userName?userName:@"";
    userName = [userName lowercaseString];
    email = [email lowercaseString];
    
    NSMutableString * md5str=[[NSMutableString alloc]init];
    [md5str appendString:APP_KEY]; //AppKey
    [md5str appendString:timeStamp]; //时间戳
    [md5str appendString:email]; //用户名
    [md5str appendString: GAME_CODE]; //gamecode
    NSString * md5SignStr=[GamaFunction getMD5StrFromString:md5str];
    
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

+ (void)reportRoleInfo:(NSDictionary *)otherParamsDic
                                successBlock:(BJServiceSuccessBlock)successBlock
                                  errorBlock:(BJServiceErrorBlock)errorBlock
{
    
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:[self appendCommParamsDic]];
    if (otherParamsDic) {
        [params addEntriesFromDictionary:otherParamsDic];
    }
    
//    GameCode+ServerCode+UserId() + RoleId() + "FLYFUNGAME","UTF-8"
//    NSString *timeStamp = [GamaFunction getTimeStamp];
    NSMutableString * md5str=[[NSMutableString alloc]init];
    [md5str appendFormat:@"%@",GetConfigString(SDK_GAME_CODE)];//gamecode
    [md5str appendFormat:@"%@",[SdkUserInfoModel shareInfoModel].serverCode];
    [md5str appendFormat:@"%@",[SdkUserInfoModel shareInfoModel].userId];
    [md5str appendFormat:@"%@",[SdkUserInfoModel shareInfoModel].roleID];
    [md5str appendFormat:@"%@",@"FLYFUNGAME"];
    
    NSString * md5SignStr=[GamaFunction getMD5StrFromString:md5str];
    md5SignStr = [md5SignStr lowercaseString];
//    {
//      "device_type": "string",
//      "game_code": "string",
//      "game_name": "string",
//      "roleName": "string",
//      "role_id": "string",
//      "server_code": "string",
//      "server_name": "string",
//      "sigin": "string",
//      "system": "string",
//      "system_version": "string",
//      "user_id": "string",
//      "user_name": "string"
//    }
    NSDictionary *dic = @{@"device_type":[GamaFunction getDeviceType]? : @"",
                          @"game_code": [SDKConReader getGameCode],
                          @"game_name": [GamaFunction getBundleName]? : @"",
                          @"role_id": [SdkUserInfoModel shareInfoModel].roleID,
                          @"role_name": [SdkUserInfoModel shareInfoModel].roleName,
                          @"server_code": [SdkUserInfoModel shareInfoModel].serverCode,
                          @"server_name": [SdkUserInfoModel shareInfoModel].serverName,
                          @"sigin": md5SignStr,
                          @"system":@"ios",
                          @"system_version":[GamaFunction getSystemVersion]? : @"",
                          @"user_id": [SdkUserInfoModel shareInfoModel].userId,
//                          @"user_name": SDK_DATA.mCCSDKResponse.data.account? : @"",
    };
    
    [params addEntriesFromDictionary:dic];
    [HttpServiceEngineAd postRequestWithFunctionPath:@"adv-api/v1/role/save/" params:params successBlock:successBlock errorBlock:errorBlock];
    
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
    
    //获取时间戳
    NSString * timeStamp=[GamaFunction getTimeStamp];
    //获取md5加密的值  appkey+ts+name+pwd+gamecode+thirdPlatId+thirdPlatform
    NSMutableString * md5str=[[NSMutableString alloc] init];
    [md5str appendFormat:@"%@",GetConfigString(GAMA_GAME_KEY)]; //AppKey
    [md5str appendFormat:@"%@",timeStamp]; //时间戳
    [md5str appendFormat:@"%@",[userName lowercaseString]]; //用户名
    [md5str appendFormat:@"%@",[[GamaFunction getMD5StrFromString:password] lowercaseString]]; //用户密码
    [md5str appendFormat:@"%@",GetConfigString(SDK_GAME_CODE)];
    [md5str appendFormat:@"%@",[thirdId lowercaseString]];//thirdid
    [md5str appendFormat:@"%@",[thirdPlate lowercaseString]];//thirdplatform
    
    NSString * md5SignStr=[GamaFunction getMD5StrFromString:md5str];
    
    @try {
        NSDictionary *dic = @{
            @"signature"        :[md5SignStr lowercaseString],
            @"timestamp"        :timeStamp,
            @"gameCode"         :[NSString stringWithFormat:@"%@",GetConfigString(SDK_GAME_CODE)],
            @"name"             :[userName lowercaseString],
            @"pwd"              :[[GamaFunction getMD5StrFromString:password] lowercaseString],
            @"thirdPlatId"      :[thirdId lowercaseString],
            @"registPlatform"   :[thirdPlate lowercaseString],
            @"interfaces"       :@"2",
            @"phoneAreaCode"    :phoneAreaCode,
            @"phone"            :phoneN,
            @"vfCode"           :vfCode,
        };
        
        [params addEntriesFromDictionary:dic];
        
    } @catch (NSException *exception) {
        
    }
    
    [HttpServiceEngineLogin getRequestWithFunctionPath:GetConfigString(GAMA_LOGIN_THIRD_BINDING_PRO_NAME) params:params successBlock:successBlock errorBlock:errorBlock];
    
}



@end
