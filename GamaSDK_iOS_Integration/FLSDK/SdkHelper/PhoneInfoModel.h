//
//  GamaPhoneModel.h
//  GamaModule
//
//  Created by wind on 2019/11/14.
//  Copyright © 2019年 james. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class PhoneInfoModel;
@protocol PhoneInfoModelDelegate <NSObject>
@optional
- (void)fire;
@required
- (void)showSelectedAreaCodeValue_MMMethodMMM:(NSString *)selectedAreaCodeValue_MMMethodMMM;
@end

@interface PhoneInfoModel : NSObject

@property (nonatomic, strong) NSString *selectedAreaCodeKey;
@property (nonatomic, strong) NSString *selectedAreaCodeValue;
@property (nonatomic, copy) NSString *selectedRegularExpression;
@property (nonatomic, assign) id<PhoneInfoModelDelegate> delegate;

- (void)showAreaCodesActionSheetFromView_MMMethodMMM:(UIButton *)view;
//- (void)requestSendSecurityCodeToMobilePhoneNumber:(NSString *)phoneNumber;
//+ (void)requestPhoneNumberAreaCodes;

@end
