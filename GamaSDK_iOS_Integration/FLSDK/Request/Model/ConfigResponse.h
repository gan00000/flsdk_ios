//
//  ConfigResponse.h
//  FLSDK
//
//  Created by Gan Yuanrong on 2022/6/20.
//  Copyright © 2022 Gama. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MCoolFishChangeCenter.h"
#import "ConfigModel.h"
#import "UrlMode.h"

NS_ASSUME_NONNULL_BEGIN

@interface ConfigResponse : MCoolFishChangeCenter

//@property (nonatomic, strong) ConfigModel *allVersion;
@property (nonatomic, strong) NSArray<ConfigModel *> *allVersion;
@property (nonatomic, strong) NSArray<ConfigModel *> *subVersion;

@property (nonatomic,strong) UrlMode *url;
@end

NS_ASSUME_NONNULL_END
