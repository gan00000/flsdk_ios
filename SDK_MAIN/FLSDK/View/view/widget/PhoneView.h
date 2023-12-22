//
//  PhoneView.h
//  R2DSDK
//
//  Created by ganyuanrong on 2020/7/12.
//  Copyright © 2020 ganyuanrong. All rights reserved.
//

#import "SDKBaseView.h"
#import "PhoneInfoModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface PhoneView : SDKBaseView <PhoneInfoModelDelegate>

@property (nonatomic, strong) PhoneInfoModel *phoneModel_MMMPRO;
@property (nonatomic) UILabel *aracCodeUILabel_MMMPRO;

@property (nonatomic) UITextField *mUITextField_MMMPRO;

- (instancetype)initView_MMMethodMMM;

-(NSString *)getPhoneNumber_MMMethodMMM;
-(NSString *)getPhoneAreaCode_MMMethodMMM;
@end

NS_ASSUME_NONNULL_END
