//
//  HelloUtils.h
//
//
//  Created by Sunny on 17/2/6.
//  Copyright © 2017年 sunn. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "HelloTextField.h"
#import <WebKit/WebKit.h>

@interface GamaUtils : NSObject

+ (void)firstLoginSign;

#pragma mark - NSUserdefault Accesstor

+ (BOOL)getTodayNotShowAdwallAnyMoreStatus;
+ (void)setTodayNotShowAdwallAnyMoreStatus:(BOOL)checkedStatus;

+ (void)recordStateLoginWithType:(NSString *)type andUserName:(NSString *)name;
+ (void)getStateLoginWithType:(NSString **)type andUserName:(NSString **)name;
+ (void)removeStateLogin;
+ (BOOL)hadLastLoginStatus;

#pragma mark - UI

+ (UIButton *)initBtnWithTag:(NSUInteger)tag
                    selector:(SEL)selector
                      target:(id)target;

+ (UIButton *)initBtnWithNormalImage:(NSString *)normalImageName
                    highlightedImage:(NSString *)highlightedImageName
                                 tag:(NSUInteger)tag
                            selector:(SEL)selector
                              target:(id)target;

+ (UIButton *)initBtnWithTitle:(NSString *)titleText
                           tag:(NSUInteger)tag
                      selector:(SEL)selector
                        target:(id)target;

+ (UIButton *)initBtnWithType:(UIButtonType)type
                        title:(NSString *)titleText
                          tag:(NSUInteger)tag
                     selector:(SEL)selector
                       target:(id)target;

+ (UIButton *)initBtnWithTitle:(NSString *)titleText
               backgroundColor:(NSString *)hexColor
                           tag:(NSUInteger)tag
                      selector:(SEL)selector
                        target:(id)target;

+ (UIButton *)initBtnWithTitle:(NSString *)titleText
               backgroundImage:(NSString *)imageStr
                           tag:(NSUInteger)tag
                      selector:(SEL)selector
                        target:(id)target;

+ (WKWebView *)createWKWebViewAndAddToParentViewWithRect:(CGRect)rect
                                               urlStirng:(NSString *)urlString
                                            cornerRadius:(CGFloat)radius
                                                delegate:(id)delegate;

+ (HelloTextField *)customTextfieldWidgetWithLeftView:(NSString *)imageName
                                            rightView:(UIView *)right
                                          placeholder:(NSString *)placeholder
                                             delegate:(id)delegate;

// 处理placeholder，大小颜色等
+ (void)makeTextFieldPlaceHolderProperty:(UITextField *)textField;

#pragma mark Calculate Label Size

+ (CGSize)calculateSizeOfLabel:(UILabel *)label;
+ (CGSize)calculateSizeOfLabel:(UILabel *)label andWidth:(CGFloat)width;

#pragma mark - Toast

+ (void)gamaToastWithMsg:(NSString *)msg;
+ (void)gamaToastWithMsg:(NSString *)msg atView:(UIView *)baseView;
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
// guest 登陸過的憑證
+ (void)gama_guestLoginSign;
+ (BOOL)gama_hadEverGuestLogin;
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
@end
