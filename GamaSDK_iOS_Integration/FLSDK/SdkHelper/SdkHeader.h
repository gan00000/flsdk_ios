//
//  CCSkyHourHeader.h
//  CCSkyHourSDK
//
//  Created by ganyuanrong on 2019/5/29.
//  Copyright © 2019 ganyuanrong. All rights reserved.
//
#import <UIKit/UIKit.h>
#import "Masonry.h"
#import "UIImage+GamaBundleImage.h"
#import "UIColor+HexStringToColorTW.h"
#import "UIUtil.h"
#import "CCSDKDATA.h"
#import "ConfigCoreUtil.h"
#import "CCSDKResponse.h"
#import "CComHeader.h" //最基本
#import "GamaFunction.h"  //功能相关
#import "GamaCentreInfo.h" //功能相关
#import "GamaCommonHeader.h" //功能相关
#import "GamaAdInterface.h"
#import "SdkUtil.h"


#ifndef CCSkyHourHeader_h
#define CCSkyHourHeader_h

#define ENABLE_REQUEST_LOG 1

// cornerRadius
#define kR2BtnCornerRadius                 8.0f
#define kBgAlpha                         0.9f


#define kBgWidth                    [UIUtil getSdkPageWidth]
#define kBgHeight                   [UIUtil getSdkPageHeight]

#define kInputTextFiledHeight                     [UIUtil getItemHeight]//48.0
#define kInputTextFiledMarginLeftRight                 [UIUtil getItemWidthMargin]
#define kInputTextFiledTopMargin                       kInputTextFiledHeight / 7
#define kPageTitleHeight                        MIN(kInputTextFiledHeight * 1.6, 40)
//#define kPageOkButtonHeight                        kInputTextFiledHeight * 1.6

#define ContentViewBgColor                    @"#f4f4f5"


//#define SDK_DATA                           [CCSDKDATA sharedSdkData]

#define LABEL_FONT_NAME_BOLD                 @"Helvetica-Bold"
#define LABEL_FONT_NAME_Helvetica           @"Helvetica"

#define GetImage(imageName)     [UIImage gama_imageNamed:imageName]

#define appTopViewController    [GamaFunction getCurrentViewController]
#define RGB(r,g,b) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:1]
// ------ 是否是 iPhoneX
#define device_is_iPhoneX   [GamaFunction isIPhoneXSeries]

#define Guest_Login_Tipe_OK  @"Guest_Login_Tipe_OK" //游客登录成功通知
#define SDK_AUTO_LOGIN_FAIL @"SDK_AUTO_LOGIN_FAIL"  //自动登录失败通知

#define VH(h)  [UIUtil getViewHeight:h]
#define VW(w)  [UIUtil getViewWidth:w]
#define FS(size)  [UIUtil getFontSize:size]


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
};

//typedef NS_OPTIONS(NSUInteger, LOGIN_TYPE)
//{
//    
//};

//页面按钮button点击tag
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

#define fbLoginActTag       2000
#define googleLoginActTag   2001
#define guestLoginActTag    2002
#define accountLoginActTag    2003
#define appleLoginActTag    2004
#define lineLoginActTag    2005

// login type
#define _SDK_PLAT_SELF           (@"mg")
#define _SDK_PLAT_MAC            (@"visitor")
#define _SDK_PLAT_FB             (@"fb")
#define _SDK_PLAT_GC             (@"google")
#define _SDK_PLAT_TWITTER        (@"twitter")
#define _SDK_PLAT_APPLE          (@"apple")
#define _SDK_PLAT_LINE          (@"line")

//请求域名


//请求接口
#define api_login_guest     (@"api/user/visitorLogin")
#define api_login_third     (@"api/user/thirdPartyLogin")
#define api_login_register  (@"api/user/register")
#define api_login_account   (@"api/user/login")

#endif /* CCSkyHourHeader_h */

