

#import "NSString+URLEncoding.h"

@implementation NSString (URLEncoding)

- (NSString *)gamaUrlEncodeString
{
    NSString *result =
    (NSString *)CFURLCreateStringByAddingPercentEscapes(NULL,
                                                        (CFStringRef)self,
                                                        NULL,
                                                        (CFStringRef)@";/?:@&=$+{}<>,",
                                                        kCFStringEncodingUTF8);
    return [result autorelease];

}

-(NSString *)gamaUrlDecodeString
{
    NSString *result = (__bridge NSString *) CFURLCreateStringByReplacingPercentEscapesUsingEncoding(NULL,
                                                                                         (__bridge CFStringRef) self,
                                                                                         CFSTR(""),
                                                                                         kCFStringEncodingUTF8);
    return [result autorelease];
}

@end
