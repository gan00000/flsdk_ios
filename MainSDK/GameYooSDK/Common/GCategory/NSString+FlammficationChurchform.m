

#import "NSString+FlammficationChurchform.h"

@implementation NSString (FlammficationChurchform)

- (NSString *)urlEncode
{
    NSString *result =
    (NSString *)CFURLCreateStringByAddingPercentEscapes(NULL,
                                                        (CFStringRef)self,
                                                        NULL,
                                                        (CFStringRef)@";/?:@&=$+{}<>,",
                                                        kCFStringEncodingUTF8);
    return [result autorelease];

}

-(NSString *)urlDecode
{
    NSString *result = (__bridge NSString *) CFURLCreateStringByReplacingPercentEscapesUsingEncoding(NULL,
                                                                                         (__bridge CFStringRef) self,
                                                                                         CFSTR(""),
                                                                                         kCFStringEncodingUTF8);
    return [result autorelease];
}

@end
