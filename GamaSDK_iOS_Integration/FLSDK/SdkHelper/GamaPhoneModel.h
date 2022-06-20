//
//  GamaPhoneModel.h
//  GamaModule
//
//  Created by wind on 2019/11/14.
//  Copyright © 2019年 james. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class GamaPhoneModel;
@protocol GamaPhoneModelDelegate <NSObject>
@optional
- (void)fire;
@required
- (void)showSelectedAreaCodeValue:(NSString *)selectedAreaCodeValue;
@end

@interface GamaPhoneModel : NSObject
@property (nonatomic, strong) NSString *selectedAreaCodeKey;
@property (nonatomic, strong) NSString *selectedAreaCodeValue;
@property (nonatomic, copy) NSString *selectedRegularExpression;
@property (nonatomic, assign) id<GamaPhoneModelDelegate> delegate;

- (void)gamaShowAreaCodesActionSheetFromView:(UIButton *)view;
- (void)requestSendSecurityCodeToMobilePhoneNumber:(NSString *)phoneNumber;
+ (void)requestPhoneNumberAreaCodes;

@end
