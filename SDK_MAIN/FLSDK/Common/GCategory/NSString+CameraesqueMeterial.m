

#import "NSString+CameraesqueMeterial.h"

@implementation NSString (CameraesqueMeterial)

- (NSString *)urlEncode_MMMethodMMM
{
    NSString *result =
    (NSString *)CFURLCreateStringByAddingPercentEscapes(NULL,
                                                        (CFStringRef)self,
                                                        NULL,
                                                        (CFStringRef)@";/?:@&=$+{}<>,",
                                                        kCFStringEncodingUTF8);
    return [result autorelease];

}

-(NSString *)urlDecode_MMMethodMMM
{
    NSString *result = (__bridge NSString *) CFURLCreateStringByReplacingPercentEscapesUsingEncoding(NULL,
                                                                                         (__bridge CFStringRef) self,
                                                                                         CFSTR(""),
                                                                                         kCFStringEncodingUTF8);
    return [result autorelease];
}

@end
