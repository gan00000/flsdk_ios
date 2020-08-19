//
//

#import <CommonCrypto/CommonDigest.h>
#import "NSString+StringAdditions.h"

@implementation NSString (StringAdditions)

- (NSString*)stringCutStringFrom:(NSString *)cutString
{
    NSRange tempStringRange = [self rangeOfString:cutString];
    if (tempStringRange.location == NSNotFound)
    {
        return self;
    }
    return [self substringFromIndex:tempStringRange.location + tempStringRange.length];
}

- (NSString*)stringCutStringFrom:(NSString *)cutString option:(NSStringCompareOptions)nsOption
{
    NSRange tempStringRange = [self rangeOfString:cutString options:nsOption];
    if (tempStringRange.location == NSNotFound)
    {
        return self;
    }
    return [self substringFromIndex:tempStringRange.location + tempStringRange.length];
}

- (NSString*)stringCutStringTo:(NSString *)cutString
{
    NSRange tempStringRange = [self rangeOfString:cutString];
    if (tempStringRange.location == NSNotFound)
    {
        return self;
    }
    return [self substringToIndex:tempStringRange.location];
}

- (NSString*)stringCutStringTo:(NSString *)cutString option:(NSStringCompareOptions)nsOption
{
    NSRange tempStringRange = [self rangeOfString:cutString options:nsOption];
    if (tempStringRange.location == NSNotFound)
    {
        return self;
    }
    return [self substringToIndex:tempStringRange.location];
}

- (NSString*)stringEsclipeFromXEndX:(int)X
{
    long strLegth = self.length;
    return [NSString stringWithFormat:@"%@.%@",[self substringToIndex:(X>strLegth)?strLegth:X],[self substringFromIndex:((strLegth-X)>0)?(strLegth-X):0]];
}

- (NSString*)stringToMd5
{
    const char *cStr = [self UTF8String];
    unsigned char digest[CC_MD5_DIGEST_LENGTH];
    CC_MD5(cStr,(CC_LONG)strlen((const char *)cStr),digest);
    
    NSMutableString *result = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
    
    for (int i = 0; i< CC_MD5_DIGEST_LENGTH; i++)
    {
        [result appendFormat:@"%02x",digest[i]];
    }
    return result;
}

- (NSString *)urlEncodeString
{
    NSString *result = (NSString *)CFBridgingRelease(CFURLCreateStringByAddingPercentEscapes(NULL,
                                                                           (CFStringRef)self,
                                                                           NULL,
                                                                           (CFStringRef)@";/?:@&=$+{}<>,",
                                                                           kCFStringEncodingUTF8));
    return result;
}

- (NSString *)urlDecodeString
{
    NSString *result = [self stringByReplacingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    return result;
}

- (BOOL)isContainString:(NSString *)string withOption:(NSStringCompareOptions)options
{
    if (string == nil)
    {
        return NO;
    }
    
    NSRange rng = [self rangeOfString:string options:options];
    return rng.location != NSNotFound;
}

- (BOOL)isContainString:(NSString *)string
{
    return [self isContainString:string withOption:0];
}

@end
