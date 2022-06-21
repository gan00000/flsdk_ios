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
#import "UIColor+HexColor.h"
#import "ConfigHeader.h"
#import "SUtil.h"
#import "UIImage+GamaBundleImage.h"
#import "GamaCommonHeader.h"
#import "SdkUserInfoModel.h"
#import "GamaSecurityFunction.h"
#import "SdkHeader.h"

// -- Notes name
//#define _GAMA_NOTIFICATION_SUCCESS                   (@"GAMA_httpRequest_Success")
//#define _GAMA_NOTIFICATION_LOGOUT                    (@"GAMA_logoutGame")
//#define _GAMA_NOTIFICATION_FAIL                      (@"GAMA_httpRequest_Fail")
//#define _GAMA_NOTIFICATION_INTERNAL                  (@"GAMA_httpRequest_Internal")

//#define GAMA_LOGIN_SUCCESS_IN                      @"GAMA_LOGIN_SUCCESS_IN"                      //用户登陆成功
//#define GAMA_LOGIN_FAIL_IN                         @"GAMA_LOGIN_FAIL_IN"                         //用户登陆失败
//#define GAMA_REGISTER_SUCCESS_IN                   @"GAMA_REGISTER_SUCCESS_IN"                   //注册成功
//#define GAMA_REGISTER_FAIL_IN                      @"GAMA_REGISTER_FAIL_IN"                      //注册失败
//#define GAMA_RESET_PASSWORD_SUCCESS_IN             @"GAMA_RESET_PASSWORD_SUCCESS_IN"             //修改密码成功
//#define GAMA_RESET_PASSWORD_FAIL_IN                @"GAMA_RESET_PASSWORD_FAIL_IN"                //修改密码失败
//#define GAMA_REGET_PASSWORD_SUCCESS_IN             @"GAMA_REGET_PASSWORD_SUCCESS_IN"             //获取密码成功
//#define GAMA_REGET_PASSWORD_FAIL_IN                @"GAMA_REGET_PASSWORD_FAIL_IN"                //获取密码失败

//#define GAMA_GET_FREE_LOGIN_TIMES_AND_BIND_SUCCESS @"GAMA_GET_FREE_LOGIN_TIMES_AND_BIND_SUCCESS" //获取免注册登录次数和绑定信息成功
//#define GAMA_GET_FREE_LOGIN_TIMES_AND_BIND_FAIL    @"GAMA_GET_FREE_LOGIN_TIMES_AND_BIND_FAIL"    //获取免注册登录次数和绑定信息失败
//#define GAMA_FREE_LOGIN_SUCCESS_IN                 @"GAMA_FREE_LOGIN_SUCCESS_IN"                 //免注册登陆成功
//#define GAMA_FREE_LOGIN_FALI_IN                    @"GAMA_FREE_LOGIN_FALI_IN"                    //免注册登陆失败
//#define GAMA_FREE_BIND_SUCCESS_IN                  @"GAMA_FREE_BIND_SUCCESS_IN"                  //免注册绑定成功
//#define GAMA_FREE_BIND_FAIL_IN                     @"GAMA_FREE_BIND_FAIL_IN"                     //免注册绑定失败

//#define GAMA_THIRD_LOGIN_SUCCESS   @"GAMA_THIRD_LOGIN_SUCCESS"   //第三方登录成功
//#define GAMA_THIRD_LOGIN_FAIL      @"GAMA_THIRD_LOGIN_FAIL"      //第三方登录失败
//#define GAMA_THIRD_BINDING_SUCCESS @"GAMA_THIRD_BINDING_SUCCESS" //第三方绑定成功
//#define GAMA_THIRD_BINDING_FAIL    @"GAMA_THIRD_BINDING_FAIL"    //第三方绑定失败

// -- my note name
//#define NOTE_hello_login_success            @"note_hello_login_success"


// ---- constant
#define winWidth        [SUtil getCurrentScreenFrame].size.width//[UIScreen mainScreen].bounds.size.width
#define winHeight       [SUtil getCurrentScreenFrame].size.height//[UIScreen mainScreen].bounds.size.height


#define LABEL_FONT_NAME                     @"Helvetica-Bold"
#define LABEL_FONT_NAME_Helvetica           @"Helvetica"

#define FONTSIZE(fontsize)  IS_IPAD ? fontsize+7.0f : fontsize

#endif /* HelloHeader_h */
