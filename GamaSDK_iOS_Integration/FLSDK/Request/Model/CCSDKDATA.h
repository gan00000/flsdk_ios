//
//  R2SDKDATA.h
//  CCSkyHourSDK
//
//  Created by ganyuanrong on 2019/5/29.
//  Copyright © 2019 ganyuanrong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LoginResponse.h"
#import "ConfigModel.h"
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CCSDKDATA : NSObject

@property (nonatomic, strong)LoginResponse *mLoginResponse;
@property (nonatomic, strong)ConfigModel *mConfigModel;

@property (nonatomic,assign) BOOL isNeedAutoLogin;

@property(nonatomic, weak) id<UITextFieldDelegate> mUITextFieldDelegate;

+ (instancetype)sharedSdkData;

@end

NS_ASSUME_NONNULL_END
