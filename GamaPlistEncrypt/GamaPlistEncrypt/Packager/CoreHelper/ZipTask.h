//
//  ZipTask.h
//  EfunPlistEncrypt
//
//  Created by czf on 13/5/15.
//  Copyright (c) 2015年 Efun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZipTask : NSObject

+ (void)zipFileWithFileDirectory:(NSString *)directoryName
                   toZipFilePath:(NSString *)zipFilePath
            andCompletionHandler:(void(^)())handler;

@end