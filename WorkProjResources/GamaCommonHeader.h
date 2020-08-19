//
//  GAMACommonHeader.h
//

#ifndef _GamaCommonHeader_h
#define _GamaCommonHeader_h

#import <Availability.h>

#ifndef __IPHONE_5_0
#warning "This project uses features only available in iOS SDK 5.0 and later."
#endif

#ifdef __OBJC__
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#endif

//通用数据
/****************************************/
/*纪录上次登陆用户的key*/
//登陆（注册）成功以后，保存的NSUserDefault的key
#define GAMA_LOGIN_LAST_LOGIN_USER_INFO_KEY @"GAMA_LOGIN_LAST_LOGIN_USER_INFO_KEY"
#define GAMA_LOGIN_INFO_FOR_PLATFORM        @"PLATFORMSTR"

/****************************************/

/*下面是核心配置的key值*/
/*网络提示语句提示*/
#define GAMA_TEXT_PARAMETER_NULL            @"textParameterNull"                  //显示内容：参数为空
#define GAMA_TEXT_NO_NET                    @"textNoNet"                          //显示内容：没有网络
#define GAMA_TEXT_SERVER_RETURN_NULL        @"textServerReturnNull"               //显示内容：服务器返回空
#define GAMA_TEXT_SERVER_RETURN_ERROR       @"textServerReturnError"              //显示内容：服务器返回error
#define GAMA_TITLE_ALERT_SURE_BTN_TITLE     @"titleAlertSureBtnTitle"             //提示内容：“确定”

/*下面是适配方法*/
#define IS_IPAD (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
#define IS_IPHONE (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)
#define IS_IPHONE_6p (IS_IPHONE && ([[UIScreen mainScreen] bounds].size.height == 736.0f || [[UIScreen mainScreen] bounds].size.width == 736.0f))
#define IS_IPHONE_6 (IS_IPHONE && ([[UIScreen mainScreen] bounds].size.height == 667.0f || [[UIScreen mainScreen] bounds].size.width == 667.0f))
#define IS_IPHONE_5 (IS_IPHONE && ([[UIScreen mainScreen] bounds].size.height == 568.0f || [[UIScreen mainScreen] bounds].size.width == 568.0f))
#define IS_IPHONE_4 (IS_IPHONE && ([[UIScreen mainScreen] bounds].size.height == 480.0f || [[UIScreen mainScreen] bounds].size.width == 480.0f))
#define IS_RETINA ([[UIScreen mainScreen] scale] == 2.0f)
#define RETURN_PROPERTY_WITH_IPAD_IPHONE_IPHONE5(ipadP,iphoneP,iphone5P) (IS_IPAD ? ipadP : (IS_IPHONE_5 ? iphone5P : iphoneP))
#define VALUE_IPAD_IP6P_IP6_IP5_IP4(ipad,iphone6plus,iphone6,iphone5,iphone4) (IS_IPAD ? ipad : (IS_IPHONE_6p ? iphone6plus : (IS_IPHONE_6 ? iphone6 : (IS_IPHONE_5 ? iphone5 : iphone4))))

/*FB绑定相关提示*/
#define GAMA_FACEBOOK_BIND_INFO                         @"__UI_ACCOUNTBIND_FACEBOOK_INFO__"
#define GAMA_FACEBOOK_BIND_CONFIRM                      @"__UI_ACCOUNTBIND_FACEBOOK_COMFIRM__"
#define GAMA_FACEBOOK_BIND_CANCEL                       @"__UI_ACCOUNTBIND_FACEBOOK_CANCLE__"
#define GAMA_FACEBOOK_BIND_INFO_LOGOUT                  @"__UI_ACCOUNTBIND_FACEBOOK_INFO_LOGOUT__"

//LBS域名
#define GAMA_LBS_DOMAINNAME                             @"lbsDomainName"
#define GAMA_MAP_APIKEY                                 @"googleMapApiKey"

/*游戏配置，和平台标示*/
#define GAMA_GAME_KEY                                   @"gamekey"                                //GAMA游戏key
#define SDK_GAME_CODE                            @"sdkGameCode"                          //GAMA游戏sdkGameCode
#define GAMA_GAME_LANGUAGE                              @"gameLanguage"                           //GAMA游戏语言
#define GAMA_GAME_REGION                                @"gameRegion"                             //GAMA游戏地区
#define GAMA_PLATFORM_REGION                            @"platformRegion"                         //获取手机区号的地区字段
#define GAMA_GAME_RETURNFBID                            @"isReturnFBID"                           //FB登录成功的时候是否返回FBID
#define GAMA_GMAE_mLanguge                              @"moreLanguage"                           //多语言版本

//#define GAMA_GAME_KEY_CHAIN_GROUP_ID      @"gameKeyChainGroupID"       //GAMA证书的组织单位－－－－－现在设置为自动获取了
// //
//#define GAMA_GAME_IS_INTERFACE_THWARTWISE               @"gameIsInterfaceThwartwise"              //是否横屏幕
#define GAMA_GAME_JUDGE_LOG_FILE_NAME                   @"gameJudgeLogFileName"                   //判断是否打印的文件名称
#define GAMA_GAME_JUDGE_LOG_FILE_CONTENT                @"gameJudgeLogFileContent"                //判断是否打印的文件内容
#define GAMA_GAME_IS_KEYCHAIN_PUBLIC                    @"gameIsKeychainPublic"                   //是否使用共有的keychain
#define GAMA_GAME_IS_PUBLICE_NOTICE                     @"gameIsPublicNotice"                     //是否开启登录界面显示公告
#define GAMA_GAME_IS_AUTO_LOGIN                         @"gameIsAutoLogin"                        //是否自动登录
#define GAMA_FB_LOGIN_STYLE                             @"isFbLoginInApp"                         //判断，是否再应用内显示Facebook登录。
#define GAMA_GAME_RESOURCE_BUNDLE_NAME                  @"gameResourceBundleName"                 //存放资源文件Bundle名称
#define GAMA_GAME_IS_INITIALIZE_AD              @"gameIsInitializeAd"
    //是否初始化广告
#define GAMA_FB_READ_PERMISSIONS                @"FacebookReadPermissions"
    //FB功能权限

// //
#define GAMA_PTF_SP_MARK                              @"ptfSPMark"                            //平台标记：GAMA 标示
#define GAMA_PTF_SP_NAME                              @"ptfSPName"                            //平台标记：GAMA 名称
#define GAMA_PTF_EVATAR_NAME                            @"ptfEvatarName"                          //平台标记：evatar 名称
#define GAMA_PTF_EVATAR_MARK                            @"ptfEvatarMark"                          //平台标记：evatar 标示


/*登录工程配置key*/
/*域名*/
#define GAMA_LOGIN_DOMAIN_NAME                          @"loginDomainName"                        //域名：登录
#define GAMA_LOGIN_DOMAIN_NAME_IN_RESERVE               @"loginDomainNameInReserve"               //域名：登录备用
#define GAMA_LOGIN_PT_DOMAIN_NAME                       @"loginPtDomainName"                      //域名：第三方平台登录
#define GAMA_LOGIN_PT_DOMAIN_NAME_IN_RESERVE            @"loginPtDomainNameInReserve"             //域名：第三方平台登录备用
/*工程名*/
#define GAMA_LOGIN_ACQUIRE_PHONE_VERTIFY_CODE           @"loginAcquirePhoneVertifyCodeProName"    //服务器接口名：手机验证码
#define GAMA_LOGIN_THIRD_BIND_PHONE                     @"loginThirdBindPhoneProName"             //服务器接口名：第三方登入绑定手机号(登入后在绑定)
#define GAMA_LOGIN_CAPTCHA_IMAGE                        @"loginCaptchaProName"                    //服务器接口名：登入图片验证
#define GAMA_LOGIN_USER_IPADTE                          @"loginUserIpdateProName"                 //服务器接口名：角色信息更新（日本）
#define GAMA_LOGIN_AGRE_VALIDATIONE                     @"loginValidationProName"                 //服务器接口名：支付年龄验证系统（日本）
#define GAMA_LOGIN_UNFIED_SWITCH                        @"loginUnfiedSwitchProName"               //服务器接口名：统一开关接口
#define GAMA_LOGIN_STANDARD_LOGIN_PRO_NAME              @"loginStandardLoginProName"              //服务器接口名：登录
#define GAMA_LOGIN_STANDARD_FREE_LOGIN_PRO_NAME              @"loginFreeRegisterProName"              //服务器接口名：免注册登录
#define GAMA_LOGIN_STANDARD_REGISTER_PRO_NAME           @"loginStandardRegisterProName"           //服务器接口名：注册
#define GAMA_LOGIN_STANDARD_CHANGE_PW_PRO_NAME          @"loginStandardChangePwdProName"          //服务器接口名：修改密码
#define GAMA_LOGIN_STANDARD_FIND_PW_PRO_NAME            @"loginStandardFindPwdProName"            //服务器接口名：找回密码
#define GAMA_LOGIN_STANDARD_THIRD_LOGIN_PRO_NAME        @"loginStandardThirdLoginProName"         //服务器接口名：第三方登录
#define GAMA_LOGIN_STANDARD_BINDING_PRO_NAME            @"loginStandardBindingProName"            //服务器接口名：账号绑定
#define GAMA_LOGIN_STANDARD_HAS_BIND_SP_PRO_NAME        @"loginStandardHasBindSPProName"        //服务器接口名：已经绑定账号查询
#define GAMA_LOGIN_STANDARD_BINDING_EMAIL_PRO_NAME      @"loginStandardBindingEmailProName"       //服务器接口名：邮箱绑定
#define GAMA_LOGIN_PARTER_LOGIN_PRO_NAME                @"loginPartnerLoginProName"               //服务器接口名：合作商登录
#define GAMA_LOGIN_ASSIST_VERIFICATION_BIND_EMAIL_PHONE @"loginAssistLoadCodeWithAccount"         //服务器接口名：发送验证绑定普通账号与邮箱或手机
#define GAMA_LOGIN_ASSIST_VERIFICATION_EMAIL_PHONE      @"loginAssistLoadCode"                    //服务器接口名：发送验证码绑定邮箱或手机
#define GAMA_LOGIN_ASSIST_BIND_EMAIL_PHONE              @"loginAssistBind"                        //服务器接口名：普通账号绑定邮箱或手机
#define GAMA_LOGIN_ASSIST_Find_EMAIL_PHONE              @"loginAssistFindPSW"                     //服务器接口名：用邮箱或者手机找回密码(新)
#define GAMA_LOGIN_ASSIST_VALIDATE_USER_MESSAGE         @"loginValidateUserBindingInfo"           //服务器接口名：获取账户手机或邮箱绑定信息
/*服务器第三方账号新接口*/
#define GAMA_LOGIN_THIRD_LOGIN_PRO_NAME                 @"loginThirdLoginProName"                 //服务器新接口名：第三方登录
#define GAMA_LOGIN_THIRD_BINDING_PRO_NAME               @"loginThirdBindingProName"               //服务器新接口名：账号绑定
#define GAMA_LOGIN_THIRD_SP_BIND_PRO_NAME             @"loginThirdSPBindProName"              //服务器新接口名：GAMA账号绑定
#define GAMA_LOGIN_THIRD_HAS_BIND_SP_PRO_NAME         @"loginThirdHasBindProName"               //服务器新接口名：已经绑定账号查询
#define GAMA_LOGIN_THIRD_URGENT_PRO_NAME                @"loginThirdUrgentProName"                //服务器新接口名称：第三方登录接口失效，紧急登录接口
#define GAMA_LOGIN_FIND_LOGIN_WAYS_PRO_NAME             @"findLoginWaysProName"                   //服务器新接口名称：检测第三方登录接口是否失效
#define GAMA_LOGIN_THIRD_GET_THIRD_INHERIT_CODE         @"loginThirdGetThirdInheritCode"          //服务器新接口名称：获取第三方的继承码，目前仅限免注册登录(日本地区使用)
#define GAMA_LOGIN_CHECK_THIRD_BIND_STATUE              @"checkThirdBindStatue"                   //服务器新接口名称:查询第三方绑定的状态（免注册绑定第三方）
// //
#define GAMA_LOGIN_ACCOUNT_PREFIX                       @"loginNamePrefix"                        //登录账号的前缀
#define GAMA_LOGIN_TEXT_GET_FB_TOKEN_FAIL               @"textLoginGetFBTokenFail"                //获取facebook－Token失败提示语
#define GAMA_LOGIN_TEXT_GET_FB_INFO_FAIL                @"textLoginGetFBInfoFail"                 //获取facebook用户信息失败提示语。


/*广告工程配置key*/
//广告功能参数key的宏定义
#define GAMA_AD_DOMAIN_NAME                             @"adDomainName"                           //域名：广告
#define GAMA_AD_DOMAIN_NAME_IN_RESERVE                  @"adDomainNameInReserve"                  //域名：广告备用
#define GAMA_AD_PROGRAM_NAME                            @"adProName"                              //服务器接口名：广告接口
#define GAMA_AD_CALLBACK_PROGRAM_NAME                   @"adCallBackProName"
#define GAMA_AD_EVENTS_NAME                             @"adEventsName"
#define GAMA_AD_CRASHLOG_NAME                           @"adSDKCrashLogName"


/*储值工程配置key*/
/*储值的域名，工程名*/
#define GAMA_IAP_DOMAIN_NAME                            @"iapDomainName"                          //域名：储值
#define GAMA_IAP_SPASE_DOMAIN_NAME                      @"iapDomainNameInReserve"                 //域名：储值备用
/*工程名字*/
#define GAMA_IAP_CREATORDER_PROJECT_NAME                @"iapAppstoreCreditOrderProName"          //服务器接口名：获取SP交易订单号
#define GAMA_IAP_PAY_STONE_PROJECT_NAME                 @"iapAppstorePayStoneProName"             //服务器接口名：验证并发放游戏币
#define GAMA_IAP_PAY_FAIL_PROJECT_NAME                  @"iapAppstorePayFailProName"              //服务器接口名：支付失败的时候，告诉SP的工程名字
#define GAMA_IAP_SENT_PAY_LOG_PROJECT_NAME              @"iapAppstoreLogPintProName"              //服务器接口名：向SP服务器发送购买日志的工程名字
#define GAMA_IAP_CHECKOUT_ORDER                         @"iapAppstoreCheckoutOrder"
#define GAMA_IAP_APPSTORE_CALLBACK                      @"iapAppstoreAppstoreCallback"

/*推送token发送SP服务器工程配置key*/
#define GAMA_GAME_DOMAIN_NAME                           @"pushGameDomainName"                     //域名：推送
#define GAMA_GAME_DOMAIN_NAME_IN_RESERVE                @"pushGameDomainNameInReserve"            //域名：推送备用
#define GAMA_PUSH_TOKEN_PRO_NAME                        @"pushTokenProName"                       //服务器接口名：推送功能接口

#define GAMA_QUESIONT_DOMAIN_NAME                       @"questioinDomainName"
#define GAMA_PFCS_DOMAIN_NAME                           @"pfcsDomainName"
#define GAMA_PLATFORM_DOMAIN_NAME                       @"platformDomainName"
#define GAMA_PLATFORM_GETPHONEREGION                    @"platformGetPhoneRegion"
#define GAMA_PLATFORM_LOGINFO                           @"platformLogInfo"
#define GAMA_PRIVACYPOLICY_DOMAIN_NAME                  @"privacypolicyDomainName"
#define GAMA_USETERMS_DOMAIN_NAME                       @"usetermsDomainName"
#define GAMA_PRIVACYPOLICY_DOMAIN_NAME_IN_RESERVE       @"privacypolicyDomainNameInReserve"
#define GAMA_USETERMS_DOMAIN_NAME_IN_RESERVE            @"usetermsDomainNameInReserve"

/*CDN 下载地址*/
#define GAMA_CDN_DOMAIN_NAME                            @"gameCDNDownLink"
#define GAMA_CDN_DOMAIN_NAME_IN_RESERVE                 @"gameCDNDownLinkInReserve"

/*ping 地址*/
//#define GAMA_PING_ENABLE ;
#define GAMA_PING_DOMAIN_NAME                           @"pingDomainName"
#define GAMA_PING_DOMAIN_NAME_IN_RESERVE                @"pingDomainNameInReserve"
#define GAMA_PING_REQUEST_NAME                          @"pingRequestName"
#define GAMA_PING_POST_NETWORK_NAME                     @"pingPostNetworkName"

/*LBS域名*/
#define GAMA_LBS_DOMAIN_NAME                            @"lbsDomainName"
/*FB域名，工程名*/
//域名
#define GAMA_FB_INVITE_DOMAIN_NAME                      @"fbinviteDomanName"
#define GAMA_FB_INVITE_DOMAIN_NAME_IN_RESERVE           @"fbinviteDomanNameInReserve"
//工程名字
#define GAMA_FB_INVITE_ACTIVITY_IS_OPEN_PRO_NAME        @"fbinviteCheckActivityIsOpenProName"
#define GAMA_FB_INVITE_FIND_ALL_GIFTS_FREINDS_PRO_NAME  @"fbinviteFindAllGiftsAndFriendsProName"
#define GAMA_FB_INVITE_WRITE_FB_FREINDS_PRO_NAME        @"fbinviteWriteFbFriendsProName"
#define GAMA_FB_INVITE_RECEIVE_GIFT_PACKAGE_PRO_NAME    @"fbinviteReceivedGiftPackageProName"

/*广告第三方库配置参数key*/
#define GAMA_AD_FACEBOOK_APP_ID                         @"facebookAppID"
#define GAMA_AD_TAPJOY_APP_ID                           @"tapjoyAppID"
#define GAMA_AD_TAPJOY_SECRET_KEY                       @"tapjoySecretKey"
#define GAMA_AD_INMOBI_ADTRACKER                        @"inmobiAdTracker"
#define GAMA_AD_GOOGLE_CONVERSION_ID                    @"googleConversionID"
#define GAMA_AD_GOOGLE_INSTALL_LABEL                    @"googleInstallLabel"
#define GAMA_AD_GOOGLE_REGIST_LABEL                     @"googleRegistLabel"
#define GAMA_AD_GOOGLE_CREATE_ROLE_LABEL                @"googleCreateRoleLabel"
#define GAMA_AD_GOOGLE_VALUE                            @"googleValue"
#define GAMA_AD_CHARTBOOST_APP_ID                       @"chartboostAppID"
#define GAMA_AD_CHARTBOOST_APP_SIGNATURE                @"chartboostAppSignature"
#define GAMA_AD_IGAWORKS_APP_KEY                        @"igaworksAppKey"
#define GAMA_AD_IGAWORKS_HASH_KEY                       @"igaworksHashKey"
#define GAMA_AD_BAND_CLIENT_ID                          @"bandClientID"
#define GAMA_AD_BAND_CLIENT_SECRET                      @"bandClientSecret"
#define GAMA_AD_KAKAO_CLIENT_ID                         @"kakaoClientID"
#define GAMA_AD_KAKAO_CLIENT_SECRET                     @"kakaoClientSecret"
#define GAMA_AD_KAKAO_INVITE_TEMPLATE_ID                @"kakaoInviteTemplateID"
#define GAMA_AD_KAKAO_SEND_MESSAGE_TEMPLATE_ID          @"kakaoSendMessageTemplateID"
#define GAMA_AD_KOCHAVA_KOCHAVA_APP_ID                  @"kochavaAppId"
#define GAMA_AD_NAVER_CONSUMER_KEY                      @"naverConsumerKey"
#define GAMA_AD_NAVER_CONSUMER_SECRET                   @"naverConsumerSecret"
#define GAMA_AD_NAVER_SERVICE_APP_NAME                  @"naverServiceAppName"
#define GAMA_AD_NAVER_SERVICE_APP_URL_SCHEME            @"naverServiceAppUrlScheme"
#define GAMA_AD_ADJUST_EVENT_FB_REGIST                  @"adjusuFacebook_reg"
#define GAMA_AD_ADJUST_EVENT_GAMECENTER_REGIST          @"adjusuGameCenter_reg"
#define GAMA_AD_ADJUST_EVENT_GUEST_REGIST               @"adjusuGuest_reg"
#define GAMA_AD_ADJUST_EVENT_TWITTER_REGIST             @"adjusuTwitter_reg"
#define GAMA_AD_APPANG_AD_KEY                           @"appangADKey"
#define GAMA_AD_NAVER_CLIENT_ID                         @"naverClientID"
#define GAMA_AD_NAVER_CLIENT_SECRET                     @"naverClientSecret"
#define GAMA_AD_NAVER_CAFE_ID                           @"naverCafeID"
#define GAMA_AD_TUNE_ADVERTISER_ID                      @"tuneAdvertiserId"
#define GAMA_AD_TUNE_CONVERSION_KEY                     @"tuneConversionKey"
#define GAMA_AD_PERFORMAD_CONVERSION_ID                 @"performadConversionID"

//-------------------------------------------------------------------------------- // //
/*appsflyer information*/
#define GAMA_AD_APPSFLYER_CURRENT_CODE                  @"appsflyerCurrentCode"
#define GAMA_AD_APPSFLYER_APP_ID                        @"appsflyerAppID"
#define GAMA_AD_APPSFLYER_DEV_KEY                       @"appsflyerDevKey"
#define GAMA_AD_APPSFLYER_CREATE_ROLE_ID                @"appsflyerCreateRoleReportID"

/*adjsut information*/
#define GAMA_AD_ADJUST_APP_TOKEN                        @"adjustAppToken"
#define GAMA_AD_ADJUST_APP_SECRET                       @"adjustAppSecret"
#define GAMA_AD_ADJUST_KEY_INFO1                        @"adjustAppKey1"
#define GAMA_AD_ADJUST_KEY_INFO2                        @"adjustAppKey2"
#define GAMA_AD_ADJUST_KEY_INFO3                        @"adjustAppKey3"
#define GAMA_AD_ADJUST_KEY_INFO4                        @"adjustAppKey4"

// // //
/*提示得文字描述*/
#define GAMA_IAP_TEXT_NO_NET                            @"textIapNoNet"                           //提示语："服务器没有反应"
#define GAMA_IAP_TEXT_NO_MAKE_PAYMENTS                  @"textIapNoMakePayments"                  //提示语："PaymentQueue不支持購買支付！"
#define GAMA_IAP_TEXT_ONE_IS_PAYING                     @"textIapOneIsPaying"                     //提示语："有一筆交易正在進行中"
#define GAMA_IAP_TEXT_NO_THIS_ITEM                      @"textIapNoThisItem"                      //提示语："商品不存在！"
#define GAMA_IAP_TEXT_PARAMETER_NIL                     @"textIapParameterNil"                    //提示语："购买參數异常，请重新尝试!"
#define GAMA_IAP_TEXT_USER_CANCEL_PAY                   @"textIapUserCancelToPay"                 //提示语："您取消了購買！"
#define GAMA_IAP_TEXT_PAY_FAIL                          @"textIapAppStorePayFail"                 //提示语："AppStore支付失敗！\nE_code:%@"
#define GAMA_IAP_TEXT_BUY_SUCCESS                       @"textIapBuySuccess"                      //提示语："購買成功，遊戲幣已經發送:\n交易訂單號：%@\n祝您遊戲愉快！"
#define GAMA_IAP_TEXT_BUY_FAIL                          @"textIapBuyFail"                         //提示语："購買失敗:\n訂單號：%@\n請截屏後聯繫客服。\n屏幕截圖將視為補單唯一憑證！"
#define GAMA_IAP_TEXT_HAVE_SEND_STONE                   @"textIapHaveSendGameStone"               //提示语："交易訂單號：%@\n商品已經發送過，請注意查收！"
#define GAMA_IAP_TEXT_POST_CHECK_NO_NET                 @"textIapPostCheckNoNet"                  //提示语："訂單號:%@ \n由於網路不穩定，暫時無法獲取符石。建議在良好的網路環境下，點擊“確認”重新獲取符石；或嘗試重新登入遊戲查看。"
#define GAMA_IAP_TEXT_BUY_ERROR                         @"textIapBuyError"                        //提示语："交易訂單號：%@\n验证error！請截屏後聯繫我們客服。\n屏幕截圖將視為補單唯一憑證！"
#define GAMA_IAP_TEXT_SERVER_IN_MAINTAIN                @"textIapServerInMaintain"                //提示语："服務器維護中！\n請過一段時間進行購買，感謝您的支持。\nE_code：%@"

#define GAMA_SHARE_TEXT_DO_SHARE_FAIL @"textFbShareFail"//分享過程出了問題
#define GAMA_SHARE_TEXT_SHARE_SUCCESS @"textFbShareSuccess"//分享成功

/* 登录公共参数 */
#define GAMA_LOGIN_PARAMS_FB_OAUTHTOKEN       @"fb_oauthToken"
#define GAMA_LOGIN_PARAMS_GC_PUBLICKEYURL     @"ios_gc_publicKeyUrl"
#define GAMA_LOGIN_PARAMS_GC_SIGNATURE        @"ios_gc_signature"
#define GAMA_LOGIN_PARAMS_GC_SALT             @"ios_gc_salt"
#define GAMA_LOGIN_PARAMS_GC_TIMESTAMP        @"ios_gc_timestamp"

#define GAMA_NAVER_CAFE_CLIENT_ID               @"naverCafeClientId"
#define GAMA_NAVER_CAFE_CLIENT_SECRET           @"naverCafeClientSecret"
#define GAMA_NAVER_CAFE_CLIENT_CAFEID           @"naverCafeClientCafeId"


#define GAMESWORD_EVENT_FIRSTPAY            @"flyfun_firstpay"
#define GAMESWORD_EVENT_OPEN                @"flyfun_open"
#define GAMESWORD_EVENT_LOGIN               @"flyfun_login_event"
#define GAMESWORD_EVENT_REGISTER            @"flyfun_register_event"
#define GAMESWORD_EVENT_ROLE_INFO           @"flyfun_role_info"
#define GAMESWORD_EVENT_8MIN                @"flyfun_8min"
#define GAMESWORD_EVENT_10MIN               @"flyfun_10min"
#define GAMESWORD_EVENT_20MIN               @"flyfun_20min"
#define GAMESWORD_EVENT_30MIN               @"flyfun_30min"
//#define GAMESWORD_EVENT_1RETENTION          @"gamesword_1retention"
//#define GAMESWORD_EVENT_3RETENTION          @"gamesword_3retention"
//#define GAMESWORD_EVENT_7RETENTION          @"gamesword_7retention"
//#define GAMESWORD_EVENT_15RETENTION         @"gamesword_15retention"
//#define GAMESWORD_EVENT_30RETENTION         @"gamesword_30retention"
#define GAMESWORD_EVENT_IN_APP_PURCHASES    @"in_app_purchases"

#endif
