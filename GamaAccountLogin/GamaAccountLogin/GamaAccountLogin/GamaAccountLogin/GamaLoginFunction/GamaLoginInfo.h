
#import "GamaCentreInfo.h"
/*
 登陆功能的打印，由向安装后的项目添加文件控制打印，
 可以把项目运行的每一步详细打印到log里面，便于调试*/
#define GAMA_LOGIN_LOG(log)         if(SDKConReader.ISPRINT){NSLog(@"login:%@",log);}


/*纪录上次登陆用户的key*/
    //登陆（注册）成功以后，保存的NSUserDefault的key
#define GAMA_LOGIN_LAST_LOGIN_USER_INFO_KEY @"GAMA_LOGIN_LAST_LOGIN_USER_INFO_KEY"


//记录给平台的信息key
#define GAMA_LOGIN_INFO_FOR_PLATFORM        @"PLATFORMSTR"
