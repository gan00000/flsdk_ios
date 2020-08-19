

#import <Foundation/Foundation.h>

@interface GamaCDNDownloader : NSObject

+ (void)downloadRemoteFile:(void (^)(NSDictionary *fileInfo))completion
            inCDNFilesLocation:(NSArray *)cdnFilesPath
                     keyPrefix:(NSString *)prefix;

@end
