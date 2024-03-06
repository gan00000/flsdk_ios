//
//  R2SDKDATA.h
//  CCSkyHourSDK
//
//  Created by ganyuanrong on 2019/5/29.
//  Copyright © 2019 ganyuanrong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "LoginResponse.h"
#import "ConfigModel.h"
#import "GameUserModel.h"
#import "UrlMode.h"
#import "FloatConfigData.h"
#import "FloatMenuResp.h"

NS_ASSUME_NONNULL_BEGIN

@interface CCSDKDATA : NSObject

@property (nonatomic, strong)LoginResponse *mLoginResponse;
@property (nonatomic, strong)ConfigModel *mConfigModel;
@property (nonatomic, strong)GameUserModel * gameUserModel;
@property (nonatomic,strong) UrlMode *urls;

@property (nonatomic,strong) FloatConfigData *floatConfigData;
@property (nonatomic,strong) FloatMenuResp *floatMenuResp;
@property (nonatomic, strong) NSMutableArray<FloatMenuMode *> *floatShowMenuList;

@property(nonatomic, weak) id<UITextFieldDelegate> mUITextFieldDelegate;

@property (nonatomic, assign)CGFloat keyBoardHeight;

+ (instancetype)sharedSdkData_MMMethodMMM;

@end

NS_ASSUME_NONNULL_END
