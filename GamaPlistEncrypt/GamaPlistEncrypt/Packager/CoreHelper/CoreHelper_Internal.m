//
//

#import "CoreHelper_Internal.h"

#import <Cocoa/Cocoa.h>

#import "NSString+StringAdditions.h"

@implementation CoreHelper_Internal

+ (NSString *)loadRawTextWithFilePath:(NSString *)fileName
{
    NSString* filePath = [NSString stringWithFormat:@"%@", fileName];
    NSString* fileStr = [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:nil];
    
    return fileStr;
}

+ (BOOL)writeText:(NSString *)text ToPathWithName:(NSString *)fileName
{
    NSError *tmpErr = nil;
    NSString* filePath = [NSString stringWithFormat:@"%@", fileName];
    [text writeToFile:filePath atomically:YES encoding:NSUTF8StringEncoding error:&tmpErr];
    
    if (tmpErr) {
        [self showAlertWithMessageText:tmpErr.description];
        return NO;
    } else {
        return YES;
    }
}

+ (NSString *)loadPropertyListWithInfoFileName:(NSString *)fileName andTypeMark:(NSString *)typeMark;
{
    NSString* tmpFileStr = [self loadRawTextWithFilePath:fileName];
    
    if (![typeMark isContainString:@"]"]
        || ![typeMark isContainString:@"["]) {
        NSAssert(NO, @"typeMark Form is [XXX], current typeMark:%@; Use PACKAGE_TO_TYPEMARK(XXX)", typeMark);
    }
    
    NSString *tmpTypeMark = typeMark;
    
    if ([tmpFileStr rangeOfString:tmpTypeMark].location == NSNotFound) {
        [CoreHelper_Internal showAlertWithMessageText:[NSString stringWithFormat:@"loadPropertyListWithInfoFileName :%@ -> Can't Find The Type:%@", fileName.lastPathComponent, tmpTypeMark]];
        return nil;
    }
    
    tmpFileStr = [tmpFileStr stringCutStringFrom:tmpTypeMark];
    tmpFileStr = [tmpFileStr stringCutStringTo:@"\n[" option:NSLiteralSearch];
    
    NSString* typeInfoStr = tmpFileStr;
    
    typeInfoStr = [typeInfoStr stringByReplacingOccurrencesOfString:@" " withString:@""];
    typeInfoStr = [typeInfoStr stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    
    if ([typeInfoStr rangeOfString:@";" options:NSBackwardsSearch].location + 1 == typeInfoStr.length)// remove the last @";"
    {
        typeInfoStr = [typeInfoStr substringToIndex:typeInfoStr.length - 1];
    }
    
    return typeInfoStr;
}

+ (NSString*)decodeConfigString:(NSString *)conStr byProperty:(NSString *)property andAssignment:(NSString *)assignment andNextDelimiter:(NSString *)nextDelimiter
{
    NSString *propertyKey = [NSString stringWithFormat:@"\"%@\"",property];
    
    if (![conStr isContainString:propertyKey]) {
        propertyKey = property;
    }
    
    NSString *resultStr = nil;
    NSString *tempString = [conStr stringCutStringFrom:propertyKey];
    
    if ([tempString isEqualToString:conStr]) { //property not find
        // try the property without “”
        propertyKey = property;
        tempString = [conStr stringCutStringFrom:propertyKey];
        if ([tempString isEqualToString:conStr])//still not find ,return the hold string
        {
            NSLog(@"[decodeConfigString], decodeServerString error.Str:%@",conStr);
            return conStr;
        }
    }
    
    NSString *tempVauleStringWithDelimiter = [tempString stringCutStringFrom:assignment];
    
    NSRange tempNextDelimiter = [tempVauleStringWithDelimiter rangeOfString:nextDelimiter];
    if (tempNextDelimiter.location == NSIntegerMax)
    {
        tempNextDelimiter = [tempVauleStringWithDelimiter rangeOfString:@"}"];
        if (tempNextDelimiter.location == NSIntegerMax)
        {
            tempNextDelimiter.location = tempVauleStringWithDelimiter.length;
        }
    }
    resultStr = [tempVauleStringWithDelimiter substringToIndex:tempNextDelimiter.location];
    resultStr = [resultStr stringCutStringFrom:@"\""];
    resultStr = [resultStr stringCutStringTo:@"\"" option:NSBackwardsSearch];
    
    
    resultStr = [resultStr stringByReplacingOccurrencesOfString:@" " withString:@""];
    resultStr = [resultStr stringByReplacingOccurrencesOfString:@"\\n" withString:@"\n"];
    
    resultStr = [resultStr stringByReplacingOccurrencesOfString:@"\\\"" withString:@"\""];
    
//        NSLog(@"%@ : %@", property, resultStr);
    return resultStr;
}

+ (void)showAlertWithMessageText:(NSString *)message
{
    [self showAlertWithMessageText:message
                   andFirstBtnText:@"OK"
                  andSecondBtnText:nil
                andFirstBtnHandler:nil
               andSecondBtnHandler:nil];
}

+ (void)showAlertWithMessageText:(NSString *)message
                 andFirstBtnText:(NSString *)firstBtnText
                andSecondBtnText:(NSString *)secondBtnText
              andFirstBtnHandler:(void (^)())firstBtnHandler
             andSecondBtnHandler:(void (^)())secondBtnHandler
{
    dispatch_async(dispatch_get_main_queue(), ^{
        NSAlert *alert = [[NSAlert alloc] init];
        [alert addButtonWithTitle:firstBtnText];
        [alert addButtonWithTitle:secondBtnText];
        [alert setMessageText:@"message"];
        [alert setInformativeText:message];
        [alert setAlertStyle:NSWarningAlertStyle];
        
        NSModalResponse modalResponse = [alert runModal];
        if (modalResponse == NSAlertFirstButtonReturn)
        {
            if (firstBtnHandler) {
                firstBtnHandler();
            }
        }
        else if (modalResponse == NSAlertSecondButtonReturn)
        {
            if (secondBtnHandler) {
                secondBtnHandler();
            }
        }
    });
}

+ (void)showInputAlertWithMessageText:(NSString *)message
                      andFirstBtnText:(NSString *)firstBtnText
                     andSecondBtnText:(NSString *)secondBtnText
                   andFirstBtnHandler:(void (^)(NSString * retStr))firstBtnHandler
                  andSecondBtnHandler:(void (^)())secondBtnHandler
{
    dispatch_async(dispatch_get_main_queue(), ^{
        NSAlert *alert = [[NSAlert alloc] init];
        [alert addButtonWithTitle:firstBtnText];
        [alert addButtonWithTitle:secondBtnText];
        [alert setMessageText:message];
        [alert setInformativeText:@""];
        [alert setAlertStyle:NSWarningAlertStyle];
        
        NSTextField *input = [[NSTextField alloc] initWithFrame:NSMakeRect(0, 0, 200, 24)];
        [input setStringValue:@""];
        [alert setAccessoryView:input];
        
        NSModalResponse modalResponse = [alert runModal];
        if (modalResponse == NSAlertFirstButtonReturn)
        {
            if (firstBtnHandler) {
                [input validateEditing];
                firstBtnHandler([input stringValue]);
            }
        }
        else if (modalResponse == NSAlertSecondButtonReturn)
        {
            if (secondBtnHandler) {
                secondBtnHandler();
            }
        }
    });    
}

+ (NSString *)openPanelToSelectPathIsCanChooseFile:(BOOL)isCanChooseFile andIsCanChooseDirectories:(BOOL)IsCanChooseDirectories andIsAllowsMutipleSelection:(BOOL)isAllowsMutipleSelection
{
    NSOpenPanel *openPanel = [[NSOpenPanel alloc] init];
    [openPanel setCanChooseFiles:isCanChooseFile];
    [openPanel setCanChooseDirectories:IsCanChooseDirectories];
    [openPanel setAllowsMultipleSelection:isAllowsMutipleSelection];
    
    if ([openPanel runModal] == NSFileHandlingPanelOKButton) {
        NSURL *fileURL = [openPanel URL];
        
        NSString *tmpPath = fileURL.path;
        
        return tmpPath;
    }
    
    return nil;
}

#pragma mark - File manager

+ (void)createFileAtPath:(NSString *)path
{
    NSFileManager *tmpFileManager = [NSFileManager defaultManager];
    if (![tmpFileManager fileExistsAtPath:path isDirectory:nil])
    {
        NSError *tmpErr = nil;
        [tmpFileManager createDirectoryAtPath:path
                  withIntermediateDirectories:YES
                                   attributes:nil
                                        error:&tmpErr];
        tmpErr ? NSLog(@"createFileAtPath:%@",tmpErr) : nil;
    }
}

+ (void)deleteFileAtPath:(NSString *)path
{
    NSFileManager *tmpFileManager = [NSFileManager defaultManager];
    
    NSError *tmpErr = nil;
    [tmpFileManager removeItemAtPath:path error:&tmpErr];
    tmpErr ? NSLog(@"deleteFileAtPath:%@",tmpErr) : nil;
}

+ (void)copyFileFromPath:(NSString *)fromPath
                  toPath:(NSString *)toPath
{
    NSFileManager *tmpFileManager = [NSFileManager defaultManager];
    if ([tmpFileManager fileExistsAtPath:toPath isDirectory:nil]) {
        [self deleteFileAtPath:toPath];
    } else {
        [self createFileAtPath:[toPath stringCutStringTo:@"/" option:NSBackwardsSearch]];
    }
    
    NSError *tmpErr = nil;
    [tmpFileManager copyItemAtPath:fromPath
                            toPath:toPath
                             error:&tmpErr];
    tmpErr ? NSLog(@"copyFileFromPath:%@",tmpErr) : nil;
}

+ (void)moveFileFormPath:(NSString *)fromPath
                  toPath:(NSString *)toPath
{
    NSFileManager *tmpFileManager = [NSFileManager defaultManager];
    if ([tmpFileManager fileExistsAtPath:toPath isDirectory:nil]) {
        NSError *tmpErr = nil;
        [tmpFileManager moveItemAtPath:fromPath
                                toPath:toPath
                                 error:&tmpErr];
        tmpErr ? NSLog(@"moveFileFormPath:%@",tmpErr) : nil;
    }
}

@end
