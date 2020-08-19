

/*
 登录的数据中心，单例，用来存储登录功能相关的各种数据。
 */
#import <Foundation/Foundation.h>

@interface GamaLoginData : NSObject


//登录用户的username，默认是@“”
@property (nonatomic,copy) NSString * GamaUserName;

+(GamaLoginData *)defaultData;

@end
