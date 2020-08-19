//
//  SvnTask.m
//

#import "SvnTask.h"

#import "NSString+StringAdditions.h"
#import "CoreHelper_Internal.h"
#import "TaskHelper.h"

static NSString * kSvnPath = @"/usr/bin/svn";

static NSString *g_svnUserName = nil;
static NSString *g_svnPassword = nil;

@implementation SvnTask

+ (void)connectSvnWithURLPath:(NSString *)svnUrlStr
                     UserName:(NSString *)userName
                     Password:(NSString *)password
                  TaskHandler:(SvnTaskCompletionHandler)handler
{
    g_svnUserName = [userName copy];
    g_svnPassword = [password copy];
    
    [TaskHelper lanchedTaskWithLaunchPath:kSvnPath
                                arguments:@[
                                            @"info",
                                            
                                            @"--username", g_svnUserName,
                                            @"--password", g_svnPassword,
                                            
                                            svnUrlStr
                                            ]
                               outHandler:^(NSString *retStr) {
                                   [self _appendSvnLogStr:retStr];
                                   
                                   if (handler) {
                                       handler();
                                   }
                               }];
}

+ (void)checkOutFilesFormURLPath:(NSString *)urlPath
                      toFilePath:(NSString *)filePath
                     TaskHandler:(SvnTaskCompletionHandler)handler
{
    [TaskHelper lanchedTaskWithLaunchPath:kSvnPath
                                arguments:@[
                                            @"checkout",
                                            
                                            @"--username", g_svnUserName,
                                            @"--password", g_svnPassword,
                                            
                                            urlPath,
                                            filePath
                                            ]
                               outHandler:^(NSString *retStr) {
                                   [self _appendSvnLogStr:retStr];
                                   
                                   if (handler) {
                                       handler();
                                   }
                               }];
}

+ (void)updateFileWithLocalPath:(NSString *)localPath
                    TaskHandler:(SvnTaskCompletionHandler)handler
{
    [TaskHelper lanchedTaskWithLaunchPath:kSvnPath
                                arguments:@[
                                            @"update",
                                            
                                            @"--username", g_svnUserName,
                                            @"--password", g_svnPassword,
                                            
                                            localPath
                                            ]
                               outHandler:^(NSString *retStr) {
                                   [self _appendSvnLogStr:retStr];
                                   
                                   if (handler) {
                                       handler();
                                   }
                               }];
}

+ (void)commitFileWithMessage:(NSString *)message
                withLocalPath:(NSString *)localPath
                  TaskHandler:(SvnTaskCompletionHandler)handler
{
    [TaskHelper lanchedTaskWithLaunchPath:kSvnPath
                                arguments:@[
                                            @"commit",
                                            
                                            @"--message", message ? message : @"Commit With EfunCrypt",
                                            
                                            @"--username", g_svnUserName,
                                            @"--password", g_svnPassword,
                                            
                                            localPath
                                            ]
                               outHandler:^(NSString *retStr) {
                                   [self _appendSvnLogStr:retStr];
                                   
                                   if (handler) {
                                       handler();
                                   }
                               }];
}

+ (void)addFileWithLocalPath:(NSString *)localPath
                 TaskHandler:(SvnTaskCompletionHandler)handler
{
    NSString *tmpStr = [NSString stringWithCString:localPath.UTF8String encoding:NSUTF8StringEncoding];;
    [TaskHelper lanchedTaskWithLaunchPath:kSvnPath
                                arguments:@[
                                            @"add",
                                            
                                            @"--username", g_svnUserName,
                                            @"--password", g_svnPassword,
                                            
                                            tmpStr
                                            ]
                               outHandler:^(NSString *retStr) {
                                   [self _appendSvnLogStr:retStr];
                                   
                                   if (handler) {
                                       handler();
                                   }
                               }];
}

+ (void)cleanupFileWithLocalPath:(NSString *)localPath
                     TaskHandler:(SvnTaskCompletionHandler)handler
{
    NSString *tmpStr = [NSString stringWithCString:localPath.UTF8String encoding:NSUTF8StringEncoding];;
    [TaskHelper lanchedTaskWithLaunchPath:kSvnPath
                                arguments:@[
                                            @"cleanup",
                                            
                                            @"--username", g_svnUserName,
                                            @"--password", g_svnPassword,
                                            
                                            tmpStr
                                            ]
                               outHandler:^(NSString *retStr) {
                                   [self _appendSvnLogStr:retStr];
                                   
                                   if (handler) {
                                       handler();
                                   }
                               }];
}

+ (void)_appendSvnLogStr:(NSString *)str
{
    NSLog(@"%@",str);
    
    if ([str isContainString:@"svn: E"]) {
        [CoreHelper_Internal showAlertWithMessageText:str];
    }
    
    [[NSNotificationCenter defaultCenter] postNotificationName:kSvnLogNotification object:str];
}
@end
