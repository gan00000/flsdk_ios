//
//  OverastSuperor.h
//  MW_SDK
//
//  Created by Gan Yuanrong on 2022/8/18.
//  Copyright © 2022 Gama. All rights reserved.
//

#import "UltimizationLax.h"
#import "CComHeader.h"

NS_ASSUME_NONNULL_BEGIN

@interface OverastSuperor : UltimizationLax

@property (nonatomic,strong) UIView *contentView;
@property (nonatomic,strong) CCallBack touchesBeganCallback;

@end

NS_ASSUME_NONNULL_END
