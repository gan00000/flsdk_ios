//
//  ConfigResponse.h
//  FLSDK
//
//  Created by Gan Yuanrong on 2022/6/20.
//  Copyright © 2022 Gama. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BJBaseResponceModel.h"
#import "ConfigModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface ConfigResponse : BJBaseResponceModel

@property (nonatomic, strong) ConfigModel *allVersion;
@property (nonatomic, strong) NSArray<ConfigModel *> *subVersion;

@end

NS_ASSUME_NONNULL_END
