//
//  InfoData.h
//  EfunPlistEncrypt
//
//  Created by czf on 27/4/15.
//  Copyright (c) 2015 Efun. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "CoreHelper_Internal.h"

#import "EditModeTableViewCellData.h"

#import "SvnTask.h"

static NSString *kEFUNProductInfo = @"EFUNProductInfo.strings";
static NSString *kEFUNCoreInfo = @"EFUNCoreInfo.plist";
static NSString *kEFUNEncryptCoreInfo = @"EFUNEncryptCoreInfo.plist";
static NSString *kEfunEntitlements = @"EfunSDKEntitlements.entitlements";
static NSString *kEfunConfigDoc = @"EfunSDK iOS配置文档.html";

static NSString *kInfoListTxtName = @"InfoList.txt";
static NSString *kGameConfigTxtName = @"GameConfigFile.txt";
static NSString *kGameResourcesConfigFile = @"GameResourcesConfigFile.txt";

static NSString *kGameInfoTypeName = @"GameInfo";
static NSString *kADInfoTypeName = @"ADInfo";
static NSString *kAdLibCheckKeysTypeName = @"AdLibCheckKeys";
static NSString *kRegionInfo = @"RegionInfo";
static NSString *kAddtionalInfo = @"AddtionalInfo";
static NSString *kDocReplaceInfo = @"DocReplaceInfo";
static NSString *kInfoPlistURLSchemesEditor = @"InfoPlistURLSchemesEditor";
static NSString *kInfoPlistEditor = @"InfoPlistEditor";
static NSString *kRegionLocalizedInfo = @"RegionLocalizedInfo";

NSString *kLocalAppPath;//later bind

NSString *kLocalAppFilesPath;//later bind

NSString *kLocalTempSvnFilePath;//later bind

NSString *kLocalTempSvnFileDemoPath;//later bind
NSString *kLocalTempSvnFileResourcesPath;//later bind
NSString *kLocalTempSvnGameConfigFilesPath;//later bind
NSString *kLocalTempSvnLocalizedStringsPath;//later bind
NSString *kLocalTempSvnThirdSDKFilesPath;//later bind

NSString *kLocalTempExpotFilePath;//later bind
NSString *kLocalTempExportFileConfigPath;//later bind
NSString *kLocalTempExportFileZipPath;//later bind

NSString *kSvnUserName;
NSString *kSvnPassword;

static NSString *kSvnGameConfigFilePath = @"https://172.16.1.46:8443/svn/project/ios/Overseas/Projects/CoreStudy/Efun_iOS_Workspace/EfunPlistEncrypt/iOSPlistConfig";
static NSString *kSvnEfunLocalizedPath = @"https://172.16.1.46:8443/svn/project/ios/Overseas/Projects/CoreStudy/Efun_iOS_Workspace/EfunResources/Localized";
static NSString *kSvnEfunResourcesPath = @"https://172.16.1.46:8443/svn/project/ios/Overseas/Projects/CoreStudy/Efun_iOS_Workspace/EfunResources/_EfunSDK_iOS_SDK_Resources";

static NSString *kSvnEfunDemoProjectPath = @"https://172.16.1.46:8443/svn/project/ios/Overseas/Projects/CoreStudy/Efun_iOS_Workspace/EfunResources/_EfunSDK_iOS_Demo";

static NSString *kSvnEfunThirdSDKPath = @"https://172.16.1.46:8443/svn/project/ios/Overseas/Projects/CoreStudy/Efun_iOS_Workspace/EfunResources/ThirdSDK";

static const NSUInteger kProductInfoNum = 4;

@interface InfoData : NSObject
+ (NSString *)formatStringWithValueString:(NSString *)splitString andConfigDic:(NSDictionary *)configDic;
+ (NSArray *)formateArrWithString:(NSString *)arrString;

+ (NSArray *)loadInfoListConfigArrWithTypeName:(NSString *)typeName;
+ (NSDictionary *)loadInfoListWithTypeName:(NSString *)typeName andCurGameCode:(NSString *)gamecode;
+ (NSDictionary *)loadGameConfigWithGameCode:(NSString *)gameCode;
+ (NSDictionary *)loadResourceConfigWithResType:(NSString *)gameCode;

+ (NSArray *)loadAlreadyConfingedGameCodeArr;
+ (NSArray *)loadAlreadyConfigedResArr;
+ (NSArray *)loadAlreadyConfigedInfoList;

+ (NSArray *)loadConfigArrWithPath:(NSString *)configFilePath withTypeName:(NSString *)typeName;
+ (NSDictionary *)loadConfigWithPath:(NSString *)configFilePath WithTypeName:(NSString *)typeName;


+ (NSDictionary *)loadOldPlistWithPath:(NSString *)oldPlistFilePath;
+ (NSDictionary *)loadOldProductsStringWithPath:(NSString *)oldProductStringsPath;

+ (BOOL)saveConfigToFileWithGameCode:(NSString *)gameCode
                     andGameInfoData:(EditModeTableViewCellData *)gameInfoData
                       andAdInfoData:(EditModeTableViewCellData *)adInfoData
                    andAddtionalData:(EditModeTableViewCellData *)addtionalData
                  andProductInfoData:(EditModeTableViewCellData *)productInfoData;

+ (void)saveResourceConfigWithResouceName:(NSString *)resName andPreviewImg:(NSImage *)img andPreviewImgName:(NSString *)imgName andResPath:(NSString *)resPath;

+ (void)saveAreaConfigWithArea:(NSString *)area andResourceName:(NSString *)resName andGameCode:(NSString *)gameCode;

+ (BOOL)saveConfigToFile:(NSString *)filePath andTypeName:(NSString *)typeName andConfigStr:(NSString *)configStr;

+ (void)addNewKeyValueToAllGameConfigWith:(NSString *)key
                                 andValue:(NSString *)value
                            andAsInfoType:(NSString *)infoType;

+ (void)addNewKeyToFliePath:(NSString *)filePath
                    withKey:(NSString *)key
                   andVlaue:(NSString *)val
                andTypeName:(NSString *)typeName;

#pragma mark -svn
+ (void)cleanupSvnFileWithFinishHandler:(SvnTaskCompletionHandler)handler;
+ (void)synchronizeSvnFileWithFinishHandler:(SvnTaskCompletionHandler)handler;

+ (void)commitConfigFileToSvnWithFinishHandler:(SvnTaskCompletionHandler)handler;

#pragma mark -export config file
+ (void)exportConfigWithGameCode:(NSString *)gameCode;
@end
