//
//  ResHeader.h
//
#import "TyponessHugehood.h"
#import "MeetHemisignate.h"
#import "NearEnvironmentitude.h"
#import "NSString+FlammficationChurchform.h"

/*获取对应配置中，key对用的关键值。*/
#define SDKRES    [NearEnvironmentitude reader]
#define GetConfigString(key) [SDKRES getStringForKey:key]
#define GetConfigBool(key) [SDKRES getBoolForKey:key]
#define GetString(key) [SDKRES getLocalizedStringForKey:key]

#define GAME_CODE [SDKRES getGameCode]
#define APP_KEY   [SDKRES getAppkey]
#define GAME_LANGUAGE [SDKRES getGameLanguage]
#define FACEBOOK_APPID [SDKRES getFacebookAppId]
#define TERMS_SERVICE_URL [SDKRES getTermsServiceUrl]

#define is_Version2 [SDKRES isVersion2]
