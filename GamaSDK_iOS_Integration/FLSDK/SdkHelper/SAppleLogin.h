//
//  GamaAppleLogin.h
//  GamaSDK_iOS
//
//  Created by coke on 2019/10/21.
//  Copyright © 2019 Gama. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "SdkHeader.h"

NS_ASSUME_NONNULL_BEGIN
typedef void (^AppleLoginSuccess )(NSDictionary *__nullable result);
typedef void (^AppleLoginError)(NSError *__nullable error);
typedef void(^AppleCompleteHandler)(NSError * __nullable error, NSDictionary * __nullable results);

@interface SAppleLogin : NSObject
@property (strong, nonatomic) NSString *appleThirdID;

+ (instancetype)share;

- (void)handleAuthrization:(UIView *_Nullable)mView;

- (void)makeAppleCallbackSuccessBlock:(AppleLoginSuccess)successBlock andErrorBlock:(AppleLoginError)errorBlock;

//- (void)gama_appleLoginRequestWithThirdID:(NSString *)thirdID thirdPlate:(NSString *)thirdPlate;

- (void)autoLoginAppleAccountWithInformation;

- (NSDictionary *)fetchAppleLoginInfo;
@end

NS_ASSUME_NONNULL_END
