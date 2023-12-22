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
#import "GameUserModel.h"
#import "UrlMode.h"
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CCSDKDATA : NSObject

@property (nonatomic, strong)LoginResponse *mLoginResponse_MMMPRO;
@property (nonatomic, strong)ConfigModel *mConfigModel_MMMPRO;
@property (nonatomic, strong)GameUserModel * gameUserModel_MMMPRO;
@property (nonatomic,strong) UrlMode *urls_MMMPRO;

@property(nonatomic, weak) id<UITextFieldDelegate> mUITextFieldDelegate_MMMPRO;

@property (nonatomic, assign)CGFloat keyBoardHeight_MMMPRO;

+ (instancetype)sharedSdkData_MMMethodMMM;

@end

NS_ASSUME_NONNULL_END
