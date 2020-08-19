

#import <Foundation/Foundation.h>

@interface GamaDomainchoose : NSObject

+ (void)gamaDomainInit:(void (^)(BOOL qxdl))qxdlHandler;

// set domains that extra added by server
+ (void)addExtraDomainsToConfigurePlist;

@end
