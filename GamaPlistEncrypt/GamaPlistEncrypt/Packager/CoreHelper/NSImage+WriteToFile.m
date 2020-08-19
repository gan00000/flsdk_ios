//
//  NSImage+WriteToFile.m
//  EfunPlistEncrypt
//
//  Created by czf on 22/5/15.
//  Copyright (c) 2015年 Efun. All rights reserved.
//

#import "NSImage+WriteToFile.h"

@implementation NSImage (WriteToFile)

- (void)writeToFile:(NSString *)filePath
{
    NSBitmapImageRep *bitmapRep = nil;
    
    for (NSImageRep *imageRep in [self representations])
    {
        if ([imageRep isKindOfClass:[NSBitmapImageRep class]])
        {
            bitmapRep = (NSBitmapImageRep *)imageRep;
            break; // stop on first bitmap rep we find
        }
    }
    
    if (!bitmapRep)
    {
        bitmapRep = [NSBitmapImageRep imageRepWithData:[self TIFFRepresentation]];
    }
    
    NSData *imageData = [bitmapRep representationUsingType:[self fileTypeForFile:[filePath lastPathComponent]] properties:nil];   
    
    [[NSFileManager defaultManager] createDirectoryAtPath:[filePath stringByDeletingLastPathComponent] withIntermediateDirectories:YES attributes:nil error:nil];
    NSError *tmpErr = nil;
    [imageData writeToFile:filePath options:NSDataWritingAtomic error:&tmpErr];
    tmpErr ? NSLog(@"NSImage WtritFile Error:%@", tmpErr.description) : tmpErr;
}

- (NSBitmapImageFileType)fileTypeForFile:(NSString *)file
{
    NSString *extension = [[file pathExtension] lowercaseString];
    
    if ([extension isEqualToString:@"png"])
    {
        return NSPNGFileType;
    }
    else if ([extension isEqualToString:@"gif"])
    {
        return NSGIFFileType;
    }
    else if ([extension isEqualToString:@"jpg"] || [extension isEqualToString:@"jpeg"])
    {
        return NSJPEGFileType;
    }
    else
    {
        return NSTIFFFileType;
    }
}

@end
