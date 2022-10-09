//
//  ResHeader.h
//
#import "SUtil.h"
#import "AlertUtil.h"
#import "ResReader.h"
#import "NSString+URLEncoding.h"

/*获取对应配置中，key对用的关键值。*/
#define SDKRES    [ResReader reader_MMMethodMMM]
#define GetConfigString(key) [SDKRES getStringForKey_MMMethodMMM:key]
#define GetConfigBool(key) [SDKRES getBoolForKey_MMMethodMMM:key]
#define GetString(key) [SDKRES getLocalizedStringForKey_MMMethodMMM:key]

#define GAME_CODE [SDKRES getGameCode_MMMethodMMM]
#define APP_KEY   [SDKRES getAppkey_MMMethodMMM]
#define GAME_LANGUAGE [SDKRES getGameLanguage_MMMethodMMM]
#define FACEBOOK_APPID [SDKRES getFacebookAppId_MMMethodMMM]
#define TERMS_SERVICE_URL [SDKRES getTermsServiceUrl_MMMethodMMM]

#define is_Version2 [SDKRES isVersion2_MMMethodMMM]
