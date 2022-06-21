//
//

#import "GamaThirdFunction.h"
#import "GamaThirdFunctionPort.h"
#import "GamaCentreInfo.h"

#define kFirstRequestBindingStateDate @"firstRequestBindingStateDate"

#define kGuestPlatform @"unique"

@implementation GamaThirdFunction

#pragma mark -第三方账号登录（新接口）
+(void)doThirdLoginWithThirdId:(NSString *)thirdId
                 andThirdPlate:(NSString *)thirdPlate
                       andApps:(NSString *)apps
              andBusinessToken:(NSString *)businessToken
        andThirdAdditionParams:(NSDictionary *)thirdAdditionDic
                 andDomainName:(NSString *)domainName
                 andOtherBlock:(void(^)(void))block
{
    void (^otherBlock)() = Block_copy(block);
    // 初始化第三方登录类型
    [SdkUserInfoModel shareInfoModel].thirdId = thirdId;
    [[SdkUserInfoModel shareInfoModel] setLoginTypeWithStr:thirdPlate];
    
    //获取时间戳
    NSString * timeStamp=[SUtil getTimeStamp];
       
    //facebook的businessToken
    businessToken = !businessToken?@"":businessToken; 

    BOOL isGuestLogin = [thirdPlate isEqualToString:kGuestPlatform];
    // 签名顺序不能变
    NSMutableString * md5str=[[[NSMutableString alloc] init] autorelease];
    [md5str appendFormat:@"%@",SDKConReaderGetString(GAMA_GAME_KEY)]; //AppKey
    [md5str appendFormat:@"%@",timeStamp]; //时间戳
    [md5str appendFormat:@"%@",[thirdId lowercaseString]]; //用户名
    [md5str appendFormat:@"%@",SDKConReaderGetString(SDK_GAME_CODE)];//gamecode
    isGuestLogin ? : [md5str appendFormat:@"%@",thirdPlate];
    NSString * md5SignStr=[SUtil getMD5StrFromString:md5str];
    
    NSDictionary *dic = nil;
    NSDictionary *additionDic = nil;
    NSArray *expectDictArr = nil;
    @try {
        dic = @{
                @"signature"        :[md5SignStr lowercaseString],
                @"timestamp"        :timeStamp,
                @"gameCode"         :[NSString stringWithFormat:@"%@",SDKConReaderGetString(SDK_GAME_CODE)],
                @"registPlatform"   :thirdPlate,
                };
    } @catch (NSException *exception) {
        [self _presentAlertWithException:exception andDictionary:dic];
    }
    
    if (!isGuestLogin) {
        @try {
            additionDic = @{
                            @"apps":apps,
                            @"tokenBusiness":businessToken,
                            @"thirdPlatId":thirdId,
                            };
        } @catch (NSException *exception) {
            [self _presentAlertWithException:exception andDictionary:dic];
        }
    } else {
        @try {
            additionDic = @{
                            @"uniqueId":[thirdId lowercaseString],
                            };
        } @catch (NSException *exception) {
            [self _presentAlertWithException:exception andDictionary:dic];
        }
    }
    
    NSMutableDictionary *tmpNewDic = [NSMutableDictionary dictionaryWithDictionary:additionDic];
    if (thirdAdditionDic) {
        [tmpNewDic addEntriesFromDictionary:thirdAdditionDic];
    }
    
    NSString *mainDomain = [NSString stringWithFormat:@"%@%@",SDKConReaderGetString(GAMA_LOGIN_DOMAIN_NAME),isGuestLogin ? [SDKConReader getFreeRegisterPath]: SDKConReaderGetString(GAMA_LOGIN_THIRD_LOGIN_PRO_NAME)];
    NSString *backDomain = [NSString stringWithFormat:@"%@%@",SDKConReaderGetString(GAMA_LOGIN_DOMAIN_NAME_IN_RESERVE),isGuestLogin ? [SDKConReader getFreeRegisterPath]
                                                     : SDKConReaderGetString(GAMA_LOGIN_THIRD_LOGIN_PRO_NAME)];
    
    
    [GamaRequestor requestByParams:dic
                additionalParams:tmpNewDic//additionDic
                   requestDomain:mainDomain
             requestSecondDomain:backDomain
      expectResponseDicKeysArray:expectDictArr
                      retryTimes:1
                  isReqestByPost:YES
               ComplitionHandler:^(NSURLResponse *response, NSDictionary *resultJsonDic, NSError *jsonParseErr, NSString *resultStr, NSData *resultRawData, NSError *error) {
                   
                   __block BOOL isSuccessed = NO;
                   
                   if (!error && !jsonParseErr)
                   {
                       if ([[NSString stringWithFormat:@"%@",resultJsonDic[@"code"]] isEqualToString:@"9000"]) {
                           [[NSNotificationCenter defaultCenter] postNotificationName:OPEN_BIND_PHONE_VIEW object:nil userInfo:resultJsonDic];
                           return ;
                       }
                       
                       if ([[NSString stringWithFormat:@"%@",resultJsonDic[@"code"]] isEqualToString:@"9001"]) {
                           [AlertUtil showAlertWithMessage:resultJsonDic[@"message"] completion:^(NSInteger clickedBtnIndex) {
                               [[NSNotificationCenter defaultCenter] postNotificationName:IS_GUEST_BIND_ACCOUNT object:nil userInfo:resultJsonDic];
                           } andButtonTitles:@"立即綁定", nil];
                           return ;
                       }
                       
                       if ([[NSString stringWithFormat:@"%@",resultJsonDic[@"code"]] isEqualToString:@"9002"]) {
                           [AlertUtil showAlertWithMessage:resultJsonDic[@"message"]
                                                    completion:^(NSInteger clickedBtnIndex) {
                               if(clickedBtnIndex == 1){
                                   [[NSNotificationCenter defaultCenter] postNotificationName:IS_GUEST_BIND_ACCOUNT object:nil userInfo:resultJsonDic];
                               }else{
                                   isSuccessed = YES;
                                   //for the Platform
                                   NSString *oauthToken = thirdAdditionDic[GAMA_LOGIN_PARAMS_FB_OAUTHTOKEN];
                                   [self saveUserInfoForThePlatformWith:thirdPlate
                                                             andLoginId:thirdId
                                                              andUserId:[resultJsonDic objectForKey:@"userId"]
                                                                andApps:apps
                                                       andBusinessToken:businessToken
                                                          andOauthToken:oauthToken];
                                   
                                   
                                   [SdkUserInfoModel shareInfoModel].accessToken = resultJsonDic[@"accessToken"];
                                   [SdkUserInfoModel shareInfoModel].timestamp = [NSString stringWithFormat:@"%@",resultJsonDic[@"timestamp"]];
                                   [SdkUserInfoModel shareInfoModel].userId = [NSString stringWithFormat:@"%@",resultJsonDic[@"userId"]];
                                   
                                   //在Block中执行登录成功后的操作
                                   if (otherBlock) {
                                       otherBlock();
                                       Block_release(otherBlock);
                                   }
                                   if (isSuccessed) {
                                       [[NSNotificationCenter defaultCenter]postNotificationName:GAMA_THIRD_LOGIN_SUCCESS
                                                                                          object:nil
                                                                                        userInfo:resultJsonDic];
                                   } else {
                                       [AlertUtil showAlertWithMessage:resultJsonDic[@"message"]];
                                       [[NSNotificationCenter defaultCenter]postNotificationName:GAMA_THIRD_LOGIN_FAIL
                                                                                          object:nil
                                                                                        userInfo:resultJsonDic];
                                   }
                               }
                           }
                                               andButtonTitles:@"繼續登入",@"馬上綁定", nil];
                           return ;
                       }
                       //如果收到了正确得数据，则判断是否登入成功，1000,1001是登录成功
                       if ([[NSString stringWithFormat:@"%@",resultJsonDic[@"code"]] isEqualToString:@"1000"] ||
                                         [[NSString stringWithFormat:@"%@",resultJsonDic[@"code"]] isEqualToString:@"1001"]) {
                           isSuccessed = YES;
                           
                           //for the Platform
                           NSString *oauthToken = thirdAdditionDic[GAMA_LOGIN_PARAMS_FB_OAUTHTOKEN];
                           [self saveUserInfoForThePlatformWith:thirdPlate
                                                     andLoginId:thirdId
                                                      andUserId:[resultJsonDic objectForKey:@"userId"]
                                                        andApps:apps
                                               andBusinessToken:businessToken
                                                  andOauthToken:oauthToken];
                           
                           
                           [SdkUserInfoModel shareInfoModel].accessToken = resultJsonDic[@"accessToken"];
                           [SdkUserInfoModel shareInfoModel].timestamp = [NSString stringWithFormat:@"%@",resultJsonDic[@"timestamp"]];
                           [SdkUserInfoModel shareInfoModel].userId = [NSString stringWithFormat:@"%@",resultJsonDic[@"userId"]];
                           
                           //在Block中执行登录成功后的操作
                           if (otherBlock) {
                               otherBlock();
                               Block_release(otherBlock);
                           }
                       }
                       
                       if (isSuccessed) {
                           [[NSNotificationCenter defaultCenter]postNotificationName:GAMA_THIRD_LOGIN_SUCCESS
                                                                              object:nil
                                                                            userInfo:resultJsonDic];
                       } else {
                           [AlertUtil showAlertWithMessage:resultJsonDic[@"message"]];
                           [[NSNotificationCenter defaultCenter]postNotificationName:GAMA_THIRD_LOGIN_FAIL
                                                                              object:nil
                                                                            userInfo:resultJsonDic];
                       }
                   }
                   else
                   {
                       // 广播失败
                       [AlertUtil showAlertWithMessage:SDKConReaderGetLocalizedString(error?GAMA_TEXT_NO_NET:GAMA_TEXT_SERVER_RETURN_NULL)];
                       [[NSNotificationCenter defaultCenter]postNotificationName:GAMA_THIRD_LOGIN_FAIL
                                                                          object:nil];

                   }
                   
               }];
}

#pragma mark -第三方账号绑定手机
+(void)bindPhoneLogingWithThirdId:(NSString *)thirdId
                    andThirdPlate:(NSString *)thirdPlate
                          andApps:(NSString *)apps
                 andBusinessToken:(NSString *)businessToken
           andThirdAdditionParams:(NSDictionary *)thirdAdditionDic
                    andDomainName:(NSString *)domainName
                    andOtherBlock:(void(^)(void))block
{
    void (^otherBlock)() = Block_copy(block);
    // 初始化第三方登录类型
    [SdkUserInfoModel shareInfoModel].thirdId = thirdId;
    [[SdkUserInfoModel shareInfoModel] setLoginTypeWithStr:thirdPlate];
    
    //获取时间戳
    NSString * timeStamp=[SUtil getTimeStamp];
       
    //facebook的businessToken
    businessToken = !businessToken?@"":businessToken;

    BOOL isGuestLogin = [thirdPlate isEqualToString:kGuestPlatform];
    // 签名顺序不能变
    NSMutableString * md5str=[[[NSMutableString alloc] init] autorelease];
    [md5str appendFormat:@"%@",SDKConReaderGetString(GAMA_GAME_KEY)]; //AppKey
    [md5str appendFormat:@"%@",timeStamp]; //时间戳
    [md5str appendFormat:@"%@",SDKConReaderGetString(SDK_GAME_CODE)];//gamecode
    [md5str appendFormat:@"%@",[thirdId lowercaseString]]; //用户名
    [md5str appendFormat:@"%@",thirdPlate]; //registPlatform
    NSString * md5SignStr=[SUtil getMD5StrFromString:md5str];
    
    NSDictionary *dic = nil;
    NSDictionary *additionDic = nil;
    NSArray *expectDictArr = nil;
    @try {
        dic = @{
                @"signature"        :[md5SignStr lowercaseString],
                @"timestamp"        :timeStamp,
                @"gameCode"         :[NSString stringWithFormat:@"%@",SDKConReaderGetString(SDK_GAME_CODE)],
                @"registPlatform"   :thirdPlate,
                };
    } @catch (NSException *exception) {
        [self _presentAlertWithException:exception andDictionary:dic];
    }
    
    NSMutableDictionary *tmpNewDic = [NSMutableDictionary dictionaryWithDictionary:additionDic];
    if (thirdAdditionDic) {
        [tmpNewDic addEntriesFromDictionary:thirdAdditionDic];
    }
    
    NSString *mainDomain = [NSString stringWithFormat:@"%@%@",SDKConReaderGetString(GAMA_LOGIN_DOMAIN_NAME),SDKConReaderGetString(GAMA_LOGIN_THIRD_BIND_PHONE)];
    NSString *backDomain = [NSString stringWithFormat:@"%@%@",SDKConReaderGetString(GAMA_LOGIN_DOMAIN_NAME_IN_RESERVE),SDKConReaderGetString(GAMA_LOGIN_THIRD_BIND_PHONE)];
    
    [GamaRequestor requestByParams:dic
                additionalParams:tmpNewDic//additionDic
                   requestDomain:mainDomain
             requestSecondDomain:backDomain
      expectResponseDicKeysArray:expectDictArr
                      retryTimes:1
                  isReqestByPost:YES
               ComplitionHandler:^(NSURLResponse *response, NSDictionary *resultJsonDic, NSError *jsonParseErr, NSString *resultStr, NSData *resultRawData, NSError *error) {
                   
                   BOOL isSuccessed = NO;
                   
                   if (!error && !jsonParseErr)
                   {
                       //如果收到了正确得数据，则判断是否登入成功，1000,1001是登录成功
                       if ([[NSString stringWithFormat:@"%@",resultJsonDic[@"code"]] isEqualToString:@"1000"] ||
                                         [[NSString stringWithFormat:@"%@",resultJsonDic[@"code"]] isEqualToString:@"1001"]) {
                           isSuccessed = YES;
                           
                           //for the Platform
                           NSString *oauthToken = thirdAdditionDic[GAMA_LOGIN_PARAMS_FB_OAUTHTOKEN];
                           [self saveUserInfoForThePlatformWith:thirdPlate
                                                     andLoginId:thirdId
                                                      andUserId:[resultJsonDic objectForKey:@"userId"]
                                                        andApps:apps
                                               andBusinessToken:businessToken
                                                  andOauthToken:oauthToken];
                           
                           
                           [SdkUserInfoModel shareInfoModel].accessToken = resultJsonDic[@"accessToken"];
                           [SdkUserInfoModel shareInfoModel].timestamp = [NSString stringWithFormat:@"%@",resultJsonDic[@"timestamp"]];
                           [SdkUserInfoModel shareInfoModel].userId = [NSString stringWithFormat:@"%@",resultJsonDic[@"userId"]];
                           
                           //在Block中执行登录成功后的操作
                           if (otherBlock) {
                               otherBlock();
                               Block_release(otherBlock);
                           }
                       }
                       
                       if (isSuccessed) {
                           [[NSNotificationCenter defaultCenter]postNotificationName:GAMA_PHONE_BIND_SUCCESS
                                                                              object:nil
                                                                            userInfo:resultJsonDic];
                       } else {
                           [AlertUtil showAlertWithMessage:resultJsonDic[@"message"]];
                           [[NSNotificationCenter defaultCenter]postNotificationName:GAMA_PHONE_BIND_FAIL
                                                                              object:nil
                                                                            userInfo:resultJsonDic];
                       }
                   }
                   else
                   {
                       // 广播失败
                       [AlertUtil showAlertWithMessage:SDKConReaderGetLocalizedString(error?GAMA_TEXT_NO_NET:GAMA_TEXT_SERVER_RETURN_NULL)];
                       [[NSNotificationCenter defaultCenter] postNotificationName:GAMA_PHONE_BIND_FAIL
                                                                          object:nil];

                   }
                   
               }];
}

+ (void)_presentAlertWithException:(NSException *)exception andDictionary:(NSDictionary *)dic
{
    dispatch_async(dispatch_get_main_queue(),^
                   {
                       [AlertUtil showAlertWithMessage:[NSString stringWithFormat:@"!!!ERROR Dic At ThirdLogin:\n %@ \n %@", dic, exception.description]];
                   });
    GAMA_FUNCTION_LOG(exception.description);
}

#pragma mark - 绑定账号
+ (void)doAccountBindingWithUserName:(NSString *)userName
                            password:(NSString *)password
                               email:(NSString *)email
                             thirdId:(NSString *)thirdId
                          thirdPlate:(NSString *)thirdPlate
                           addParams:(NSDictionary *)addParams
                          domainName:(NSString *)domainName
                               block:(void(^)(void))block
{
    void (^otherBlock)() = Block_copy(block);
    //判断用户是否输入内容有空值；如果有空值，直接返回，提示玩家输入。
    if (userName==nil||
        [userName isEqualToString:@""]||
        password==nil||
        [password isEqualToString:@""]||
        thirdId==nil||
        [thirdId isEqualToString:@""]||
        thirdPlate==nil||
        [thirdPlate isEqualToString:@""])
    {
        [AlertUtil showAlertWithMessage:SDKConReaderGetLocalizedString(GAMA_TEXT_PARAMETER_NULL)];
        [[NSNotificationCenter defaultCenter]postNotificationName:GAMA_ACCOUNT_BINDING_FAIL
                                                           object:nil];
        return;
    }
    
    //获取时间戳
    NSString * timeStamp=[SUtil getTimeStamp];
    //获取md5加密的值  appkey+ts+name+pwd+gamecode+thirdPlatId+thirdPlatform
    NSMutableString * md5str=[[[NSMutableString alloc] init] autorelease];
    [md5str appendFormat:@"%@",SDKConReaderGetString(GAMA_GAME_KEY)]; //AppKey
    [md5str appendFormat:@"%@",timeStamp]; //时间戳
    [md5str appendFormat:@"%@",[userName lowercaseString]]; //用户名
    [md5str appendFormat:@"%@",[[SUtil getMD5StrFromString:password] lowercaseString]]; //用户密码
    [md5str appendFormat:@"%@",SDKConReaderGetString(SDK_GAME_CODE)];
    [md5str appendFormat:@"%@",[thirdId lowercaseString]];//thirdid
    [md5str appendFormat:@"%@",[thirdPlate lowercaseString]];//thirdplatform
    
    NSString * md5SignStr=[SUtil getMD5StrFromString:md5str];
    
    NSDictionary *dic = nil;
    NSDictionary *additionDic = addParams;
    NSArray *expectDictArr = nil;
    @try {
        dic = @{
                @"signature"        :[md5SignStr lowercaseString],
                @"timestamp"        :timeStamp,
                @"gameCode"         :[NSString stringWithFormat:@"%@",SDKConReaderGetString(SDK_GAME_CODE)],
                @"name"             :[userName lowercaseString],
                @"pwd"              :[[SUtil getMD5StrFromString:password] lowercaseString],
                @"thirdPlatId"      :[thirdId lowercaseString],
                @"registPlatform"   :[thirdPlate lowercaseString],
                };
    } @catch (NSException *exception) {
        dispatch_async(dispatch_get_main_queue(),^
                       {
                           [AlertUtil showAlertWithMessage:[NSString stringWithFormat:@"!!!ERROR Dic At Register:\n %@ \n %@", dic, exception.description]];
                       });
        GAMA_FUNCTION_LOG(exception.description);
    }
    // test
//    NSString *mainDomain = [NSString stringWithFormat:@"%@%@",@"http://10.10.10.200:8181/login/",SDKConReaderGetString(GAMA_LOGIN_THIRD_BINDING_PRO_NAME)];
//    NSString *backDomain = mainDomain;
    
    NSString *mainDomain = [NSString stringWithFormat:@"%@%@",domainName,SDKConReaderGetString(GAMA_LOGIN_THIRD_BINDING_PRO_NAME)];
    NSString *backDomain = [NSString stringWithFormat:@"%@%@",domainName,SDKConReaderGetString(GAMA_LOGIN_THIRD_BINDING_PRO_NAME)];
    
    [GamaRequestor requestByParams:dic
                additionalParams:additionDic
                   requestDomain:mainDomain
             requestSecondDomain:backDomain
      expectResponseDicKeysArray:expectDictArr
                      retryTimes:1
                  isReqestByPost:YES
               ComplitionHandler:^(NSURLResponse *response, NSDictionary *resultJsonDic, NSError *jsonParseErr, NSString *resultStr, NSData *resultRawData, NSError *error) {
                   
                   BOOL isSuccessed = NO;
                   
                   if (!error && !jsonParseErr)
                   {
                       NSString * codeStr= [NSString stringWithFormat:@"%@",resultJsonDic[@"code"]];
                       //绑定成功
                       if (codeStr.intValue==1000)
                       {
                           isSuccessed = YES;

                           if (otherBlock) {
                               otherBlock();
                               Block_release(otherBlock);
                           }
                           
                           //發送廣播，让登陆view更改登陆信息。
                           //借用修改密码成功的广播，让登陆界面的帐号密码变成最新绑定的帐号密码
                           NSDictionary * nowUserDic = [NSDictionary dictionaryWithObjectsAndKeys:
                                                        userName?userName:@"",@"userName",
                                                        password?password:@"",@"userPwd",
                                                      nil];
                           
                           NSString * message=resultJsonDic[@"message"];
                           [AlertUtil showAlertWithMessage:message];
                           
                           //告诉绑定界面，绑定成功，移除掉绑定界面。
                           [[NSNotificationCenter defaultCenter]postNotificationName:GAMA_THIRD_BINDING_SUCCESS//GAMA_ACCOUNT_BINDING_SUCCESS
                                                                              object:nil
                                                                            userInfo:nowUserDic];
                           return;
                       }
                       //绑定失敗
                       else if(codeStr.length == 4)
                       {
                           NSString * message=resultJsonDic[@"message"];
                           [AlertUtil showAlertWithMessage:message];
                           [[NSNotificationCenter defaultCenter]postNotificationName:GAMA_THIRD_BINDING_FAIL//GAMA_ACCOUNT_BINDING_FAIL
                                                                              object:nil];
                           
                           return;
                       }
                       else
                       {
                           [AlertUtil showAlertWithMessage:SDKConReaderGetString(GAMA_TEXT_SERVER_RETURN_ERROR)];
                           [[NSNotificationCenter defaultCenter]postNotificationName:GAMA_THIRD_BINDING_FAIL//GAMA_ACCOUNT_BINDING_FAIL
                                                                              object:nil];
                           return;
                       }
                       

                   }
                   // 无网络
                   else
                   {
                       GAMA_LOGIN_LOG(@"register gama account no net")
                       [AlertUtil showAlertWithMessage:SDKConReaderGetString(GAMA_TEXT_NO_NET)];
                       [[NSNotificationCenter defaultCenter] postNotificationName:GAMA_THIRD_BINDING_FAIL//GAMA_ACCOUNT_BINDING_FAIL
                                                                          object:nil];
                       return;
                   }
               }];
}

+ (void)saveUserInfoForThePlatformWith:(NSString *)loginType
                             andLoginId:(NSString *)loginId
                              andUserId:(NSString *)userId
                                andApps:(NSString *)apps
                       andBusinessToken:(NSString *)token
                          andOauthToken:(NSString *)oauthToken
{
    NSMutableString *LoginSuccessfulWithUserIDandUIDAndLoginType = [NSMutableString stringWithFormat:@"%@,%@,%@",
                                                             loginType,loginId,userId];
    NSUserDefaults *userdefaults = [NSUserDefaults standardUserDefaults];
    if (apps != nil && ![apps isEqualToString:@""]) {
        [LoginSuccessfulWithUserIDandUIDAndLoginType appendFormat:@",%@",apps];
        [userdefaults setObject:apps forKey:@"facebookLoginApps"];
    }
    if (token.length > 0) {
        [userdefaults setObject:token forKey:@"facebookLoginBusinessToken"];
    }
    if (oauthToken.length > 0) {
        [userdefaults setObject:oauthToken forKey:@"facebookLoginOauthToken"];
    }
    
    [userdefaults setObject:LoginSuccessfulWithUserIDandUIDAndLoginType forKey:GAMA_LOGIN_INFO_FOR_PLATFORM];
    [userdefaults synchronize];
}

- (void)dealloc
{
    [super dealloc];
}

@end
