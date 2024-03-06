//
//  FloatConfigData.h
//  MW_SDK
//
//  Created by Gan Yuanrong on 2024/3/6.
//  Copyright © 2024 Gama. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FloatMenu.h"

NS_ASSUME_NONNULL_BEGIN

@interface FloatConfigData : NSObject

@property (nonatomic, assign) BOOL buttonSwitch;
@property (nonatomic, copy) NSString *buttonIcon;
@property (nonatomic, copy) NSString *gameIcon;

@property (nonatomic, strong) NSArray<FloatMenu *> *menuList;

@end

NS_ASSUME_NONNULL_END
