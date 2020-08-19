//


#import "SdkUserInfoModel.h"

@implementation SdkUserInfoModel

//@synthesize loginType = _loginType;
@synthesize userId = _userId;
@synthesize thirdId = _thirdId;
@synthesize roleID = _roleID;
@synthesize roleLevel = _roleLevel;
@synthesize roleName = _roleName;
@synthesize serverCode = _serverCode;
@synthesize serverName = _serverName;
@synthesize vipLevel = _vipLevel;
@synthesize loginTypeStr = _loginTypeStr;
@synthesize timestamp = _timestamp;
@synthesize accessToken = _accessToken;
@synthesize openUrlDesription = _openUrlDesription;

+ (SdkUserInfoModel *)shareInfoModel
{
    static SdkUserInfoModel *infoModel = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        infoModel = [[SdkUserInfoModel alloc] init];
        //infoModel.loginType = GAMA_LOGIN;
        [infoModel cleanModel];
    });
    
    return infoModel;
}

- (void)setLoginTypeWithStr:(NSString *)typeStr
{
    self.loginTypeStr = typeStr;
    
//    NSDictionary *tmpMappingDic = @{
//                                    @"gama"     : @(GAMA_LOGIN),
//                                    @"mac"      : @(RES_LOGIN),
//                                    @"alias"    : @(ALIAS_LOGIN),
//                                    @"fb"       : @(FB_LOGIN),
//                                    @"baha"     : @(BAHA_LOGIN),
//                                    @"google"   : @(GOOGLEPLUS_LOGIN),
//                                    @"line"     : @(LINE_LOGIN),
//                                    @"kakao"    : @(KAKAO_LOGIN),
//                                    @"naver"    : @(NAVER_LOGIN),
//                                    @"gc"       : @(GAMECENTER_LOGIN),
//                                    @"vk"       : @(VKONTAKTE_LOGIN),
//                                    @"twitter"  : @(TWITTER_LOGIN),
//                                    @"apple"    : @(APPLE_LOGIN),
//                                    };
//    _loginType = [tmpMappingDic[typeStr] integerValue];
}

- (void)setUserInfoWithRoleID:(NSString *)roleID
                    roleLevel:(NSString *)roleLevel
                     roleName:(NSString *)roleName
                   serverCode:(NSString *)serverCode
                   serverName:(NSString *)serverName
                     vipLevel:(NSString *)vipLevel
{
    self.roleID = roleID;
    self.roleLevel = roleLevel;
    self.roleName = roleName;
    self.serverCode = serverCode;
    self.serverName = serverName;
    self.vipLevel = vipLevel;
}

- (void)cleanModel
{
    self.userId = @"";
    self.thirdId = @"";
    self.roleID = @"";
    self.roleLevel = @"";
    self.roleName = @"";
    self.serverCode = @"";
    self.serverName = @"";
    self.vipLevel = @"";
    self.loginTypeStr = @"";
    self.timestamp = @"";
    self.accessToken = @"";
}

@end
