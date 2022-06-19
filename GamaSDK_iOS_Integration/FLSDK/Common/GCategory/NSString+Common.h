//
//  NSString+Util.h
//  FLSDK
//
//  Created by Gan Yuanrong on 2022/6/18.
//  Copyright © 2022 Gama. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (Common)


- (NSString*)stringEsclipeFromXEndX:(int)X;
- (NSString*)stringCutStringFrom:(NSString *)cutString;
- (NSString*)stringCutStringTo:(NSString *)cutString;
- (NSString*)stringCutStringTo:(NSString *)cutString option:(NSStringCompareOptions)nsOption;
- (NSString *)stringToMd5;
//- (NSString *)urlEncodeString;

- (BOOL)isContainString:(NSString*)string;
- (BOOL)isContainString:(NSString*)string withOption:(NSStringCompareOptions)options;

- (int)numberTimesAtString:(NSString *)findStr;

@end

NS_ASSUME_NONNULL_END
