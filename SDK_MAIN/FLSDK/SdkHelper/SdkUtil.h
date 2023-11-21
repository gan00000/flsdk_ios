//
//  HelloUtils.h
//
//
//  Created by Sunny on 17/2/6.
//  Copyright © 2017年 sunn. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>
#import "LoginButtonData.h"
#import "ConfigModel.h"

@interface SdkUtil : NSObject


#pragma mark - UI

//+ (WKWebView *)createWKWebViewAndAddToParentViewWithRect_MMMethodMMM:(CGRect)rect
//                                               urlStirng_MMMethodMMM:(NSString *)urlString
//                                            cornerRadius_MMMethodMMM:(CGFloat)radius
//                                                delegate:(id)delegate;



#pragma mark Calculate Label Size

+ (CGSize)calculateSizeOfLabel_MMMethodMMM:(UILabel *)label;
+ (CGSize)calculateSizeOfLabel_MMMethodMMM:(UILabel *)label andWidth_MMMethodMMM:(CGFloat)width;

#pragma mark - Toast

+ (void)toastMsg_MMMethodMMM:(NSString *)msg;
+ (void)toastMsg_MMMethodMMM:(NSString *)msg atView_MMMethodMMM:(UIView *)baseView;
// loading
+ (void)showLoadingAtView_MMMethodMMM:(UIView *)baseView;
+ (void)stopLoadingAtView_MMMethodMMM:(UIView *)baseView;

#pragma mark - Strings

//去掉空字符
+ (NSString *)triString_MMMethodMMM:(NSString *)aStr;

#pragma mark - TextField Rule
// 字符验证
+ (BOOL)validUserName_MMMethodMMM:(NSString *)accountName;
+ (BOOL)validPwd_MMMethodMMM:(NSString *)pwd;
//+ (BOOL)validEmail_MMMethodMMM:(NSString *)email;
+ (BOOL)validPhone_MMMethodMMM:(NSString *)phone phoneRegex_MMMethodMMM:(NSString *)regex;

#pragma mark - 整合部分

// guest 截屏過的憑證
//+ (void)gama_saveGuestAccountToPhoto:(UIView *)curView;

//----账号密码的保存
//+ (void)saveUserInfo_MMMethodMMM:(NSString *)userName andPassword_MMMethodMMM:(NSString *)password toFile_MMMethodMMM:(NSString*)fileName;
//+ (void)getUserInfo_MMMethodMMM:(NSString **)userName andPassword_MMMethodMMM:(NSString **)password fromFile_MMMethodMMM:(NSString*)fileName;

+ (NSString *)loginEncryptFromString_MMMethodMMM:(NSString *)aString;
+ (NSString *)loginDecryptFromString_MMMethodMMM:(NSString *)aString;

+ (UIView *)initWithMaxTitle_MMMethodMMM:(NSString *)maxTitle minTitle_MMMethodMMM:(NSString *)minTitle;
+ (CGSize)sizeWithText_MMMethodMMM:(NSString *)text font_MMMethodMMM:(UIFont *)font maxSize_MMMethodMMM:(CGSize)maxSize;
+ (CGFloat)titleFontWedthWithMaxStr_MMMethodMMM:(NSString *)maxStr minStr_MMMethodMMM:(NSString *)minStr;

//+(void)makeAccountFiledViewStatus_MMMethodMMM:(AccountModel *)mAccountModel accountView_MMMethodMMM:(SDKTextFiledView *)accountFiledView pwdView_MMMethodMMM:(SDKTextFiledView *)pwdFiledView;

+(NSMutableArray *)getShowBtnDatas_MMMethodMMM:(ConfigModel *)mConfigModel appleBtn_MMMethodMMM:(BOOL) appleBtn guestBtn_MMMethodMMM:(BOOL) guestBtn;

+ (void)savePhoneAreaInfo_MMMethodMMM:(NSArray *)numberAry;
+ (NSArray *)fetchPhoneAreaInfo_MMMethodMMM;

+ (NSArray *)getPhoneAreaInfo_MMMethodMMM;
+ (NSDictionary *)getPhoneInfoByAreaCode_MMMethodMMM:(NSString *)areaCode;

+ (void)saveReportEventName_MMMethodMMM:(NSString *)eventName;
+ (BOOL)isReportEventName_MMMethodMMM:(NSString *)eventName;

+ (void)saveAlready14Age_MMMethodMMM:(BOOL)isAge14;
+ (BOOL)isAlready14Age_MMMethodMMM;
@end
