//
//  ResHeader.h
//
#import "SUtil.h"
#import "AlertUtil.h"
#import "ResReader.h"
#import "NSString+URLEncoding.h"

/*获取对应配置中，key对用的关键值。*/
#define SDKRES    [ResReader reader]
#define GetConfigString(key) [SDKRES getStringForKey:key]
#define GetConfigBool(key) [SDKRES getBoolForKey:key]
#define GetString(key) [SDKRES getLocalizedStringForKey:key]

#define GAME_CODE [SDKRES getGameCode]
#define APP_KEY   [SDKRES getAppkey]
#define GAME_LANGUAGE [SDKRES getGameLanguage]
#define FACEBOOK_APPID [SDKRES getFacebookAppId]
#define TERMS_SERVICE_URL [SDKRES getTermsServiceUrl]
