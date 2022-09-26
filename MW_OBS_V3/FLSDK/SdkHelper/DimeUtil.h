//
//  DimeUtil.h
//  FLSDK
//
//  Created by Gan Yuanrong on 2022/6/23.
//  Copyright © 2022 Gama. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CComHeader.h" //最基本
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DimeUtil : NSObject
@property (nonatomic, copy) NSString *beautifulousNictgrowtureShoot;
+ (instancetype)share;
-(CGFloat)getViewHeight:(CGFloat)height;

-(CGFloat)getViewWidth:(CGFloat)width;

-(CGFloat)getFontSize:(CGFloat)size;
@end

NS_ASSUME_NONNULL_END
