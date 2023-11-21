//
//  SPWxManager.h
//  SPSDK_iOS
//
//  Created by sunn on 2017/5/5.
//  Copyright © 2017年 starpy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WXApi.h"

@interface SPWxManager : NSObject <WXApiDelegate>

+ (instancetype)shareManager;

- (BOOL)handleOpenUrl:(NSURL *)url;

- (void)login;






@end
