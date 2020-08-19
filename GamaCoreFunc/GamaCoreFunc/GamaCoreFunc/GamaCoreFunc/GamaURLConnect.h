

/*
 
 －访问URL连接的类
 
 －可以支持post和get形式的 NSURLRequest，服务器返回结果，通过black回调。
 
 －回调还书black有两个参数：
 resultData:服务器的返回数据
 error:访问服务器是否失败
 
 */
#import <Foundation/Foundation.h>

//定义一个回调函数block
typedef void (^GamaAccessServerHandler) (NSData * resultData,NSString * resultStr,NSError * error);
typedef void (^GamaServerResponsedHandler) (NSURLResponse * response, NSDictionary *resultJsonDic, NSError *jsonParseErr, NSString *resultStr, NSData *resultRawData, NSError *error);

@interface GamaURLConnect : NSObject

/*一个block用来把访问服务器的结果返回给请求的函数*/
@property (nonatomic,copy) GamaAccessServerHandler handler;

/**
 *	@brief	接口，用来访问服务器，支持post和get格式
 *
 *	@param 	request 	访问接口的Request，get或者post形式
 *	@param 	aHandler 	从服务器获取到数据以后的回调black，格式见上面自定义的black格式。
 *
 */
+(void)accessServerWithRequest:(NSURLRequest *)request
                                 andHandler:(GamaAccessServerHandler)aHandler;


+ (void)requestWithoutComDicUsingRequest:(NSURLRequest *)request
                              oldHandler:(GamaAccessServerHandler)oldHandler
                              newHandler:(GamaServerResponsedHandler)newHandler;
@end
