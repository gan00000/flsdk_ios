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

@interface SdkUtil : NSObject


#pragma mark - UI

//+ (WKWebView *)createWKWebViewAndAddToParentViewWithRect:(CGRect)rect
//                                               urlStirng:(NSString *)urlString
//                                            cornerRadius:(CGFloat)radius
//                                                delegate:(id)delegate;



#pragma mark Calculate Label Size

+ (CGSize)calculateSizeOfLabel:(UILabel *)label;
+ (CGSize)calculateSizeOfLabel:(UILabel *)label andWidth:(CGFloat)width;

#pragma mark - Toast

+ (void)toastMsg:(NSString *)msg;
+ (void)toastMsg:(NSString *)msg atView:(UIView *)baseView;
// loading
+ (void)gamaStarLoadingAtView:(UIView *)baseView;
+ (void)gamaStopLoadingAtView:(UIView *)baseView;

#pragma mark - Strings
// 处理链接请求
+ (NSString *)spliceSpecialString;

//去掉空字符
+ (NSString *)triString:(NSString *)aStr;

#pragma mark - TextField Rule
// 字符验证
+ (BOOL)validUserName:(NSString *)userName;
+ (BOOL)validPwd:(NSString *)pwd;
+ (BOOL)validEmail:(NSString *)email;
+ (BOOL)validPhone:(NSString *)phone phoneRegex:(NSString *)regex;

#pragma mark - 整合部分

// guest 截屏過的憑證
+ (void)gama_saveGuestAccountToPhoto:(UIView *)curView;

//----账号密码的保存
+ (void)saveUserInfo:(NSString *)userName andPassword:(NSString *)password toFile:(NSString*)fileName;
+ (void)getUserInfo:(NSString **)userName andPassword:(NSString **)password fromFile:(NSString*)fileName;

+ (NSString *)loginEncryptFromString:(NSString *)aString;
+ (NSString *)loginDecryptFromString:(NSString *)aString;

+ (UIView *)initWithMaxTitle:(NSString *)maxTitle minTitle:(NSString *)minTitle;
+ (CGSize)sizeWithText:(NSString *)text font:(UIFont *)font maxSize:(CGSize)maxSize;
+ (CGFloat)titleFontWedthWithMaxStr:(NSString *)maxStr minStr:(NSString *)minStr;

//+(void)makeAccountFiledViewStatus:(AccountModel *)mAccountModel accountView:(SDKTextFiledView *)accountFiledView pwdView:(SDKTextFiledView *)pwdFiledView;

@end
