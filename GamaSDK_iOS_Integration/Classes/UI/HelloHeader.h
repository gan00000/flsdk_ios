//
//  HelloHeader.h
//
//
//  Created by Sunny on 17/2/6.
//  Copyright © 2017年 Gama. All rights reserved.
//

#ifndef HelloHeader_h
#define HelloHeader_h

#import "SdkUtil.h"
#import "Masonry.h"
#import "HelloWidgetConstant.h"
#import "UIColor+HexColor.h"
#import "GamaLoginFuncionPort.h"
#import "GamaCentreInfo.h"
#import "GamaFunction.h"
#import "UIImage+GamaBundleImage.h"
#import "GamaCommonHeader.h"
#import "SdkUserInfoModel.h"
#import "GamaSecurityFunction.h"
#import "GamaNetEngine.h"
#import "SdkHeader.h"

// -- Notes name
#define _GAMA_NOTIFICATION_SUCCESS                   (@"GAMA_httpRequest_Success")
#define _GAMA_NOTIFICATION_LOGOUT                    (@"GAMA_logoutGame")
#define _GAMA_NOTIFICATION_FAIL                      (@"GAMA_httpRequest_Fail")
#define _GAMA_NOTIFICATION_INTERNAL                  (@"GAMA_httpRequest_Internal")

#define GAMA_LOGIN_SUCCESS_IN                      @"GAMA_LOGIN_SUCCESS_IN"                      //用户登陆成功
#define GAMA_LOGIN_FAIL_IN                         @"GAMA_LOGIN_FAIL_IN"                         //用户登陆失败
#define GAMA_REGISTER_SUCCESS_IN                   @"GAMA_REGISTER_SUCCESS_IN"                   //注册成功
#define GAMA_REGISTER_FAIL_IN                      @"GAMA_REGISTER_FAIL_IN"                      //注册失败
#define GAMA_RESET_PASSWORD_SUCCESS_IN             @"GAMA_RESET_PASSWORD_SUCCESS_IN"             //修改密码成功
#define GAMA_RESET_PASSWORD_FAIL_IN                @"GAMA_RESET_PASSWORD_FAIL_IN"                //修改密码失败
#define GAMA_REGET_PASSWORD_SUCCESS_IN             @"GAMA_REGET_PASSWORD_SUCCESS_IN"             //获取密码成功
#define GAMA_REGET_PASSWORD_FAIL_IN                @"GAMA_REGET_PASSWORD_FAIL_IN"                //获取密码失败

#define GAMA_GET_FREE_LOGIN_TIMES_AND_BIND_SUCCESS @"GAMA_GET_FREE_LOGIN_TIMES_AND_BIND_SUCCESS" //获取免注册登录次数和绑定信息成功
#define GAMA_GET_FREE_LOGIN_TIMES_AND_BIND_FAIL    @"GAMA_GET_FREE_LOGIN_TIMES_AND_BIND_FAIL"    //获取免注册登录次数和绑定信息失败
#define GAMA_FREE_LOGIN_SUCCESS_IN                 @"GAMA_FREE_LOGIN_SUCCESS_IN"                 //免注册登陆成功
#define GAMA_FREE_LOGIN_FALI_IN                    @"GAMA_FREE_LOGIN_FALI_IN"                    //免注册登陆失败
#define GAMA_FREE_BIND_SUCCESS_IN                  @"GAMA_FREE_BIND_SUCCESS_IN"                  //免注册绑定成功
#define GAMA_FREE_BIND_FAIL_IN                     @"GAMA_FREE_BIND_FAIL_IN"                     //免注册绑定失败

#define GAMA_THIRD_LOGIN_SUCCESS   @"GAMA_THIRD_LOGIN_SUCCESS"   //第三方登录成功
#define GAMA_THIRD_LOGIN_FAIL      @"GAMA_THIRD_LOGIN_FAIL"      //第三方登录失败
#define GAMA_THIRD_BINDING_SUCCESS @"GAMA_THIRD_BINDING_SUCCESS" //第三方绑定成功
#define GAMA_THIRD_BINDING_FAIL    @"GAMA_THIRD_BINDING_FAIL"    //第三方绑定失败

// -- my note name
#define NOTE_hello_login_success            @"note_hello_login_success"
#define NOTE_hello_rigister_success         @"note_hello_register_and_login_success"
#define NOTE_hello_agreement_done          @"note_hello_agreeement_done"

// -- text field hint
#define HintMsgAccountNull              SDKConReaderGetLocalizedString(@"__MESSAGE_ERROR_MESSAGE_ACCOUNT_NULL__")
#define HintMsgPwdNull                  SDKConReaderGetLocalizedString(@"__MESSAGE_ERROR_MESSAGE_PASSWORD_NULL__")
#define HintMsgPwdDiffrent              SDKConReaderGetLocalizedString(@"__MESSAGE_ALERTVIEW_MESSAGE_PASSWORD_DIFFERENCE__")
#define HintMsgEmailNull                SDKConReaderGetLocalizedString(@"__MESSAGE_ERROR_MESSAGE_EMAIL_NULL__")
#define HintMsgEmailFormatIncorrect     SDKConReaderGetLocalizedString(@"__MESSAGE_ERROR_MESSAGE_EMAIL_FORMAT__")
#define HintMsgContainUtf8              SDKConReaderGetLocalizedString(@"__MESSAGE_ERROR_MESSAGE_PASSWORD_UTF8ERROR__")
//
#define HintMsgLoading  SDKConReaderGetLocalizedString(@"__MESSAGE_WAITTING_LOGIN_STRING__")
// -- text field placeholder
// --login
#define PlaceHolderAccount      SDKConReaderGetLocalizedString(@"__UI_LOGINVIEW_ACCOUNT_TEXTFEILD__")
#define PlaceHolderPwd          SDKConReaderGetLocalizedString(@"__UI_LOGINVIEW_PASSWORD_TEXTFEILD__")
// --register
#define PlaceHolderAccountOnRegister      SDKConReaderGetLocalizedString(@"__UI_REGISTERVIEW_ACCOUNT_TEXTFEILD__")
#define PlaceHolderPwdOnRegister          SDKConReaderGetLocalizedString(@"__UI_REGISTERVIEW_PASSWORD_TEXTFEILD__")
#define PlaceHolderPwdComfirm             SDKConReaderGetLocalizedString(@"__UI_ACCOUNTBIND_PASSWORD_CONFIRM__")
#define PlaceHolderEmail                  SDKConReaderGetLocalizedString(@"__UI_ACCOUNTBIND_EMAIL__")
// --find pwd
#define PlaceHolderOldPwd       SDKConReaderGetLocalizedString(@"__UI_CHANGEPASSWORD_OLDPASSWORD_TEXTFEILD__")
// -- others hint
#define HintMsgGuestLoginTip    SDKConReaderGetLocalizedString(@"__MESSAGE_ALERTVIEW_MESSAGE_GUEST_LOGIN_TIPS__")
// --
#define strAdwallsNotShowToday    SDKConReaderGetLocalizedString(@"__UI_ADWALLS_LABEL_TODAY_NOT_SHOW__")


// ---- constant
#define winWidth        [GamaFunction getCurrentScreenFrame].size.width//[UIScreen mainScreen].bounds.size.width
#define winHeight       [GamaFunction getCurrentScreenFrame].size.height//[UIScreen mainScreen].bounds.size.height
#define hGameOrientation        Device_Is_Landscape//[SDKConReaderGetString(GAMA_GAME_IS_INTERFACE_THWARTWISE) isEqualToString:@"YES"]



// iPhone X padding
#define iphoneX_landscape_left      44.0f
#define iphoneX_landscape_right     44.0f
#define iphoneX_landscape_bottom    21.0f


//---
#define GAMA_SAVE_Guest_USER_FILE_NAME        @"Gama_GuestUser_.plist"
#define GAMA_SAVE_LAST_USER_FILE_NAME         @"Gama_LastUser_.plist"
//---

// my
#define kHelloAnnounce       @"hello_annouceUrl"
#define kHelloAdwalls        @"hello_adwalssUrl"
#define kHelloUserTerms      @"hello_userterms"
#define kHelloPricacy        @"hello_privacy"

// ---- invinent imagePicker
//#define GetImage(imageName)     [UIImage gama_imageNamed:imageName]
#define GetEnImage(imageName)     [UIImage gama_imageNamed:imageName inBundle:nil inFolder:@"enImages"]
#define GetCnImage(imageName)       [UIImage sp_imageNamed:imageName inBundle:nil inFolder:@"cnImages"]

// 配置文件上的字段
#define CONFIG_SP_FINDPWD_STATUS        (@"Gama_FindPwd_Status")
#define CONFIG_SP_BIND_STATUS           (@"Gama_Bind_Status")
#define CONFIG_SP_GUEST_BIND_STATUS     (@"Gama_Guest_Bind_Status")

#define LABEL_FONT_NAME                     @"Helvetica-Bold"
#define LABEL_FONT_NAME_Helvetica           @"Helvetica"

#define FONTSIZE(fontsize)  IS_IPAD ? fontsize+7.0f : fontsize

#endif /* HelloHeader_h */
