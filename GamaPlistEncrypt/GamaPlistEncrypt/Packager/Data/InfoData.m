//
//  InfoData.m
//

#import "InfoData.h"

#import "GamaEnDeFunc.h"
#import "NSString+StringAdditions.h"
#import "NSImage+WriteToFile.h"

@interface InfoData ()
@end

@implementation InfoData

+ (void)load
{
    kLocalAppPath = [[NSBundle mainBundle].bundlePath stringCutStringTo:@"/" option:NSBackwardsSearch].copy;
    
    kLocalAppFilesPath = [NSString stringWithFormat:@"%@/gameLocalFiles", [NSBundle mainBundle].resourcePath].copy;
    
    kLocalTempSvnFilePath = [NSString stringWithFormat:@"%@/tmpSvnFileDiretory", kLocalAppPath].copy;
    
    kLocalTempSvnFileDemoPath = [NSString stringWithFormat:@"%@/gameDemoProject", kLocalTempSvnFilePath].copy;
    kLocalTempSvnFileResourcesPath = [NSString stringWithFormat:@"%@/gameResourcesDiretory", kLocalTempSvnFilePath].copy;
    kLocalTempSvnGameConfigFilesPath = [NSString stringWithFormat:@"%@/gameConfig",kLocalTempSvnFilePath].copy;
    kLocalTempSvnLocalizedStringsPath = [NSString stringWithFormat:@"%@/LocalizedStrings", kLocalTempSvnFilePath].copy;
    kLocalTempSvnThirdSDKFilesPath = [NSString stringWithFormat:@"%@/ThirdSDKFiles",kLocalTempSvnFilePath].copy;
    
    kLocalTempExpotFilePath = [NSString stringWithFormat:@"%@/tmpExportFiles", kLocalAppPath].copy;    
    
    kLocalTempExportFileConfigPath = [NSString stringWithFormat:@"%@/_ExportConfig", kLocalTempExpotFilePath].copy;
    kLocalTempExportFileZipPath = [NSString stringWithFormat:@"%@/_ExportZip", kLocalTempExpotFilePath].copy;
    
    [CoreHelper_Internal createFileAtPath:kLocalTempSvnFilePath];
    [CoreHelper_Internal createFileAtPath:kLocalTempExportFileConfigPath];
    [CoreHelper_Internal createFileAtPath:kLocalTempExportFileZipPath];
}

+ (NSDictionary *)loadInfoListWithTypeName:(NSString *)typeName andCurGameCode:(NSString *)gamecode
{
    NSString *tmpInfoListTxtPath = [NSString stringWithFormat:@"%@/%@",kLocalTempSvnGameConfigFilesPath, kInfoListTxtName];
    
    NSMutableDictionary *tmpInfoListDic = [NSMutableDictionary dictionaryWithDictionary:[self loadConfigWithPath:tmpInfoListTxtPath WithTypeName:typeName]];
    
    if (gamecode && ![gamecode isEqualToString:@""]) {
        NSDictionary *tmpGameConfigDic = [InfoData loadGameConfigWithGameCode:gamecode];
        for (NSString *tmpKey in tmpInfoListDic.allKeys) {
            tmpInfoListDic[tmpKey] = [self formatStringWithValueString:tmpInfoListDic[tmpKey] andConfigDic:tmpGameConfigDic];
        }
    }
    
    return tmpInfoListDic;
}

+ (NSArray *)loadInfoListConfigArrWithTypeName:(NSString *)typeName
{
    NSString *tmpInfoListTxtPath = [NSString stringWithFormat:@"%@/%@",kLocalTempSvnGameConfigFilesPath, kInfoListTxtName];
    return [self loadConfigArrWithPath:tmpInfoListTxtPath withTypeName:typeName];
}

+ (NSDictionary *)loadGameConfigWithGameCode:(NSString *)gamecode
{
    NSString *tmpGameConfigTxtPath = [NSString stringWithFormat:@"%@/%@",kLocalTempSvnGameConfigFilesPath, kGameConfigTxtName];
    
    return [self loadConfigWithPath:tmpGameConfigTxtPath WithTypeName:gamecode];
}

+ (NSDictionary *)loadResourceConfigWithResType:(NSString *)gameCode
{
    NSString *tmpResourceConfig = [NSString stringWithFormat:@"%@/%@",kLocalTempSvnGameConfigFilesPath, kGameResourcesConfigFile];
    
    return [self loadConfigWithPath:tmpResourceConfig WithTypeName:gameCode];
}

+ (NSArray *)loadConfigArrWithPath:(NSString *)configFilePath withTypeName:(NSString *)typeName
{
    NSMutableArray * tmpArr = nil;
    
    [self loadConfigWithPath:configFilePath WithTypeName:typeName andRetKeyArr:&tmpArr];
    
    return tmpArr;
}

+ (NSDictionary *)loadConfigWithPath:(NSString *)configFilePath WithTypeName:(NSString *)typeName
{
    return [self loadConfigWithPath:configFilePath WithTypeName:typeName andRetKeyArr:nil];
}

+ (NSDictionary *)loadConfigWithPath:(NSString *)configFilePath WithTypeName:(NSString *)typeName andRetKeyArr:(NSArray* __strong *)keyArr
{
    NSDictionary *resultDic = nil;
    NSMutableArray *resultArr = [NSMutableArray array];
    
    NSString *rawStr = [CoreHelper_Internal loadPropertyListWithInfoFileName:configFilePath andTypeMark:PACKAGE_TO_TYPEMARK(typeName)];
    
    NSMutableArray *tmpKV_arr = [NSMutableArray arrayWithArray:[rawStr componentsSeparatedByString:@";"]];
    
    if (tmpKV_arr == nil) {
        NSLog(@"loadConfigWithPath return nil Arr!!!");
        return nil;
    }
    
    NSMutableDictionary *tmpRetDic = [[NSMutableDictionary alloc] initWithCapacity:tmpKV_arr.count];
    
    NSString *tmpKey,*tmpVal;
    
    for (NSString *tmpKVStr in tmpKV_arr) {
        tmpKey = [tmpKVStr stringCutStringTo:@"="];
        tmpVal = [tmpKVStr stringCutStringFrom:@"="];
        
        if ([tmpKey isEqualTo:tmpVal]
            && ![tmpKVStr isContainString:@"="]) {
            tmpVal = @"";
        }
        
        NSError *tmpErr = nil;
        NSDictionary *tmpJson = [NSJSONSerialization JSONObjectWithData:[tmpVal dataUsingEncoding:NSUTF8StringEncoding]
                                                                options:0
                                                                  error:&tmpErr];
        
        if (tmpErr) {
            [tmpRetDic setValue:tmpVal forKey:tmpKey];
        } else {
            [tmpRetDic setValue:tmpJson forKey:tmpKey];
        }
        
        
        if (tmpKey && ![tmpKey isEqualToString:@""]) {
            [resultArr addObject:tmpKey];
        }
    }
    
    resultDic = [NSDictionary dictionaryWithDictionary:tmpRetDic];
    
    if (keyArr)
    {
        *keyArr = resultArr;
    }
    
    return resultDic;
}

+ (NSArray *)loadAlreadyConfingedGameCodeArr
{
    NSString *tmpGameConfigTxtPath = [NSString stringWithFormat:@"%@/%@",kLocalTempSvnGameConfigFilesPath, kGameConfigTxtName];
    
    return [self loadConfigTypeListWithPath:tmpGameConfigTxtPath];
}

+ (NSArray *)loadAlreadyConfigedResArr
{
    NSString *tmpGameResTxtPath = [NSString stringWithFormat:@"%@/%@",kLocalTempSvnGameConfigFilesPath, kGameResourcesConfigFile];
    
    return [self loadConfigTypeListWithPath:tmpGameResTxtPath];
}

+ (NSArray *)loadAlreadyConfigedInfoList
{
    NSString *tmpInflListTxtPath = [NSString stringWithFormat:@"%@/%@",kLocalTempSvnGameConfigFilesPath, kInfoListTxtName];
    
    return [self loadConfigTypeListWithPath:tmpInflListTxtPath];
}

+ (NSArray *)loadConfigTypeListWithPath:(NSString *)path
{
    NSMutableArray *resultArr = [NSMutableArray arrayWithCapacity:32];
    
    NSString *rawStr = [CoreHelper_Internal loadRawTextWithFilePath:path];
    rawStr = [rawStr stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    NSMutableArray *tmpArr = [NSMutableArray arrayWithArray:[rawStr componentsSeparatedByString:@"]\n"]];
    for (NSString *tmpStr in tmpArr) {
        if ([tmpStr isContainString:@"["]) {//the last of element maybe not the TypeMark
            NSString *resStr = [tmpStr stringCutStringFrom:@"[" option:NSBackwardsSearch];
            [resultArr addObject:resStr];
        }
    }
    
    return resultArr;
}

+ (NSDictionary *)loadOldPlistWithPath:(NSString *)oldPlistFilePath
{
    NSDictionary * infoDic = [NSDictionary dictionaryWithContentsOfFile:oldPlistFilePath];
    NSMutableDictionary * resultDic = [[NSMutableDictionary alloc] initWithCapacity:256];
    
    for (NSString *key in infoDic.allKeys)
    {
        NSDictionary * tmpDic = [infoDic objectForKey:key];
        
        if (![tmpDic isKindOfClass:[NSDictionary class]]) {
            [resultDic setObject:tmpDic forKey:key];
            continue;
        }
        
        [resultDic addEntriesFromDictionary:tmpDic];
    }
    
    return resultDic;
}

+ (NSDictionary *)loadOldProductsStringWithPath:(NSString *)oldProductStringsPath
{
    NSDictionary *retDic = [NSDictionary dictionaryWithContentsOfFile:oldProductStringsPath];
    
    return retDic;
}

+ (BOOL)saveConfigToFileWithGameCode:(NSString *)gameCode
                     andGameInfoData:(EditModeTableViewCellData *)gameInfoData
                       andAdInfoData:(EditModeTableViewCellData *)adInfoData
                    andAddtionalData:(EditModeTableViewCellData *)addtionalData
                  andProductInfoData:(EditModeTableViewCellData *)productInfoData
{
    NSMutableString *configStr = [NSMutableString stringWithCapacity:1024];
    [configStr appendString:[self _formateDicWithEditModeCellDataInfo:gameInfoData]];
    [configStr appendString:[self _formateDicWithEditModeCellDataInfo:adInfoData]];
    [configStr appendString:[self _formateDicWithEditModeCellDataInfo:addtionalData]];
    [configStr appendString:[self _formateDicWithEditModeCellDataInfo:productInfoData]];
    
    //add the config
    NSDictionary *tmpResDic = [self loadGameConfigWithGameCode:gameCode];
    NSString *gameArea,*gameResName;
    
    gameArea = tmpResDic[@"gameCodeArea"];
    gameResName = tmpResDic[@"gameCodeResName"];
    
    if (gameArea && ![gameArea isEqualToString:@""])
    {
        [configStr appendString:[self _formateDicWithDictionary:@{ @"gameCodeArea" : gameArea }]];
    }
    if (gameResName && ![gameResName isEqualToString:@""])
    {
        [configStr appendString:[self _formateDicWithDictionary:@{ @"gameCodeResName" : gameResName }]];
    }
    
    //saving
    NSString *tmpGameConfigTxtPath = [NSString stringWithFormat:@"%@/%@",kLocalTempSvnGameConfigFilesPath, kGameConfigTxtName];
    return [self saveConfigToFile:tmpGameConfigTxtPath andTypeName:gameCode andConfigStr:configStr];
}

+ (void)saveResourceConfigWithResouceName:(NSString *)resName andPreviewImg:(NSImage *)img andPreviewImgName:(NSString *)imgName andResPath:(NSString *)resPath
{
    NSString *tmpResFloderName = resPath.lastPathComponent;
    //replace the @" "
    tmpResFloderName = [tmpResFloderName stringByReplacingOccurrencesOfString:@" " withString:@"_"];
    
    NSString *tmpImgName = [NSString stringWithFormat:@"previewImg.%@", [imgName stringCutStringFrom:@"."]];
    
    NSString *tmpImgFilePath = [NSString stringWithFormat:@"%@/%@/%@", kLocalTempSvnFileResourcesPath, resName, tmpImgName];
    [img writeToFile:tmpImgFilePath];
    
    NSString *tmpResFilePath = [NSString stringWithFormat:@"%@/%@/res_%@/%@", kLocalTempSvnFileResourcesPath, resName, resName, tmpResFloderName];
    [CoreHelper_Internal copyFileFromPath:resPath toPath:tmpResFilePath];
    
    
    //resInfoConfig
    NSMutableDictionary *resourceInfoDic = [NSMutableDictionary dictionaryWithCapacity:4];
    [resourceInfoDic setObject:resName forKey:@"resourceName"];
    [resourceInfoDic setObject:tmpImgName forKey:@"resourcePreviewImgName"];
    [resourceInfoDic setObject:tmpResFloderName forKey:@"resourceFloderName"];
    
    NSString *tmpResConfigFilePath = [NSString stringWithFormat:@"%@/%@", kLocalTempSvnGameConfigFilesPath, kGameResourcesConfigFile];
    [self saveConfigToFile:tmpResConfigFilePath andTypeName:resName andConfigStr:[self _formateDicWithDictionary:resourceInfoDic]];
}

+ (void)saveAreaConfigWithArea:(NSString *)area andResourceName:(NSString *)resName andGameCode:(NSString *)gameCode
{
    NSString *tmpGameConfigPath = [NSString stringWithFormat:@"%@/%@", kLocalTempSvnGameConfigFilesPath, kGameConfigTxtName];
    [self addNewKeyToFliePath:tmpGameConfigPath
                      withKey:@"gameCodeResName"
                     andVlaue:resName
                  andTypeName:gameCode];
    [self addNewKeyToFliePath:tmpGameConfigPath
                      withKey:@"gameCodeArea"
                     andVlaue:area
                  andTypeName:gameCode];

    //why this code is here???
//    NSMutableDictionary *tmpDic = [NSMutableDictionary dictionaryWithDictionary:[InfoData loadResourceConfigWithResType:resName]];
//    [tmpDic setObject:resName forKey:@"resourceName"];
//    
//    NSString *tmpResConfigFilePath = [NSString stringWithFormat:@"%@/%@", kLocalTempSvnGameConfigFilesPath, kGameResourcesConfigFile];
//    [InfoData saveConfigToFile:tmpResConfigFilePath
//                   andTypeName:resName
//                  andConfigStr:[self _formateDicWithDictionary:tmpDic]];
}

+ (BOOL)saveConfigToFile:(NSString *)filePath andTypeName:(NSString *)typeName andConfigStr:(NSString *)configStr
{
    NSString *tmpTypeMark = PACKAGE_TO_TYPEMARK(typeName);
    
    [self _deleteTypeAtFile:filePath WithTypeMark:tmpTypeMark];
    
    NSString *rawStr = [CoreHelper_Internal loadRawTextWithFilePath:filePath];
    
    NSMutableString *resultStr = [NSMutableString stringWithCapacity:1024];
    
    [resultStr appendString:rawStr];
    
    [resultStr appendString:tmpTypeMark];//head
    [resultStr appendString:configStr];
    
    [resultStr appendString:@"\n"];
    
    return [CoreHelper_Internal writeText:resultStr ToPathWithName:filePath];
}

+ (void)addNewKeyValueToAllGameConfigWith:(NSString *)key
                                 andValue:(NSString *)value
                            andAsInfoType:(NSString *)infoType
{
    if (!key || [key isEqualTo:@""]) {
        [CoreHelper_Internal showAlertWithMessageText:@"Invalid Key, Key can't be nil"];
        return;
    }
    
    value = value ? value : @"";
    
    NSString *tmpGameConfigTxtPath = [NSString stringWithFormat:@"%@/%@",kLocalTempSvnGameConfigFilesPath, kGameConfigTxtName];
    NSString *rawStr = [CoreHelper_Internal loadRawTextWithFilePath:tmpGameConfigTxtPath];
    
    if (![rawStr isContainString:@"["]) {
        [CoreHelper_Internal showAlertWithMessageText:[NSString stringWithFormat:@"There NO CONFIG EXIST, can't add New Key and Value.\n K_V:%@:%@.", key, value]];
        return;
    } else if ([rawStr isContainString:[NSString stringWithFormat:@"%@,", key]])
    {
        [CoreHelper_Internal showAlertWithMessageText:[NSString stringWithFormat:@"The Key is ALREADY Exist!! Can't add the same key.\n key:%@.", key]];
        return;
    }
    
    if ([infoType isEqualToString:kGameInfoTypeName]
        || [infoType isEqualToString:kADInfoTypeName]
        || [infoType isEqualToString:kAddtionalInfo]) {
        
        NSString *tmpAddKeyValue = [NSString stringWithFormat:@"\n%@=%@;\n\n",key,value];
        
        rawStr = [rawStr stringByReplacingOccurrencesOfString:@"\n\n" withString:tmpAddKeyValue];
        rawStr = [rawStr stringByReplacingOccurrencesOfString:@" " withString:@""];
        
        [CoreHelper_Internal writeText:rawStr ToPathWithName:tmpGameConfigTxtPath];
    } else  {
        //add to InfoList.txt
        NSString *tmpInfoListPath = [NSString stringWithFormat:@"%@/%@", kLocalTempSvnGameConfigFilesPath, kInfoListTxtName];
        [self addNewKeyToFliePath:tmpInfoListPath withKey:key andVlaue:value andTypeName:infoType];
    }
    
    [self commitConfigFileToSvnWithFinishHandler:^{
        [CoreHelper_Internal showAlertWithMessageText:@"Add Done!"];
    }];
}

+ (void)addNewKeyToFliePath:(NSString *)filePath withKey:(NSString *)key andVlaue:(NSString *)val andTypeName:(NSString *)typeName
{
    NSMutableArray *tmpSourceArr = nil;
    NSMutableDictionary *tmpSourceDic = [NSMutableDictionary dictionaryWithDictionary:[self loadConfigWithPath:filePath WithTypeName:typeName andRetKeyArr:&tmpSourceArr]];
    
    [tmpSourceDic setObject:val forKey:key];
    
    [self saveConfigToFile:filePath andTypeName:typeName andConfigStr:[self _formateDicWithDictionary:tmpSourceDic]];    
}

#pragma mark -svn
+ (void)cleanupSvnFileWithFinishHandler:(SvnTaskCompletionHandler)handler
{
    static NSUInteger tmpCurQueueNum = 0;
    
    [SvnTask cleanupFileWithLocalPath:kLocalTempSvnGameConfigFilesPath
                          TaskHandler:^{
                              tmpCurQueueNum ++;
                          }];
    [SvnTask cleanupFileWithLocalPath:kLocalTempSvnFileDemoPath
                          TaskHandler:^{
                              tmpCurQueueNum ++;
                          }];
    [SvnTask cleanupFileWithLocalPath:kLocalTempSvnFileResourcesPath
                          TaskHandler:^{
                              tmpCurQueueNum ++;
                          }];
    [SvnTask cleanupFileWithLocalPath:kLocalTempSvnLocalizedStringsPath
                          TaskHandler:^{
                              tmpCurQueueNum ++;
                          }];
    [SvnTask cleanupFileWithLocalPath:kLocalTempSvnThirdSDKFilesPath
                          TaskHandler:^{
                              tmpCurQueueNum ++;
                          }];
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0), ^{
        while (true) {
            if (!handler) {
                break;
            }
            
            if (tmpCurQueueNum >= 5) {
                tmpCurQueueNum = 0;//reset
                
                dispatch_async(dispatch_get_main_queue(), ^{
                    if (handler) {
                        handler();
                    }
                });
                
                break;
            }
            
            [NSThread sleepForTimeInterval:0.1f];
        }
    });
}

+ (void)synchronizeSvnFileWithFinishHandler:(SvnTaskCompletionHandler)handler
{
    static NSUInteger tmpCurQueueNum = 0;
    
    [self _synchronizeFiles:kLocalTempSvnGameConfigFilesPath FromSVN:kSvnGameConfigFilePath WithFinishHandler:^{
        tmpCurQueueNum ++;
    }];
    
    [self _synchronizeFiles:kLocalTempSvnLocalizedStringsPath FromSVN:kSvnEfunLocalizedPath WithFinishHandler:^{
        tmpCurQueueNum ++;
    }];
    
    [self _synchronizeFiles:kLocalTempSvnFileDemoPath FromSVN:kSvnEfunDemoProjectPath WithFinishHandler:^{
        tmpCurQueueNum ++;
    }];
    
    [self _synchronizeFiles:kLocalTempSvnFileResourcesPath FromSVN:kSvnEfunResourcesPath WithFinishHandler:^{
        tmpCurQueueNum ++;
    }];
    
    [self _synchronizeFiles:kLocalTempSvnThirdSDKFilesPath FromSVN:kSvnEfunThirdSDKPath WithFinishHandler:^{
        tmpCurQueueNum ++;
    }];
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0), ^{
        while (true) {
            if (!handler) {
                break;
            }
            
            if (tmpCurQueueNum >= 5) {
                tmpCurQueueNum = 0;//reset
                
                dispatch_async(dispatch_get_main_queue(), ^{
                    if (handler) {
                        handler();
                    }
                });                
                
                break;
            }
            
            [NSThread sleepForTimeInterval:0.1f];
        }
    });
}

+ (void)commitConfigFileToSvnWithFinishHandler:(SvnTaskCompletionHandler)handler
{    
    static NSString *commitMsg = @"Commit With EfunCrypt";
    static NSUInteger tmpCurCommitQueueNum = 0;
    
    [self synchronizeSvnFileWithFinishHandler:^{
        [SvnTask commitFileWithMessage:commitMsg
                         withLocalPath:kLocalTempSvnGameConfigFilesPath
                           TaskHandler:^{
                               tmpCurCommitQueueNum ++;
                               
                               [SvnTask commitFileWithMessage:commitMsg
                                                withLocalPath:kLocalTempSvnFileResourcesPath
                                                  TaskHandler:^{
                                                      tmpCurCommitQueueNum ++;
                                                  }];
        }];
        
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0), ^{
            while (true) {
                if (!handler) {
                    break;
                }
                
                if (tmpCurCommitQueueNum >= 2) {
                    tmpCurCommitQueueNum = 0;//reset
                    
                    dispatch_async(dispatch_get_main_queue(), ^{
                        if (handler) {
                            handler();
                        }
                    });
                    
                    break;
                }
                [NSThread sleepForTimeInterval:0.1f];
            }
        });
    }];
    
    
}

+ (void)_synchronizeFiles:(NSString *)fileName FromSVN:(NSString *)svnPath WithFinishHandler:(SvnTaskCompletionHandler)handler
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        [SvnTask connectSvnWithURLPath:svnPath
                              UserName:kSvnUserName
                              Password:kSvnPassword
                           TaskHandler:nil];
    });
    
    NSFileManager *fileManager = [NSFileManager defaultManager];
    
    if (![fileManager fileExistsAtPath:[NSString stringWithFormat:@"%@/.svn",fileName]
                           isDirectory:nil])
    {
        [SvnTask checkOutFilesFormURLPath:svnPath
                               toFilePath:fileName
                              TaskHandler:^{
                                  if (handler) {
                                      handler();
                                  }
                              }];
    } else {
        [SvnTask updateFileWithLocalPath:fileName
                             TaskHandler:^{
                                 if (handler) {
                                     handler();
                                 }
                             }];
    }
}

#pragma mark -export config file
+ (void)exportConfigWithGameCode:(NSString *)gameCode
{
    [CoreHelper_Internal createFileAtPath:kLocalTempSvnFilePath];
    [CoreHelper_Internal createFileAtPath:kLocalTempExportFileConfigPath];
    [CoreHelper_Internal createFileAtPath:kLocalTempExportFileZipPath];
    
    [CoreHelper_Internal createFileAtPath:[NSString stringWithFormat:@"%@/%@", kLocalTempExportFileConfigPath, gameCode]];
    
    NSString *tmpCorePlistPath = [NSString stringWithFormat:@"%@/%@", kLocalTempSvnGameConfigFilesPath, kEFUNCoreInfo];
    [self _replaceGameConfigAndSaveToFileWithGameCode:gameCode andTemplatePlitWithPath:tmpCorePlistPath];
    
    [self _exportProductStringsWithGameCode:gameCode];
}

+ (void)_exportProductStringsWithGameCode:(NSString *)gameCode
{
    NSString *tmpProductStr = [self _getProductsStringsWithGameCode:gameCode];
    
    NSString *tmpProductStrings = [NSString stringWithFormat:@"%@/%@/%@", kLocalTempExportFileConfigPath, gameCode, kEFUNProductInfo];
    [CoreHelper_Internal writeText:tmpProductStr ToPathWithName:tmpProductStrings];
}

#pragma mark -Internal

+ (void)_replaceGameConfigAndSaveToFileWithGameCode:(NSString *)gameCode andTemplatePlitWithPath:(NSString *)templatePlistPath
{
    NSMutableDictionary *resultDic = [NSMutableDictionary dictionaryWithCapacity:64];
    
    NSDictionary *templateDic = [NSDictionary dictionaryWithContentsOfFile:templatePlistPath];
    NSDictionary *curConfigDic = [self loadGameConfigWithGameCode:gameCode];
    
    for (NSString *tmpKey in templateDic.allKeys)
    {
        NSDictionary *tmpDicGroup = [templateDic objectForKey:tmpKey];
        if (![tmpDicGroup isKindOfClass:[NSDictionary class]]) {
            [resultDic setObject:tmpDicGroup forKey:tmpKey];
            continue;
        }
        
        NSMutableDictionary *tmpEnDicGrop = [NSMutableDictionary dictionaryWithCapacity:8];
        for (NSString *tmpDicGroupKey in tmpDicGroup.allKeys) {
            
            //seting config val
            NSString *tmpConfigVal = [curConfigDic objectForKey:tmpDicGroupKey];
            if (tmpConfigVal) {
                [tmpDicGroup setValue:tmpConfigVal forKey:tmpDicGroupKey];
            }
            
            NSString *tmpVal = [tmpDicGroup objectForKey:tmpDicGroupKey];
            
            if ([tmpVal isContainString:@"_`_"]) {
                tmpVal = [tmpVal stringByReplacingOccurrencesOfString:@"_`_" withString:@" "];
                [tmpDicGroup setValue:tmpVal forKey:tmpDicGroupKey];
            }
            
            NSString *enKey = [GamaEnDeFunc getEncryptStringFromString:tmpDicGroupKey];
            NSString *enVal = [GamaEnDeFunc getEncryptStringFromString:tmpVal];
            
            [tmpEnDicGrop addEntriesFromDictionary:@{
                                                  enKey : enVal
                                                  }];
        }
        
        NSString *tmpEnDicGropKey = [GamaEnDeFunc getEncryptStringFromString:tmpKey];
        [resultDic addEntriesFromDictionary:@{
                                              tmpEnDicGropKey : tmpEnDicGrop
                                              }];
    }
    
    NSString *tmpGameShortName = [curConfigDic objectForKey:@"gameShortName"];
    
    //add date
    NSDate * nowDate=[NSDate date];
    NSDateFormatter * dateFormatter=[[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSS"];
    NSString *  locationString=[dateFormatter stringFromDate:nowDate];
    NSString * sdkConfigCreateDate = locationString;
    
    [resultDic setValue:sdkConfigCreateDate forKey:@"SDK_DATE"];
    [templateDic setValue:sdkConfigCreateDate forKey:@"SDK_DATE"];
    
    //add gameName
    [resultDic setValue:tmpGameShortName forKey:@"_GAME_NAME_AT_ENCRYPT_"];
    [templateDic setValue:tmpGameShortName forKey:@"_GAME_NAME_AT_ENCRYPT_"];
    
    //save encrypted config
    NSAssert(resultDic != nil, @"encrypted config Can't be nil");
    NSString *tmpEnPath = [NSString stringWithFormat:@"%@/%@/%@", kLocalTempExportFileConfigPath, gameCode, kEFUNEncryptCoreInfo];
    [resultDic writeToFile:tmpEnPath atomically:YES];
    
    //save unencrypted config
    NSAssert(templateDic != nil, @"unencrypted config Can't be nil");
    NSString *tmpUnEnPath =[NSString stringWithFormat:@"%@/%@/%@", kLocalTempExportFileConfigPath, gameCode, kEFUNCoreInfo];
    [templateDic writeToFile:tmpUnEnPath atomically:YES];
    
    //save entitlements
    NSString *tmpEntitlements = [CoreHelper_Internal loadRawTextWithFilePath:[NSString stringWithFormat:@"%@/%@", [NSBundle mainBundle].resourcePath, kEfunEntitlements]];
    tmpEntitlements = [tmpEntitlements stringByReplacingOccurrencesOfString:@"__replaceGameName__" withString:tmpGameShortName];
    
    NSAssert(tmpEntitlements != nil, @"entitlements config Can't be nil");
    NSString *tmpEntitlementsPath =[NSString stringWithFormat:@"%@/%@/%@", kLocalTempExportFileConfigPath, gameCode, kEfunEntitlements];
    [tmpEntitlements writeToFile:tmpEntitlementsPath atomically:YES encoding:NSUTF8StringEncoding error:nil];    
}

+ (NSString *)_getProductsStringsWithGameCode:(NSString *)gameCode
{
    NSMutableString *retStr = [NSMutableString stringWithCapacity:256];
    
    NSMutableDictionary *tmpProductDic = [NSMutableDictionary dictionaryWithCapacity:32];
    
    NSDictionary *configDic = [self loadGameConfigWithGameCode:gameCode];
    
    for (NSString *tmpKey in configDic.allKeys) {
        if ([tmpKey isContainString:@"good"]) {
            [tmpProductDic setObject:[configDic objectForKey:tmpKey] forKey:tmpKey];
        }
    }
    
    NSUInteger tmpLoopTime = 0;
    NSArray * sortedKeys = [[tmpProductDic allKeys] sortedArrayUsingSelector: @selector(caseInsensitiveCompare:)];
    for (NSString *tmpKey in sortedKeys) {
        NSString *tmpVal = [tmpProductDic objectForKey:tmpKey];
        tmpVal = [tmpVal stringByReplacingOccurrencesOfString:@"_`_" withString:@" "];
        [retStr appendFormat:@"\"%@\" = \"%@\";\n", tmpKey, tmpVal];
        
        tmpLoopTime ++;
        if (tmpLoopTime % kProductInfoNum == 0) {
            [retStr appendString:@"\n"];
        }
    }
    
    return retStr;
}

+ (NSString *)_formateDicWithEditModeCellDataInfo:(EditModeTableViewCellData *)infoData
{
    if (!infoData) {
        NSAssert(NO, @"Empty EditModeTableViewCellData!!");
        return @"";
    }
    
    NSMutableString *resultStr = [NSMutableString stringWithCapacity:512];
    
    NSUInteger tmpGameInfoCount = infoData.count;
    NSString *tmpKey,*tmpValue = nil;
    for (int i = 0; i < tmpGameInfoCount; ++i) {
        tmpKey = [infoData keyAtIndex:i];
        tmpValue = [infoData objectAtIndex:i];
        
        [resultStr appendFormat:@"%@=%@;\n", tmpKey, tmpValue];
    }
    
    return resultStr;
}

+ (NSString *)_formateDicWithDictionary:(NSDictionary *)dic
{
    if (!dic) {
        NSAssert(NO, @"Empty NSDictionary!!");
        return @"";
    }
    
    NSMutableString *resultStr = [NSMutableString stringWithCapacity:256];
    
    NSString *tmpValue = nil;
    
    NSArray *keys = dic.allKeys;
    NSArray *sortedKeys = [keys sortedArrayUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
        return [(NSString *)obj1 compare:(NSString *)obj2];
    }];
    
    for (NSString *tmpKey in sortedKeys) {
        tmpValue = dic[tmpKey];
        
        [resultStr appendFormat:@"%@=%@;\n", tmpKey, tmpValue];
    }
    
    return resultStr;
}

+ (NSString *)_formateArrWithArrary:(NSArray *)arr
{
    if (!arr) {
        NSAssert(NO, @"Empty Arr!");
        return @"";
    }
    
    NSMutableString *resultStr = [NSMutableString stringWithCapacity:128];
    
    for (NSString *tmpKey in arr) {
        
        [resultStr appendFormat:@"%@;\n", tmpKey];
    }
    
    return resultStr;
}

+ (NSString *)formatStringWithValueString:(NSString *)splitString andConfigDic:(NSDictionary *)configDic
{
    
    NSString *tmpStartStr = splitString;
    if ([splitString isKindOfClass:[NSDictionary class]]){
        NSData * jsonData = [NSJSONSerialization dataWithJSONObject:splitString options:0 error:nil];
        splitString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    }
    
    if (![splitString isContainString:@"("]) {
        return splitString;
    }
    
    
    for (NSString *tmpKey in configDic.allKeys) {
        
        //formate the (%@)
        if (![splitString isContainString:tmpKey]) {
            continue;
        }
        
        NSString *tmpStr = [NSString stringWithFormat:@"(%@)", tmpKey];
        
        NSString *tmpConfigVal = configDic[tmpKey];
                
        splitString = [splitString stringByReplacingOccurrencesOfString:tmpStr
                                                             withString:tmpConfigVal
                       ];
    }
    
    if (![tmpStartStr isKindOfClass:[NSDictionary class]]) {
        if ([tmpStartStr isEqualToString:splitString])
        {
            return @"";
        }
    }
    
    
    if ([tmpStartStr isKindOfClass:[NSDictionary class]]){
        NSData *data = [splitString dataUsingEncoding:NSUTF8StringEncoding];
        splitString = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
    }
    
    return splitString;
}

+ (NSArray *)formateArrWithString:(NSString *)arrString
{
    NSMutableArray *resultArr = [NSMutableArray array];
    
    arrString = [arrString stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    
    arrString = [arrString stringByReplacingOccurrencesOfString:@"[" withString:@""];
    arrString = [arrString stringByReplacingOccurrencesOfString:@"]" withString:@""];
    arrString = [arrString stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    NSArray *tmpArr = [arrString componentsSeparatedByString:@","];
    
    for (NSString *tmpStr in tmpArr) {
        if (![tmpStr isContainString:@"("]) {
            [resultArr addObject:tmpStr];
        }
    }
    
    return resultArr;
}

+ (void)_deleteTypeAtFile:(NSString *)fileName WithTypeMark:(NSString *)typeMark
{
    NSString *rawStr = [CoreHelper_Internal loadRawTextWithFilePath:fileName];
    
    NSString *tmpTypeMark = typeMark;
    if ([rawStr rangeOfString:tmpTypeMark].location != NSNotFound) {//already have this Type
        NSString *tmpStr = [[rawStr stringCutStringFrom:tmpTypeMark] stringCutStringTo:@"["];
        
        rawStr = [rawStr stringByReplacingOccurrencesOfString:[NSString stringWithFormat:@"%@%@\n\n",tmpTypeMark,tmpStr] withString:@""];
        rawStr = [rawStr stringByReplacingOccurrencesOfString:[NSString stringWithFormat:@"%@%@\n",tmpTypeMark,tmpStr] withString:@""];
        rawStr = [rawStr stringByReplacingOccurrencesOfString:[NSString stringWithFormat:@"%@%@",tmpTypeMark,tmpStr] withString:@""];
        
        [CoreHelper_Internal writeText:rawStr ToPathWithName:fileName];
    }
}
@end
