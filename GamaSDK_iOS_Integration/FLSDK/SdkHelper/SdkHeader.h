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

#ifndef CCSkyHourHeader_h
#define CCSkyHourHeader_h

#define ENABLE_REQUEST_LOG 1

// cornerRadius
#define kR2BtnCornerRadius                 8.0f
#define kBgAlpha                         0.9f

#define SCREEN_WIDTH     [[UIScreen mainScreen] bounds].size.width
#define SCREEN_HEIGHT    [[UIScreen mainScreen] bounds].size.height
#define IS_PORTRAIT       ([[UIApplication sharedApplication] statusBarOrientation] == UIInterfaceOrientationPortrait || [[UIApplication sharedApplication] statusBarOrientation] == UIInterfaceOrientationPortraitUpsideDown)

#define kBgWidth                    [UIUtil getSdkPageWidth]
#define kBgHeight                   [UIUtil getSdkPageHeight]

#define kInputTextFiledHeight                     [UIUtil getItemHeight]//48.0
#define kInputTextFiledMarginLeftRight                 [UIUtil getItemWidthMargin]
#define kInputTextFiledTopMargin                       kInputTextFiledHeight / 7
#define kPageTitleHeight                        MIN(kInputTextFiledHeight * 1.6, 40)
//#define kPageOkButtonHeight                        kInputTextFiledHeight * 1.6

#define ContentViewBgColor                    @"#f4f4f5"


#define SDK_DATA                           [CCSDKDATA sharedSdkData]

#define LABEL_FONT_NAME_BOLD                 @"Helvetica-Bold"
#define LABEL_FONT_NAME_Helvetica           @"Helvetica"

#define GetImage(imageName)     [UIImage gama_imageNamed:imageName]

#define appTopViewController    [GamaFunction getCurrentViewController]
#define RGB(r,g,b) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:1]
// ------ 是否是 iPhoneX
#define device_is_iPhoneX   [GamaFunction isIPhoneXSeries]

#define Guest_Login_Tipe_OK  @"Guest_Login_Tipe_OK" //游客登录成功通知
#define SDK_AUTO_LOGIN_FAIL @"SDK_AUTO_LOGIN_FAIL"  //自动登录失败通知


typedef NS_OPTIONS(NSUInteger, CURRENT_PAGE_TYPE)
{
    CURRENT_PAGE_TYPE_REG_ACCOUNT,
    CURRENT_PAGE_TYPE_LOGIN_ACCOUNT,
    CURRENT_PAGE_TYPE_SELECT_BIND_TYPE,
    CURRENT_PAGE_TYPE_SELECT_LOGIN_TYPE,
    CURRENT_PAGE_TYPE_FIND_PWD,
    CURRENT_PAGE_TYPE_CHANGE_PWD,
    CURRENT_PAGE_TYPE_BIND_ACCOUNT,
    CURRENT_PAGE_TYPE_AUTO,
};

typedef void (^ItemViewClickHander)(NSInteger);

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

typedef void (^ViewClickHandler)(NSString* msg, NSInteger m);


// login type
#define _SDK_PLAT_SELF           (@"gamesword")
#define _SDK_PLAT_MAC            (@"unique")
#define _SDK_PLAT_FB             (@"fb")
#define _SDK_PLAT_GC             (@"gc")
#define _SDK_PLAT_TWITTER        (@"twitter")
#define _SDK_PLAT_APPLE          (@"apple")


#endif /* CCSkyHourHeader_h */

