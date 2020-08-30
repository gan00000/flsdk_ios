//
//  LoginViewDelegate.h
//  CCSkyHourSDK
//
//  Created by ganyuanrong on 2019/5/30.
//  Copyright © 2019 ganyuanrong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SdkHeader.h"

NS_ASSUME_NONNULL_BEGIN

@protocol LoginViewDelegate <NSObject>

-(void)goPageView:(CURRENT_PAGE_TYPE) pageType;
-(void)goPageView:(CURRENT_PAGE_TYPE) pageType param:(NSInteger) p;

-(void)goBackBtn:(UIView *)backView backCount:(NSUInteger) count;

-(void)logout;
-(void)loginSuccess;

-(void)cancelAutoSwitchAccount;

-(void) handleLoginOrRegSuccess:(id)responseData thirdPlate:(NSString *)thirdPlate;

-(void)changPasswordSuccess;

@end

NS_ASSUME_NONNULL_END
