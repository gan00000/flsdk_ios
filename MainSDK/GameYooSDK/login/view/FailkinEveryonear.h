//
//  FailkinEveryonear.h
//  GamaSDK_iOS
//
//  Created by ganyuanrong on 2020/8/1.
//  Copyright © 2020 Gama. All rights reserved.
//

#import "UltimizationLax.h"

NS_ASSUME_NONNULL_BEGIN

@interface FailkinEveryonear : UltimizationLax
- (instancetype)initWithCompleter:(void (^)(void))completer;

+ (BOOL)openProvision;
+(BOOL)isAgreenProvision;
+ (void)saveAgreenProvisionState:(BOOL)agreen;
@end

NS_ASSUME_NONNULL_END
