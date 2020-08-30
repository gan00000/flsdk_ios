//
//  PhoneView.h
//  R2DSDK
//
//  Created by ganyuanrong on 2020/7/12.
//  Copyright © 2020 ganyuanrong. All rights reserved.
//

#import "SDKBaseView.h"
#import "GamaPhoneModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface PhoneView : SDKBaseView <GamaPhoneModelDelegate>

@property (nonatomic, strong) GamaPhoneModel *phoneModel;
@property (nonatomic) UILabel *aracCodeUILabel;

@property (nonatomic) UITextField *mUITextField;

- (instancetype)initView;

-(NSString *) getPhoneNumber;
-(NSString *) getPhoneAreaCode;
@end

NS_ASSUME_NONNULL_END
