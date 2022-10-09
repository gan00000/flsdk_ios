//
//  AccountLoginView.h
//  R2DSDK
//
//  Created by ganyuanrong on 2020/7/9.
//  Copyright © 2020 ganyuanrong. All rights reserved.
//

#import "SDKBaseView.h"
#import "SDKTextFiledView.h"
#import "SdkHeader.h"

NS_ASSUME_NONNULL_BEGIN

@interface AccountLoginViewV2 : SDKBaseView 

- (instancetype)initView_MMMethodMMM;


+(void)makeAccountFiledViewStatus_MMMethodMMM:(AccountModel *)mAccountModel accountView_MMMethodMMM:(SDKTextFiledView *)accountFiledView pwdView_MMMethodMMM:(SDKTextFiledView *)pwdFiledView;

@end

NS_ASSUME_NONNULL_END
