//
//

#import "GamaURLConnect.h"
#import "GamaCentreInfo.h"
#import "GamaFunction.h"
#import "NSString+GamaSStringAddition.h"

@implementation GamaURLConnect

@synthesize handler;

-(void)dealloc
{
    GAMA_FUNCTION_LOG(GAMA_CLASS_COMBIN(@"dealloc"))
    [super dealloc];
}

+ (NSMutableDictionary *)parametersOfNSURLRequest:(NSURLRequest *)request
{
    NSURL *currentUrl = request.URL;
    NSArray *parameterComponents = [currentUrl.relativePath componentsSeparatedByString:@"&"];
    __block NSMutableDictionary *parameters = [NSMutableDictionary dictionary];
    [parameterComponents enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        NSArray *component = [obj componentsSeparatedByString:@"="];
        if (component.count == 2) {
            parameters[component[0]] = component[1];
        }
    }];
    return parameters;
}

+ (NSURLRequest *)requestWithParameters:(NSMutableDictionary *)parameters oldRequest:(NSURLRequest *)request
{
    NSMutableString *tmpUrlStr = [NSMutableString stringWithFormat:@"%@?",request.URL.relativeString];
    [parameters enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
        [tmpUrlStr appendFormat:@"%@=%@&",key,obj];
    }];
    NSString *urlStr = [tmpUrlStr substringToIndex:(tmpUrlStr.length - 1)];
    NSURLRequest *newRequest = [[NSURLRequest alloc] initWithURL:[NSURL URLWithString:urlStr]];
    return [newRequest autorelease];
}

+(void)requestWithoutComDicUsingRequest:(NSURLRequest *)request
                             oldHandler:(GamaAccessServerHandler)oldHandler
                             newHandler:(GamaServerResponsedHandler)newHandler
{
    NSURLSession *tmpSession = [NSURLSession sharedSession];
    tmpSession.configuration.requestCachePolicy = NSURLRequestReloadIgnoringLocalCacheData;
    [[tmpSession dataTaskWithRequest:request
                   completionHandler:^(NSData *data, NSURLResponse *response, NSError *error)
      {
          [self _requestedResponseWith:data
                           andResponse:response
                              andError:error
                         andOldHandler:oldHandler
                         andNewHandler:newHandler];
          
      }] resume];
}

+ (void)_requestedResponseWith:(NSData *)responseData
                   andResponse:(NSURLResponse *)response
                      andError:(NSError *)error
                 andOldHandler:(GamaAccessServerHandler)oldHandler
                 andNewHandler:(GamaServerResponsedHandler)newHandler
{
    NSDictionary *resultDic = nil;
    NSError *jsonParseErr = nil;
    if (error) {
        [NSThread sleepForTimeInterval:3];
        GAMA_FUNCTION_LOG(error);
    } else {
        
        resultDic = [NSJSONSerialization JSONObjectWithData:responseData
                                                    options:kNilOptions
                                                      error:&jsonParseErr];
    }
    
    dispatch_async(dispatch_get_main_queue(), ^{
        NSString * resultStr = [[[NSString alloc]initWithData:responseData
                                                     encoding:NSUTF8StringEncoding] autorelease];
        !oldHandler ? : oldHandler(responseData, resultStr, error);
        !newHandler ? : newHandler(response, resultDic, jsonParseErr, resultStr, responseData, error);
    });
}

#pragma mark - 对外接口,通过一个NSURLRequest访问服务器，并通过一个block把结果返回给请求方法 -
+(void)accessServerWithRequest:(NSURLRequest *)request
                    andHandler:(GamaAccessServerHandler)aHandler
{
    
    NSMutableDictionary *resultDic = nil;
    BOOL isUsePost = NO;
    
    NSString *httpMethod = request.HTTPMethod;
    
    NSURL *tmpURL = request.URL;
    tmpURL = [[[NSURL alloc] initWithScheme:tmpURL.scheme
                                      host:tmpURL.host
                                      path:tmpURL.path] autorelease];
    NSString *domainURL = tmpURL.relativeString;
    
    NSString *rawPath = nil;
    if ([httpMethod isEqualToString:@"POST"]) {
        NSData *tmpData = request.HTTPBody;
        rawPath = [[[NSString alloc] initWithData:tmpData encoding:NSUTF8StringEncoding] autorelease];
    } else if ([httpMethod isEqualToString:@"GET"]) {
        rawPath = request.URL.query;
    }
    
    // if the format is not normal
    if ((!rawPath || ![rawPath isContainString:@"&"]) && [httpMethod isEqualToString:@"POST"]) {
        [self requestWithoutComDicUsingRequest:request
                                    oldHandler:aHandler
                                    newHandler:nil];
        return;
    }
    
    NSMutableDictionary *tmpDic = nil;
    
    if ([rawPath isContainString:@"&"]) {
        tmpDic = [NSMutableDictionary dictionary];
        NSArray *tmpArr = [rawPath componentsSeparatedByString:@"&"];
        for (NSString *tmpKV in tmpArr) {
            NSArray *tmpKVArr = [tmpKV componentsSeparatedByString:@"="];
            if (tmpKVArr && tmpKVArr.count >=2 ) {
                [tmpDic addEntriesFromDictionary:@{ tmpKVArr[0] : tmpKVArr[1] }];
            }
        }        
        isUsePost = YES;
    } else {
        isUsePost = NO;
    }
    
    resultDic = tmpDic;

    GamaServerResponsedHandler tmpHandler = ^(NSURLResponse * response, NSDictionary *resultJsonDic, NSError *jsonParseErr, NSString *resultStr, NSData *resultRawData, NSError *error) {
        aHandler(resultRawData, resultStr, error);
    };
    [GamaRequestor requestByParams:resultDic
                   requestDomain:domainURL
                  isReqestByPost:isUsePost
               ComplitionHandler:tmpHandler];
}

@end
