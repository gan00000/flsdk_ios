//
//  AccountLoginView.h
//  R2DSDK
//
//  Created by ganyuanrong on 2020/7/9.
//  Copyright © 2020 ganyuanrong. All rights reserved.
//

#import "SDKBaseView.h"

NS_ASSUME_NONNULL_BEGIN

@interface WelcomeBackView : SDKBaseView 

- (instancetype)initView;

-(void) updatePasswordData;
-(void) updateTermsStatus;

@end

NS_ASSUME_NONNULL_END
