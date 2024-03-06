//
//  FloatMenuData.h
//  MW_SDK
//
//  Created by Gan Yuanrong on 2024/3/6.
//  Copyright © 2024 Gama. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FloatMenuMode.h"
#import "BJBaseResponceModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface FloatMenuResp : BJBaseResponceModel

@property (nonatomic, copy) NSString *roleId;
@property (nonatomic, copy) NSString *userId;
@property (nonatomic, copy) NSString *roleName;
@property (nonatomic, copy) NSString *gameName;
@property (nonatomic, copy) NSString *gameCode;
@property (nonatomic, copy) NSString *serverCode;
@property (nonatomic, copy) NSString *serverName;

@property (nonatomic, strong) NSArray<FloatMenuMode *> *menuList;

@end

NS_ASSUME_NONNULL_END
