
#import <UIKit/UIKit.h>
#import "Masonry.h"
#import "CComHeader.h" 

#import "USDefault.h"
#import "UIImage+ResBundle.h"
#import "UIColor+HexStringToColorTW.h"
#import "UIUtil.h"
#import "CCSDKDATA.h"
#import "ConfigCoreUtil.h"
#import "LoginResponse.h"

#import "SUtil.h"  
#import "ResHeader.h" 
#import "AdLogger.h"
#import "StringUtil.h"
#import "DimeUtil.h"
#import "SdkUtil.h"
#import "NSString+Local.h"
#import "NSString+Common.h"

#ifndef CCSkyHourHeader_h
#define CCSkyHourHeader_h

#define ENABLE_REQUEST_LOG 1

#define kR2BtnCornerRadius                 8.0f
#define kBgAlpha                         0.9f



#define ContentViewBgColor                    wwwww_tag_wwwww__CC_f4f4f5
#define ColorHex(color)  [UIColor colorWithHexString_MMMethodMMM:color]

#define SDK_DATA                           [CCSDKDATA sharedSdkData_MMMethodMMM]

#define GetImage(imageName)     [UIImage res_imageNamed_MMMethodMMM:imageName]

#define appTopViewController    [SUtil getCurrentViewController_MMMethodMMM]
#define RGB(r,g,b) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:1]
#define device_is_iPhoneX   [SUtil isIPhoneXSeries_MMMethodMMM]

#pragma mark - 页面字体尺寸适配
#define VH(h)  [[DimeUtil share] getViewHeight_MMMethodMMM:h]
#define VW(w)  [[DimeUtil share] getViewWidth_MMMethodMMM:w]
#define FS(size)  [[DimeUtil share] getFontSize_MMMethodMMM:size]

#pragma mark - 页面
typedef NS_OPTIONS(NSUInteger, CURRENT_PAGE_TYPE)
{
    CURRENT_PAGE_TYPE_REG_ACCOUNT,
    CURRENT_PAGE_TYPE_LOGIN_ACCOUNT,
    CURRENT_PAGE_TYPE_SELECT_BIND_TYPE,
    CURRENT_PAGE_TYPE_FIND_PWD,
    CURRENT_PAGE_TYPE_CHANGE_PWD,
    CURRENT_PAGE_TYPE_BIND_ACCOUNT,
    CURRENT_PAGE_TYPE_AUTO,
    CURRENT_PAGE_TYPE_TEARMS,
    CURRENT_PAGE_TYPE_MAIN_HOME,
    CURRENT_PAGE_TYPE_WELCOME_BACK,
    CURRENT_PAGE_TYPE_LOGIN_WITH_REG,
    CURRENT_PAGE_TYPE_AGE14_QUA,
    CURRENT_PAGE_TYPE_NULL,
};


#pragma mark - 页面按钮button点击tag
#define kCheckBoxBtnTag     20
#define kAccountLoginActTag     21
#define kChangePwdActTag     22
#define kFindPwdActTag     23
#define kRegisterAccountActTag     24
#define kBindAccountActTag     25
#define kBackBtnActTag     26
#define kGetVfCodeActTag    27
#define kMoreAccountListActTag    29
#define kMoreAccountDeleteActTag    30
#define kOkActTag    31
#define kBindFBActTag     32
#define kBindAppleActTag    33
#define kBindGuestActTag    34

#define kLoginTabActTag    35
#define kRegTabActTag    36
#define kAgreeTermsCheckBoxBtnTag     37
#define kSwitchAccountActTag    38
#define kGoGameActTag     39

#define kSureDeleteAccountActTag     40
#define kCancelDeleteAccountActTag     41

#define fbLoginActTag       2000
#define googleLoginActTag   2001
#define guestLoginActTag    2002
#define accountLoginActTag    2003
#define appleLoginActTag    2004
#define lineLoginActTag    2005
#define naverLoginActTag    2006
#define privacyPolicyActTag   2007
#define personalClauseActTag    2008

#define TAG_CLOSE    90
#define TAG_PAY_CHANNEL_OTHER    91
#define TAG_PAY_CHANNEL_APPLE    92
#define TAG_WEB_VIEW_BACK    93

#pragma mark - login type登录方式

#define LOGIN_TYPE_SELF           (wwwww_tag_wwwww_mg)
#define LOGIN_TYPE_GUEST            (wwwww_tag_wwwww_visitor)
#define LOGIN_TYPE_FB             (wwwww_tag_wwwww_fb)
#define LOGIN_TYPE_GOOGLE             (wwwww_tag_wwwww_google)
#define LOGIN_TYPE_TWITTER        (wwwww_tag_wwwww_twitter)
#define LOGIN_TYPE_APPLE          (wwwww_tag_wwwww_apple)
#define LOGIN_TYPE_LINE          (wwwww_tag_wwwww_line)
#define LOGIN_TYPE_NAVER          (wwwww_tag_wwwww_naver)

#pragma mark - api请求接口
#define api_login_guest     (wwwww_tag_wwwww_api_user_visitorLogin)
#define api_login_third     (wwwww_tag_wwwww_api_user_thirdPartyLogin)
#define api_login_register  (wwwww_tag_wwwww_api_user_register)
#define api_login_account   (wwwww_tag_wwwww_api_user_login)
#define api_forgot_pwd      (wwwww_tag_wwwww_api_pwd_forgotPassword)
#define api_get_vfCode      (wwwww_tag_wwwww_api_vcode_sendEmailVcode)
#define api_change_pwd      (wwwww_tag_wwwww_api_pwd_changePassword)
#define api_bind_account     (wwwww_tag_wwwww_api_upgrade_bind)
#define api_delete_account     (wwwww_tag_wwwww_api_cancel_account)
#define api_order_create     (wwwww_tag_wwwww_api_order_create)
#define api_payment         (wwwww_tag_wwwww_api_apple_payment)
#define api_check_payment_channel         (wwwww_tag_wwwww_api_payment_channel)

#define api_sendMobileVcode  (wwwww_tag_wwwww_api_vcode_sendMobileVcode)
#define api_bind_phone  (wwwww_tag_wwwww_api_mobile_bind)

#pragma mark - sdk版本
#define SDK_VERSION_V4   @"v4"  
#define SDK_VERSION_V5   @"v5"  
#define SDK_VERSION_V6   @"v6"  
#define SDK_VERSION_VN   @"v_vn"
#define SDK_VERSION_KR   @"kr"

#endif 

