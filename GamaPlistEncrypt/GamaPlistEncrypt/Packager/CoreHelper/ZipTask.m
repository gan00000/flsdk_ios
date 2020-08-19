//
//  ZipTask.m
//  EfunPlistEncrypt
//
//  Created by czf on 13/5/15.
//  Copyright (c) 2015年 Efun. All rights reserved.
//

#import "ZipTask.h"

#import "TaskHelper.h"

static NSString *kZipLaunchPath = @"/usr/bin/zip";
@implementation ZipTask

+ (void)zipFileWithFileDirectory:(NSString *)directoryName
                   toZipFilePath:(NSString *)zipFilePath
            andCompletionHandler:(void(^)())handler
{
    [TaskHelper lanchedTaskWithLaunchPath:kZipLaunchPath
                     CurrentDirectoryPath:directoryName
                                arguments:@[
                                            @"-r9yq",
                                            zipFilePath,
                                            @"."
                                            ]
                               outHandler:^(NSString *retStr) {
                                   NSLog(@"%@",retStr);
                                   
                                   if (handler) {
                                       handler();
                                   }
                               }];
}

@end