//
//  LoginViewDelegate.h
//  CCSkyHourSDK
//
//  Created by ganyuanrong on 2019/5/30.
//  Copyright © 2019 ganyuanrong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SdkHeader.h"

typedef NS_OPTIONS(NSUInteger, SDKPage)
{
    SDKPage_Login,
    SDKPage_LoginType,
    SDKPage_UnBind,
    SDKPage_Find_Pwd
};


NS_ASSUME_NONNULL_BEGIN

@protocol LoginViewDelegate <NSObject>

-(void)goPageView:(CURRENT_PAGE_TYPE) toPage;
-(void)goPageView:(CURRENT_PAGE_TYPE) toPage from:(CURRENT_PAGE_TYPE)fromPage param:(id) obj;

-(void)goBackBtn:(UIView *)backView backCount:(NSUInteger) count fromPage:(CURRENT_PAGE_TYPE) fromPage toPage:(CURRENT_PAGE_TYPE) toPage;

-(void)logout;
-(void)loginSuccess;

-(void)cancelAutoSwitchAccount;

-(void) handleLoginOrRegSuccess:(id)responseData thirdPlate:(NSString *)thirdPlate;

-(void)changPasswordSuccess;

@end

NS_ASSUME_NONNULL_END
