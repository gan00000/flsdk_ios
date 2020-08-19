//
//  CoreHelper_Internal.h
//  EfunPlistEncrypt
//
//  Created by czf on 27/4/15.
//  Copyright (c) 2015 Efun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CoreHelper_Internal : NSObject

#define PACKAGE_TO_TYPEMARK(value) [NSString stringWithFormat:@"[%@]\n",value]

+ (NSString *)loadRawTextWithFilePath:(NSString *)fileName;
+ (BOOL)writeText:(NSString *)text ToPathWithName:(NSString *)fileName;

+ (NSString *)loadPropertyListWithInfoFileName:(NSString *)fileName andTypeMark:(NSString *)typeMark;

+ (NSString*)decodeConfigString:(NSString *)conStr byProperty:(NSString *)property andAssignment:(NSString *)assignment andNextDelimiter:(NSString *)nextDelimiter;

+ (void)showAlertWithMessageText:(NSString *)message;
+ (void)showAlertWithMessageText:(NSString *)message
                 andFirstBtnText:(NSString *)firstBtnText
                andSecondBtnText:(NSString *)secondBtnText
              andFirstBtnHandler:(void (^)())firstBtnHandler
             andSecondBtnHandler:(void (^)())secondBtnHandler;
+ (void)showInputAlertWithMessageText:(NSString *)message
                      andFirstBtnText:(NSString *)firstBtnText
                     andSecondBtnText:(NSString *)secondBtnText
                   andFirstBtnHandler:(void (^)(NSString * retStr))firstBtnHandler
                  andSecondBtnHandler:(void (^)())secondBtnHandler;

+ (NSString *)openPanelToSelectPathIsCanChooseFile:(BOOL)isCanChooseFile
                         andIsCanChooseDirectories:(BOOL)IsCanChooseDirectories
                       andIsAllowsMutipleSelection:(BOOL)isAllowsMutipleSelection;

+ (void)createFileAtPath:(NSString *)path;
+ (void)deleteFileAtPath:(NSString *)path;
+ (void)copyFileFromPath:(NSString *)fromPath
                  toPath:(NSString *)toPath;
+ (void)moveFileFormPath:(NSString *)fromPath
                  toPath:(NSString *)toPath;
@end
