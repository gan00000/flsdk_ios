

#import <Foundation/Foundation.h>

@interface NSString (GamaSStringAddition)

- (NSString*)stringEsclipeFromXEndX:(int)X;
- (NSString*)stringCutStringFrom:(NSString *)cutString;
- (NSString*)stringCutStringTo:(NSString *)cutString;
- (NSString*)stringCutStringTo:(NSString *)cutString option:(NSStringCompareOptions)nsOption;
- (NSString *)stringToMd5;
- (NSString *)urlEncodeString;

- (BOOL)isContainString:(NSString*)string;
- (BOOL)isContainString:(NSString*)string withOption:(NSStringCompareOptions)options;

- (int)numberTimesAtString:(NSString *)findStr;
@end
