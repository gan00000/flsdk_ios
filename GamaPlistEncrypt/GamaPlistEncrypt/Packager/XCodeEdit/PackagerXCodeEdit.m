//
//  PackagerAcceptTypeWarper.m
//

#import "PackagerXCodeEdit.h"

#import <XcodeEditor/XCGroup.h>
#import <XcodeEditor/XCClassDefinition.h>
#import <XcodeEditor/XCFileOperationQueue.h>
#import <XcodeEditor/XCFrameworkDefinition.h>
#import <XcodeEditor/XCProject.h>
#import <XcodeEditor/XCSourceFile.h>
#import <XcodeEditor/XCSourceFileDefinition.h>
#import <XcodeEditor/XCTarget.h>
#import <XcodeEditor/XCXibDefinition.h>

#import "NSString+StringAdditions.h"
#import "CoreHelper_Internal.h"

@implementation PackagerXCodeEdit

+ (void)initialize
{    
    [XcodeSourceFileTypeBridge addNewResourcesTypeWithPBType:@"text.css"];
}

+ (NSDictionary *)fileProccessTypeMapping
{
    return @{
             @"h"               : @(SourceCodeHeader),
             @"hh"              : @(SourceCodeHeader),
             @"hhp"             : @(SourceCodeHeader),
             @"hxx"             : @(SourceCodeHeader),
             @"m"               : @(SourceCodeObjC),
             @"framework"       : @(Framework),
             @"strings"         : @(PropertyList),
             @"plist"           : @(PropertyList),
             @"mm"              : @(SourceCodeObjCPlusPlus),
             @"cpp"             : @(SourceCodeCPlusPlus),
             @"xib"             : @(XibFile),
             @"png"             : @(ImageResourcePNG),
             @"bundle"          : @(Bundle),
             @"a"               : @(Archive),
             @"html"            : @(HTML),
             @"txt"             : @(TEXT),
             @"jpg"             : @(ImageResourceJPG),
             @"entitlements"    : @(PropertyList),
             
             @"css" : @(enumLength + 1),
             };
}

+ (void)configXCodeProjectWithProjectFilePath:(NSString *)projectFilePath
{
    NSString *projectPath = [projectFilePath stringByDeletingLastPathComponent];
    
    NSString *defaultLIBPath = @"EFUN_LIB";
    
    XCProject* project = [[XCProject alloc] initWithFilePath:projectFilePath];
    
    [[project groupWithPathFromRoot:defaultLIBPath] removeFromParentGroup];
    
    [[project rootGroup] addGroupWithPath:[NSString stringWithFormat:@"../%@", defaultLIBPath] andDisplayName:defaultLIBPath];
    
    NSFileManager *tmpFM = [NSFileManager defaultManager];
    
    NSString *tmpCur_EFUN_LIB_Path = [NSString stringWithFormat:@"%@/../%@", projectPath, defaultLIBPath];
    
    NSDirectoryEnumerator *dirEnum = [tmpFM enumeratorAtPath:tmpCur_EFUN_LIB_Path];
    
    NSString *tmpPathFile = nil;
    while ( (tmpPathFile = [dirEnum nextObject]) != nil )
    {
        if ([tmpPathFile isContainString:@".DS_Store"])
        {
            continue;
        }
        
        static NSString *tmpCurrentIsProccessTypeDirectoryStr = @"";
        
        NSString *tmpResPath = [tmpPathFile isContainString:@"/"] ?
        [NSString stringWithFormat:@"%@/%@", defaultLIBPath, [tmpPathFile stringByDeletingLastPathComponent]]
        :
        defaultLIBPath;
        
        
        if ([tmpPathFile isContainString:tmpCurrentIsProccessTypeDirectoryStr]) {
            continue;
        }
        
        NSString *curFileName = tmpPathFile.lastPathComponent;
        
        NSString *curFilePath = [NSString stringWithFormat:@"%@/%@", tmpCur_EFUN_LIB_Path, tmpPathFile];
        
        BOOL isDirectory = NO;
        [tmpFM fileExistsAtPath:curFilePath isDirectory:&isDirectory];
        
        if (isDirectory)
        {
            if ([self checkFileTypeIsNeedToProccessWithFileName:curFileName])
            {
                tmpCurrentIsProccessTypeDirectoryStr = curFileName;
                
                [self proccessAddingWithFileExtend:curFileName.pathExtension
                                  andProccessGroup:[project groupWithPathFromRoot:tmpResPath]
                                       andFileName:curFileName
                                         andTarget:[project targets][0]];
            }
            else
            {
                [[project groupWithPathFromRoot:tmpResPath] addGroupWithPath:curFileName andDisplayName:curFileName];
            }
        }
        else
        {
            [self proccessAddingWithFileExtend:curFileName.pathExtension
                              andProccessGroup:[project groupWithPathFromRoot:tmpResPath]
                                   andFileName:curFileName
                                     andTarget:[project targets][0]];
        }
        
    }    
    
    [project save];
}

+ (void)configXcodeProjectPlistWithProjectFilePath:(NSString *)projectFilePath
                               andInfoPlistEditDic:(NSDictionary *)infoPlistEditDic
                      andInfoPlistEditURLSchemeArr:(NSArray *)infoPlistEditURLSchemeArr
{
    //    INFOPLIST_FILE
    NSString *plistPath = [NSString stringWithFormat:@"%@/%@",
                           [projectFilePath stringByDeletingLastPathComponent],
                           [CoreHelper_Internal decodeConfigString:[[XCProject alloc] initWithFilePath:projectFilePath].dataStore.description
                                                        byProperty:@"INFOPLIST_FILE"
                                                     andAssignment:@"="
                                                  andNextDelimiter:@";"]];
    
    NSMutableDictionary * plistDic = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithContentsOfFile:plistPath]];
    
    //setting the plist
    for (NSString *tmpKey in infoPlistEditDic.allKeys) {
        NSString *tmpVal = infoPlistEditDic[tmpKey];
        
        BOOL isNeedToAdd = NO;
        if (tmpVal) {
            if ([tmpVal isKindOfClass:[NSDictionary class]]) {
                for (NSString* tmpV in ((NSDictionary *)tmpVal).allValues) {
                    if ([tmpV isKindOfClass:[NSString class]]) {
                        if (![tmpV isEqualToString:@""]) {
                            isNeedToAdd = YES;
                        }
                    }
                }
            } else if ([tmpVal isKindOfClass:[NSString class]]) {
                if (![tmpVal isEqualToString:@""]) {
                    isNeedToAdd = YES;
                    if ([tmpVal isContainString:@"_`_"]) {
                        tmpVal = [tmpVal stringByReplacingOccurrencesOfString:@"_`_" withString:@" "];
                    }
                }
            }
        }
        
        if (isNeedToAdd) {
            [plistDic setValue:tmpVal forKey:tmpKey];
        }
    }
    
    //setting the url scheme
    [plistDic setValue:[NSArray arrayWithObject:@{
                                                  @"CFBundleURLSchemes" : infoPlistEditURLSchemeArr,
                                                  @"CFBundleURLName" : infoPlistEditDic[@"CFBundleIdentifier"]
                                                  }
                        ]
                forKey:@"CFBundleURLTypes"];
    
    // save the plist
    [plistDic writeToFile:plistPath atomically:YES];
}

+ (BOOL)checkFileTypeIsNeedToProccessWithFileName:(NSString *)fileName
{
    NSArray *proccessTypeArr = [PackagerXCodeEdit fileProccessTypeMapping].allKeys;
    
    for (NSString *tmpTypeStr in proccessTypeArr) {
        if ([tmpTypeStr isEqualToString:fileName.pathExtension])
        {
            return YES;
        }
    }
    
    return NO;
}

+ (void)proccessAddingWithFileExtend:(NSString *)fileExtend andProccessGroup:(XCGroup *)curGroup andFileName:(NSString*)fileName andTarget:(XCTarget *)target
{
    XcodeSourceFileType tmpType = [[PackagerXCodeEdit fileProccessTypeMapping][fileExtend] intValue];
    
    if (tmpType == FileTypeNil)
    {        
        [CoreHelper_Internal showAlertWithMessageText:[NSString stringWithFormat:@"XCode Editor Error: \n unsupport Type : %@", fileExtend]];
        return;
    }
    
    if ( canBecomeBuildFileWithType(tmpType) )
    {
        [curGroup addAnyTypeToReferenceWithName:fileName
                                        andType:tmpType];
        [target addMember:[curGroup memberWithDisplayName:fileName]];
    }
    else
    {
        [curGroup addAnyTypeToReferenceWithName:fileName
                                        andType:tmpType];
    }
}
@end
