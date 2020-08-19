

#import "GamaDomainchoose.h"
#import "Gama_CDNDownload.h"
#import "GamaDomainDefine.h"
#import "GamaCentreInfo.h"

static NSDictionary *domainDic = nil; //域名字典
static BOOL qxdlSwitch = NO;          //预热活动开关的布尔量
static NSMutableArray *existedDomains = nil; // 已保存到配置文件的域名

@implementation GamaDomainchoose

//域名下载，以及初始化域名、预热活动开关信息
+ (void)gamaDomainInit:(void (^)(BOOL qxdl))qxdlHandler
{
    existedDomains = [[NSMutableArray alloc] init];
    [Gama_CDNDownload crazyDownloadDomain:^(NSDictionary *resultDic, BOOL qxdlOpen) {
        if (resultDic) {
            GAMALog(@"domain download successful!");
            domainDic = resultDic.copy;
            qxdlSwitch = qxdlOpen;
            if (qxdlHandler != nil) {
                qxdlHandler(qxdlSwitch);
            }
        }
    }];
}

+ (void)addExtraDomainsToConfigurePlist {
    
    for (NSString *key in domainDic.allKeys) {
        if (![existedDomains containsObject:key]) {
            GAMA_SET_CONFIG(key, domainDic[key]);
        }
    }
    [existedDomains release]; existedDomains = nil;
}

@end
