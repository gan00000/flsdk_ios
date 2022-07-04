//
//  ConfigModel.h
//  FLSDK
//
//  Created by Gan Yuanrong on 2022/6/20.
//  Copyright © 2022 Gama. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ConfigModel : NSObject

@property (nonatomic, copy) NSString *packageName;
@property (nonatomic, copy) NSString *version;

@property (nonatomic, assign) BOOL visitorLogin;
@property (nonatomic, assign) BOOL fbLogin;
@property (nonatomic, assign) BOOL googleLogin;
@property (nonatomic, assign) BOOL lineLogin;
@property (nonatomic, assign) BOOL appleLogin;

@property (nonatomic, assign) BOOL delectAccount;

//是否过审状态
@property (nonatomic, assign) BOOL appPassCheck;
@end

NS_ASSUME_NONNULL_END
