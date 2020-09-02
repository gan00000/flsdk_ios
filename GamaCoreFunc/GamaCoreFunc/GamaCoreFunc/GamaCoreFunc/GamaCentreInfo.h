//
//  GamaCentreInfo.h
//

#import "GamaCentreInfo.h"

#import "GamaSecurity.h"
#import "GamaURLConnect.h"
#import "GamaFunction.h"
#import "GamaAlertView.h"
#import "GamaCoreConfReader.h"
#import "SdkUserInfoModel.h"
#import "NSString+GamaURLEncoding.h"
#import "GamaRequestor.h"

#define GAMA_VERSION_SDK_DATE @""


/*控制运行时详细日志打印*/
#define GAMA_FUNCTION_LOG(log)      if(SDKConReader.ISPRINT){NSLog(@"FL_SDK:%@",log);}
#define GAMA_SHOW_CURRENT_FUNC_NAME if(SDKConReader.ISPRINT){NSLog(@"selector:%s",__FUNCTION__);}
#define GAMA_COMBIN(note,content)   ([NSString stringWithFormat:@"-%@-:%@",note,content])
#define GAMA_CLASS_COMBIN(content)  ([NSString stringWithFormat:@"-%s-:%@",object_getClassName(self),content])


/*获取对应配置中，key对用的关键值。*/
#define SDKConReader    [GamaCoreConfReader reader]
#define SDKConReaderGetString(key) [SDKConReader getStringForKey:key]
#define SDKConReaderGetBool(key) [SDKConReader getBoolForKey:key]
#define SDKConReaderGetLocalizedString(key) [SDKConReader getLocalizedStringForKey:key]

//设置加密后的plist
#define GAMA_SET_CONFIG(key,val) [SDKConReader setEncryptPlistWithKey:key andValue:val]

//重新读取plist
#define GAMA_CONFIG_RELOAD [SDKConReader reloadCoreConf]


/*是否是横屏幕*/
//#define GAMA_IS_INTERFACE_THWARTWISE [SDKConReaderGetString(GAMA_GAME_IS_INTERFACE_THWARTWISE) isEqualToString:@"YES"]
