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
        
    }
    return self;
}

//保存一个账号密码，如果存在，则更新，不存在则添加
//-(void)saveAccount:(NSString *) mAccount password_MMMethodMMM:(NSString *) password updateTime:(BOOL) updateTime
//{
//
//    NSArray *mAccountArray = [self getAccountModels_MMMethodMMM];//获取保存的数据
//    for (AccountModel *am in mAccountArray) {
//        if ([am.account isEqualToString:mAccount]) {
//            am.password = password;
//            if (updateTime) {
//                am.lastLoginTime = [SUtil getTimeStamp_MMMethodMMM];
//            }
//            [self saveAccountModels_MMMethodMMM:mAccountArray];
//            return;
//        }
//    }
//    NSMutableArray *aar = [NSMutableArray arrayWithArray:mAccountArray];
//    AccountModel *mAccountModel = [[AccountModel alloc] init];
//    //赋值
//    mAccountModel.lastLoginTime = [SUtil getTimeStamp_MMMethodMMM];
//    mAccountModel.account = mAccount;
//    mAccountModel.password = password;
//    [aar addObject:mAccountModel];
//    [self saveAccountModels_MMMethodMMM:aar];
//
//}


-(void)saveAccountModel_MMMethodMMM:(AccountModel*) mAccountModel{
    
    if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_SELF]) {
        
        [self removeAccountByUserId_MMMethodMMM:mAccountModel.userId];
        
    }else{//第三方
       
        [self removeAccountByLoginType_MMMethodMMM:mAccountModel.loginType];//删除同类型第三方
        
        NSArray *mAccountArray = [self getAccountModels_MMMethodMMM];//获取保存的数据
        for (AccountModel *am in mAccountArray) {
            if ([am.userId isEqualToString: mAccountModel.userId] && [am.loginType isEqualToString:LOGIN_TYPE_SELF]) {
                return;
            }
        }
  
    }
    
    mAccountModel.lastLoginTime = [SUtil getTimeStamp_MMMethodMMM];
    NSArray *mAccountArray = [self getAccountModels_MMMethodMMM];//获取保存的数据
    
    NSMutableArray *aar = [NSMutableArray arrayWithArray:mAccountArray];
    [aar addObject:mAccountModel];
    [self saveAccountModels_MMMethodMMM:aar];
}

//保存一个账号密码，如果存在，则更新，不存在则添加
//-(void)removeAccount:(NSString *) mAccount
//{
//    NSArray *mAccountArray = [self getAccountModels_MMMethodMMM];//获取保存的数据
//    NSMutableArray  *dataList = [NSMutableArray arrayWithArray:mAccountArray];
//    for (AccountModel *am in mAccountArray) {
//        if ([am.account isEqualToString:mAccount]) {
//            [dataList removeObject:am];
//            [self saveAccountModels_MMMethodMMM:dataList];
//            return;
//        }
//    }
//}

//保存一个账号密码，如果存在，则更新，不存在则添加
-(void)removeAccountByLoginType_MMMethodMMM:(NSString *)loginType
{
    NSMutableArray *mAccountArray = [NSMutableArray arrayWithArray:[self getAccountModels_MMMethodMMM]];//获取保存的数据
    NSMutableArray  *removeList = [NSMutableArray array];

    for (AccountModel *am in mAccountArray) {
        if ([am.loginType isEqualToString:loginType]) {
            [removeList addObject:am];
        }
    }
    if (removeList.count > 0) {
        [mAccountArray removeObjectsInArray:removeList];
        [self saveAccountModels_MMMethodMMM:mAccountArray];
    }
    
}

-(void)removeAccountByUserId_MMMethodMMM:(NSString *) userId
{
    NSMutableArray *mAccountArray = [NSMutableArray arrayWithArray:[self getAccountModels_MMMethodMMM]];//获取保存的数据
    NSMutableArray  *removeList = [NSMutableArray array];

    for (AccountModel *am in mAccountArray) {
        if ([am.userId isEqualToString:userId]) {
            [removeList addObject:am];
        }
    }
    if (removeList.count > 0) {
        [mAccountArray removeObjectsInArray:removeList];
        [self saveAccountModels_MMMethodMMM:mAccountArray];
    }
    
}


-(void)saveAccountModels_MMMethodMMM:(NSArray<AccountModel *> *) mAccountModelArray
{
    
//    NSMutableArray  *dataList = [NSMutableArray array];
//    for (AccountModel *m in mAccountModelArray) {
//        //存储到NSUserDefaults
//        NSData *data = [NSKeyedArchiver archivedDataWithRootObject: m];
//        [dataList addObject: data];
//    }
//
//    //转为不可变数组才能保存
//    NSArray *nsdataArray = [NSArray arrayWithArray: dataList];
//    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
//    [userDefaults setObject:nsdataArray forKey:wwwww_tag_wwwww_Key_AccountModelArray];
//    [userDefaults synchronize];
    
    if (mAccountModelArray) {//使用json存储
        //改为json存储记录
        NSString *accountJson = [mAccountModelArray yy_modelToJSONString];
        
        NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
        [userDefaults setObject:accountJson forKey:wwwww_tag_wwwww_Key_AccountModelArray_Json];
        [userDefaults synchronize];
        
    }
}

//Terminating app due to uncaught exception 'NSInvalidUnarchiveOperationException', reason: '*** -[NSKeyedUnarchiver decodeObjectForKey:]: cannot decode object of class (PDBCommonEgryprovideture) for key (root) because no class named "PDBCommonEgryprovideture" was found; the class needs to be defined in source code or linked in from a library (ensure the class is part of the correct target). If the class was renamed, use setClassName:forClass: to add a class translation mapping to NSKeyedUnarchiver'
-(NSMutableArray<AccountModel *> *)getAccountModels_MMMethodMMM
{
    
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    NSString *accountJson = [userDefaults objectForKey:wwwww_tag_wwwww_Key_AccountModelArray_Json];
    
    if (accountJson && [StringUtil isNotEmpty_MMMethodMMM:accountJson]) {//使用json存储
        
        NSArray<AccountModel *> *accountModels = [NSArray yy_modelArrayWithClass:[AccountModel class] json:accountJson];
        if (accountModels) {
            NSMutableArray  *accountModelList = [NSMutableArray arrayWithArray:accountModels];
            //根据创建时间排序
            [accountModelList sortUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
                return -[((AccountModel *)obj1).lastLoginTime compare: ((AccountModel *)obj2).lastLoginTime];
            }];
            return accountModelList;
        }
        return  [NSMutableArray array];
    }
    
    //此处兼容之前的存储方式
    NSMutableArray  *accountModelList = [NSMutableArray array];
    //NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    NSArray *array = [userDefaults objectForKey:wwwww_tag_wwwww_Key_AccountModelArray];
    for (NSData *data in array) {
        //开启混淆的话，名字不一样会报错
        AccountModel *m = [NSKeyedUnarchiver unarchiveObjectWithData:data];
        [accountModelList addObject:m];
    }
    //根据创建时间排序
    [accountModelList sortUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
        return -[((AccountModel *)obj1).lastLoginTime compare: ((AccountModel *)obj2).lastLoginTime];
    }];
    return accountModelList;
}


-(void)saveLoginType_MMMethodMMM:(NSString *)thirdPlate
{
    
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    // 1、写入
    [userDefaults setObject:thirdPlate forKey:wwwww_tag_wwwww_SDK_LOGIN_TYPE];
    // 强制写入
    [userDefaults synchronize];
}

-(NSString *)loginType_MMMethodMMM
{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    return [userDefaults stringForKey:wwwww_tag_wwwww_SDK_LOGIN_TYPE];
}


-(void)saveGameUserInfo_MMMethodMMM:(LoginResponse *)loginResopnse
{
    if(!loginResopnse || !loginResopnse.data || !loginResopnse.data.userId){
        return;
    }
    if([self getGameUserInfo_MMMethodMMM:loginResopnse.data.userId]){//已保存，存在
        return;
    }
    GameUserModel *gameUserModel = [[GameUserModel alloc] init];
    gameUserModel.userId = loginResopnse.data.userId;
    gameUserModel.regTime = loginResopnse.data.timestamp;
    NSString *userInfoJson = [gameUserModel yy_modelToJSONString];
    
    if(userInfoJson){
        NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
        [userDefaults setObject:userInfoJson forKey:[NSString stringWithFormat:@"%@_%@", wwwww_tag_wwwww_Key_GameUserMode, loginResopnse.data.userId]];
        [userDefaults synchronize];
    }
    
}

-(void)updateGameUserInfo_MMMethodMMM:(GameUserModel *)gameUserModel
{
    if(!gameUserModel || !gameUserModel.userId){
        return;
    }
   
    NSString *userInfoJson = [gameUserModel yy_modelToJSONString];
    if(userInfoJson){
        NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
        [userDefaults setObject:userInfoJson forKey:[NSString stringWithFormat:@"%@_%@", wwwww_tag_wwwww_Key_GameUserMode, gameUserModel.userId]];
        [userDefaults synchronize];
    }
   
}

-(GameUserModel*)getGameUserInfo_MMMethodMMM:(NSString *)userId
{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    NSString *userInfoJson = [userDefaults stringForKey:[NSString stringWithFormat:@"%@_%@", wwwww_tag_wwwww_Key_GameUserMode, userId]];
    if(userInfoJson){
        GameUserModel *gameUserModel = [GameUserModel yy_modelWithJSON:userInfoJson];
        return gameUserModel;
    }
    return nil;
}

@end
