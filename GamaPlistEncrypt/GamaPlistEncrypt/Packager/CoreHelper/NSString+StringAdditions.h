//
//

#import <Foundation/Foundation.h>

@interface NSString (StringAdditions)

- (NSString*)stringEsclipeFromXEndX:(int)X;
- (NSString*)stringCutStringFrom:(NSString *)cutString option:(NSStringCompareOptions)nsOption;
- (NSString*)stringCutStringFrom:(NSString *)cutString;
- (NSString*)stringCutStringTo:(NSString *)cutString;
- (NSString*)stringCutStringTo:(NSString *)cutString option:(NSStringCompareOptions)nsOption;
- (NSString *)stringToMd5;
- (NSString *)urlEncodeString;
- (NSString *)urlDecodeString;

- (BOOL)isContainString:(NSString*)string;
- (BOOL)isContainString:(NSString*)string withOption:(NSStringCompareOptions)options;
@end
