//
//  Header.h
//

@interface GamaCDNConfig : NSObject
+ (void)startUpdatingConfigFormCDN;

//跟上面的作用一样，多返回一个抢先登入开关的bool量，两个接口不要一起调用
+ (void)startUpdatingConfigFormCDN:(void (^)(BOOL qxdl))qxdlHandler;

@end
