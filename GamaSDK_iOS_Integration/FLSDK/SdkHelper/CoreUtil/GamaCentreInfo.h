//
//  GamaCentreInfo.h
//
#import "GamaSecurity.h"
#import "GamaFunction.h"
#import "GamaAlertView.h"
#import "GamaCoreConfReader.h"
#import "SdkUserInfoModel.h"
#import "NSString+GamaURLEncoding.h"

#define GAMA_VERSION_SDK_DATE @""

/*获取对应配置中，key对用的关键值。*/
#define SDKConReader    [GamaCoreConfReader reader]
#define SDKConReaderGetString(key) [SDKConReader getStringForKey:key]
#define SDKConReaderGetBool(key) [SDKConReader getBoolForKey:key]
#define SDKConReaderGetLocalizedString(key) [SDKConReader getLocalizedStringForKey:key]


#define Device_Is_Landscape  ![GamaFunction deviceIsPortrait]

#define GAME_CODE [SDKConReader getGameCode]
#define APP_KEY   [SDKConReader getAppkey]
#define GAME_LANGUAGE [SDKConReader getGameLanguage]
#define FACEBOOK_APPID [SDKConReader getFacebookAppId]

