

#define AppKey          SDKConReaderGetString(GAMA_GAME_KEY)
#define GameCode        SDKConReaderGetString(SDK_GAME_CODE)
#define Language        [GamaFunction getServerLocaleStrWithGameLanguage:SDKConReaderGetString(GAMA_GAME_LANGUAGE)]
#define FirstDomain     SDKConReaderGetString(GAMA_LOGIN_DOMAIN_NAME)
#define SecondDomain    SDKConReaderGetString(GAMA_LOGIN_DOMAIN_NAME_IN_RESERVE)
#define LoginTypeName   @"gamesword"

@interface GamaLoginFunction : NSObject

#pragma mark - 公用的一些方法
//纪录登陆玩家信息
+(void)updataLastLoginUserInfoWithNewInfo:(NSDictionary *)loginUserInfo;

//字符串加密转码
+(NSString *)loginEncryptFromString:(NSString *)aString;

//字符串转码解密
+(NSString *)loginDecryptFromString:(NSString *)aString;

/**
 *  以NSDictionary的形式保存用户名字和密码到plist中,userName保存的key为SPLastUserName;password保存的key为SPLastUserPassword
 *
 *  @param  userName    需要保存的名字
 *  @param  password    需要保存的密码
 */
+ (void)saveEncryptedUserInfoToUserDefaultWith:(NSString *)userName
                                   andPassword:(NSString *)password;

/**
 *  保存GamaPlatform需要的信息到plist中
 *  
 *  @param  loginType   Gama
 *  @param  loginId     第三方登入时的id。不是第三方登入时填入@""
 *  @param  userId      登入的userId
 */
+ (void)saveUiserInfoForThePlatformWith:(NSString *)loginType
                             andLoginId:(NSString *)loginId
                              andUserId:(NSString *)userId;
@end



/**
 修改密码
 */
@interface GamaLoginFunction (ResetPassword)

+(void)doResetPasswordWithUserName:(NSString *)userName
                    andOldPassword:(NSString *)oldPassword
                    andNewPassword:(NSString *)newPassword
                     andDomainName:(NSString *)domainName;

@end


/**
 注册
 */
@interface GamaLoginFunction (RegisterAccount)

+(void)doRegisterAccountWithUserName:(NSString *)userName
                             andPassword:(NSString *)password
                                andEmail:(NSString *)email
                           andDomainName:(NSString *)domainName;


+(void)doRegisterAccountWithUserName:(NSString *)userName
                         andPassword:(NSString *)password
                            otherDic:(NSDictionary *)parDic
                       andDomainName:(NSString *)domainName;
@end


/**
 找回密码
 */
@interface GamaLoginFunction (FindPassword)

+(void)doRegetPasswordWithUserName:(NSString *)userName
                          andEmail:(NSString *)email
                     andDomainName:(NSString *)domainName;

+(void)_doRegetPasswordWithUserName:(NSString *)userName
                           otherDic:(NSDictionary *)otherDic
                      andDomainName:(NSString *)domainName;
@end


/**
 登录
 */
@interface GamaLoginFunction (AccountLogin)

+(void)doLoginWithAccount:(NSString *)userName
              andPassword:(NSString *)password
            andDomainName:(NSString *)domainName;

+(void)doLoginWithAccount:(NSString *)userName
              andPassword:(NSString *)password
                 otherDic:(NSDictionary *)otherDic
            andDomainName:(NSString *)domainName;

@end





