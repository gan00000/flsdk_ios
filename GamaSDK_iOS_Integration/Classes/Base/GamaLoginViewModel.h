//
//

#import <Foundation/Foundation.h>

typedef void (^completion)(NSDictionary *result, NSError *error);

@interface GamaLoginViewModel : NSObject

@property (retain, nonatomic) NSString *sdkLanguage;
@property (retain, nonatomic) NSString *bindViewPrompt;
@property (assign, nonatomic) BOOL vfConfig;
@property (assign, nonatomic) BOOL isBeLinked;

+ (instancetype)model;

- (void)getConfigFile;

@end
