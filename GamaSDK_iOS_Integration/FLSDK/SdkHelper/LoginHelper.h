//
//  LoginHelper.h
//  FLSDK
//
//  Created by Gan Yuanrong on 2022/6/21.
//  Copyright © 2022 Gama. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LoginViewDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@interface LoginHelper : NSObject

+(void) appleLoginAndThirdRequest:(id<LoginViewDelegate>)delegate view:(UIView *)currentView;

+ (void)fbLoginAndThirdRequest:(id<LoginViewDelegate>)delegate;
@end

NS_ASSUME_NONNULL_END
