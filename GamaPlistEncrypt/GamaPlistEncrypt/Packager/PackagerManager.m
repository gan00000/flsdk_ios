//
//

#import "PackagerManager.h"

#import "ZipTask.h"

#import "InfoData.h"
#import <AppKit/AppKit.h>

#import "NSString+StringAdditions.h"
#import "PackagerXCodeEdit.h"

NSString *g_curPackagingGameCode;

static PackagerManager * instance;

@implementation PackagerManager
@synthesize packageInfoDelegate;

+ (instancetype)defaultPackagerManager
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[PackagerManager alloc] init];
    });
    
    return instance;
}

+ (BOOL)startPackagingWithGameCode:(NSString *)gameCode
{    
    if (g_curPackagingGameCode) {
        g_curPackagingGameCode = nil;
    }
    g_curPackagingGameCode = gameCode.copy;
    
    [InfoData exportConfigWithGameCode:gameCode];
    
    return [self peparePackageAndStartPackaging];
}

+ (BOOL)peparePackageAndStartPackaging
{
    [self _setInfoToDelegate:@"Pepare packing..."];
    
    NSDictionary *tmpAreaDic = [InfoData loadInfoListWithTypeName:kRegionInfo andCurGameCode:g_curPackagingGameCode];
    
    NSDictionary *tmpGameConfigDic = [InfoData loadGameConfigWithGameCode:g_curPackagingGameCode];
    
    NSString *curGameCodeResName = tmpGameConfigDic[@"gameCodeResName"];
    if (!curGameCodeResName || [curGameCodeResName isEqualToString:@""]) {
        [CoreHelper_Internal showAlertWithMessageText:@"Resources Config not found!!"];
        return NO;
    }
    
    NSString *curArea = tmpGameConfigDic[@"gameCodeArea"];
    if (!curArea || [curArea isEqualToString:@""]) {
        [CoreHelper_Internal showAlertWithMessageText:@"Region Config not found!!"];
        return NO;
    }
    
    NSDictionary *tmpResConfigDic = [InfoData loadResourceConfigWithResType:curGameCodeResName];
    
    NSString *curDemoPath = [NSString stringWithFormat:@"%@/%@", kLocalTempSvnFileDemoPath, tmpAreaDic[curArea]];
    NSString *curResName = tmpResConfigDic[@"resourceName"];
    NSString *curResFloderName = tmpResConfigDic[@"resourceFloderName"];
    
    NSString *tmpResFilePath = [NSString stringWithFormat:@"%@/%@/res_%@/%@", kLocalTempSvnFileResourcesPath, curResName, curResName, curResFloderName];
    
    [self _setInfoToDelegate:@"Copying File..."];
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), ^{
        NSString *desDemoPath = [NSString stringWithFormat:@"%@/%@/%@", kLocalTempExpotFilePath, g_curPackagingGameCode, curDemoPath.lastPathComponent];
        [CoreHelper_Internal copyFileFromPath:curDemoPath
                                       toPath:desDemoPath];
        
        //config the res
        [CoreHelper_Internal deleteFileAtPath:[NSString stringWithFormat:@"%@/EFUN_LIB/EfunRes", desDemoPath]];
        [CoreHelper_Internal copyFileFromPath:tmpResFilePath
                                       toPath:[NSString stringWithFormat:@"%@/EFUN_LIB/EfunRes/%@", desDemoPath, curResFloderName]];
        NSString *curLocalizedPath = [NSString stringWithFormat:@"%@/EFUN_LIB/EfunRes/EfunLocalized", desDemoPath];
        [self _copyUseLocalizedToPath:curLocalizedPath andCurArea:curArea];
        
        //config the ad lib
//        NSString *curAdLibPath = [NSString stringWithFormat:@"%@/EFUN_LIB/ThirdSDK/Advertisements", desDemoPath];
//        [self _deleteAdLibWhichNotUseFormAdLibPath:curAdLibPath andCurGameCode:g_curPackagingGameCode];
        
        [CoreHelper_Internal deleteFileAtPath:[NSString stringWithFormat:@"%@/EFUN_LIB/ThirdSDK", desDemoPath]];
        
        [self _resolveTheThirdSDKUsingFormAdLibPath:kLocalTempSvnThirdSDKFilesPath
                                             toPath:[NSString stringWithFormat:@"%@/EFUN_LIB/ThirdSDK", desDemoPath]
                                     andCurGameCode:g_curPackagingGameCode];
        
        //config
        NSString *desEfunConfigPath = [NSString stringWithFormat:@"%@/EFUN_LIB/EfunConfig", desDemoPath];
        [CoreHelper_Internal deleteFileAtPath:desEfunConfigPath];
        
        [CoreHelper_Internal copyFileFromPath:[NSString stringWithFormat:@"%@/%@/%@", kLocalTempExportFileConfigPath, g_curPackagingGameCode, kEFUNEncryptCoreInfo]
                                       toPath:[NSString stringWithFormat:@"%@/%@", desEfunConfigPath, kEFUNEncryptCoreInfo]];
        
        [CoreHelper_Internal copyFileFromPath:[NSString stringWithFormat:@"%@/%@/%@", kLocalTempExportFileConfigPath, g_curPackagingGameCode, kEFUNProductInfo]
                                       toPath:[NSString stringWithFormat:@"%@/%@", desEfunConfigPath, kEFUNProductInfo]];
        
        [CoreHelper_Internal copyFileFromPath:[NSString stringWithFormat:@"%@/%@/%@", kLocalTempExportFileConfigPath, g_curPackagingGameCode, kEfunEntitlements]
                                       toPath:[NSString stringWithFormat:@"%@/%@", desEfunConfigPath, kEfunEntitlements]];
        
        //doc
        NSString *configDocPath = [NSString stringWithFormat:@"%@/Docs/%@", desDemoPath, kEfunConfigDoc];
        NSString *tmpConfigDoc = [CoreHelper_Internal loadRawTextWithFilePath:configDocPath];
        
        if (![tmpConfigDoc isContainString:@"__replace_bundle_id__"]) {
            [CoreHelper_Internal showAlertWithMessageText:@"\nDoc didn't contain : __replace_bundle_id__ \n Please Check The Doc if you want this key replacement"];
        }
        // 替换说明文档相关配置内容
        NSDictionary *tmpReplaceInfo = [InfoData loadInfoListWithTypeName:kDocReplaceInfo andCurGameCode:g_curPackagingGameCode];
        for (NSString *tmpKey in tmpReplaceInfo.allKeys) {
            NSString *tmpVal = tmpReplaceInfo[tmpKey];
            if ([tmpVal isContainString:@"_`_"]) {
                tmpVal = [tmpVal stringByReplacingOccurrencesOfString:@"_`_" withString:@" "];
            }
            tmpConfigDoc = [tmpConfigDoc stringByReplacingOccurrencesOfString:tmpKey
                                                                   withString:tmpVal];
        }
        // 写入已替换好的说明文档内容
        [CoreHelper_Internal writeText:tmpConfigDoc ToPathWithName:[NSString stringWithFormat:@"%@/%@/%@", kLocalTempExportFileConfigPath, g_curPackagingGameCode, kEfunConfigDoc]];
        
        [CoreHelper_Internal copyFileFromPath:[NSString stringWithFormat:@"%@/%@/%@", kLocalTempExportFileConfigPath, g_curPackagingGameCode, kEfunConfigDoc]
                                       toPath:[NSString stringWithFormat:@"%@/Docs/%@", desDemoPath, kEfunConfigDoc]];
        
        //config the xproject file
        [self _resolveXProjectWithDesDemoPath:desDemoPath];
        
        dispatch_async(dispatch_get_main_queue(), ^{
            
            [self _setInfoToDelegate:@"Zipping File..."];
            NSDate * nowDate=[NSDate date];
            NSDateFormatter * dateFormatter=[[NSDateFormatter alloc] init];
            [dateFormatter setDateFormat:@"yyMMdd_HHmm"];
            NSString *  locationString=[dateFormatter stringFromDate:nowDate];
            
            NSString *tmpGameOtherName = tmpGameConfigDic[@"otherName"];
            NSString *tmpGameCode = [g_curPackagingGameCode uppercaseString];
            NSString *tmpCurDay = locationString;
            
            [ZipTask zipFileWithFileDirectory:desDemoPath
                                toZipFilePath:[NSString stringWithFormat:@"%@/EfunSDK_iOS_Demo&SDK_%@_%@_%@.zip", kLocalTempExportFileZipPath, tmpGameCode, tmpGameOtherName, tmpCurDay]
                         andCompletionHandler:^{
                             
                             [self _setInfoToDelegate:@"All Done...\n"];
                             [[NSWorkspace sharedWorkspace] openFile:kLocalTempExportFileZipPath];
                             
                             [[PackagerManager defaultPackagerManager].packageInfoDelegate packageDone];
                         }];
        });
    });
    
    return YES;
}

+ (void)_setInfoToDelegate:(NSString *)str
{
    dispatch_async(dispatch_get_main_queue(), ^{        
        [[PackagerManager defaultPackagerManager].packageInfoDelegate packagingInfo:str];
    });
}

+ (void)_resolveXProjectWithDesDemoPath:(NSString *)desDemoPath
{
    NSString *tmpProjectFilePath;
    
    NSDirectoryEnumerator *dirEnum = [[NSFileManager defaultManager] enumeratorAtPath:desDemoPath];
    
    NSString *tmpPathFile = nil;
    while ( (tmpPathFile = [dirEnum nextObject]) != nil )
    {
        if ([tmpPathFile hasSuffix:@".xcodeproj"]) {
            tmpProjectFilePath = [NSString stringWithFormat:@"%@/%@", desDemoPath, tmpPathFile];
            break;
        }
    }
    
    [PackagerXCodeEdit configXCodeProjectWithProjectFilePath:tmpProjectFilePath];
    
    NSDictionary *tmpUrlSchemeDic = [InfoData loadInfoListWithTypeName:kInfoPlistURLSchemesEditor andCurGameCode:g_curPackagingGameCode];
    NSArray *tmpArr = [InfoData formateArrWithString:tmpUrlSchemeDic[@"CFBundleURLSchemes"]];
    
    NSDictionary *tmpInfoPlistDic = [InfoData loadInfoListWithTypeName:kInfoPlistEditor andCurGameCode:g_curPackagingGameCode];
    
    [PackagerXCodeEdit configXcodeProjectPlistWithProjectFilePath:tmpProjectFilePath
                                              andInfoPlistEditDic:tmpInfoPlistDic
                                     andInfoPlistEditURLSchemeArr:tmpArr];
}

+ (void)_deleteAdLibWhichNotUseFormAdLibPath:(NSString *)path andCurGameCode:(NSString *)gameCode
{
    NSDictionary *tmpAdLibCheckDic = [InfoData loadInfoListWithTypeName:kAdLibCheckKeysTypeName andCurGameCode:gameCode];
    NSDictionary *tmpCurConfig = [InfoData loadGameConfigWithGameCode:gameCode];
    
    NSMutableArray *tmpCurNeedDeleteAdArr = [NSMutableArray arrayWithCapacity:4];
    for (NSString *tmpKey in tmpAdLibCheckDic.allKeys) {
        NSString *tmpVal = [tmpCurConfig objectForKey:[tmpAdLibCheckDic objectForKey:tmpKey]];
        
        if ([tmpVal isEqualToString:@""])
        {
            [tmpCurNeedDeleteAdArr addObject:tmpKey];
        }
    }
    
    for (NSString *tmpNeedDeleteDirectory in tmpCurNeedDeleteAdArr)
    {
        NSString *tmpNeedDeleteDirectoryPath = [NSString stringWithFormat:@"%@/%@", path, tmpNeedDeleteDirectory];
        [CoreHelper_Internal deleteFileAtPath:tmpNeedDeleteDirectoryPath];
    }
}

+ (void)_resolveTheThirdSDKUsingFormAdLibPath:(NSString *)formParentPath
                                       toPath:(NSString *)toParentPath
                               andCurGameCode:(NSString *)gameCode
{
    NSDictionary *tmpAdLibCheckDic = [InfoData loadInfoListWithTypeName:kAdLibCheckKeysTypeName andCurGameCode:gameCode];
    NSDictionary *tmpCurConfig = [InfoData loadGameConfigWithGameCode:gameCode];
    
    //get the list need to copy
    NSMutableArray *tmpCurNeedToCopy = [NSMutableArray arrayWithCapacity:4];
    for (NSString *tmpKey in tmpAdLibCheckDic.allKeys) {
        NSString *tmpVal = [tmpCurConfig objectForKey:[tmpAdLibCheckDic objectForKey:tmpKey]];
        
        if (![tmpVal isEqualToString:@""])
        {
            [tmpCurNeedToCopy addObject:tmpKey];
        }
    }
    
    for (NSString *tmpVal in tmpCurNeedToCopy) {
        
        NSString *formPath = [NSString stringWithFormat:@"%@/%@", formParentPath, tmpVal];
        NSString *toPath = [NSString stringWithFormat:@"%@/%@", toParentPath, tmpVal];
        
        [CoreHelper_Internal copyFileFromPath:formPath
                                       toPath:toPath];
    }
}

+ (void)_copyUseLocalizedToPath:(NSString *)path andCurArea:(NSString *)area
{
    NSString *rawStr = [InfoData loadInfoListWithTypeName:kRegionLocalizedInfo
                                           andCurGameCode:@""][area];
    NSArray * tmpLanguageArr = [InfoData formateArrWithString:rawStr];
    
    for (NSString *tmpStr in tmpLanguageArr) {
        NSString *val = [NSString stringWithFormat:@"EFUNCorePromptText_%@.strings", tmpStr];
        [CoreHelper_Internal copyFileFromPath:[NSString stringWithFormat:@"%@/%@", kLocalTempSvnLocalizedStringsPath, val]
                                       toPath:[NSString stringWithFormat:@"%@/%@", path, val]];
    }

}
@end
