//
//

#import <Foundation/Foundation.h>

/*
 登陆功能的打印，由向安装后的项目添加文件控制打印，
 可以把项目运行的每一步详细打印到log里面，便于调试*/
#define GAMA_LOGIN_LOG(log)         if(SDKConReader.ISPRINT){NSLog(@"login:%@",log);}


/*纪录上次登陆用户的key*/
//登陆（注册）成功以后，保存的NSUserDefault的key
#define GAMA_LOGIN_LAST_LOGIN_USER_INFO_KEY @"GAMA_LOGIN_LAST_LOGIN_USER_INFO_KEY"


//免注册登陆次数，和绑定帐号信息
#define GAMA_FREE_LOGIN_TIMES_INFO_KEY      @"GAMA_FREE_LOGIN_TIMES_INFO_KEY"


/**/
#define GAMA_LOGIN_ACCOUNT_PREFIX           @"loginNamePrefix"

//记录给平台的信息key
#define GAMA_LOGIN_INFO_FOR_PLATFORM        @"PLATFORMSTR"

#define OPEN_BIND_PHONE_VIEW       @"OPEN_BIND_PHONE_VIEW"
#define IS_GUEST_BIND_ACCOUNT      @"IS_GUEST_BIND_ACCOUNT"

#define GAMA_PHONE_BIND_SUCCESS    @"GAMA_PHONE_BIND_SUCCESS"
#define GAMA_PHONE_BIND_FAIL       @"GAMA_PHONE_BIND_FAIL"

#define GAMA_THIRD_LOGIN_SUCCESS   @"GAMA_THIRD_LOGIN_SUCCESS"   //第三方登录成功
#define GAMA_THIRD_LOGIN_FAIL      @"GAMA_THIRD_LOGIN_FAIL"      //第三方登录失败
#define GAMA_THIRD_BINDING_SUCCESS @"GAMA_THIRD_BINDING_SUCCESS" //第三方绑定成功
#define GAMA_THIRD_BINDING_FAIL    @"GAMA_THIRD_BINDING_FAIL"    //第三方绑定失败
#define GAMA_ACCOUNT_BINDING_SUCCESS      @"GAMA_ACCOUNT_BINDING_SUCCESS"         //SP绑定成功
#define GAMA_ACCOUNT_BINDING_FAIL         @"GAMA_ACCOUNT_BINDING_FAIL"            //SP绑定失败

#define GAMA_SUCCESSFULLYFINDLOGINWAYS @"GAMA_SUCCESSFULLYFINDLOGINWAYS" //获取第三方登录方式成功

#define GAMA_GET_FREE_LOGIN_TIMES_AND_BIND_SUCCESS @"GAMA_GET_FREE_LOGIN_TIMES_AND_BIND_SUCCESS" //获取免注册登录次数和绑定信息成功
#define GAMA_GET_FREE_LOGIN_TIMES_AND_BIND_FAIL    @"GAMA_GET_FREE_LOGIN_TIMES_AND_BIND_FAIL"    //获取免注册登录次数和绑定信息失败
#define GAMA_FREE_LOGIN_SUCCESS_IN                 @"GAMA_FREE_LOGIN_SUCCESS_IN"                 //免注册登陆成功
#define GAMA_FREE_LOGIN_FALI_IN                    @"GAMA_FREE_LOGIN_FALI_IN"                    //免注册登陆失败
#define GAMA_FREE_BIND_SUCCESS_IN                  @"GAMA_FREE_BIND_SUCCESS_IN"                  //免注册绑定成功
#define GAMA_FREE_BIND_FAIL_IN                     @"GAMA_FREE_BIND_FAIL_IN"                     //免注册绑定失败


//记录给平台的信息key
#define GAMA_LOGIN_INFO_FOR_PLATFORM        @"PLATFORMSTR"

@protocol GamaThirdFunctionProvideSocialDataDelegate;

typedef void(^GetThirdInheritCodeBlock)(NSError * error,  NSDictionary * resultDic);
typedef void(^CheckThirdBindInfoBlock)(NSError * error,  NSDictionary * resultDic);

@interface GamaThirdFunctionPort : NSObject

+(void)thirdLoginWithThirdId:(NSString *)thirdId
               andThirdPlate:(NSString *)thirdPlate
                     andApps:(NSString *)apps
            andBusinessToken:(NSString *)businessToken
      andThirdAdditionParams:(NSDictionary *)thirdAdditionDic
               andDomainName:(NSString *)domainName
               andOtherBlock:(void(^)())block;

+(void)thirdLoginWithThirdId:(NSString *)thirdId
               andThirdPlate:(NSString *)thirdPlate
                     andApps:(NSString *)apps
               andDomainName:(NSString *)domainName
               andOtherBlock:(void(^)())block;

+ (void)doAccountBindingWithUserName:(NSString *)userName
                            password:(NSString *)password
                               email:(NSString *)email
                             thirdId:(NSString *)thirdId
                          thirdPlate:(NSString *)thirdPlate
                           addParams:(NSDictionary *)addParams
                          domainName:(NSString *)domainName
                               block:(void(^)(void))block;

+ (void)bindPhoneLogingWithThirdId:(NSString *)thirdId
                     andThirdPlate:(NSString *)thirdPlate
                           andApps:(NSString *)apps
                  andBusinessToken:(NSString *)businessToken
            andThirdAdditionParams:(NSDictionary *)thirdAdditionDic
                     andDomainName:(NSString *)domainName
                     andOtherBlock:(void(^)(void))block;

@end

