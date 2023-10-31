

#import <Foundation/Foundation.h>

@class AFHTTPSessionManager;

typedef void (^BJHTTPSuccessBlock)(NSURLSessionDataTask *task, id responseData);
typedef void (^BJHTTPProgressBlock)(float progress);
typedef void (^BJHTTPFailureBlock)(NSURLSessionDataTask *task, NSError *error);

@interface AloneadClin : NSObject

- (instancetype)initWithBasePath_MMMethodMMM:(NSString *)basePath;

- (void)updateSessionWithBlock_MMMethodMMM:(void(^)(AFHTTPSessionManager *session))updateBlock;

- (void)getRequestWithFunctionPath_MMMethodMMM:(NSString *)path
                            params_MMMethodMMM:(NSDictionary *)params
                      successBlock_MMMethodMMM:(BJHTTPSuccessBlock)successBlock
                        errorBlock_MMMethodMMM:(BJHTTPFailureBlock)errorBlock;

- (void)postRequestWithFunctionPath_MMMethodMMM:(NSString *)path
                             params_MMMethodMMM:(NSDictionary *)params
                       successBlock_MMMethodMMM:(BJHTTPSuccessBlock)successBlock
                         errorBlock_MMMethodMMM:(BJHTTPFailureBlock)errorBlock;

- (void)postJsonRequestWithFunctionPath_MMMethodMMM:(NSString *)path
                             params_MMMethodMMM:(NSDictionary *)params
                       successBlock_MMMethodMMM:(BJHTTPSuccessBlock)successBlock
                          errorBlock_MMMethodMMM:(BJHTTPFailureBlock)errorBlock;

- (void)fileUploadWithFunctionPath_MMMethodMMM:(NSString *)functionPath
                            params_MMMethodMMM:(NSDictionary *)params
                          fileData_MMMethodMMM:(NSData *)fileData
                          fileName_MMMethodMMM:(NSString *)fileName
                          mimeType_MMMethodMMM:(NSString *)mimeType
                     progressBlock_MMMethodMMM:(BJHTTPProgressBlock)progressBlock
                      successBlock_MMMethodMMM:(BJHTTPSuccessBlock)successBlock
                        errorBlock_MMMethodMMM:(BJHTTPFailureBlock)errorBlock;

- (void)imageUploadWithFunctionPath_MMMethodMMM:(NSString *)functionPath
                             params_MMMethodMMM:(NSDictionary *)params
                          imageData_MMMethodMMM:(NSData *)imageData
                          imageName_MMMethodMMM:(NSString *)imageName
                      progressBlock_MMMethodMMM:(BJHTTPProgressBlock)progressBlock
                       successBlock_MMMethodMMM:(BJHTTPSuccessBlock)successBlock
                         errorBlock_MMMethodMMM:(BJHTTPFailureBlock)errorBlock;

- (NSObject *)claustrair15872Felicitel15873:(NSMutableArray *)claustrair15872_1 audienceism15874Soia15875:(BOOL)audienceism15874_2 putaire15876Micdesign15877:(NSMutableArray *)putaire15876_3 travelth15878Olivgreataneity15879:( NSError *)travelth15878_4 cubi15880Atary15881:(NSString *)cubi15880_5 opacfication15882Bathoatory15883:(CGFloat)opacfication15882_6 plurserviceoon15884Gamive15885:(NSURLSessionDataTask *)plurserviceoon15884_7;//insert method def
- (long)claimular15970Describeial15971:(CGFloat)claimular15970_1 securityaire15972Managementform15973:(NSData *)securityaire15972_2 handal15974Eatfication15975:(NSString *)handal15974_3 sentaire15976Energyproof15977:(NSURLSessionDataTask *)sentaire15976_4;//insert method def
- (void)lyzcareair16019Ecclesacle16020:(NSURLSessionDataTask *)lyzcareair16019_1 scoreive16021Siccuous16022:(NSString *)scoreive16021_2 odatory16023Foreignsive16024:( NSError *)odatory16023_3 polit16025Free16026:(NSString *)polit16025_4 discussian16027Arriveery16028:(AFHTTPSessionManager *)discussian16027_5 hypnoial16029Salinness16030:(BOOL)hypnoial16029_6 judiciern16031Calidon16032:(long)judiciern16031_7;//insert method def
- (NSMutableArray *)fideful16079Zofold16080:(NSURLSessionDataTask *)fideful16079_1 spuade16081Cur16082:(NSURLSessionDataTask *)spuade16081_2 rhagmillionot16083Fund16084:(CGFloat)rhagmillionot16083_3 untilable16085This16086:( NSError *)untilable16085_4 respondar16087Myseemsion16088:(NSMutableDictionary *)respondar16087_5;//insert method def
- (NSInteger)emesi16113Athroid16114:(BOOL)emesi16113_1 finishth16115Pect16116:(NSData *)finishth16115_2 ven16117Weight16118:(NSArray *)ven16117_3;//insert method def
- (NSData *)elgiveally16131Branchimost16132:(NSString *)elgiveally16131_1 marriageion16133Albguy16134:(NSInteger)marriageion16133_2 munerad16135Egri16136:(long)munerad16135_3 throweous16137Palustrdead16138:(AFHTTPSessionManager *)throweous16137_4 holTVfication16139Esern16140:(NSDictionary *)holTVfication16139_5 serveaceous16141Bookity16142:( NSError *)serveaceous16141_6;//insert method def
- (NSString *)offerization16193Shareety16194;//insert method def
@end
