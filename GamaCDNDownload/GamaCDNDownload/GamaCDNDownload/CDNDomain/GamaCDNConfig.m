#import "GamaCDNConfig.h"
#import <Foundation/Foundation.h>

#import "GamaDomainchoose.h"
#import "GamaCentreInfo.h"

@implementation GamaCDNConfig

extern NSString * GAMA_FIRSTCDN ;
extern NSString * GAMA_SECONDCDN ;


+ (void)initializeByMan
{
    [GAMA_FIRSTCDN release];
    [GAMA_SECONDCDN release];
    
    GAMA_FIRSTCDN = SDKConReaderGetString(GAMA_CDN_DOMAIN_NAME).retain;//ifm/s_sdk_config.txt
    GAMA_SECONDCDN = SDKConReaderGetString(GAMA_CDN_DOMAIN_NAME_IN_RESERVE).retain;
    
}

+ (void)startUpdatingConfigFormCDN:(void (^)(BOOL qxdl))qxdlHandler {
    NSLog(@"Starting CDN update");
    [self initializeByMan];
    [GamaDomainchoose gamaDomainInit:^(BOOL qxdl) {
        NSLog(@"CDN update Successed");
        
        [GamaDomainchoose addExtraDomainsToConfigurePlist];
        
        if (qxdlHandler) {
            qxdlHandler(qxdl);
        }
    }];
}

+ (void)startUpdatingConfigFormCDN
{
    [self startUpdatingConfigFormCDN:nil];
    
}

@end
