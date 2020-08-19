//
//  PackagerManager.h
//  EfunPlistEncrypt
//
//  Created by czf on 28/4/15.
//  Copyright (c) 2015 Efun. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PackagerManagerInfo <NSObject>
@required
- (void)packagingInfo:(NSString *)packInfo;
- (void)packageDone;
@end

@interface PackagerManager : NSObject
@property (atomic, weak) id<PackagerManagerInfo> packageInfoDelegate;

+ (instancetype)defaultPackagerManager;
+ (BOOL)startPackagingWithGameCode:(NSString *)gameCode;

@end
