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
@property (nonatomic, assign) BOOL naverLogin;

//是否显示定型化契约
@property (nonatomic, assign) BOOL showContract;
@property (nonatomic, assign) BOOL deleteAccount;

//是否过审状态
@property (nonatomic, assign) BOOL appPassCheck;

@property (nonatomic, assign) BOOL showLogo;

@property (nonatomic, assign) BOOL showForgetPwd;
@property (nonatomic, assign) BOOL showNotice;
@property (nonatomic, copy) NSString *platform;

@property (nonatomic, assign) BOOL showRegPage;

@end

NS_ASSUME_NONNULL_END
