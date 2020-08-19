//
//  SvnTask.h
//  EfunPlistEncrypt
//
//  Created by czf on 7/5/15.
//  Copyright (c) 2015年 Efun. All rights reserved.
//

#import <Foundation/Foundation.h>

static NSString * kSvnLogNotification = @"SvnLogNotification";

typedef void(^SvnTaskCompletionHandler) ();
@interface SvnTask : NSObject

+ (void)connectSvnWithURLPath:(NSString *)svnUrlStr
                     UserName:(NSString *)userName
                     Password:(NSString *)password
                  TaskHandler:(SvnTaskCompletionHandler)handler;

+ (void)checkOutFilesFormURLPath:(NSString *)urlPath
                      toFilePath:(NSString *)filePath
                     TaskHandler:(SvnTaskCompletionHandler)handler;

+ (void)updateFileWithLocalPath:(NSString *)localPath
                    TaskHandler:(SvnTaskCompletionHandler)handler;

+ (void)commitFileWithMessage:(NSString *)message
                withLocalPath:(NSString *)localPath
                  TaskHandler:(SvnTaskCompletionHandler)handler;

+ (void)addFileWithLocalPath:(NSString *)localPath
                 TaskHandler:(SvnTaskCompletionHandler)handler;

+ (void)cleanupFileWithLocalPath:(NSString *)localPath
                     TaskHandler:(SvnTaskCompletionHandler)handler;
@end
