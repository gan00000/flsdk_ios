//
//  SDK_iOS_KR
//
//  Created by Sunny on 16/4/26.
//  Copyright © 2017年 suun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, GamaThirdPlatform){
    Gama_GameCenter = 0,
    Gama_Facebook,
    Gama_Twitter,
    Gama_Apple,
};

@interface GamaNetEngine : NSObject

/* Register a new account */
+ (void)registerAccountWithUserName:(NSString *_Nonnull)username password:(NSString *_Nonnull)password email:(NSString *_Nullable)email;

+ (void)registerAccountWithUserName:(NSString *_Nonnull)username password:(NSString *_Nonnull)password otherDic:(NSString *_Nullable)otherDic;

/* Login using account*/
+ (void)loginUsingUsername:(NSString *_Nonnull)userName password:(NSString *_Nonnull)password;

+ (void)loginUsingUsername:(NSString *_Nonnull)userName password:(NSString *_Nonnull)password otherDic:(NSDictionary *_Nullable)dic;

/* Find password back */
+ (void)findPasswordWithUserName:(NSString *_Nonnull)userName email:(NSString *_Nonnull)email;

+ (void)findPasswordWithUserName:(NSString *_Nonnull)userName otherDic:(NSDictionary *_Nullable)otherDic;

/* Reset password */
+ (void)resetPasswordWithUserName:(NSString *_Nonnull)userName oldPassword:(NSString *_Nonnull)oldPassword newPassword:(NSString *_Nonnull)newPassword;

/* Guset login */
+ (void)guestLogin;

/* Bind guest account */
+ (void)bindingGuestAccountWithUserName:(NSString *_Nonnull)username password:(NSString *_Nonnull)password otherDic:(NSDictionary *_Nullable)otherDic;

@end

#pragma mark - Third Platform Request

@interface GamaNetEngine (ThirdPlatformRequest)

/* Login */
+ (void)loginUsingThirdPlatform:(GamaThirdPlatform)thirdPlatform handler:(void(^_Nullable)(NSError *_Nullable error))handler;

/* Bind Account */
+ (void)bindingUserName:(NSString *_Nonnull)userName password:(NSString *_Nonnull)password otherDic:(NSDictionary *_Nullable)otherDic withThirdPlatform:(GamaThirdPlatform)thirdPlatform;

/* Login using third platform's userid  */
+ (void)thirdLoginWithThirdId:(NSString *_Nonnull)thirdId thirdPlate:(NSString *_Nonnull)thirdPlate handler:(void(^_Nullable)(void))handler;

+ (void)thirdBindPhoneWithInformation:(NSDictionary *)dic;
@end
