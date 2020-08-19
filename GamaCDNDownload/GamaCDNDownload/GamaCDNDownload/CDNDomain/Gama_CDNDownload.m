
//

#import "Gama_CDNDownload.h"
#import "GamaDomainDefine.h"
#import "GamaSDK_DES3Util.h"
#import "GamaFunction.h"
#import "GamaCentreInfo.h"

//控制是使用外部CDN还是的CDN
static BOOL isFirstCDN = YES;
static BOOL isSpecialGame = NO;

@implementation Gama_CDNDownload

//下载开关文件
+ (void)downloadVersionCode:(void (^)(NSDictionary *resultDic, NSError *error))requestResult
{
    
    NSString *URLStr = [NSString stringWithFormat:@"%@",isFirstCDN?GAMA_FIRSTCDN:GAMA_SECONDCDN];

    GAMALog(URLStr);
    
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:URLStr] cachePolicy:NSURLRequestReloadIgnoringCacheData timeoutInterval:30.0f];
    NSOperationQueue *queue = [[[NSOperationQueue alloc] init] autorelease];
    [NSURLConnection sendAsynchronousRequest:request queue:queue completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError) {
        
        if (!connectionError&&data) {
            
            NSError *error = nil;
            NSDictionary *resultDic = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:&error];
            
            if (error) {
                GAMALog(error);
                if (requestResult != nil) {
                    requestResult(nil, error);
                }
                
            }
            else
            {
                GAMALog(resultDic);
                if (requestResult != nil) {
                    requestResult(resultDic, error);
                }
            }
            
        }
        else
        {
            GAMALog(connectionError);
            if (requestResult != nil) {
                requestResult(nil, connectionError);
            }
        }
    }];
}

//下载域名文件
+ (void)downloadDomain:(void (^)(NSString *resultStr, NSError *error))requestResult
{
    NSString *URLStr = nil;
    NSString *txtStr = nil;
    
    if (!isSpecialGame) {
        // 正常游戏共用一份，分侵权和非侵权
        txtStr = [NSString stringWithFormat:@"%@/s_sdk_config.txt",[SDKConReaderGetString(@"isGameTort") boolValue] ? @"nonifm" : @"ifm"];
    } else {
        // 特殊游戏不区分侵权和非侵权, 以 Gamecode区分
        txtStr = [NSString stringWithFormat:@"%@/s_sdk_config.txt",SDKConReaderGetString(SDK_GAME_CODE)];
    }
    URLStr = [NSString stringWithFormat:@"%@%@",isFirstCDN ? GAMA_FIRSTCDN : GAMA_SECONDCDN , txtStr];
    GAMALog(URLStr);
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:URLStr]
                                                           cachePolicy:NSURLRequestReloadIgnoringCacheData
                                                       timeoutInterval:30.0f];
    
    NSOperationQueue *queue = [[[NSOperationQueue alloc] init] autorelease];
    
    [NSURLConnection sendAsynchronousRequest:request
                                       queue:queue
                           completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError) {
        
        if (!connectionError&&data) {
            
            NSString *resultStr = [[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding] autorelease];
            
            // 下载完成后直接写到本地
            [resultStr writeToFile:[Gama_CDNDownload getDomainPath] atomically:YES encoding:NSUTF8StringEncoding error:nil];
            
            GAMALog(resultStr);
            
            if (requestResult != nil) {
                requestResult(resultStr, connectionError);
            }
        }
        else
        {
            GAMALog(connectionError);
            if (requestResult != nil) {
                requestResult(nil, connectionError);
            }
        }
    }];
}


//获取域名文件的路径
+ (NSString *)getDomainPath
{
    NSArray *keyPaths = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES);
    NSString *libPath = [keyPaths objectAtIndex:0];
    
    NSFileManager *fm = [NSFileManager defaultManager];
    
    NSString *textPath = [libPath stringByAppendingFormat:@"/Caches/gamaDomainFile"];
    
    //如果第一次使用，就创建
    if (![fm fileExistsAtPath:textPath])
    {
        [fm createDirectoryAtPath:textPath withIntermediateDirectories:YES attributes:nil error:nil];
    }
    
    return [NSString stringWithFormat:@"%@/gamaDomain.txt",textPath];
}


//解密域名文件，得到一个dictionary
+ (NSDictionary *)decryDomainStr:(NSString *)domainStr
{
    NSString *decryStr = [GamaSDK_DES3Util decrypt:domainStr];
    NSData *domainData = [decryStr dataUsingEncoding:NSUTF8StringEncoding];
    NSError *error = nil;
    NSDictionary *domainDic = [NSJSONSerialization JSONObjectWithData:domainData options:NSJSONReadingMutableLeaves error:&error];
    if (error) {
        GAMALog(error);
        return nil;
    }
    else
        GAMALog(domainDic);
        return domainDic;
}

//下载域名文件的逻辑
+ (void)getDomain:(void (^)(NSDictionary *resultDic, BOOL qxdlOpen))returnDic
{
    //本地文件不存在，从CDN下载域名文件
    [Gama_CDNDownload downloadDomain:^(NSString *resultStr, NSError *error) {
        if (!error) {
            //下载成功，直接返回域名信息以及开关状态。结束。
            if (returnDic != nil) {
                // 根据返回的字典里面的 S_Is_Reload_Cfg 字段，遍历里面的值
                // 若当前的 Gamecode 存在该数组中，则再次请求该游戏的单独配置
                NSMutableDictionary *decryDict = [[Gama_CDNDownload decryDomainStr:resultStr] mutableCopy];
                for (NSString *confStr in decryDict[@"S_Is_Reload_Cfg"]) {
                    if ([confStr isEqualToString:SDKConReaderGetString(SDK_GAME_CODE)]) {
                        isSpecialGame = YES;
                        break;
                    }
                }
                
                if (isSpecialGame) {
                    // 再次请求
                    [Gama_CDNDownload downloadDomain:^(NSString *resultStr, NSError *error) {
                        if (!error) {
                            
                            if (returnDic != nil) {
                                NSMutableDictionary *decryDict = [Gama_CDNDownload decryDomainStr:resultStr].mutableCopy;
                                decryDict[@"S_Is_Reload_Cfg"] ? [decryDict removeObjectForKey:@"S_Is_Reload_Cfg"] : nil;
                                returnDic(decryDict,NO);
                            }
                            
                        }
                        else {
                            // 直接返回
                            if (returnDic != nil) {
                                returnDic(nil, NO);
                            }
                        }
                    }];
                    
                } else {
                    // 去掉 S_Is_Reload_Cfg 数据，返回，结束
                    [decryDict removeObjectForKey:@"S_Is_Reload_Cfg"];
                    returnDic(decryDict,NO);
                }
            }
        }
        else
        {
            //下载失败，返回失败。结束。
            if (returnDic != nil) {
                returnDic(nil, NO);
            }
        }
        
    }];

}

//下载流程，正式CDN域名下载失败->备用域名下载。
+ (void)crazyDownloadDomain:(void (^)(NSDictionary *resultDic, BOOL qxdlOpen))lastResult
{
    
    [Gama_CDNDownload getDomain:^(NSDictionary *resultDic, BOOL qxdlOpen) {
        if (resultDic) {
            GAMALog(@"first download successful!");
            if (lastResult != nil) {
                lastResult(resultDic, qxdlOpen);
            }
        }
        else
        {
        
            GAMALog(@"first download failed, begin second download!");
            isFirstCDN = NO;
            [Gama_CDNDownload getDomain:^(NSDictionary *resultDic, BOOL qxdlOpen) {
                if (resultDic) {
                    GAMALog(@"second download successful!");
                    if (lastResult != nil) {
                        lastResult(resultDic, qxdlOpen);
                    }
                }
                else {
                    GAMALog(@"second download failed.");
                    if (lastResult != nil) {
                        lastResult(nil, NO);
                    }
                    
                }
            }];
        }
    }];
}
     

@end
