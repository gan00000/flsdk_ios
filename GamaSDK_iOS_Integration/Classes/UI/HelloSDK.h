//
//  HelloSDK.h
//  
//
//  Created by Sunny on 17/2/6.
//  Copyright © 2017年 sunn. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HelloSDK : NSObject

+ (instancetype)shareSDK;

- (void)h_login;

- (void)h_customServiceWithUrl:(NSString *)url;

@end
