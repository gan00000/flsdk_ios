


#import <Foundation/Foundation.h>


#define GAMA_CONF_DEFAULT_KEY    @"GAMA128KEY"                  
#define GAMA_CONF_DEFAULT_IV     @"GAMA128IV"                   

 

@interface SecurityUtil : NSObject
 

@property(nonatomic, assign)long  adaptMark;
@property(nonatomic, assign)double  comm_margin;
@property(nonatomic, copy)NSString *  append_string;
@property(nonatomic, copy)NSString *  activeForwardRateString;




+(NSArray *)connectedRegistBoldTimeoutFitActivity:(NSInteger)began landspace:(int)landspace function:(NSArray *)function;

+(NSString *)reloadSuperviewFailedComm:(Boolean)password;

+(NSInteger)nsdataRequiredLeftCoreEditing:(NSString *)signIdentifier;

+(NSArray *)placeNendMimeTipUsernameEquel:(long)edit product:(long)product;


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

@end
