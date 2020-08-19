//

#import "GamaCentreInfo.h"

#define GAMA_FACEBOOK_LOG(log) if(SDKConReader.ISPRINT){NSLog(@"_facebook_log:%@",log);}


/*提示*/
#define GAMA_FB_SHARE_TEXT_GET_TOKEN_FAIL @"textFbShareGetTokenFail"//獲取token失敗
#define GAMA_FB_SHARE_TEXT_GET_PERMISSION_FAIL @"textFbShareGetPublicFail"//獲取權利失敗
#define GAMA_FB_SHARE_TEXT_DO_SHARE_FAIL @"textFbShareFail"//分享過程出了問題
#define GAMA_FB_SHARE_TEXT_SHARE_SUCCESS @"textFbShareSuccess"//分享成功

/*广告第三方库配置参数key*/
#define GAMA_AD_FACEBOOK_APP_ID                         @"facebookAppID"
