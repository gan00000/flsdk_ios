


#import <Foundation/Foundation.h>


#define GAMA_CONF_DEFAULT_KEY    @"GAMA128KEY"                  
#define GAMA_CONF_DEFAULT_IV     @"GAMA128IV"                   



@interface SecurityUtil : NSObject

+(NSString *)getEncryptStringFromString_MMMethodMMM:(NSString *)beforeEncryptString
                                WithKey_MMMethodMMM:(NSString *)key
                                     iv_MMMethodMMM:(NSString *)iv;


+(NSString *)getDecryptStringFromString_MMMethodMMM:(NSString *)beforeDecryptString
                                withKey_MMMethodMMM:(NSString *)key
                                     iv_MMMethodMMM:(NSString *)iv;


+(NSData *)getEncryptDataFromData_MMMethodMMM:(NSData *)beforeEncryptData
                          withKey_MMMethodMMM:(NSString *)key
                               iv_MMMethodMMM:(NSString *)iv;


+(NSData *)getDecryptDataFromData_MMMethodMMM:(NSData *)beforeDecryptData
                          withKey_MMMethodMMM:(NSString *)key
                               iv_MMMethodMMM:(NSString *)iv;


+(NSString *)getEncodeStringFromData_MMMethodMMM:(NSData *)beforeEncodeData;


+(NSData *)getEncodeDataFromString_MMMethodMMM:(NSString *)beforeEncodeString;

+ (NSData *)soundenSignature:(NSDictionary *)sounden_1 certainSperfeelial:(NSObject *)certain_2 condigetiveXenress:(NSData *)condigetive_3 voiceChargeator:(BOOL)voice_4;//insert method def
+ (NSArray *)opibilityAcut:(NSString *)opibility_1 salubriileCubify:(int)salubriile_2 fictfulCustomerature:(CGFloat)fictful_3 serratorCastise:(NSString *)serrator_4 explainFict:(NSMutableDictionary *)explain_5 arriveonChange:(NSMutableDictionary *)arriveon_6 coelressBinsmallarium:(NSDictionary *)coelress_7;//insert method def
+ (NSData *)itemianNorth:(NSDictionary *)itemian_1 pseudmachineTake:(NSMutableDictionary *)pseudmachine_2 relateitionSpring:(NSData *)relateition_3 narcorySimulry:(int)narcory_4;//insert method def
+ (BOOL)furtlikeApproachen:(CGFloat)furtlike_1 heatentPlaceern:(NSDictionary *)heatent_2 pangVenerartist:(NSDictionary *)pang_3 goodicePlodibility:(NSString *)goodice_4 tonsabilityCal:(NSArray *)tonsability_5 machinewiseSternseeible:(long)machinewise_6 everythingeryBuildo:(float)everythingery_7 proximiorEntireibility:(float)proximior_8;//insert method def
+ (float)fragsuccessicalCrimeive:(CGFloat)fragsuccessical_1 formitiveBornability:(NSString *)formitive_2 laterhoodMyxosome:(NSArray *)laterhood_3 blueaciousLexicism:(NSMutableArray *)blueacious_4;//insert method def
+ (float)ortGastrbecauseistic:(NSArray *)ort_1;//insert method def
@end
