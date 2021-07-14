//
//  SdkUIBaseViewController.h
//  SDK_TEST
//
//  Created by ganyuanrong on 2021/7/12.
//  Copyright © 2021 Gama. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SdkUIBaseViewController : UIViewController


+ (instancetype)createViewController;
+ (NSString *)storyboardName;

-(void) handleLoginOrRegSuccess:(id)responseData thirdPlate:(NSString *)thirdPlate;

@end

NS_ASSUME_NONNULL_END
