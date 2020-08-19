//
//  GamecenterPort.m
//  Gamecenter
//


#import "GamaGamecenterPort.h"
#import "GamaThirdFunctionPort.h"
#import "GamaGamecenterManager.h"
#import "GamaCommonHeader.h"
#import "GamaCentreInfo.h"

// 该变量用来手动控制 当第一次使用GameCenter进行登录后，第二次登录是否自动登录的 开关。
// 若不控制，GameCenter 授权后会自动登录进游戏。有些游戏是如此的（自动登录）。
static BOOL g_isClickBtn = NO;

@implementation GamaGamecenterPort

+ (void)loginWithGamecenterAutoLoginSwitch:(BOOL)autoSwitch
{
    NSString *thirdId = [GamaGamecenterManager shareGamecenterManager].localPlayerID;
    NSString *thirdPublicKeyUrl = [GamaGamecenterManager shareGamecenterManager].publicKeyUrl;
    NSString *thirdSignature = [GamaGamecenterManager shareGamecenterManager].signature;
    NSString *thirdSalt = [GamaGamecenterManager shareGamecenterManager].salt;
    NSString *thirdTimestamp = [GamaGamecenterManager shareGamecenterManager].timestamp;
    if (thirdId && ![thirdId isEqualToString:@""]) {
        [GamaThirdFunctionPort thirdLoginWithThirdId:thirdId
                                     andThirdPlate:@"gc"
                                           andApps:@""
                                  andBusinessToken:nil
                            andThirdAdditionParams:@{GAMA_LOGIN_PARAMS_GC_PUBLICKEYURL:thirdPublicKeyUrl,
                                                     GAMA_LOGIN_PARAMS_GC_SIGNATURE:thirdSignature,
                                                     GAMA_LOGIN_PARAMS_GC_SALT:thirdSalt,
                                                     GAMA_LOGIN_PARAMS_GC_TIMESTAMP:thirdTimestamp,
                                                     }
                                     andDomainName:SDKConReaderGetString(GAMA_LOGIN_DOMAIN_NAME)
                                     andOtherBlock:nil];

        return;
    }
    
    g_isClickBtn = YES;
    [[GamaGamecenterManager shareGamecenterManager] authenticateLocalPlayer:^(BOOL isSuccessed) {
        if (isSuccessed) {
            // autoLoginSwitch 的标识是当后台进入前台的时候是否自动登录GameCenter
            if ( !g_isClickBtn && !autoSwitch) { //
                return;
            }
            
            [GamaThirdFunctionPort thirdLoginWithThirdId:[GamaGamecenterManager shareGamecenterManager].localPlayerID
                                         andThirdPlate:@"gc"
                                               andApps:@""
                                      andBusinessToken:nil
                                andThirdAdditionParams:@{GAMA_LOGIN_PARAMS_GC_PUBLICKEYURL:[GamaGamecenterManager shareGamecenterManager].publicKeyUrl,
                                                         GAMA_LOGIN_PARAMS_GC_SIGNATURE:[GamaGamecenterManager shareGamecenterManager].signature,
                                                         GAMA_LOGIN_PARAMS_GC_SALT:[GamaGamecenterManager shareGamecenterManager].salt,
                                                         GAMA_LOGIN_PARAMS_GC_TIMESTAMP:[GamaGamecenterManager shareGamecenterManager].timestamp,
                                                         }
                                         andDomainName:SDKConReaderGetString(GAMA_LOGIN_DOMAIN_NAME)
                                         andOtherBlock:nil];
            
            g_isClickBtn = NO ;
        }
        else
        {
            [[NSNotificationCenter defaultCenter] postNotificationName:GAMA_THIRD_LOGIN_FAIL object:nil];
            g_isClickBtn = NO;
        }
    }];
}

+ (void)gamecenterBindWithUserName:(NSString *)userName
                       andPassword:(NSString *)password
                          otherDic:(NSDictionary *)otherDic
{ 
    NSString *thirdId = [GamaGamecenterManager shareGamecenterManager].localPlayerID;
    
    if (!thirdId || [thirdId isEqualToString:@""]) {
        g_isClickBtn = YES;
        [[GamaGamecenterManager shareGamecenterManager] authenticateLocalPlayer:^(BOOL isSuccessed) {
            if (isSuccessed) {
                
                if (!g_isClickBtn) {
                    return;
                }
                NSMutableDictionary *lastMutable = [NSMutableDictionary mutableCopy];
                [lastMutable addEntriesFromDictionary:otherDic];
                NSDictionary *thirdAddParams = @{GAMA_LOGIN_PARAMS_GC_PUBLICKEYURL:[GamaGamecenterManager shareGamecenterManager].publicKeyUrl,
                                                 GAMA_LOGIN_PARAMS_GC_SIGNATURE:[GamaGamecenterManager shareGamecenterManager].signature,
                                                 GAMA_LOGIN_PARAMS_GC_SALT:[GamaGamecenterManager shareGamecenterManager].salt,
                                                 GAMA_LOGIN_PARAMS_GC_TIMESTAMP:[GamaGamecenterManager shareGamecenterManager].timestamp,
                                                 };
                [lastMutable addEntriesFromDictionary:thirdAddParams];
                [GamaThirdFunctionPort doAccountBindingWithUserName:userName
                                                         password:password
                                                            email:nil
                                                          thirdId:[GamaGamecenterManager shareGamecenterManager].localPlayerID
                                                       thirdPlate:@"gc"
                                                        addParams:lastMutable//nil
                                                       domainName:SDKConReaderGetString(GAMA_LOGIN_DOMAIN_NAME)
                                                            block:nil];
                g_isClickBtn = NO;
            }
            else
            {
                [[NSNotificationCenter defaultCenter] postNotificationName:GAMA_THIRD_BINDING_FAIL object:nil];
                g_isClickBtn = NO;
            }
        }];
        return;
    }
    // thirdId有值，则进行第三方账号绑定
    [GamaThirdFunctionPort doAccountBindingWithUserName:userName
                                             password:password
                                                  email:otherDic[@"email"]? otherDic[@"email"] : @""
                                              thirdId:thirdId
                                           thirdPlate:@"gc"
                                            addParams:otherDic
                                           domainName:SDKConReaderGetString(GAMA_LOGIN_DOMAIN_NAME)
                                                block:nil];
}

+ (NSString *)getGamecenterUserID
{
    return [GamaGamecenterManager shareGamecenterManager].localPlayerID?[GamaGamecenterManager shareGamecenterManager].localPlayerID:@"";
}

+ (void)getGamecenterLeaderboards:(void(^)(NSArray *leaderboards))handler
{
    [[GamaGamecenterManager shareGamecenterManager] retrieveLeaderboardsWithCompletionHandler:^(BOOL isSuccessed) {
        if (handler) {
            if (isSuccessed) {
                handler([[GamaGamecenterManager shareGamecenterManager] leaderboards]);
            } else {
                handler(nil);
            }
        }
    }];
}

+ (void)reportScore:(int64_t)score
         andContext:(int64_t)context
   forLeaderboardID:(NSString *)identifier
            handler:(void(^)(BOOL isSuccessed))handler
{
    [[GamaGamecenterManager shareGamecenterManager] reportScore:score
                                                     andContext:context
                                               forLeaderboardID:identifier
                                                        handler:handler];
}

+ (void)showLeaderboard:(NSString *)leaderboardID
                handler:(void(^)(void))handler
{
    [[GamaGamecenterManager shareGamecenterManager] showLeaderboard:leaderboardID handler:handler];
}



#pragma mark - achievement

+ (void)loadAchievements:(void (^)(NSArray *, NSError *))handler
{
    [[GamaGamecenterManager shareGamecenterManager] loadAchievements:handler];
}

+ (void)reportAchievementIdentifier:(NSString *)identifier percentComplete:(double)percent
{
    [[GamaGamecenterManager shareGamecenterManager] reportAchievementIdentifier:identifier percentComplete:percent];
}

+ (void)retrieveAchievementMetadata:(void (^)(NSArray *, NSError *))handle
{
    [[GamaGamecenterManager shareGamecenterManager] retrieveAchievementMetadata:handle];
}

+ (void)loadImageWithAchievementDescription:(GKAchievementDescription *)description andCompletionHandler:(void (^)(UIImage *, NSError *))handler
{
    [[GamaGamecenterManager shareGamecenterManager] loadImageWithAchievementDescription:description andCompletionHandler:handler];
}

+ (void)showAchievementsWithDefaultState
{
    [[GamaGamecenterManager shareGamecenterManager] showAchievementsWithDefaultState];
}




@end
