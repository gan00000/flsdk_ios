

#import "NSString+NovwiseScelid.h"

@implementation NSString (NovwiseScelid)

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

		//====insert my code start===  2023-10-09 19:45:34
		{
		int Y_everybody8940 = 2549;

if(Y_everybody8940 != 80005){
	float c_noding8941 = Y_everybody8940 - 5 - 332 - 401;
}
		}
		//====insert my code end===  2023-10-09 19:45:34

    return [result autorelease];
}

@end
