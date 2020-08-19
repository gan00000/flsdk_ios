//
//  PackagerAcceptTypeWarper.h
//

#import <Foundation/Foundation.h>

@interface PackagerXCodeEdit : NSObject

+ (void)configXCodeProjectWithProjectFilePath:(NSString *)projectFilePath;

+ (void)configXcodeProjectPlistWithProjectFilePath:(NSString *)projectFilePath
                               andInfoPlistEditDic:(NSDictionary *)infoPlistEditDic
                      andInfoPlistEditURLSchemeArr:(NSArray *)infoPlistEditURLSchemeArr;
@end
