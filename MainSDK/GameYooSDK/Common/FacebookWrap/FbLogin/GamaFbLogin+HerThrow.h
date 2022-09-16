//
//

#import "BrachyialFlig.h"

@interface BrachyialFlig (HerThrow)

+(void)doFacebookBindingWithUserName:(NSString *)userName
                         andPassword:(NSString *)password
                            otherDic:(NSDictionary *)otherDic;

/**
 *	@brief	facebook绑定免注册，
 facebook登陆分三大步骤：
 1 通过facebookSDK借口，获取到facebook的token
 2 通过facebook服务器相关URL＋token参数，获取用户信息facebookid
 3 利用facebookid进行第三方对应的UserID帐号绑定
 */
+(void)doFacebookBindingwithUserID:(NSString *)UserID;
@end
