//
//  NaverDelegate.h
//  MW_SDK
//
//  Created by Gan Yuanrong on 2023/7/24.
//  Copyright © 2023 Gama. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import <NaverThirdPartyLogin/NaverThirdPartyLogin.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef void (^NaverCallBack)(NSString* _Nullable accessToken, NSString* _Nullable userID, NSString* _Nullable displayName);

@interface NaverDelegate : NSObject //<NaverThirdPartyLoginConnectionDelegate>

+ (instancetype)share;

//- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions;
//- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary *)options;

-(void)startLoginWithKey_MMMethodMMM:(NSString *)consumerKey consumerSecret_MMMethodMMM:(NSString *)consumerSecret appName_MMMethodMMM:(NSString *)appName callback_MMMethodMMM:(NaverCallBack)callback;
@end

NS_ASSUME_NONNULL_END
