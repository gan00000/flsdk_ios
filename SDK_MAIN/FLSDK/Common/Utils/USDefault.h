//
//  USDefault.h
//  FLSDK
//
//  Created by Gan Yuanrong on 2022/7/4.
//  Copyright © 2022 Gama. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface USDefault : NSObject

#pragma mark - private

+ (void)_userdefaultSetObject:(id)obj forKey:(NSString *)key;
+ (id)_userdefaultGetObjForKey:(NSString *)key;
+ (void)_userdefaultSetBool:(BOOL)statu forKey:(NSString *)key;
+ (BOOL)_userdefaultGetBoolForKey:(NSString *)key;

@end

NS_ASSUME_NONNULL_END
