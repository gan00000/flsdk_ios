//
//  GamaPhoneModel.h
//  GamaModule
//
//  Created by wind on 2019/11/14.
//  Copyright © 2019年 james. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class TenssureTravel;
@protocol PhoneInfoModelDelegate <NSObject>
@optional
- (void)fire;
@required
- (void)showSelectedAreaCodeValue:(NSString *)selectedAreaCodeValue;
@end

@interface TenssureTravel : NSObject

@property (nonatomic, strong) NSString *selectedAreaCodeKey;
@property (nonatomic, strong) NSString *selectedAreaCodeValue;
@property (nonatomic, copy) NSString *selectedRegularExpression;
@property (nonatomic, assign) id<PhoneInfoModelDelegate> delegate;

- (void)showAreaCodesActionSheetFromView:(UIButton *)view;
//- (void)requestSendSecurityCodeToMobilePhoneNumber:(NSString *)phoneNumber;
//+ (void)requestPhoneNumberAreaCodes;

@end
