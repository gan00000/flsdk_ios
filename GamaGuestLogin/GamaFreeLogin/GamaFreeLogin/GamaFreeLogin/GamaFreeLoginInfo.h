

#import "GamaFreeLogin.h"

#import "GamaCentreInfo.h"

#define GAMA_GET_FREE_LOGIN_TIMES_AND_BIND_SUCCESS @"GAMA_GET_FREE_LOGIN_TIMES_AND_BIND_SUCCESS" //获取免注册登录次数和绑定信息成功
#define GAMA_GET_FREE_LOGIN_TIMES_AND_BIND_FAIL    @"GAMA_GET_FREE_LOGIN_TIMES_AND_BIND_FAIL"    //获取免注册登录次数和绑定信息失败
#define GAMA_FREE_LOGIN_SUCCESS_IN                 @"GAMA_FREE_LOGIN_SUCCESS_IN"                 //免注册登陆成功
#define GAMA_FREE_LOGIN_FALI_IN                    @"GAMA_FREE_LOGIN_FALI_IN"                    //免注册登陆失败
#define GAMA_FREE_BIND_SUCCESS_IN                  @"GAMA_FREE_BIND_SUCCESS_IN"                  //免注册绑定成功
#define GAMA_FREE_BIND_FAIL_IN                     @"GAMA_FREE_BIND_FAIL_IN"                     //免注册绑定失败

/*
 登陆功能的打印，由向安装后的项目添加文件控制打印，
 可以把项目运行的每一步详细打印到log里面，便于调试*/
#define GAMA_FREELOGIN_LOG(log)         if(SDKConReader.ISPRINT){NSLog(@"SP_login:%@",log);}


///*纪录上次登陆用户的key*/
//    //登陆（注册）成功以后，保存的NSUserDefault的key
//#define GAMA_LOGIN_LAST_LOGIN_USER_INFO_KEY @"GAMA_LOGIN_LAST_LOGIN_USER_INFO_KEY"


//免注册登陆次数，和绑定帐号信息
#define GAMA_FREE_LOGIN_TIMES_INFO_KEY      @"GAMA_FREE_LOGIN_TIMES_INFO_KEY"


///**/
//#define GAMA_LOGIN_ACCOUNT_PREFIX           @"loginNamePrefix"

//记录给平台的信息key
#define GAMA_LOGIN_INFO_FOR_PLATFORM        @"PLATFORMSTR"

#define FREE_PLATFORM       @"unique"
