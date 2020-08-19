//
//

#import <Foundation/Foundation.h>

@interface GamaFreeLogin : NSObject


/**
 *	@brief	执行免注册登陆，免注册登陆一般获取对应设备的唯一标示。
 iOS7以下用mac；以上用保存在keychain中的cfuuid
 */
+(void)freeLogin;

/**
 *	@brief	免注册绑定接口
 *
 *	@param 	userName 	绑定的用户帐号
 *	@param 	password 	用户密码
 *	@param 	email 	用户Email
 */
+(void)bindingFreeAccountWithUserName:(NSString *)userName
                          andPassword:(NSString *)password
                             otherDic:(NSDictionary *)otherDic;

/* 新接口免注册登录，同+(void)freeLogin */
+(void)loginWithoutRegister;
/**
 *	@brief	新接口免注册绑定接口
 *
 *	@param 	userName 	绑定的用户帐号
 *	@param 	password 	用户密码
 *	@param 	email 	用户Email
  *	@param 	loginId 	用户登录ID
  *	@param 	thirdPlate 	第三方标识
 */
+(void)bindingFreeAccountWithUserName:(NSString *)userName
                          andPassword:(NSString *)password
                             andEmail:(NSString *)email
                           andLoginId:(NSString *)loginId
                        andThirdPlate:(NSString *)thirdPlate;


@end
