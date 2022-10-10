//
//  MainLoginView.h
//  FLSDK
//
//  Created by ganyuanrong on 2020/10/21.
//  Copyright © 2020 Gama. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SDKBaseView.h"
#import "AccountLoginView.h"
#import "RegisterAccountView.h"

NS_ASSUME_NONNULL_BEGIN

@interface LoginWithRegView : SDKBaseView

@property (nonatomic, strong) AccountLoginView *mAccountLoginView;

@property (nonatomic, strong) RegisterAccountView *mRegisterAccountView;

- (instancetype)initView_MMMethodMMM;

@end

NS_ASSUME_NONNULL_END
