//
//  SDKRequest.m
//  GamaSDK_iOS
//
//  Created by ganyuanrong on 2020/7/20.
//  Copyright © 2020 Gama. All rights reserved.
//

#import "SDKRequest.h"


@implementation SDKRequest

+(void)freeLoginOrRegisterWithSuccessBlock:(BJServiceSuccessBlock)successBlock
                                errorBlock:(BJServiceErrorBlock)errorBlock
{
    NSString *loginId = ([[GamaFunction getSystemVersion] intValue]) >= 7 ? [GamaFunction getGamaUUID] : [GamaFunction getMacaddress];
    [self thirdLoginOrReg:loginId andThirdPlate:_SDK_PLAT_MAC addOtherParams:nil successBlock:successBlock errorBlock:errorBlock];
    
}


+(void) thirdLoginOrReg:(NSString *)thirdId
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
    [md5str appendFormat:@"%@",[SDKConReader getAppkey]]; //AppKey
    [md5str appendFormat:@"%@",timeStamp]; //时间戳
    [md5str appendFormat:@"%@",[thirdId lowercaseString]]; //用户名
    [md5str appendFormat:@"%@",[SDKConReader getGameCode]];//gamecode
    isGuestLogin ? : [md5str appendFormat:@"%@",thirdPlate];
    NSString * md5SignStr=[GamaFunction getMD5StrFromString:md5str];
    
    
    NSDictionary *dic = nil;
    
    // NSArray *expectDictArr = nil;
    @try {
        dic = @{
            @"signature"        :[md5SignStr lowercaseString],
            @"timestamp"        :timeStamp,
            @"gameCode"         :[NSString stringWithFormat:@"%@", [SDKConReader getGameCode]],
            @"registPlatform"   :thirdPlate,
        };
        [params addEntriesFromDictionary:dic];
        
    } @catch (NSException *exception) {
        //[self _presentAlertWithException:exception andDictionary:dic];
    }
    
    NSDictionary *additionDic = nil;
    if (!isGuestLogin) {
        @try {
            additionDic = @{
                @"thirdPlatId":thirdId,
            };
            [params addEntriesFromDictionary:additionDic];
        } @catch (NSException *exception) {
            //[self _presentAlertWithException:exception andDictionary:dic];
        }
    }
    
    NSString *requestUrlPath = @"";
    if (isGuestLogin) {
        requestUrlPath = [SDKConReader getFreeRegisterPath];
    }else{
        requestUrlPath = [SDKConReader getThirdPlatLoginOrRegisterPath];
    }
    [BJHTTPServiceEngine getRequestWithFunctionPath:requestUrlPath params:params successBlock:successBlock errorBlock:errorBlock];
}


+(void)doLoginWithAccount:(NSString *)userName
              andPassword:(NSString *)password
                 otherDic:(NSDictionary *)otherParamsDic
             successBlock:(BJServiceSuccessBlock)successBlock
               errorBlock:(BJServiceErrorBlock)errorBlock

{
    //空参数监测,这里只做简单处理。
    if (userName==nil|| [userName isEqualToString:@""]|| password==nil|| [password isEqualToString:@""])
    {
        [GamaAlertView showAlertWithMessage:SDKConReaderGetLocalizedString(GAMA_TEXT_PARAMETER_NULL)];
        BJError *mBJError = [[BJError alloc] init];
        mBJError.message = SDKConReaderGetLocalizedString(GAMA_TEXT_PARAMETER_NULL);
        errorBlock(mBJError);
        return;
    }
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:[self appendCommParamsDic]];
    if (otherParamsDic) {
        [params addEntriesFromDictionary:otherParamsDic];
    }
    NSString *timestamp = [GamaFunction getTimeStamp];
    //获取md5加密的值
    NSMutableString * md5str=[[NSMutableString alloc]init];
    [md5str appendFormat:@"%@",SDKConReaderGetString(GAMA_GAME_KEY)]; //AppKey
    [md5str appendFormat:@"%@",timestamp]; //时间戳
    [md5str appendFormat:@"%@",[userName lowercaseString]]; //用户名
    [md5str appendFormat:@"%@",[[GamaFunction getMD5StrFromString:password] lowercaseString]]; //用户密码
    [md5str appendFormat:@"%@",SDKConReaderGetString(SDK_GAME_CODE)];//gamecode
    NSString * md5SignStr=[GamaFunction getMD5StrFromString:md5str];
    
    NSDictionary *dic = nil;
    @try {
        dic = @{
            @"signature"        :[md5SignStr lowercaseString],
            @"timestamp"        :timestamp,
            @"gameCode"         :[NSString stringWithFormat:@"%@",SDKConReaderGetString(SDK_GAME_CODE)],
            @"name"             :[userName lowercaseString],
            @"pwd"              :[[GamaFunction getMD5StrFromString:password] lowercaseString],
            
        };
        
        [params addEntriesFromDictionary:dic];
    } @catch (NSException *exception) {
        
    }
    [BJHTTPServiceEngine getRequestWithFunctionPath:SDKConReaderGetString(GAMA_LOGIN_STANDARD_LOGIN_PRO_NAME) params:params successBlock:successBlock errorBlock:errorBlock];
}


+ (void)requestPhoneVerficationWithPhoneArea:(NSString *)phoneArea phoneNumber:(NSString *)phoneN
                                  interfaces:(NSString *)interfaces  //注册1 绑定2
                                    otherDic:(NSDictionary *)otherParamsDic
                                successBlock:(BJServiceSuccessBlock)successBlock
                                  errorBlock:(BJServiceErrorBlock)errorBlock
{
    
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:[self appendCommParamsDic]];
    if (otherParamsDic) {
        [params addEntriesFromDictionary:otherParamsDic];
    }
    
    NSString *timeStamp = [GamaFunction getTimeStamp];
    NSMutableString * md5str=[[NSMutableString alloc]init];
    [md5str appendFormat:@"%@",SDKConReaderGetString(GAMA_GAME_KEY)]; //AppKey
    [md5str appendFormat:@"%@",timeStamp]; //时间戳
    [md5str appendFormat:@"%@",SDKConReaderGetString(SDK_GAME_CODE)];//gamecode
    [md5str appendFormat:@"%@",phoneN]; //手机号
    NSString * md5SignStr=[GamaFunction getMD5StrFromString:md5str];
    
    NSDictionary *dic = @{@"phone":phoneN,
                          @"phoneAreaCode":phoneArea,
                          @"interfaces":interfaces,
                          @"gameCode":[NSString stringWithFormat:@"%@",SDKConReaderGetString(SDK_GAME_CODE)],
                          @"timestamp":timeStamp,
                          @"signature":md5SignStr
    };
    
    [params addEntriesFromDictionary:dic];
    [BJHTTPServiceEngine getRequestWithFunctionPath:SDKConReaderGetString(GAMA_LOGIN_ACQUIRE_PHONE_VERTIFY_CODE) params:params successBlock:successBlock errorBlock:errorBlock];
    
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
        @"operatingSystem"  :     @"ios",
        @"gameLanguage"     :     @"zh_TW",//[GamaFunction getServerLocaleStrWithGameLanguage:[SDKConReader getGameLanguage]]? : @"",
        @"osLanguage"       :     [GamaFunction getPreferredLanguage]? : @"",
        
        //      @"loginTimestamp"   :     [GamaUserInfoModel shareInfoModel].timestamp ? : @"",
        //      @"accessToken"      :     [GamaUserInfoModel shareInfoModel].accessToken ? : @"",
        @"uniqueId"         :     [[GamaFunction getGamaUUID] lowercaseString]? : @"",
        
        @"spy_platForm"       :   SDKConReaderGetString(@"gama_platForm")? :@"",
        @"spy_advertiser"     :   SDKConReaderGetString(@"gama_advertiser")? :@"",
        
    };
    
    return _commDic;
}


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
    //获取时间戳
    NSString * timeStamp=[GamaFunction getTimeStamp];
    //获取md5加密的值
    NSMutableString * md5str=[[NSMutableString alloc]init];
    [md5str appendFormat:@"%@",SDKConReaderGetString(GAMA_GAME_KEY)]; //AppKey
    [md5str appendFormat:@"%@",timeStamp]; //时间戳
    [md5str appendFormat:@"%@",[userName lowercaseString]]; //用户名
    [md5str appendFormat:@"%@",[[GamaFunction getMD5StrFromString:password] lowercaseString]]; //用户密码
    [md5str appendFormat:@"%@",SDKConReaderGetString(SDK_GAME_CODE)];
    NSString * md5SignStr=[GamaFunction getMD5StrFromString:md5str];
    
    NSDictionary *dic = nil;
    
    @try {
        dic = @{
            @"signature"        :[md5SignStr lowercaseString],
            @"timestamp"        :timeStamp,
            @"gameCode"         :SDKConReader.getGameCode,
            @"name"             :[userName lowercaseString],
            @"pwd"              :[[GamaFunction getMD5StrFromString:password] lowercaseString],
            @"phoneAreaCode"    :phoneAreaCode,
            @"phone"            :phoneN,
            @"vfCode"           :vfCode,
        };
        [params addEntriesFromDictionary:dic];
    } @catch (NSException *exception) {
        
    }
    
    
    [BJHTTPServiceEngine getRequestWithFunctionPath:SDKConReaderGetString(GAMA_LOGIN_STANDARD_REGISTER_PRO_NAME) params:params successBlock:successBlock errorBlock:errorBlock];
    
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
        err.message = SDKConReaderGetString(GAMA_TEXT_PARAMETER_NULL);
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
    [md5str appendString:SDKConReaderGetString(GAMA_GAME_KEY)]; //AppKey
    [md5str appendString:timeStamp]; //时间戳
    [md5str appendFormat:@"%@",[userName lowercaseString]]; //用户名
    [md5str appendString:[[GamaFunction getMD5StrFromString:oldPassword] lowercaseString]]; //用户密码
    [md5str appendString:[[GamaFunction getMD5StrFromString:newPassword] lowercaseString]]; //新密码
    [md5str appendString:[NSString stringWithFormat:@"%@",SDKConReaderGetString(SDK_GAME_CODE)]]; //gamecode
    NSString * md5SignStr=[GamaFunction getMD5StrFromString:md5str];
    
    NSDictionary *dic = nil;
    @try {
        dic = @{
            @"signature"        :[md5SignStr lowercaseString],
            @"timestamp"        :timeStamp,
            @"gameCode"         :SDKConReader.getGameCode,
            @"name"             :[userName lowercaseString],
            @"pwd"              :[[GamaFunction getMD5StrFromString:oldPassword] lowercaseString],
            @"newPwd"           :[[GamaFunction getMD5StrFromString:newPassword] lowercaseString],
        };
        
        [params addEntriesFromDictionary:dic];
        
    } @catch (NSException *exception) {
        
    }
    
    [BJHTTPServiceEngine getRequestWithFunctionPath:SDKConReaderGetString(GAMA_LOGIN_STANDARD_CHANGE_PW_PRO_NAME) params:params successBlock:successBlock errorBlock:errorBlock];
    
}


+(void)doRegetPasswordWithUserName:(NSString *)userName
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
    
    /*-----------获取参数----------*/
    //获取时间戳
    NSString * timeStamp=[GamaFunction getTimeStamp];
    userName = userName?userName:@"";
    
    NSMutableString * md5str=[[NSMutableString alloc]init];
    [md5str appendString:[SDKConReader getAppkey]]; //AppKey
    [md5str appendString:timeStamp]; //时间戳
    [md5str appendString:[userName lowercaseString]]; //用户名
    [md5str appendString: [SDKConReader getGameCode]]; //gamecode
    NSString * md5SignStr=[GamaFunction getMD5StrFromString:md5str];
    
    NSDictionary *dic = nil;
    
    @try {
        dic = @{
            @"signature"        :[md5SignStr lowercaseString],
            @"timestamp"        :timeStamp,
            @"gameCode"         :[SDKConReader getGameCode],
            @"name"             :[userName lowercaseString],
            @"phoneAreaCode"    :phoneAreaCode,
            @"phone"            :phoneN,
            @"vfCode"           :vfCode,
            @"interfaces"       :interfaces,
        };
        
        [params addEntriesFromDictionary:dic];
    } @catch (NSException *exception) {
        
    }
    
    [BJHTTPServiceEngine getRequestWithFunctionPath:SDKConReaderGetString(GAMA_LOGIN_STANDARD_FIND_PW_PRO_NAME) params:params successBlock:successBlock errorBlock:errorBlock];
    
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
    [md5str appendFormat:@"%@",SDKConReaderGetString(GAMA_GAME_KEY)]; //AppKey
    [md5str appendFormat:@"%@",timeStamp]; //时间戳
    [md5str appendFormat:@"%@",[userName lowercaseString]]; //用户名
    [md5str appendFormat:@"%@",[[GamaFunction getMD5StrFromString:password] lowercaseString]]; //用户密码
    [md5str appendFormat:@"%@",SDKConReaderGetString(SDK_GAME_CODE)];
    [md5str appendFormat:@"%@",[thirdId lowercaseString]];//thirdid
    [md5str appendFormat:@"%@",[thirdPlate lowercaseString]];//thirdplatform
    
    NSString * md5SignStr=[GamaFunction getMD5StrFromString:md5str];
    
    @try {
        NSDictionary *dic = @{
            @"signature"        :[md5SignStr lowercaseString],
            @"timestamp"        :timeStamp,
            @"gameCode"         :[NSString stringWithFormat:@"%@",SDKConReaderGetString(SDK_GAME_CODE)],
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
    
    [BJHTTPServiceEngine getRequestWithFunctionPath:SDKConReaderGetString(GAMA_LOGIN_THIRD_BINDING_PRO_NAME) params:params successBlock:successBlock errorBlock:errorBlock];
    
}



@end
