

@interface GamaLoginFuncionPort : NSObject

/*接口广播名字*/
#define GAMA_LOGIN_SUCCESS_IN                      @"GAMA_LOGIN_SUCCESS_IN"                      //用户登陆成功
#define GAMA_LOGIN_FAIL_IN                         @"GAMA_LOGIN_FAIL_IN"                         //用户登陆失败
#define GAMA_REGISTER_SUCCESS_IN                   @"GAMA_REGISTER_SUCCESS_IN"                   //注册成功
#define GAMA_REGISTER_FAIL_IN                      @"GAMA_REGISTER_FAIL_IN"                      //注册失败
#define GAMA_RESET_PASSWORD_SUCCESS_IN             @"GAMA_RESET_PASSWORD_SUCCESS_IN"             //修改密码成功
#define GAMA_RESET_PASSWORD_FAIL_IN                @"GAMA_RESET_PASSWORD_FAIL_IN"                //修改密码失败
#define GAMA_REGET_PASSWORD_SUCCESS_IN             @"GAMA_REGET_PASSWORD_SUCCESS_IN"             //获取密码成功
#define GAMA_REGET_PASSWORD_FAIL_IN                @"GAMA_REGET_PASSWORD_FAIL_IN"                //获取密码失败

#define GAMA_VERIFICATION_BIND_SUCCESS_IN          @"GAMA_VERIFICATION_BIND_SUCCESS_IN"             //获取绑定验证成功
#define GAMA_VERIFICATION_BIND_FAIL_IN             @"GAMA_VERIFICATION_BIND_FAIL_IN"                //获取绑定验证失败
#define GAMA_BIND_EMAIL_OR_PHONE_SUCCESS_IN        @"GAMA_BIND_EMAIL_OR_PHONE_SUCCESS_IN"           //绑定邮箱成功
#define GAMA_BIND_EMAIL_OR_PHONE_FAIL_IN           @"GAMA_BIND_EMAIL_OR_PHONE_FAIL_IN"              //绑定邮箱失败


/**
 *	@brief	帐号密码登陆功能接口
 *
 *	@param 	userName 	用户名字 （不可缺省或者nil）
 *	@param 	password 	用户密码 （不可缺省或者nil）
 */
+(void)loginWithAccount:(NSString *)userName
            andPassword:(NSString *)password;

+(void)loginWithAccount:(NSString *)userName
            andPassword:(NSString *)password
               otherDic:(NSDictionary *)dic;

/**
 *	@brief	注册帐号接口
 *
 *	@param 	userName 	用户名  (不可缺省或者nil)
 *	@param 	password 	用户密码 （不可缺省或者nil）
 *	@param 	email 	用户Email （可以缺省，缺省时候，填写nil或者@""）
 *	@param 	phone 	用户手机  （可以缺省，缺省时候，填写nil或者@""）
 *	@param 	code 	手机验证码 （可以缺省，缺省时候，填写nil或者@""）
 */
+(void)registerAccountWithUserName:(NSString *)userName
                       andPassword:(NSString *)password
                          andEmail:(NSString *)email;

+(void)registerAccountWithUserName:(NSString *)userName
                       andPassword:(NSString *)password
                          otherDic:(NSDictionary *)otherDic;

/**
 *	@brief	修改帐号密码接口
 *
 *	@param 	userName 	用户名 （不可缺省或者nil）
 *	@param 	oldPassword 	用户旧密码 （不可缺省或者nil）
 *	@param 	newPassword 	用户新密码 （不可缺省或者nil）
 */
+(void)resetPasswordWithUserName:(NSString *)userName
                  andOldPassword:(NSString *)oldPassword
                  andNewPassword:(NSString *)newPassword;


/**
 *	@brief	获取新密码接口
 *
 *	@param 	userName 	用户名 （不可缺省或者nil）
 *	@param 	email 	注册时候的用户邮箱（不可缺省或者nil）
 */
+(void)regetPasswordWithUserName:(NSString *)userName
                        andEmail:(NSString *)email;

+(void)regetPasswordWithUserName:(NSString *)userName
                        otherDic:(NSDictionary *)otherDic;

@end
