

#import "GamaCDNDownloader.h"
#import "GamaSDK_DES3Util.h"

@implementation GamaCDNDownloader

+ (void)downloadRemoteFile:(void (^)(NSDictionary *fileInfo))completion inCDNFilesLocation:(NSArray *)cdnFilesPath keyPrefix:(NSString *)prefix
{
    // 初始化请求信息
    static NSUInteger locationOrder = 0;
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:cdnFilesPath[locationOrder]]
                                                           cachePolicy:NSURLRequestReloadIgnoringLocalCacheData timeoutInterval:20.0f];
    // 读取本地保存的服务器端上一次对文件进行更改的时间，并添加到请求头
    NSString *lastModifiedTimeSaveKey = [NSString stringWithFormat:@"%@-savedLastModifiedTime",prefix];
    NSString *localSavedLastModifiedTime = [[NSUserDefaults standardUserDefaults] objectForKey:lastModifiedTimeSaveKey];
    if (localSavedLastModifiedTime && ![localSavedLastModifiedTime isEqualToString:@""]) {
        [request setValue:localSavedLastModifiedTime forHTTPHeaderField:@"If-Modified-Since"];
    }
    // 开始请求
    [[[NSURLSession sharedSession] dataTaskWithRequest:request
                                     completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
                                         if (error) {
                                             NSLog(@"第%lu次，请求动态域名发生错误，ERROR：%@",(unsigned long)locationOrder,error);
                                             if (locationOrder == (cdnFilesPath.count - 1)) { // 地址已切换完毕，依然请求出错
                                                 !completion ? : completion(nil);
                                                 return ;
                                             }
                                             // 切换请求地址再拉取信息
                                             locationOrder++;
                                             [self downloadRemoteFile:completion inCDNFilesLocation:cdnFilesPath keyPrefix:prefix];
                                         } else if (data.bytes) { // 第一次请求，有结果返回
                                             // 保存服务器端对文件修改的最后时间
                                             NSString *lastModifiedTime = [((NSHTTPURLResponse *)response).allHeaderFields objectForKey:@"Last-Modified"];
                                             if (lastModifiedTime && ![lastModifiedTime isEqualToString:@""]) {
                                                 NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
                                                 [userDefaults setObject:lastModifiedTime forKey:lastModifiedTimeSaveKey];
                                                 [userDefaults synchronize];
                                             }
                                             
                                             // 解密返回内容
                                             NSString *tmpResultStr=[[NSString alloc] initWithData:data
                                                                                          encoding:NSUTF8StringEncoding];
                                             NSString *resultStr = [GamaSDK_DES3Util decrypt:tmpResultStr];
                                             [tmpResultStr release];
                                             
                                             NSDictionary *fileInfoDic = nil;
                                             if (resultStr && ![resultStr isEqualToString:@""]) {
                                                 NSError *jsonError = nil;
                                                 fileInfoDic = [NSJSONSerialization JSONObjectWithData:[resultStr dataUsingEncoding:NSUTF8StringEncoding]
                                                                                               options:NSJSONReadingAllowFragments error:&jsonError];
                                                 if (jsonError) {
                                                     NSLog(@"解析动态域名json结果时发生错误，ERROR：%@",jsonError);
                                                 }
                                                 
                                                 // 将解析后的字典归档到本地
                                                 [self efn_archiveData:fileInfoDic pathSuffix:prefix];
                                                 !completion ? : completion(fileInfoDic);
                                             }
                                         } else { // 响应包体为空
                                             NSDictionary *savedDomainInfo = [self efn_unarchiveDataOnPathSuffix:prefix];
                                             if (savedDomainInfo && ((NSHTTPURLResponse *)response).statusCode == 304) {
                                                 !completion ? : completion(savedDomainInfo);
                                                 return;
                                             }
                                             
                                             NSLog(@"第%lu次，请求动态域名服务端返回包体为空",(unsigned long)locationOrder);
                                             if (locationOrder == (cdnFilesPath.count - 1)) { // 地址已切换完毕，依然没有拿到信息
                                                 !completion ? : completion(nil);
                                                 return ;
                                             }
                                    
                                             locationOrder++;
                                             [self downloadRemoteFile:completion inCDNFilesLocation:cdnFilesPath keyPrefix:prefix];
                                         }
                                     }] resume];
}

+ (void)efn_archiveData:(id)data pathSuffix:(NSString *)pathSuffix
{
    // 获取文件路径
    NSString *docPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
    // 文件类型可以随便取，不一定要正确的格式
    NSString *targetPath = [docPath stringByAppendingPathComponent:pathSuffix];
    
    // 将自定义对象保存在指定路径下
    [NSKeyedArchiver archiveRootObject:data toFile:targetPath];
    // 将保存在Documents目录下的文件做不备份的标记
    [self efn_addSkipBackupAttributeToItemAtPath:targetPath];
}

+ (id)efn_unarchiveDataOnPathSuffix:(NSString *)pathSuffix
{
    // 获取文件路径
    NSString *docPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
    // 文件类型可以随便取，不一定要正确的格式
    NSString *targetPath = [docPath stringByAppendingPathComponent:pathSuffix];
    id unarchivedData = [NSKeyedUnarchiver unarchiveObjectWithFile:targetPath];
    return unarchivedData;
}

+ (BOOL)efn_addSkipBackupAttributeToItemAtPath:(NSString *)filePathString
{
    NSURL* URL= [NSURL fileURLWithPath: filePathString];
    assert([[NSFileManager defaultManager] fileExistsAtPath: [URL path]]);
    
    NSError *error = nil;
    BOOL success = [URL setResourceValue: [NSNumber numberWithBool: YES]
                                  forKey: NSURLIsExcludedFromBackupKey error: &error];
    if(!success){
        NSLog(@"Error excluding %@ from backup %@", [URL lastPathComponent], error);
    }
    return success;
}

@end
