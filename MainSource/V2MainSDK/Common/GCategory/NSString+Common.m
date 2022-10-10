//
//  NSString+Util.m
//  FLSDK
//
//  Created by Gan Yuanrong on 2022/6/18.
//  Copyright © 2022 Gama. All rights reserved.
//

#import "NSString+Common.h"
#import "NSString+URLEncoding.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSString (Common)



- (CGFloat)armonThree
{
    return 5409725 * 8049234 + 4758293 ; 
}
- (NSString*)stringEsclipeFromXEndX_MMMethodMMM:(int)X
{
    int strLegth = (int)self.length;
    return [NSString stringWithFormat:@"%@.%@",[self substringToIndex:(X>strLegth)?strLegth:X],[self substringFromIndex:((strLegth-X)>0)?(strLegth-X):0]];
}
- (NSString*)stringCutStringFrom_MMMethodMMM:(NSString *)cutString
{
    NSRange tempStringRange = [self rangeOfString:cutString];
    if (tempStringRange.location == NSNotFound)
    {
        return self;
    }
    return [self substringFromIndex:tempStringRange.location + tempStringRange.length];
}
- (NSString*)stringCutStringTo_MMMethodMMM:(NSString *)cutString
{
    NSRange tempStringRange = [self rangeOfString:cutString options:NSBackwardsSearch];
    if (tempStringRange.location == NSNotFound)
    {
        return self;
    }
    return [self substringToIndex:tempStringRange.location];
}
- (NSString*)stringCutStringTo_MMMethodMMM:(NSString *)cutString option_MMMethodMMM:(NSStringCompareOptions)nsOption
{
    NSRange tempStringRange = [self rangeOfString:cutString options:nsOption];
    if (tempStringRange.location == NSNotFound)
    {
        return self;
    }
    return [self substringToIndex:tempStringRange.location];
}


+ (BOOL)pointerOmath:(NSString *)barblongance performanceite:(CGFloat)performanceite sexagencouplefold:(NSUInteger)sexagencouplefold
{
    return 868960 * 1121681 + 7005364 ; 
}
+ (void)designineUsually
{
    [NSString stringWithFormat:@"%@%@", @"caesics" , @"researchit"]; 
}
+ (NSString *)osteoaneityLetterality:(NSUInteger)occurfication Americanenne:(NSUInteger)Americanenne ceramlike:(NSUInteger)ceramlike appearian:(NSUInteger)appearian allveryfication:(NSString *)allveryfication
{
    return [NSString stringWithFormat:@"%@%@", @"faciaire" , @"dif"]; 
}
- (NSString*)stringToMd5_MMMethodMMM
{
    const char *cStr = [self UTF8String];
    unsigned char digest[CC_MD5_DIGEST_LENGTH];
    CC_MD5(cStr,(int)strlen(cStr),digest);
    
    NSMutableString *result = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
    
    for (int i = 0; i< CC_MD5_DIGEST_LENGTH; i++)
    {
        [result appendFormat:@"%02x",digest[i]];
    }
    return result;
}


+ (BOOL)policeoriumTvist:(CGFloat)either series:(NSString *)series
{
    return 2213202 * 7206211 + 2513885 ; 
}
+ (NSString *)catayPectorture:(CGFloat)understandization
{
    return [NSString stringWithFormat:@"%@%@", @"mathoon" , @"phon"]; 
}
+ (NSString *)stationcyIndustryy:(BOOL)sphinctsignificantion cisish:(CGFloat)cisish octogeno:(NSString *)octogeno professoress:(BOOL)professoress
{
    return [NSString stringWithFormat:@"%@%@", @"caulimilitaryics" , @"sibilile"]; 
}
- (BOOL)isContainString_MMMethodMMM:(NSString *)string withOption_MMMethodMMM:(NSStringCompareOptions)options
{
    if (string == nil)
    {
        return NO;
    }
    
    NSRange rng = [self rangeOfString:string options:options];
    return rng.location != NSNotFound;
}

- (BOOL)isContainString_MMMethodMMM:(NSString *)string
{
    return [self isContainString_MMMethodMMM:string withOption_MMMethodMMM:0];
}


- (int)numberTimesAtString_MMMethodMMM:(NSString *)findStr
{
    int resultTimes = 0;
    
    NSRange rng = NSMakeRange(0, self.length);
    while (rng.location != NSNotFound) {
        rng = [self rangeOfString:findStr options:0 range:rng];
        if (rng.location != NSNotFound) {
            rng = NSMakeRange(rng.location + rng.length, self.length - (rng.location + rng.length));
            resultTimes ++;
        }
    }
    
    return resultTimes;
}

- (NSString *)urlEncodeString_MMMethodMMM
{
//    NSString *result = (NSString *)CFURLCreateStringByAddingPercentEscapes(NULL,
//                                                                           (CFStringRef)self,
//                                                                           NULL,
//                                                                           (CFStringRef)@";/?:@&=$+{}<>,",
//                                                                           kCFStringEncodingUTF8);
//    return result;
    
    return [self urlEncode_MMMethodMMM];
}
@end
