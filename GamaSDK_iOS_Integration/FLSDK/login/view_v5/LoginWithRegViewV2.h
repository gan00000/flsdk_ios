//
//  MainLoginView.h
//  FLSDK
//
//  Created by ganyuanrong on 2020/10/21.
//  Copyright © 2020 Gama. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SDKBaseView.h"
#import "AccountLoginViewV2.h"
#import "RegisterAccountViewV2.h"

NS_ASSUME_NONNULL_BEGIN

@interface LoginWithRegViewV2 : SDKBaseView

@property (nonatomic, strong) AccountLoginViewV2 *mAccountLoginView;

@property (nonatomic, strong) RegisterAccountViewV2 *mRegisterAccountView;

- (instancetype)initView_MMMethodMMM;

@end

NS_ASSUME_NONNULL_END
