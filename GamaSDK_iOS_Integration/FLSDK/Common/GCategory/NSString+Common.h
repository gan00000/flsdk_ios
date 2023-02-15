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


- (NSString*)stringEsclipeFromXEndX_MMMethodMMM:(int)X;
- (NSString*)stringCutStringFrom_MMMethodMMM:(NSString *)cutString;
- (NSString*)stringCutStringTo_MMMethodMMM:(NSString *)cutString;
- (NSString*)stringCutStringTo_MMMethodMMM:(NSString *)cutString option_MMMethodMMM:(NSStringCompareOptions)nsOption;
- (NSString *)stringToMd5_MMMethodMMM;
- (NSString *)urlEncodeString_MMMethodMMM;
- (NSString *)trim_MMMethodMMM;

- (BOOL)isContainString_MMMethodMMM:(NSString*)string;
- (BOOL)isContainString_MMMethodMMM:(NSString*)string withOption_MMMethodMMM:(NSStringCompareOptions)options;

- (int)numberTimesAtString_MMMethodMMM:(NSString *)findStr;

@end

NS_ASSUME_NONNULL_END
