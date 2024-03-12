//
//  FloatBindAccountViewController.h
//  MW_SDK
//
//  Created by Gan Yuanrong on 2024/3/8.
//  Copyright © 2024 Gama. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SdkHeader.h"
#import "FloatMenuResp.h"
#import "FloatConfigData.h"
#import "NSString+URLEncoding.h"
#import "UIButton+WebCache.h"
#import "UIImageView+WebCache.h"
#import "SDKRequest.h"
#import "MWSDK.h"

NS_ASSUME_NONNULL_BEGIN

@interface FloatBindAccountViewController : UIViewController
@property (copy,nonatomic) MWBlock mMWBlock;
@end

NS_ASSUME_NONNULL_END
