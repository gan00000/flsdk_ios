//
//  UsBag.m
//  CCSkyHourSDK
//
//  Created by ganyuanrong on 2019/5/29.
//  Copyright © 2019 ganyuanrong. All rights reserved.
//

#import "UsBag.h"
#import "SdkHeader.h"
#import "AccountModel.h"


@interface UsBag()


@end

@implementation UsBag

static UsBag * configUtil;
static dispatch_once_t onceToken;

+ (UsBag *)share
{
    
    dispatch_once(&onceToken,^{
        configUtil = [[UsBag alloc] init];
    });
    return configUtil;
}

- (instancetype)init
{
    self=[super init];
    if (self)
    {
        
    }
    return self;
}

//保存一个账号密码，如果存在，则更新，不存在则添加
//-(void)saveAccount:(NSString *) mAccount password:(NSString *) password updateTime:(BOOL) updateTime
//{
//
//    NSArray *mAccountArray = [self getAccountModels];//获取保存的数据
//    for (AccountModel *am in mAccountArray) {
//        if ([am.account isEqualToString:mAccount]) {
//            am.password = password;
//            if (updateTime) {
//                am.lastLoginTime = [TyponessHugehood getTimeStamp];
//            }
//            [self saveAccountModels:mAccountArray];
//            return;
//        }
//    }
//    NSMutableArray *aar = [NSMutableArray arrayWithArray:mAccountArray];
//    AccountModel *mAccountModel = [[AccountModel alloc] init];
//    //赋值
//    mAccountModel.lastLoginTime = [TyponessHugehood getTimeStamp];
//    mAccountModel.account = mAccount;
//    mAccountModel.password = password;
//    [aar addObject:mAccountModel];
//    [self saveAccountModels:aar];
//
//}


-(void)saveAccountModel:(AccountModel*) mAccountModel{
    
    if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_SELF]) {
        
        [self removeAccountByUserId:mAccountModel.userId];
        
    }else{//第三方
       
        [self removeAccountByLoginType:mAccountModel.loginType];//删除同类型第三方
        
        NSArray *mAccountArray = [self getAccountModels];//获取保存的数据
        for (AccountModel *am in mAccountArray) {
            if ([am.userId isEqualToString: mAccountModel.userId] && [am.loginType isEqualToString:LOGIN_TYPE_SELF]) {
                return;
            }
        }
  
    }
    
    mAccountModel.lastLoginTime = [TyponessHugehood getTimeStamp];
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
    NSMutableArray *mAccountArray = [NSMutableArray arrayWithArray:[self getAccountModels]];//获取保存的数据
    NSMutableArray  *removeList = [NSMutableArray array];

    for (AccountModel *am in mAccountArray) {
        if ([am.loginType isEqualToString:loginType]) {
            [removeList addObject:am];
        }
    }
    if (removeList.count > 0) {
        [mAccountArray removeObjectsInArray:removeList];
        [self saveAccountModels:mAccountArray];
    }
    
}

-(void)removeAccountByUserId:(NSString *) userId
{
    NSMutableArray *mAccountArray = [NSMutableArray arrayWithArray:[self getAccountModels]];//获取保存的数据
    NSMutableArray  *removeList = [NSMutableArray array];

    for (AccountModel *am in mAccountArray) {
        if ([am.userId isEqualToString:userId]) {
            [removeList addObject:am];
        }
    }
    if (removeList.count > 0) {
        [mAccountArray removeObjectsInArray:removeList];
        [self saveAccountModels:mAccountArray];
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

@end
