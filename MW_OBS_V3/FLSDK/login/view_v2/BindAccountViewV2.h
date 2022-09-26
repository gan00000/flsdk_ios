//
//  BindAccountView.h
//  CCSkyHourSDK
//
//  Created by ganyuanrong on 2019/5/30.
//  Copyright © 2019 ganyuanrong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SDKBaseView.h"
#import "MWSDK.h"

NS_ASSUME_NONNULL_BEGIN

@interface BindAccountViewV2 : SDKBaseView

@property (copy,nonatomic) MWBlock mMWBlock;

- (instancetype)initView;

@end

NS_ASSUME_NONNULL_END
