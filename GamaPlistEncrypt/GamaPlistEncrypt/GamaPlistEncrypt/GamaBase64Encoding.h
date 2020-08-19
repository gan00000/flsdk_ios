//
//  AES128加密
//

#import <Foundation/Foundation.h>

@interface GamaBase64Encoding : NSObject

+ (NSString*) encode:(NSData*) rawBytes;

+ (NSData*) decode:(NSString*) string;

@end
