//
//  RegisterAccountView.h
//  R2DSDK
//
//  Created by ganyuanrong on 2020/7/12.
//  Copyright © 2020 ganyuanrong. All rights reserved.
//

#import "SDKBaseView.h"

NS_ASSUME_NONNULL_BEGIN

@interface RegisterAccountViewV2 : SDKBaseView
- (instancetype)initView;
- (instancetype)initViewWithBindType:(NSInteger) bindType;
@property (nonatomic, assign) NSInteger bindType;
@end

NS_ASSUME_NONNULL_END
