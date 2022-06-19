//
//  ConfigCoreUtil.m
//  CCSkyHourSDK
//
//  Created by ganyuanrong on 2019/5/29.
//  Copyright © 2019 ganyuanrong. All rights reserved.
//

#import "ConfigCoreUtil.h"
#import "SdkHeader.h"
#import "AccountModel.h"


@interface ConfigCoreUtil()


@end

@implementation ConfigCoreUtil

static ConfigCoreUtil * configUtil;
static dispatch_once_t onceToken;

-(void)dealloc
{
    
}

+ (ConfigCoreUtil *)share
{
    
    dispatch_once(&onceToken,^{
        configUtil = [[ConfigCoreUtil alloc] init];
    });
    return configUtil;
}

- (instancetype)init
{
    self=[super init];
    if (self)
    {
        self.isSaveAccountInfo = YES;
    }
    return self;
}

//保存一个账号密码，如果存在，则更新，不存在则添加
-(void)saveAccount:(NSString *) mAccount password:(NSString *) password updateTime:(BOOL) updateTime
{
    
    NSArray *mAccountArray = [self getAccountModels];//获取保存的数据
    for (AccountModel *am in mAccountArray) {
        if ([am.account isEqualToString:mAccount]) {
            am.password = password;
            if (updateTime) {
                am.lastLoginTime = [GamaFunction getTimeStamp];
            }
            [self saveAccountModels:mAccountArray];
            return;
        }
    }
    NSMutableArray *aar = [NSMutableArray arrayWithArray:mAccountArray];
    AccountModel *mAccountModel = [[AccountModel alloc] init];
    //赋值
    mAccountModel.lastLoginTime = [GamaFunction getTimeStamp];
    mAccountModel.account = mAccount;
    mAccountModel.password = password;
    [aar addObject:mAccountModel];
    [self saveAccountModels:aar];
    
}


-(void)saveAccountModel:(AccountModel*) mAccountModel{
    
    if ([mAccountModel.loginType isEqualToString:_SDK_PLAT_SELF]) {
        
        [self removeAccountByUserId:mAccountModel.userId];
        
    }else{//第三方
        [self removeAccountByLoginType:mAccountModel.loginType];//删除同类型第三方
        
        NSArray *mAccountArray = [self getAccountModels];//获取保存的数据
        for (AccountModel *am in mAccountArray) {
            if ([am.userId isEqualToString: mAccountModel.userId] && [mAccountModel.loginType isEqualToString:_SDK_PLAT_SELF]) {
                return;
            }
        }
        
    }
    
    mAccountModel.lastLoginTime = [GamaFunction getTimeStamp];
    NSArray *mAccountArray = [self getAccountModels];//获取保存的数据
    
    NSMutableArray *aar = [NSMutableArray arrayWithArray:mAccountArray];
    [aar addObject:mAccountModel];
    [self saveAccountModels:aar];
}

//保存一个账号密码，如果存在，则更新，不存在则添加
//-(void)removeAccount:(NSString *) mAccount
//{
//    NSArray *mAccountArray = [self getAccountModels];//获取保存的数据
//    NSMutableArray  *dataList = [NSMutableArray arrayWithArray:mAccountArray];
//    for (AccountModel *am in mAccountArray) {
//        if ([am.account isEqualToString:mAccount]) {
//            [dataList removeObject:am];
//            [self saveAccountModels:dataList];
//            return;
//        }
//    }
//}

//保存一个账号密码，如果存在，则更新，不存在则添加
-(void)removeAccountByLoginType:(NSString *) loginType
{
    NSArray *mAccountArray = [self getAccountModels];//获取保存的数据
    NSMutableArray  *dataList = [NSMutableArray arrayWithArray:mAccountArray];
    BOOL has = NO;
    for (AccountModel *am in mAccountArray) {
        if ([am.loginType isEqualToString:loginType]) {
            [dataList removeObject:am];
            has = YES;
        }
    }
    if (has) {
        [self saveAccountModels:dataList];
    }
    
}

-(void)removeAccountByUserId:(NSString *) userId
{
    NSArray *mAccountArray = [self getAccountModels];//获取保存的数据
    NSMutableArray  *dataList = [NSMutableArray arrayWithArray:mAccountArray];
    BOOL has = NO;
    for (AccountModel *am in mAccountArray) {
        if ([am.userId isEqualToString:userId]) {
            [dataList removeObject:am];
            has = YES;
        }
    }
    if (has) {
        [self saveAccountModels:dataList];
    }
    
}


-(void)saveAccountModels:(NSArray<AccountModel *> *) mAccountModelArray
{
    
    NSMutableArray  *dataList = [NSMutableArray array];
    for (AccountModel *m in mAccountModelArray) {
        //存储到NSUserDefaults
        NSData *data = [NSKeyedArchiver archivedDataWithRootObject: m];
        [dataList addObject: data];
    }
    
    //转为不可变数组才能保存
    NSArray *nsdataArray = [NSArray arrayWithArray: dataList];
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults setObject:nsdataArray forKey:@"Key_AccountModelArray"];
    [userDefaults synchronize];
}


-(NSMutableArray<AccountModel *> *)getAccountModels
{
    NSMutableArray  *accountModelList = [NSMutableArray array];
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    NSArray *array = [userDefaults objectForKey:@"Key_AccountModelArray"];
    for (NSData *data in array) {
        AccountModel *m = [NSKeyedUnarchiver unarchiveObjectWithData:data];
        [accountModelList addObject:m];
    }
    //根据创建时间排序
    [accountModelList sortUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
        return -[((AccountModel *)obj1).lastLoginTime compare: ((AccountModel *)obj2).lastLoginTime];
    }];
    return accountModelList;
}


-(void)saveLoginType:(NSString *)thirdPlate
{
    
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    // 1、写入
    [userDefaults setObject:thirdPlate forKey:@"SDK_LOGIN_TYPE"];
    // 强制写入
    [userDefaults synchronize];
}

-(NSString *) loginType
{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    return [userDefaults stringForKey:@"SDK_LOGIN_TYPE"];
}

-(NSString *) createSdkUrl:(NSString *)url
{
    NSMutableString *resultURL = [[NSMutableString alloc] initWithString:url];
    [resultURL appendFormat:@"?gameCode=%@&",SDKConReader.getGameCode];
    //登录完成的信息
    [resultURL appendFormat:@"userId=%@&",[SdkUserInfoModel shareInfoModel].userId];
    [resultURL appendFormat:@"accessToken=%@&",[SdkUserInfoModel shareInfoModel].accessToken];
    [resultURL appendFormat:@"timestamp=%@&",[SdkUserInfoModel shareInfoModel].timestamp];
    //游戏传过来的信息
    [resultURL appendFormat:@"serverCode=%@&",[SdkUserInfoModel shareInfoModel].serverCode];
    [resultURL appendFormat:@"roleId=%@&",[SdkUserInfoModel shareInfoModel].roleID];
    [resultURL appendFormat:@"roleName=%@&",[SdkUserInfoModel shareInfoModel].roleName.urlDecode];
    [resultURL appendFormat:@"serverName=%@&",[SdkUserInfoModel shareInfoModel].serverName.urlEncode];
    if (Device_Is_Landscape) {
        [resultURL appendFormat:@"layout=%@&",@"transverse"];
    }else{
        [resultURL appendFormat:@"layout=%@&",@"vertical"];
    }
    
    //本地或者配置信息
    NSDictionary * _commDic =
    @{
        // 公共的参数拼接
        @"packageName"      :     [GamaFunction getBundleIdentifier],
        @"adId"             :     [[GamaFunction getIdfa]       lowercaseString]? : @"",
        @"idfa"             :     [[GamaFunction getIdfa]       lowercaseString]? : @"",
        @"uuid"             :     [[GamaFunction getGamaUUID]     lowercaseString]? : @"",
        @"versionName"      :     [GamaFunction getBundleShortVersionString]? : @"",
        @"versionCode"      :     [GamaFunction getBundleVersion]? : @"",
        @"systemVersion"    :     [GamaFunction getSystemVersion]? : @"",
        @"deviceType"       :     [GamaFunction getDeviceType]? : @"",
        @"operatingSystem"  :     @"ios",
        @"gameLanguage"     :     GAME_LANGUAGE,
        @"osLanguage"       :     [GamaFunction getPreferredLanguage]? : @""
        
    };
    
    for (NSString *key in _commDic) {
        NSString *value = _commDic[key];
       
        [resultURL appendFormat:@"%@=%@&",key,value];
    }
    
    [resultURL appendFormat:@"from=%@",@"gamePage"];
    SDK_LOG(@"createSdkUrl:%@",resultURL);
    return resultURL;
}


@end
