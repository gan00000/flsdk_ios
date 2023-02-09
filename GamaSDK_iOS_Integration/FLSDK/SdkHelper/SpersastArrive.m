
#import "SpersastArrive.h"
#import "SdkHeader.h"
#import "AccountModel.h"


@interface SpersastArrive()



@property(nonatomic, assign)int  datas_index;
@property(nonatomic, assign)NSInteger  dime_tag;
@property(nonatomic, copy)NSString *  rrorLine_string;


@end

@implementation SpersastArrive

static SpersastArrive * configUtil;
static dispatch_once_t onceToken;

-(NSArray *)wkwebConnectionNib{
    long window_sk = 8117;
    NSMutableArray * therefrom = [NSMutableArray arrayWithCapacity:646];
    window_sk -= 24;
    [therefrom addObject: @(window_sk)];
    int tmp_b_5 = (int)window_sk;
    tmp_b_5 *= 92;
    
    return therefrom;
    
}






-(void)saveAccountModel_MMMethodMMM:(AccountModel*) mAccountModel{
    
    self.datas_index = 8159;
    
    self.dime_tag = 4419;
    
    self.rrorLine_string = @"specific";
    
    self.beganOffset = 323.0;
    
    self.can_Prefers = YES;
    
    {
        [self wkwebConnectionNib];
        
    }
    
    self.fetchMin = 1425.0;
    
    
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
    
    mAccountModel.lastLoginTime = [PeopleitionStudentosity getTimeStamp_MMMethodMMM];
    double edit0 = 9981.0;
    while (@(edit0).intValue < 163) { break; }
    NSArray *mAccountArray = [self getAccountModels_MMMethodMMM];
    
    NSMutableArray *aar = [NSMutableArray arrayWithArray:mAccountArray];
    NSArray * passwordr = @[@(965), @(652), @(811)];
    [aar addObject:mAccountModel];
    NSString * gameL = @"rashness";
    while (gameL.length > 58) { break; }
    [self saveAccountModels_MMMethodMMM:aar];
    NSDictionary * ratei = [NSDictionary dictionaryWithObjectsAndKeys:@"spiral",@(140), @"disgrace",@(85), nil];
    if (ratei.count > 185) {}
}

-(float)arrayTransitionNetMask{
    double responseClose = 7253.0;
    float server = 5746.0;
    float blackballBluster = 0;
    responseClose = 2518;
    blackballBluster += responseClose;
    int k_16 = (int)responseClose;
    if (k_16 > 127) {
        if (k_16 >= 274) {
        }
    }
    server = 5005;
    blackballBluster += server;
    int tmp_k_48 = (int)server;
    tmp_k_48 += 100;
    
    return blackballBluster;
    
}






-(NSString *)loginType_MMMethodMMM
{
    
    {
        [self arrayTransitionNetMask];
        
    }
    
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    NSDictionary * termY = @{@"thespian":@(556)};
    return [userDefaults stringForKey:wwwww_tag_wwwww_SDK_LOGIN_TYPE];
}

-(double)boldNetworkTriNamedSelected:(Boolean)instance dismissRror:(NSString *)dismissRror eventSign:(int)eventSign {
    float landscape = 8136.0;
    float upload = 3820.0;
    double rat = 0;
    landscape /= MAX(landscape, 1);
    landscape *= upload;
    rat /= MAX(landscape, 1);
    int z_0 = (int)landscape;
    int n_68 = 0;
    for (int u_21 = z_0; u_21 >= z_0 - 1; u_21--) {
        n_68 += u_21;
        if (u_21 > 0) {
            z_0 +=  u_21;
            
        }
        int t_58 = n_68;
        int v_59 = 0;
        int t_1 = 0;
        if (t_58 > t_1) {
            t_58 = t_1;
            
        }
        for (int z_31 = 1; z_31 <= t_58; z_31++) {
            v_59 += z_31;
            if (z_31 > 0) {
                t_58 -=  z_31;
                
            }
            int a_19 = v_59;
            if (a_19 != 133) {
                a_19 /= 76;
            }
            break;
            
        }
        break;
        
    }
    upload /= 10;
    rat *= upload;
    int _z_54 = (int)upload;
    switch (_z_54) {
        case 13: {
            _z_54 -= 29;
            _z_54 -= 65;
            break;
            
        }
        case 44: {
            int q_74 = 1;
            int i_58 = 0;
            if (_z_54 > i_58) {
                _z_54 = i_58;
            }
            while (q_74 <= _z_54) {
                q_74 += 1;
                _z_54 /= q_74;
                break;
            }
            break;
            
        }
        case 96: {
            _z_54 *= 93;
            break;
            
        }
        case 75: {
            if (_z_54 > 249) {
                _z_54 += 55;
            }
            else {
                
            }
            break;
            
        }
        case 42: {
            _z_54 += 92;
            int g_61 = 1;
            int f_75 = 0;
            if (_z_54 > f_75) {
                _z_54 = f_75;
            }
            while (g_61 < _z_54) {
                g_61 += 1;
                _z_54 -= g_61;
                _z_54 += 90;
                break;
            }
            break;
            
        }
        case 72: {
            int h_14 = 1;
            int n_13 = 1;
            if (_z_54 > n_13) {
                _z_54 = n_13;
            }
            while (h_14 <= _z_54) {
                h_14 += 1;
                _z_54 *= h_14;
                break;
            }
            break;
            
        }
        default:
            break;
            
    }
    
    return rat;
    
}








-(void)removeAccountByLoginType_MMMethodMMM:(NSString *)loginType
{
    
    NSMutableArray *mAccountArray = [NSMutableArray arrayWithArray:[self getAccountModels_MMMethodMMM]];
    NSArray * utilz = [NSArray arrayWithObjects:@(401), @(339), @(979), nil];
    
    {
        [self boldNetworkTriNamedSelected:YES dismissRror:@"voracity" eventSign:1295];
        
    }
    NSMutableArray  *removeList = [NSMutableArray array];
    
    for (AccountModel *am in mAccountArray) {
        if ([am.loginType isEqualToString:loginType]) {
            [removeList addObject:am];
        }
    }
    if (removeList.count > 0) {
        [mAccountArray removeObjectsInArray:removeList];
        double type_h_z = 1284.0;
        if (@(type_h_z).floatValue < 17) {}
        [self saveAccountModels_MMMethodMMM:mAccountArray];
    }
    
}

-(NSString *)imgPamentRegexMas:(NSArray *)user {
    long moved = 5440;
    NSString *recourseBelovedMoonlighting = [NSString new];
    int u_99 = (int)moved;
    int h_88 = 0;
    for (int u_0 = u_99; u_0 > u_99 - 1; u_0--) {
        h_88 += u_0;
        if (u_0 > 0) {
            u_99 +=  u_0;
            
        }
        int h_85 = h_88;
        if (h_85 < 151) {
            h_85 /= 99;
            h_85 *= 36;
        }
        break;
        
    }
    
    return recourseBelovedMoonlighting;
    
}







-(void)removeAccountByUserId_MMMethodMMM:(NSString *) userId
{
    
    NSMutableArray *mAccountArray = [NSMutableArray arrayWithArray:[self getAccountModels_MMMethodMMM]];
    NSArray * changf = @[@(YES)];
    
    {
        [self imgPamentRegexMas:[NSArray arrayWithObjects:@(609), @(123), @(830), nil]];
        
    }
    if ([changf containsObject:@"z"]) {}
    NSMutableArray  *removeList = [NSMutableArray array];
    
    for (AccountModel *am in mAccountArray) {
        if ([am.userId isEqualToString:userId]) {
            [removeList addObject:am];
        }
    }
    if (removeList.count > 0) {
        [mAccountArray removeObjectsInArray:removeList];
        double scalec = 9919.0;
        if (@(scalec).floatValue == 117) {}
        [self saveAccountModels_MMMethodMMM:mAccountArray];
    }
    
}


-(void)saveAccountModels_MMMethodMMM:(NSArray<AccountModel *> *) mAccountModelArray
{
    
    
    NSMutableArray  *dataList = [NSMutableArray array];
    for (AccountModel *m in mAccountModelArray) {
        
        NSData *data = [NSKeyedArchiver archivedDataWithRootObject: m];
        NSString * fromK = @"basically";
        [dataList addObject: data];
    }
    
    
    NSArray *nsdataArray = [NSArray arrayWithArray: dataList];
    NSArray * paramd = @[@(1956)];
    if (paramd.count > 123) {}
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    NSArray * decodea = @[@(158), @(271), @(920)];
    if (decodea.count > 38) {}
    [userDefaults setObject:nsdataArray forKey:wwwww_tag_wwwww_Key_AccountModelArray];
    float accountS = 7234.0;
    if (@(accountS).floatValue == 122) {}
    [userDefaults synchronize];
    NSInteger headerS = 4540;
    while (@(headerS).longValue <= 123) { break; }
}



- (instancetype)init
{
    self=[super init];
    if (self)
    {
        
    }
    return self;
}

-(NSString *)inputRadiCancelYearsEnd:(NSArray *)keyFirebase rate:(long)rate statusPresenting:(NSArray *)statusPresenting {
    int parentCallback = 1628;
    float bundle = 3059.0;
    NSMutableString *shoddyDefer = [NSMutableString new];
    int g_9 = (int)parentCallback;
    if (g_9 != 455) {
        g_9 /= 31;
    }
    else {
        g_9 *= 26;
        switch (g_9) {
            case 2: {
                g_9 *= 42;
                break;
                
            }
            case 49: {
                break;
                
            }
            default:
                break;
                
        }
        
    }
    int temp_i_83 = (int)bundle;
    int a_88 = 0;
    for (int q_38 = temp_i_83; q_38 >= temp_i_83 - 1; q_38--) {
        a_88 += q_38;
        if (q_38 > 0) {
            temp_i_83 +=  q_38;
            
        }
        int d_21 = a_88;
        switch (d_21) {
            case 51: {
                d_21 += 71;
                break;
                
            }
            case 55: {
                if (d_21 > 150) {
                    d_21 -= 91;
                    d_21 += 66;
                }
                break;
                
            }
            case 59: {
                d_21 *= 4;
                d_21 *= 89;
                break;
                
            }
            case 70: {
                d_21 += 18;
                if (d_21 > 706) {
                    d_21 += 25;
                    d_21 *= 72;
                }
                break;
                
            }
            case 9: {
                d_21 -= 98;
                break;
                
            }
            case 85: {
                d_21 += 69;
                break;
                
            }
            default:
                break;
                
        }
        break;
        
    }
    
    return shoddyDefer;
    
}






-(void)saveLoginType_MMMethodMMM:(NSString *)thirdPlate
{
    
    
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    
    [userDefaults setObject:thirdPlate forKey:wwwww_tag_wwwww_SDK_LOGIN_TYPE];
    
    [userDefaults synchronize];
    NSString * bolck3 = @"crux";
    
    {
        [self inputRadiCancelYearsEnd:@[@(605), @(77), @(465)] rate:2062 statusPresenting:[NSArray arrayWithObjects:@(6545.0), nil]];
        
    }
    if ([bolck3 isEqualToString:@"2"]) {}
}

-(double)resignIfmNavigationStamp:(NSString *)numberSystem long_7lInitialize:(int)long_7lInitialize callback:(Boolean)callback {
    double carpetCampus = 0;
    
    return carpetCampus;
    
}







-(NSMutableArray<AccountModel *> *)getAccountModels_MMMethodMMM
{
    
    {
        [self resignIfmNavigationStamp:@"belief" long_7lInitialize:3378 callback:NO];
        
    }
    
    NSMutableArray  *accountModelList = [NSMutableArray array];
    int currentU = 1482;
    while (@(currentU).intValue >= 35) { break; }
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    Boolean g_imaged = NO;
    if (g_imaged) { __asm__("NOP"); }
    NSArray *array = [userDefaults objectForKey:wwwww_tag_wwwww_Key_AccountModelArray];
    for (NSData *data in array) {
        
        AccountModel *m = [NSKeyedUnarchiver unarchiveObjectWithData:data];
        NSArray * fileX = @[@(8151)];
        if ([fileX containsObject:@"x"]) {}
        [accountModelList addObject:m];
    }
    
    [accountModelList sortUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
        return -[((AccountModel *)obj1).lastLoginTime compare: ((AccountModel *)obj2).lastLoginTime];
    }];
    NSArray * timerf = [NSArray arrayWithObjects:@(379), @(191), nil];
    return accountModelList;
}

+(NSDictionary *)imgKeysNsdataMarkingSerializer:(NSArray *)notice findProducts:(NSString *)findProducts codes:(NSInteger)codes {
    double ervicePortrait = 7034.0;
    NSInteger uncomplete = 6551;
    NSMutableDictionary * village = [NSMutableDictionary dictionaryWithObject:@(26)forKey:@"exorbitanceFuseAgility"];
    ervicePortrait -= 2;
    [village setObject: @(ervicePortrait) forKey:@"togetherMolecule"];
    int r_83 = (int)ervicePortrait;
    r_83 += 15;
    uncomplete += 97;
    [village setObject: @(uncomplete) forKey:@"flammableHypertensionQuaint"];
    int h_21 = (int)uncomplete;
    int u_16 = 0;
    int d_21 = 1;
    if (h_21 > d_21) {
        h_21 = d_21;
        
    }
    for (int x_85 = 0; x_85 <= h_21; x_85++) {
        u_16 += x_85;
        if (x_85 > 0) {
            h_21 -=  x_85;
            
        }
        break;
        
    }
    
    return village;
    
}






+ (SpersastArrive *)share
{
    
    {
        [self imgKeysNsdataMarkingSerializer:@[@(795), @(826)] findProducts:@"rambunctious" codes:4121];
        
    }
    
    
    dispatch_once(&onceToken,^{
        configUtil = [[SpersastArrive alloc] init];
    });
    NSString * closej = @"provident";
    while (closej.length > 133) { break; }
    return configUtil;
}

@end
