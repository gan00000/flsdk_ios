//
//  TaskHelper.h
//  EfunPlistEncrypt
//
//  Created by czf on 6/5/15.
//  Copyright (c) 2015年 Efun. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^TaskHelperOutputHandler)(NSString *retStr);

@interface TaskHelper : NSObject

+(void)lanchedTaskWithLaunchPath:(NSString *)path
                       arguments:(NSArray *)arguments
                      outHandler:(TaskHelperOutputHandler)outHandler;

+(void)lanchedTaskWithLaunchPath:(NSString *)path
            CurrentDirectoryPath:(NSString *)curDirectoryPath
                       arguments:(NSArray *)arguments
                      outHandler:(TaskHelperOutputHandler)outHandler;
@end
