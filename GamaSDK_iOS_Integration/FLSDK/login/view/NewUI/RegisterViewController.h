//
//  RegisterViewController.h
//  FLSDK
//
//  Created by ganyuanrong on 2021/7/13.
//  Copyright © 2021 Gama. All rights reserved.
//

#import "SdkUIBaseViewController.h"
#import "GamaPhoneModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface RegisterViewController : SdkUIBaseViewController <GamaPhoneModelDelegate>

@property (nonatomic, assign) NSInteger bindType;

@end

NS_ASSUME_NONNULL_END
