

#import "FerrCultural.h"
#import "SdkHeader.h"
#import "TvadeRhigant.h"


@interface FerrCultural()


@end

@implementation FerrCultural

static FerrCultural * configUtil;
static dispatch_once_t onceToken;

+ (FerrCultural *)share
{
    
    dispatch_once(&onceToken,^{
        configUtil = [[FerrCultural alloc] init];
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



-(void)saveAccountModel_MMMethodMMM:(TvadeRhigant*) mAccountModel{
    
    if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_SELF]) {
        
        [self removeAccountByUserId_MMMethodMMM:mAccountModel.userId];
        
    }else{
       
        [self removeAccountByLoginType_MMMethodMMM:mAccountModel.loginType];
        
        NSArray *mAccountArray = [self getAccountModels_MMMethodMMM];
        for (TvadeRhigant *am in mAccountArray) {
            if ([am.userId isEqualToString: mAccountModel.userId] && [am.loginType isEqualToString:LOGIN_TYPE_SELF]) {
                return;
            }
        }
  
    }
    
    mAccountModel.lastLoginTime = [CollectionDoloroant getTimeStamp_MMMethodMMM];
    NSArray *mAccountArray = [self getAccountModels_MMMethodMMM];
    
    NSMutableArray *aar = [NSMutableArray arrayWithArray:mAccountArray];
    [aar addObject:mAccountModel];
    [self saveAccountModels_MMMethodMMM:aar];
}


-(void)removeAccountByLoginType_MMMethodMMM:(NSString *)loginType
{
    NSMutableArray *mAccountArray = [NSMutableArray arrayWithArray:[self getAccountModels_MMMethodMMM]];
    if (!mAccountArray || mAccountArray.count == 0) {
        return;
    }
    NSMutableArray  *removeList = [NSMutableArray array];

    for (TvadeRhigant *am in mAccountArray) {
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
    if (!mAccountArray || mAccountArray.count == 0) {
        return;
    }
    
    NSMutableArray  *removeList = [NSMutableArray array];

    for (TvadeRhigant *am in mAccountArray) {
        if ([am.userId isEqualToString:userId]) {
            [removeList addObject:am];
        }
    }
    if (removeList.count > 0) {
        [mAccountArray removeObjectsInArray:removeList];
        [self saveAccountModels_MMMethodMMM:mAccountArray];
    }
    
}


-(void)saveAccountModels_MMMethodMMM:(NSArray<TvadeRhigant *> *) mAccountModelArray
{
    
    
    
    if (mAccountModelArray) {
        
        NSString *accountJson = [mAccountModelArray yy_modelToJSONString];
        
        NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
        [userDefaults setObject:accountJson forKey:wwwww_tag_wwwww_Key_AccountModelArray];
        [userDefaults synchronize];
        
    }
   
}

-(NSMutableArray<TvadeRhigant *> *)getAccountModels_MMMethodMMM
{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    NSString *accountJson = [userDefaults objectForKey:wwwww_tag_wwwww_Key_AccountModelArray];
    
    NSArray<TvadeRhigant *> *accountModels = [NSArray yy_modelArrayWithClass:[TvadeRhigant class] json:accountJson];
    if (accountModels) {
        NSMutableArray  *accountModelList = [NSMutableArray arrayWithArray:accountModels];
        
        [accountModelList sortUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
            return -[((TvadeRhigant *)obj1).lastLoginTime compare: ((TvadeRhigant *)obj2).lastLoginTime];
        }];
        return accountModelList;
    }
    return  [NSMutableArray array];
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


-(void)saveGameUserInfo_MMMethodMMM:(TrichinoonArchiability *)loginResopnse
{
    if(!loginResopnse || !loginResopnse.data || !loginResopnse.data.userId){
        return;
    }
    if([self getGameUserInfo_MMMethodMMM:loginResopnse.data.userId]){
        return;
    }
    BehaviorenneMediacle *gameUserModel = [[BehaviorenneMediacle alloc] init];
    gameUserModel.userId = loginResopnse.data.userId;
    gameUserModel.regTime = loginResopnse.data.timestamp;
    NSString *userInfoJson = [gameUserModel yy_modelToJSONString];
    
    if(userInfoJson){
        NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
        [userDefaults setObject:userInfoJson forKey:[NSString stringWithFormat:wwwww_tag_wwwww_hysterfier_throughouty, wwwww_tag_wwwww_Key_GameUserMode, loginResopnse.data.userId]];
        [userDefaults synchronize];
    }
    
}

-(void)updateGameUserInfo_MMMethodMMM:(BehaviorenneMediacle *)gameUserModel
{
    if(!gameUserModel || !gameUserModel.userId){
        return;
    }
   
    NSString *userInfoJson = [gameUserModel yy_modelToJSONString];
    if(userInfoJson){
        NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
        [userDefaults setObject:userInfoJson forKey:[NSString stringWithFormat:wwwww_tag_wwwww_hysterfier_throughouty, wwwww_tag_wwwww_Key_GameUserMode, gameUserModel.userId]];
        [userDefaults synchronize];
    }
   
}

-(BehaviorenneMediacle*)getGameUserInfo_MMMethodMMM:(NSString *)userId
{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    NSString *userInfoJson = [userDefaults stringForKey:[NSString stringWithFormat:wwwww_tag_wwwww_hysterfier_throughouty, wwwww_tag_wwwww_Key_GameUserMode, userId]];
    if(userInfoJson){
        BehaviorenneMediacle *gameUserModel = [BehaviorenneMediacle yy_modelWithJSON:userInfoJson];
        return gameUserModel;
    }
    return nil;
}

@end
