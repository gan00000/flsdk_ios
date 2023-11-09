

#import "AatorTrusular.h"
#import "SdkHeader.h"
#import "AccountModel.h"


@interface AatorTrusular()


@end

@implementation AatorTrusular

static AatorTrusular * configUtil;
static dispatch_once_t onceToken;

+ (AatorTrusular *)share
{
    
    dispatch_once(&onceToken,^{
        configUtil = [[AatorTrusular alloc] init];
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



-(void)saveAccountModel_MMMethodMMM:(AccountModel*) mAccountModel{
    
    if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_SELF]) {
        
        [self removeAccountByUserId_MMMethodMMM:mAccountModel.userId];
        
    }else{
       
        [self removeAccountByLoginType_MMMethodMMM:mAccountModel.loginType];
        
        NSArray *mAccountArray = [self getAccountModels_MMMethodMMM];
        for (AccountModel *am in mAccountArray) {
            if ([am.userId isEqualToString: mAccountModel.userId] && [am.loginType isEqualToString:LOGIN_TYPE_SELF]) {
                return;
            }
        }
  
    }
    
    mAccountModel.lastLoginTime = [ArchaeitiveCivilant getTimeStamp_MMMethodMMM];
    NSArray *mAccountArray = [self getAccountModels_MMMethodMMM];
    
    NSMutableArray *aar = [NSMutableArray arrayWithArray:mAccountArray];
    [aar addObject:mAccountModel];
    [self saveAccountModels_MMMethodMMM:aar];
}


-(void)removeAccountByLoginType_MMMethodMMM:(NSString *)loginType
{
    NSMutableArray *mAccountArray = [NSMutableArray arrayWithArray:[self getAccountModels_MMMethodMMM]];
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
    NSMutableArray *mAccountArray = [NSMutableArray arrayWithArray:[self getAccountModels_MMMethodMMM]];
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
    
    NSMutableArray  *dataList = [NSMutableArray array];
    for (AccountModel *m in mAccountModelArray) {
        
        NSData *data = [NSKeyedArchiver archivedDataWithRootObject: m];
        [dataList addObject: data];
    }
    
    
    NSArray *nsdataArray = [NSArray arrayWithArray: dataList];
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults setObject:nsdataArray forKey:wwwww_tag_wwwww_Key_AccountModelArray];
    [userDefaults synchronize];
}

-(NSMutableArray<AccountModel *> *)getAccountModels_MMMethodMMM
{
    NSMutableArray  *accountModelList = [NSMutableArray array];
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    NSArray *array = [userDefaults objectForKey:wwwww_tag_wwwww_Key_AccountModelArray];
    for (NSData *data in array) {
        
        AccountModel *m = [NSKeyedUnarchiver unarchiveObjectWithData:data];
        [accountModelList addObject:m];
    }
    
    [accountModelList sortUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
        return -[((AccountModel *)obj1).lastLoginTime compare: ((AccountModel *)obj2).lastLoginTime];
    }];
    return accountModelList;
}


-(void)saveLoginType_MMMethodMMM:(NSString *)thirdPlate
{
    
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    
    [userDefaults setObject:thirdPlate forKey:wwwww_tag_wwwww_SDK_LOGIN_TYPE];
    
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
    if([self getGameUserInfo_MMMethodMMM:loginResopnse.data.userId]){
        return;
    }
    BringcyDodecite *gameUserModel = [[BringcyDodecite alloc] init];
    gameUserModel.userId = loginResopnse.data.userId;
    gameUserModel.regTime = loginResopnse.data.timestamp;
    NSString *userInfoJson = [gameUserModel yy_modelToJSONString];
    
    if(userInfoJson){
        NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
        [userDefaults setObject:userInfoJson forKey:[NSString stringWithFormat:@"%@_%@", wwwww_tag_wwwww_Key_GameUserMode, loginResopnse.data.userId]];
        [userDefaults synchronize];
    }
    
}

-(void)updateGameUserInfo_MMMethodMMM:(BringcyDodecite *)gameUserModel
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

-(BringcyDodecite*)getGameUserInfo_MMMethodMMM:(NSString *)userId
{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    NSString *userInfoJson = [userDefaults stringForKey:[NSString stringWithFormat:@"%@_%@", wwwww_tag_wwwww_Key_GameUserMode, userId]];
    if(userInfoJson){
        BringcyDodecite *gameUserModel = [BringcyDodecite yy_modelWithJSON:userInfoJson];
        return gameUserModel;
    }
    return nil;
}

@end
