//
//  DES3Util.h
//  ios_DES
//
//  Created by zhangguangyang on 7/1/14.
//  Copyright (c) 2014 zhangguangyang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GamaSDK_DES3Util : NSObject

// 加密方法
+ (NSString*)encrypt:(NSString*)plainText;

// 解密方法
+ (NSString*)decrypt:(NSString*)encryptText;

@end
