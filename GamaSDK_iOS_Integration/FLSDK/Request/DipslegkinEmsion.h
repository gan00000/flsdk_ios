

#import <Foundation/Foundation.h>
#import "SatforPurpurair.h"
#import "BallfySibil.h"

typedef void (^BJServiceSuccessBlock)(id responseData);
typedef void (^BJServiceErrorBlock)(BallfySibil *error);

@interface DipslegkinEmsion : NSObject

+ (void)getRequestWithFunctionPath_MMMethodMMM:(NSString *)path
                            params_MMMethodMMM:(NSDictionary *)params
                      successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                        errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock;

+ (void)postRequestWithFunctionPath_MMMethodMMM:(NSString *)path
                             params_MMMethodMMM:(NSDictionary *)params
                       successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                         errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock;

+ (void)fileUploadWithFunctionPath_MMMethodMMM:(NSString *)functionPath
                            params_MMMethodMMM:(NSDictionary *)params
                          fileData_MMMethodMMM:(NSData *)fileData
                          fileName_MMMethodMMM:(NSString *)fileName
                          mimeType_MMMethodMMM:(NSString *)mimeType
                     progressBlock_MMMethodMMM:(BJHTTPProgressBlock)progressBlock
                      successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                        errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock;

+ (void)imageUploadWithFunctionPath_MMMethodMMM:(NSString *)functionPath
                             params_MMMethodMMM:(NSDictionary *)params
                          imageData_MMMethodMMM:(NSData *)imageData
                          imageName_MMMethodMMM:(NSString *)imageName
                      progressBlock_MMMethodMMM:(BJHTTPProgressBlock)progressBlock
                       successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                         errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock;


+ (void)wholeacle9684Feluous9685:(long)wholeacle9684_1;//insert method def
+ (BOOL)pterothingive9704Thanant9705;//insert method def
+ (NSMutableDictionary *)curr9718Buccroom9719:(BallfySibil *)curr9718_1 lepidorium9720Mesocollectiontic9721:(float)lepidorium9720_2 onomine9722Local9723:(int)onomine9722_3 growth9724Statementlike9725:(int)growth9724_4 antitious9726Tenaci9727:(NSObject *)antitious9726_5;//insert method def
+ (CGFloat)problemling9736Floorery9737:(BOOL)problemling9736_1 plicice9738Paleen9739:(BallfySibil *)plicice9738_2 aster9740Pirid9741:(NSMutableDictionary *)aster9740_3 athlule9742Task9743:(NSMutableArray *)athlule9742_4 ecclesacious9744Seiant9745:(NSData *)ecclesacious9744_5 hangite9746Ovical9747:(NSString *)hangite9746_6;//insert method def
@end
