

#import "GamaLoginFunction.h"

#import "GamaLoginInfo.h"

#import "GamaLoginFuncionPort.h"


@implementation GamaLoginFunction

#pragma mark -公用的一些方法
//纪录登陆玩家信息
+(void)updataLastLoginUserInfoWithNewInfo:(NSDictionary *)loginUserInfo
{
    NSDictionary * lastUserInfoDic=
    [[NSUserDefaults standardUserDefaults]objectForKey:GAMA_LOGIN_LAST_LOGIN_USER_INFO_KEY];
    if (lastUserInfoDic)
    {
        [[NSUserDefaults standardUserDefaults] removeObjectForKey:GAMA_LOGIN_LAST_LOGIN_USER_INFO_KEY];
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
    [[NSUserDefaults standardUserDefaults]setObject:loginUserInfo
                                             forKey:GAMA_LOGIN_LAST_LOGIN_USER_INFO_KEY];
    [[NSUserDefaults standardUserDefaults]synchronize];
}

+(NSString *)loginEncryptFromString:(NSString *)aString
{
    return [GamaSecurity getEncryptStringFromString:aString WithKey:@"GamaLOGIN" iv:@"login"];
}

+(NSString *)loginDecryptFromString:(NSString *)aString
{
    return [GamaSecurity getDecryptStringFromString:aString withKey:@"GamaLOGIN" iv:@"login"];
}

+ (void)saveEncryptedUserInfoToUserDefaultWith:(NSString *)userName
                                   andPassword:(NSString *)password
{
    //紀錄本次登陸的用戶信息
    NSDictionary * thisUserInfoDic=[NSDictionary dictionaryWithObjectsAndKeys:
                                    userName,@"GamaLastUserName",
                                    password,@"GamaLastUserPassword",
                                    nil];
    NSMutableDictionary * encryptDic=[[[NSMutableDictionary alloc]init]autorelease];
    for (NSString * oneKey in thisUserInfoDic.allKeys)
    {
        NSString * valueStr=[thisUserInfoDic objectForKey:oneKey];
        NSString * encryptKey=[GamaLoginFunction loginEncryptFromString:oneKey];
        NSString * encryptValue=[GamaLoginFunction loginEncryptFromString:valueStr];
        [encryptDic addEntriesFromDictionary:@{encryptKey:encryptValue}];
    }
    [self updataLastLoginUserInfoWithNewInfo:encryptDic];
}

+ (void)saveUiserInfoForThePlatformWith:(NSString *)loginType
                             andLoginId:(NSString *)loginId
                              andUserId:(NSString *)userId
{
    //for the platform
    NSString *LoginSuccessfulWithUserIDandUIDAndLoginType = [NSString stringWithFormat:@"%@,%@,%@",
                                                             loginType,loginId,userId];
    
    NSUserDefaults *userdefaults = [NSUserDefaults standardUserDefaults];
    [userdefaults setObject:LoginSuccessfulWithUserIDandUIDAndLoginType forKey:GAMA_LOGIN_INFO_FOR_PLATFORM];
    [userdefaults synchronize];
}

@end
