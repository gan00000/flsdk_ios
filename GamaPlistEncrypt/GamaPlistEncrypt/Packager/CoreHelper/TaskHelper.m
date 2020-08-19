//
//  TaskHelper.m
//  EfunPlistEncrypt
//
//  Created by czf on 6/5/15.
//  Copyright (c) 2015年 Efun. All rights reserved.
//

#import "TaskHelper.h"

@interface TaskHelper ()

@property (strong,nonatomic)NSTask *task;
@property (strong,nonatomic)NSString *outputStr;
@property (strong,atomic)TaskHelperOutputHandler outputHandler;

@end

@implementation TaskHelper
@synthesize outputHandler;
@synthesize outputStr;

+(void)lanchedTaskWithLaunchPath:(NSString *)path
                       arguments:(NSArray *)arguments
                      outHandler:(TaskHelperOutputHandler)outHandler
{
    [self lanchedTaskWithLaunchPath:path
               CurrentDirectoryPath:nil
                          arguments:arguments
                         outHandler:outHandler];
}

+(void)lanchedTaskWithLaunchPath:(NSString *)path
            CurrentDirectoryPath:(NSString *)curDirectoryPath
                       arguments:(NSArray *)arguments
                      outHandler:(TaskHelperOutputHandler)outHandler
{
    NSTask *tmpTask = [[NSTask alloc] init];
    [tmpTask setLaunchPath:path];
    
    if (curDirectoryPath) {
        [tmpTask setCurrentDirectoryPath:curDirectoryPath];
    }
    
    [tmpTask setArguments:arguments];
    [tmpTask setEnvironment:@{@"LC_ALL" : @"en_US.UTF-8"}];
    
    TaskHelper *tmpTaskHelper = [[TaskHelper alloc] init];
    tmpTaskHelper.outputHandler = outHandler;
    tmpTaskHelper.task = tmpTask;
    
    NSPipe *tmpPipe = [NSPipe pipe];
    [tmpTask setStandardOutput:tmpPipe];
    [tmpTask setStandardError:tmpPipe];
    NSFileHandle *tmpHandle = [tmpPipe fileHandleForReading];
    
    [tmpTask launch];
    
    [NSThread detachNewThreadSelector:@selector(watchTaskProcess:) toTarget:tmpTaskHelper withObject:tmpHandle];
    
    [NSTimer scheduledTimerWithTimeInterval:1.0f
                                     target:tmpTaskHelper
                                   selector:@selector(checkTaskFinished:)
                                   userInfo:nil
                                    repeats:YES];
}

- (void)watchTaskProcess:(NSFileHandle *)steamHandler
{
    @autoreleasepool
    {
        self.outputStr = [[NSString alloc] initWithData:[steamHandler readDataToEndOfFile]                                                       encoding:NSUTF8StringEncoding];
    }
}

- (void)checkTaskFinished:(NSTimer *)timer
{
    if (!self.task.running)
    {
        [timer invalidate];
        self.task = nil;
        
        if (self.outputHandler) {
            self.outputHandler(self.outputStr);
        }
    }
}

@end
