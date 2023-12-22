//
//  SDKTextFiledView.h
//  R2DSDK
//
//  Created by ganyuanrong on 2020/7/9.
//  Copyright © 2020 ganyuanrong. All rights reserved.
//

#import "SDKBaseView.h"
#import "SdkHeader.h"

typedef NS_OPTIONS(NSUInteger, SDKTextFiledView_Type)
{
    SDKTextFiledView_Type_Account,
    SDKTextFiledView_Type_Password,
    SDKTextFiledView_Type_Password_Again,
    SDKTextFiledView_Type_Password_New,
    SDKTextFiledView_Type_Password_Old,
    SDKTextFiledView_Type_VfCode,
};


NS_ASSUME_NONNULL_BEGIN

@interface SDKTextFiledView : SDKBaseView

- (instancetype)initViewWithType_MMMethodMMM:(SDKTextFiledView_Type) type;
-(void)setPwdFiledView_MMMethodMMM:(BOOL)enable;

@property (nonatomic) ItemViewClickHander clickAccountListItem_MMMPRO;
@property (nonatomic) CCallBack inputTextFieldChange_MMMPRO;
@property (nonatomic) UITextField *inputUITextField_MMMPRO;
@property (nonatomic) UIButton *moreAccountBtn_MMMPRO;

@property (nonatomic) UIImageView *lableIconImageView_MMMPRO;

@end

NS_ASSUME_NONNULL_END
