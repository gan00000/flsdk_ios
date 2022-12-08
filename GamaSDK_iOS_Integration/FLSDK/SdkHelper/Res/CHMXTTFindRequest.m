
#import <malloc/malloc.h>
#import <objc/runtime.h>
#import "CHMXTTFindRequest.h"
#import "ResHeader.h"
#import "SdkHeader.h"
#import "CHMXTTImpl.h"
#import "CHMXTTBlock.h"
#import "MWSDK.h"

@interface CHMXTTFindRequest ()

@property(nonatomic, assign)Boolean  type__;
@property(nonatomic, assign)float  ervice_min;
@property(nonatomic, assign)NSInteger  name_mark;
@property(nonatomic, assign)double  r_center;


@property (nonatomic, copy) NSString *third;
@property (nonatomic, strong) NSBundle *helper;
@end

@implementation CHMXTTFindRequest

static CHMXTTFindRequest * coreReader;
static dispatch_once_t onceToken;

-(double)startLocalizableCfuuidTable:(long)block cancelCount:(int)cancelCount page:(Boolean)page {
     long pesentingNotice = 5536;
    double popular = 0;
    pesentingNotice += 31;
    popular += pesentingNotice;
         int temp_r_82 = (int)pesentingNotice;
     int w_37 = 1;
     int w_41 = 1;
     if (temp_r_82 > w_41) {
         temp_r_82 = w_41;
     }
     while (w_37 <= temp_r_82) {
         w_37 += 1;
     int b_71 = w_37;
          int p_1 = 1;
     int y_64 = 1;
     if (b_71 > y_64) {
         b_71 = y_64;
     }
     while (p_1 <= b_71) {
         p_1 += 1;
          b_71 /= p_1;
     int b_69 = p_1;
              break;
     }
         break;
     }

    return popular;

}







- (NSString *)getSdkConfigInfoName_MMMethodMMM
{

         {
    [self startLocalizableCfuuidTable:1083 cancelCount:3815 page:NO];

}

    return [[self getSdkBaseEncryptKey_MMMethodMMM] stringByReplacingOccurrencesOfString:@"." withString:@"_"];
}



- (instancetype)init
{
    self=[super init];
    if (self)
    {
        SDK_LOG(@"reader init");
        
        [self setBundleInfo_MMMethodMMM];
            double interruptL = 3475.0;
             for(NSInteger interruptL_idx = 78; interruptL_idx < @(interruptL).intValue; interruptL_idx--) { break; } 
        [self logSdkResConfig_MMMethodMMM];
    }
    return self;
}

-(int)strlenInterfaceArry:(NSArray *)fileSecurity {
     double activeWeb = 8504.0;
    int attachFloor = 0;
    activeWeb = activeWeb;
    attachFloor *= activeWeb;
         int _h_68 = (int)activeWeb;
     if (_h_68 >= 319) {
          int d_27 = 0;
     int c_67 = 1;
     if (_h_68 > c_67) {
         _h_68 = c_67;

     }
     for (int q_43 = 0; q_43 < _h_68; q_43++) {
         d_27 += q_43;
     int f_14 = d_27;
          if (f_14 < 469) {
          f_14 *= 63;
          }
         break;

     }
     }

    return attachFloor;

}







-(NSDictionary *)readMainBundleCoreConfInfo_MMMethodMMM
{

    SDK_LOG(@"======================readMainBundleCoreConfInfo start =================");
    
    NSString *efault = [self getSdkConfigInfoName_MMMethodMMM];
    
    NSDictionary *main_l = [self getEncryptFileAndEncryptContentWithBundle_MMMethodMMM:[NSBundle mainBundle] name_MMMethodMMM:efault ofType_MMMethodMMM:@"txt"];
    
    if(main_l){
        return main_l;

         {
    [self strlenInterfaceArry:@[@(515), @(192)]];

}
    }
    
    NSString *vip = [[NSBundle mainBundle] pathForResource:efault ofType:@"plist"];
    
    if (vip) {
        NSDictionary * ecoding=[NSDictionary dictionaryWithContentsOfFile:vip];
        if (ecoding) {
            return ecoding;
        }
    }
    return nil;
}

#pragma mark -获取sdk bundle文件路径，不存在返回nil

-(double)containerButtonProductsFailure:(NSArray *)user {
    double cooperate = 0;

    return cooperate;

}





-(BOOL)isMoreLanguage_MMMethodMMM
{

         {
    [self containerButtonProductsFailure:@[@(231), @(340)]];

}

    return [self getBoolForKey_MMMethodMMM:@"sdk_more_language"];
}

#pragma mark -手机区号信息

-(double)sdkServerAdding:(Boolean)implDatas {
     int upload = 9684;
    double bitterly = 0;
    upload = 7259;
    bitterly *= upload;
         int e_24 = (int)upload;
     e_24 *= 92;

    return bitterly;

}





-(NSString *)getLocalizedStringForKey_MMMethodMMM:(NSString *)key
{

         {
    [self sdkServerAdding:YES];

}

    NSString *pple = [NSString stringWithFormat:@"%@",[self.textStringDic objectForKey:key]];
    if (pple){
        return pple;
    }
    return NSLocalizedStringFromTableInBundle(key, _third, _helper, nil);
}

#pragma mark -配置属性信息

- (NSMutableArray *)areaInfoArray
{
    if(!_areaInfoArray){
        _areaInfoArray = [NSMutableArray array];
        
        NSArray *report = [self getEncryptFileAndEncryptContentWithBundle_MMMethodMMM:[self getMySdkBundle_MMMethodMMM] name_MMMethodMMM:@"areaInfo" ofType_MMMethodMMM:@"txt"];
        if (report) {
            [_areaInfoArray addObjectsFromArray:report];
        }
    }
    return _areaInfoArray;
}

-(Boolean)logBodyWithproductSchemes{
    BOOL ovation = NO;

    return ovation;

}






-(NSString *)getAfDevKey_MMMethodMMM
{

         {
    [self logBodyWithproductSchemes];

}

    return [self getStringForKey_MMMethodMMM:@"af_dev_key"];
}

#pragma mark -从main bundle配置文件中读取配置信息

-(NSArray *)receiptFacebookAccountCreate:(float)service editing:(NSString *)editing {
     int save = 1660;
     double alert = 5863.0;
    NSMutableArray * espouse = [NSMutableArray array];
save = MAX(save, 1);
    [espouse addObject: @(save)];
         int f_20 = (int)save;
     switch (f_20) {
          case 100: {
          int q_37 = 1;
     int f_74 = 1;
     if (f_20 > f_74) {
         f_20 = f_74;
     }
     while (q_37 < f_20) {
         q_37 += 1;
          f_20 *= q_37;
         break;
     }
             break;

     }
          case 98: {
          if (f_20 != 177) {
          f_20 *= 22;
          }
     else {
          f_20 -= 70;

     }
             break;

     }
          case 8: {
          f_20 *= 18;
             break;

     }
          case 36: {
          int l_15 = 1;
     int z_19 = 0;
     if (f_20 > z_19) {
         f_20 = z_19;
     }
     while (l_15 < f_20) {
         l_15 += 1;
     int a_92 = l_15;
              break;
     }
             break;

     }
          case 52: {
          f_20 += 73;
          int n_84 = 1;
     int c_62 = 1;
     if (f_20 > c_62) {
         f_20 = c_62;
     }
     while (n_84 < f_20) {
         n_84 += 1;
          f_20 -= n_84;
     int d_84 = n_84;
          if (d_84 != 592) {
          d_84 /= 75;
          d_84 += 39;
     }
         break;
     }
             break;

     }
          case 74: {
          f_20 *= 53;
          int c_28 = 0;
     int b_56 = 1;
     if (f_20 > b_56) {
         f_20 = b_56;

     }
     for (int w_63 = 0; w_63 <= f_20; w_63++) {
         c_28 += w_63;
          if (w_63 > 0) {
          f_20 -=  w_63;

     }
              break;

     }
             break;

     }
     default:
         break;

     }
    alert = 1285;
    [espouse addObject: @(alert)];
         int tmp_i_79 = (int)alert;
     int f_1 = 0;
     int d_53 = 1;
     if (tmp_i_79 > d_53) {
         tmp_i_79 = d_53;

     }
     for (int f_87 = 0; f_87 <= tmp_i_79; f_87++) {
         f_1 += f_87;
          if (f_87 > 0) {
          tmp_i_79 -=  f_87;

     }
     int r_59 = f_1;
          int c_99 = 0;
     int w_14 = 0;
     if (r_59 > w_14) {
         r_59 = w_14;

     }
     for (int w_15 = 0; w_15 <= r_59; w_15++) {
         c_99 += w_15;
     int s_2 = c_99;
          if (s_2 >= 291) {
          }
         break;

     }
         break;

     }

    return espouse;

}





-(id)getEncryptFileAndEncryptContentWithBundle_MMMethodMMM:(NSBundle *)bundle name_MMMethodMMM:(nullable NSString *)name ofType_MMMethodMMM:(nullable NSString *)type
{

    NSString *total = [self getMd5ResFileName_MMMethodMMM:name];
            double controllerP = 8179.0;

         {
    [self receiptFacebookAccountCreate:2315.0 editing:@"brooch"];

}
             while (@(controllerP).intValue < 54) { break; }
    SDK_LOG(@"md5EncryptFileName=%@",total);
            NSDictionary * prefersf = @{@"leopard":[NSArray arrayWithObjects:@[@"sustain", @"thaw", @"squat"], nil]};
             if (prefersf.count > 27) {}
    NSString *prefers = [bundle pathForResource:total ofType:type];
    
    if(prefers){
        
        NSData *current = [[NSData alloc] initWithContentsOfFile:prefers];
            NSArray * sheetJ = [NSArray arrayWithObjects:@[@(733), @(833)], nil];
             while (sheetJ.count > 189) { break; }
        NSString *h_height = [[NSString alloc] initWithData:current encoding:NSUTF8StringEncoding];
            NSString * modeI = @"torture";
             while (modeI.length > 46) { break; }
        NSString * params = [self decryptContent_MMMethodMMM:h_height];
            NSDictionary * landspacea = [NSDictionary dictionaryWithObjectsAndKeys:@"disposed",@(248), nil];
        SDK_LOG(@"textEncrypContent =%@,params=%@",h_height,params);
        if(params){
            NSData *apple = [params dataUsingEncoding:NSUTF8StringEncoding];
            
            NSError *authtication = nil;
            NSString * enginea = @"aspiration";
             if (enginea.length > 13) {}
            id keychain = [NSJSONSerialization JSONObjectWithData:apple options:kNilOptions error:&authtication];
            return keychain;
        }
    }
    return nil;
}


#pragma mark - 获取某个key对应的确定的配置值

-(NSString *)getsdkLanguage_MMMethodMMM
{

    return [self getStringForKey_MMMethodMMM:@"sdk_language"];
}


-(NSMutableDictionary *)textStringDic
{
    if(!_textStringDic){
        _textStringDic = [NSMutableDictionary dictionary];
        
        NSString *current9 = [self getsdkLanguage_MMMethodMMM];
        
        if ([self isMoreLanguage_MMMethodMMM]) {
            
            NSString *status = [[NSLocale preferredLanguages] firstObject];
            if ([status hasPrefix:@"zh-Hans"]) {
                
                current9 = @"zh-Hans";
                
            }else if ([status hasPrefix:@"zh-Hant"]){
                current9 = @"zh-Hant";
            }else if ([status hasPrefix:@"en"]){
                current9 = @"en";
            }
        }
        NSDictionary *payment_y = [self getEncryptFileAndEncryptContentWithBundle_MMMethodMMM:[self getMySdkBundle_MMMethodMMM] name_MMMethodMMM:current9 ofType_MMMethodMMM:@"txt"];
        if(payment_y){
            [_textStringDic addEntriesFromDictionary:payment_y];
        }
    }
    return _textStringDic;

}

-(NSArray *)configLeadingSafeHantObserverAdding{
    NSMutableArray * markVegetateDeadpan = [[NSMutableArray alloc] init];

    return markVegetateDeadpan;

}






- (void)logSdkResConfig_MMMethodMMM {

    
    NSArray *k_image = @[@"zh-Hant",@"zh-Hans",@"en", @"areaInfo"];
    for (NSString *languageStr in k_image) {
        
        NSString *number = [self getSdkBundleFilePath_MMMethodMMM:languageStr ofType_MMMethodMMM:@"json"];
        if (number){
            NSData *currentL = [[NSData alloc] initWithContentsOfFile:number];

         {
    [self configLeadingSafeHantObserverAdding];

}
            NSDictionary * auto_jA = @{@"bottleneck":@(426)};
             if (auto_jA[@"q"]) {}
            NSString *connected = [[NSString alloc] initWithData:currentL encoding:NSUTF8StringEncoding];
            NSString * filedb = @"wallet";
             if ([filedb isEqualToString:@"C"]) {}
            NSString * handler = [self encryptContent_MMMethodMMM:connected];
            
            
            NSString * totalD = [self getMd5ResFileName_MMMethodMMM:languageStr];
            
            SDK_LOG(@"languageStr=%@,totalD=%@,handler=%@",languageStr,totalD,handler);
        }else{
            SDK_LOG(@"file not find : %@.json", languageStr);
        }
    }
    
    NSString *elegate = [self getSdkConfigInfoName_MMMethodMMM];
            NSDictionary * levelu = [NSDictionary dictionaryWithObjectsAndKeys:@"assembly",@(738), nil];
             while (levelu.count > 40) { break; }
    NSString *order = [[NSBundle mainBundle] pathForResource:elegate ofType:@"json"];
    
    if (order) {
        NSData *currentL = [[NSData alloc] initWithContentsOfFile:order];
            NSArray * moditys = [NSArray arrayWithObjects:@(720), @(302), nil];
             while (moditys.count > 134) { break; }
        NSString *connected = [[NSString alloc] initWithData:currentL encoding:NSUTF8StringEncoding];
            NSArray * buttonr = @[@(333), @(142)];
             if (buttonr.count > 42) {}
        NSString * handler = [self encryptContent_MMMethodMMM:connected];
            double gestureS = 9908.0;
             if (@(gestureS).longValue == 93) {}
        NSString * totalD = [self getMd5ResFileName_MMMethodMMM:elegate];
            NSArray * interfaceN = @[@(333), @(175), @(126)];
             if (interfaceN.count > 167) {}
        SDK_LOG(@"configInfoName=%@,totalD=%@,handler=%@",elegate,totalD,handler);
    }else{
        SDK_LOG(@"file not find : %@.json", elegate);
    }
}


#pragma mark - 设置一个名称获取该文件名称拼接bundleId后的md5名称（用于混淆文件名防止被关联）

-(NSInteger)firstFailLegthRate{
     NSInteger become = 6466;
    NSInteger guidanceEssayist = 0;
    become = 6209;
    guidanceEssayist += become;
         int _i_65 = (int)become;
     if (_i_65 == 111) {
          int r_2 = 0;
     for (int z_66 = _i_65; z_66 > _i_65 - 1; z_66--) {
         r_2 += z_66;
          _i_65 += z_66;
         break;

     }
     }

    return guidanceEssayist;

}





- (void)setBundleInfo_MMMethodMMM {


    NSString *current96 = [self getsdkLanguage_MMMethodMMM];
    
    if ([self isMoreLanguage_MMMethodMMM]) {
        
        NSString *statusZ = [[NSLocale preferredLanguages] firstObject];
        if ([statusZ hasPrefix:@"zh-Hans"]) {
            
            current96 = @"zh-Hans";

         {
    [self firstFailLegthRate];

}
            
        }else if ([statusZ hasPrefix:@"zh-Hant"]){
            current96 = @"zh-Hant";
        }else if ([statusZ hasPrefix:@"en"]){
            current96 = @"en";
        }
    }
    
    self.helper = [NSBundle mainBundle];
            NSArray * expressionB = [NSArray arrayWithObjects:@[@(65), @(788)], nil];
             if ([expressionB containsObject:@"L"]) {}
    self.third = @"Localizable";

    NSBundle *g_image = [self getMySdkBundle_MMMethodMMM];
    if (g_image) {

        self.helper = g_image;
        
        NSURL *debug = [g_image URLForResource:current96 withExtension:@"lproj"];

        if (debug) {
            self.helper = [NSBundle bundleWithURL:debug];
            
        }
    }
}

#pragma mark - 加密内容

-(NSString *)fetchContractSysEncryp:(double)i_bounds backScreen:(NSDictionary *)backScreen configHeader:(NSArray *)configHeader {
     NSInteger versionPerssion = 1388;
    NSMutableString *subliminalTerminateUsefulness = [NSMutableString string];
         int a_18 = (int)versionPerssion;
     a_18 *= 81;

    return subliminalTerminateUsefulness;

}





-(BOOL)isAdDebug_MMMethodMMM
{

         {
    [self fetchContractSysEncryp:7250.0 backScreen:@{@"ferry":@(360), @"rewarding":@(311), @"interruption":@(383)} configHeader:@[@"debut", @"brighten", @"blunder"]];

}

    return [self getBoolForKey_MMMethodMMM:@"sdk_ad_bug"];
}
#pragma mark - 解密内容

-(long)saveOptionOptionsLaunching:(NSArray *)models {
    long persuadeClearAdverse = 0;

    return persuadeClearAdverse;

}





- (NSString *)getServerLanguage_MMMethodMMM{

    
    NSString *current9F = @"";
    if ([self isMoreLanguage_MMMethodMMM]) {
        
        NSString *statusl = [[NSLocale preferredLanguages] firstObject];
        if ([statusl hasPrefix:@"zh-Hans"]) {
            
            current9F = @"zh_CN";

         {
    [self saveOptionOptionsLaunching:[NSArray arrayWithObjects:@(651), @(861), @(530), nil]];

}
            
        }else if ([statusl hasPrefix:@"zh-Hant"]){
            current9F = @"zh_TW";
            
        }else if ([statusl hasPrefix:@"en"]){
            current9F = @"en_US";
        }
    }
    if ([CHMXTTImplGama isNotEmpty_MMMethodMMM:current9F]) {
        return current9F;
    }
    
    if ([CHMXTTImplGama isNotEmpty_MMMethodMMM:[self getStringForKey_MMMethodMMM:@"gameLanguage"]]) {
        return [self getStringForKey_MMMethodMMM:@"gameLanguage"];
    }
    return @"zh_TW";

}


#pragma mark - 打印配置文件加密内容

-(int)appendPlatformHave{
     double indicator = 6029.0;
    int enjoyMortification = 0;
    indicator += indicator;
    enjoyMortification -= indicator;
         int _r_42 = (int)indicator;
     switch (_r_42) {
          case 2: {
          _r_42 /= 32;
          if (_r_42 >= 142) {
          _r_42 -= 29;
          if (_r_42 < 474) {
          _r_42 /= 74;
          }
     }
             break;

     }
          case 30: {
          _r_42 /= 87;
          int e_100 = 1;
     int i_40 = 0;
     if (_r_42 > i_40) {
         _r_42 = i_40;
     }
     while (e_100 <= _r_42) {
         e_100 += 1;
          _r_42 /= e_100;
              break;
     }
             break;

     }
          case 65: {
          int c_47 = 0;
     for (int s_79 = _r_42; s_79 >= _r_42 - 1; s_79--) {
         c_47 += s_79;
     int e_74 = c_47;
          if (e_74 != 264) {
          e_74 *= 27;
          e_74 -= 39;
     }
         break;

     }
             break;

     }
          case 100: {
          _r_42 *= 76;
             break;

     }
          case 16: {
          if (_r_42 >= 413) {
          _r_42 /= 18;
          _r_42 += 8;
     }
             break;

     }
     default:
         break;

     }

    return enjoyMortification;

}





-(NSString *)getPayUrl_MMMethodMMM
{

   self.type__ = YES;

   self.ervice_min = 794.0;

         {
    [self appendPlatformHave];

}

   self.name_mark = 7270;

   self.r_center = 3512.0;

   self.responceMark = 4509;

   self.param_size = 3595.0;

   self.wedth_padding = 106.0;

   self.return_54 = 1704;

    return [self getStringForKey_MMMethodMMM:@"sdk_url_pay"];
}

#pragma mark - 初始化加密json文本

-(float)standardBindGameTrailingClaimisticLast:(int)landspace forgot:(Boolean)forgot {
     double updata = 1892.0;
     double filedBegin = 5581.0;
    float viral = 0;
    updata /= MAX(updata, 1);
    viral -= updata;
         int temp_m_30 = (int)updata;
     temp_m_30 -= 19;
    filedBegin = 6673;
    viral *= filedBegin;
         int tmp_v_97 = (int)filedBegin;
     int g_13 = 0;
     for (int v_49 = tmp_v_97; v_49 > tmp_v_97 - 1; v_49--) {
         g_13 += v_49;
          if (v_49 > 0) {
          tmp_v_97 +=  v_49;

     }
     int e_73 = g_13;
          int i_43 = 1;
     int r_18 = 0;
     if (e_73 > r_18) {
         e_73 = r_18;
     }
     while (i_43 <= e_73) {
         i_43 += 1;
     int o_55 = i_43;
          switch (o_55) {
          case 63: {
          o_55 -= 82;
          o_55 /= 9;
             break;

     }
          case 35: {
          o_55 -= 36;
          o_55 *= 52;
             break;

     }
          case 20: {
          o_55 /= 25;
          o_55 /= 30;
             break;

     }
          case 27: {
          o_55 -= 47;
          o_55 += 15;
             break;

     }
          case 72: {
          o_55 /= 65;
                  break;

     }
          case 38: {
          o_55 /= 7;
          o_55 += 63;
             break;

     }
          case 15: {
          o_55 -= 47;
                  break;

     }
          case 86: {
          o_55 -= 42;
                  break;

     }
          case 26: {
          o_55 /= 48;
             break;

     }
     default:
         break;

     }
         break;
     }
         break;

     }

    return viral;

}





-(NSString *)getStringForKey_MMMethodMMM:(NSString *)key
{

         {
    [self standardBindGameTrailingClaimisticLast:6229 forgot:NO];

}

    id elegatej = [self.mySdkConfDic objectForKey:key];
    if (elegatej) {
        return [NSString stringWithFormat:@"%@", elegatej];
    }
    return nil;
}

#pragma mark - 获取加密的文件名中的加密josn内容，返回NSDictionary，文件名加密规则 getMd5ResFileName,优先从sdkBundle获取

-(NSString *)getTermsServiceUrl_MMMethodMMM
{

    return [self getStringForKey_MMMethodMMM:@"terms_service_url"];
}


#pragma mark - 初始化 Bundle

-(double)containerHoplifyLinkAllow:(double)press {
     int encoding = 8633;
    double laborerInhibition = 0;
    encoding = encoding;
    laborerInhibition -= encoding;
         int _e_13 = (int)encoding;
     switch (_e_13) {
          case 15: {
          _e_13 *= 58;
          _e_13 *= 4;
             break;

     }
          case 75: {
          _e_13 -= 58;
          if (_e_13 > 68) {
          _e_13 /= 62;
          switch (_e_13) {
          case 8: {
                  break;

     }
          case 80: {
                  break;

     }
          case 70: {
          _e_13 -= 72;
             break;

     }
          case 40: {
                  break;

     }
          case 79: {
          _e_13 /= 28;
                  break;

     }
          case 35: {
          _e_13 *= 50;
                  break;

     }
          case 13: {
          _e_13 -= 48;
                  break;

     }
          case 50: {
                  break;

     }
          case 21: {
          _e_13 /= 84;
          _e_13 -= 100;
             break;

     }
     default:
         break;

     }
     }
             break;

     }
          case 52: {
          _e_13 /= 69;
          if (_e_13 == 256) {
          switch (_e_13) {
          case 57: {
                  break;

     }
          case 50: {
          _e_13 *= 26;
                  break;

     }
     default:
         break;

     }
     }
             break;

     }
          case 29: {
          _e_13 -= 29;
          _e_13 -= 43;
             break;

     }
          case 89: {
          _e_13 /= 31;
          int f_28 = 1;
     int o_99 = 1;
     if (_e_13 > o_99) {
         _e_13 = o_99;
     }
     while (f_28 < _e_13) {
         f_28 += 1;
     int x_83 = f_28;
          switch (x_83) {
          case 78: {
          x_83 -= 11;
                  break;

     }
          case 100: {
          x_83 -= 6;
                  break;

     }
          case 53: {
                  break;

     }
          case 1: {
          x_83 += 81;
             break;

     }
          case 85: {
                  break;

     }
          case 99: {
                  break;

     }
          case 83: {
          x_83 += 84;
          x_83 /= 12;
             break;

     }
          case 72: {
                  break;

     }
     default:
         break;

     }
         break;
     }
             break;

     }
     default:
         break;

     }

    return laborerInhibition;

}





-(NSString *)getLoginUrl_MMMethodMMM
{

         {
    [self containerHoplifyLinkAllow:8567.0];

}

    return [self getStringForKey_MMMethodMMM:@"sdk_url_login"];
}


#pragma mark - 获取配置文件对应的key内容

-(NSDictionary *)convertHintTotalAppKit:(NSString *)heightLocal__k jsonTerm:(NSArray *)jsonTerm {
     long with_aDisappear = 7882;
    NSMutableDictionary * vantageNearlyImpotent = [NSMutableDictionary dictionary];
    with_aDisappear = 2223;
    [vantageNearlyImpotent setObject: @(with_aDisappear) forKey:@"sordid"];
         int tmp_b_75 = (int)with_aDisappear;
     switch (tmp_b_75) {
          case 45: {
          tmp_b_75 += 71;
             break;

     }
          case 19: {
          tmp_b_75 += 68;
          if (tmp_b_75 == 909) {
          }
             break;

     }
          case 47: {
          tmp_b_75 += 12;
          tmp_b_75 /= 43;
             break;

     }
          case 15: {
          tmp_b_75 *= 54;
             break;

     }
          case 88: {
          tmp_b_75 -= 80;
             break;

     }
          case 50: {
          tmp_b_75 -= 84;
          tmp_b_75 += 69;
             break;

     }
          case 53: {
          int x_54 = 1;
     int s_64 = 1;
     if (tmp_b_75 > s_64) {
         tmp_b_75 = s_64;
     }
     while (x_54 < tmp_b_75) {
         x_54 += 1;
          tmp_b_75 -= x_54;
     int s_81 = x_54;
              break;
     }
             break;

     }
          case 73: {
          tmp_b_75 += 15;
             break;

     }
     default:
         break;

     }

    return vantageNearlyImpotent;

}





- (NSString *)getSdkBundleFilePath_MMMethodMMM:(nullable NSString *)name ofType_MMMethodMMM:(nullable NSString *)ext
{

    NSBundle *g_imageM = [self getMySdkBundle_MMMethodMMM];
    if (g_imageM) {
        return [g_imageM pathForResource:name ofType:ext];

         {
    [self convertHintTotalAppKit:@"stowage" jsonTerm:@[@(975), @(313)]];

}
    }
    return nil;
}

-(NSString *)postParentPattern:(long)appear lable:(int)lable {
     long coreTimes = 4024;
    NSString *pinchIntoMotorcar = [NSString new];
         int q_17 = (int)coreTimes;
     if (q_17 > 51) {
          if (q_17 != 807) {
          }
     }

    return pinchIntoMotorcar;

}





-(NSString *)getGameLanguage_MMMethodMMM
{

         {
    [self postParentPattern:3486 lable:5100];

}

    
    return [self getServerLanguage_MMMethodMMM];
}

-(NSString *)getLogUrl_MMMethodMMM
{

    return [self getStringForKey_MMMethodMMM:@"sdk_url_log"];
}


- (NSBundle *)getMySdkBundle_MMMethodMMM
{

    NSURL *will = [[NSBundle mainBundle] URLForResource:[self getSdkBundleName_MMMethodMMM] withExtension:@"bundle"];
            NSInteger failV = 2095;
             if (@(failV).longLongValue >= 141) {}
    NSBundle *g_imagea = nil;
    if (will) {
        g_imagea = [NSBundle bundleWithURL:will];
    }
    return g_imagea;
}



- (NSString *)getMd5ResFileName_MMMethodMMM:(NSString *)originalName {

    NSString *private_j = [NSString stringWithFormat:@"%@-%@",[self getSdkBaseEncryptKey_MMMethodMMM],originalName];
            NSInteger window_2kY = 2921;
             if (@(window_2kY).intValue <= 192) {}
    NSString *totalB = [CHMXTTBlock getMD5StrFromString_MMMethodMMM:private_j];
            NSArray * openf = @[@(447), @(346)];
             if ([openf containsObject:@"a"]) {}
    return totalB;
}

-(NSDictionary *)dropMasonryFailure:(Boolean)homeLocalx account:(long)account reader:(NSString *)reader {
    NSMutableDictionary * sixtyWarnFacetious = [NSMutableDictionary dictionaryWithCapacity:899];

    return sixtyWarnFacetious;

}






- (NSString *)decryptContent_MMMethodMMM:(NSString *)textEncrypContent {

         {
    [self dropMasonryFailure:YES account:4837 reader:@"disaffected"];

}

    NSString *localized = STRING_COMBIN([self getSdkEncryptKey_MMMethodMMM], @"KEY");
            NSInteger totalS = 605;
             if (@(totalS).longValue >= 16) {}
    NSString *webView = STRING_COMBIN([self getSdkEncryptKey_MMMethodMMM], @"IV");
            NSDictionary * loginH = [NSDictionary dictionaryWithObjectsAndKeys:@"select",@(858), @"relocate",@(137), nil];
             if (loginH.count > 133) {}
    SDK_LOG(@"decryptContent localized=%@,webView=%@",localized,webView);
    
    textEncrypContent = [textEncrypContent stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    
    NSString *paramsi = [CHMXTTImpl getDecryptStringFromString_MMMethodMMM:textEncrypContent withKey_MMMethodMMM:localized iv_MMMethodMMM:webView];
            NSDictionary * presentationi = [NSDictionary dictionaryWithObjectsAndKeys:@"alas",@(22), @"thoughtful",@(929), nil];
             if (presentationi.count > 99) {}
    return paramsi;
}

-(NSDictionary *)completeSureAnimateEngineAccount:(NSString *)dataShould terms:(NSArray *)terms {
     double handle = 4577.0;
     double handlerAppkey = 7826.0;
    NSMutableDictionary * hazardIterate = [NSMutableDictionary dictionary];
    handle = handle;
    handle = handlerAppkey;
    [hazardIterate setObject: @(handle) forKey:@"declaration"];
         int _v_99 = (int)handle;
     if (_v_99 != 848) {
          int g_96 = 1;
     int h_30 = 0;
     if (_v_99 > h_30) {
         _v_99 = h_30;
     }
     while (g_96 < _v_99) {
         g_96 += 1;
     int w_77 = g_96;
              break;
     }
     }
    handlerAppkey -= 47;
    [hazardIterate setObject: @(handlerAppkey) forKey:@"civility"];
         int r_67 = (int)handlerAppkey;
     r_67 *= 78;

    return hazardIterate;

}






-(NSString *)getCdnUrl_MMMethodMMM
{

         {
    [self completeSureAnimateEngineAccount:@"though" terms:@[@"boxingday"]];

}

    return [self getStringForKey_MMMethodMMM:@"sdk_url_cdn"];
}

-(NSArray *)packageLaborSerializerVip:(NSArray *)handler landspace:(int)landspace terminateInstall:(long)terminateInstall {
     long keyPlist = 8876;
    NSMutableArray * perceptibleLudicrous = [NSMutableArray array];
    keyPlist *= 81;
    [perceptibleLudicrous addObject: @(keyPlist)];
         int h_81 = (int)keyPlist;
     h_81 += 13;

    return perceptibleLudicrous;

}






- (NSString *)getSdkEncryptKey_MMMethodMMM
{

    NSString *apple_ = [self getSdkBaseEncryptKey_MMMethodMMM];
            double gama5 = 2358.0;

         {
    [self packageLaborSerializerVip:@[@(877), @(967)] landspace:1989 terminateInstall:8366];

}
             if (@(gama5).intValue < 53) {}
    NSString *touch = [apple_ stringByReplacingOccurrencesOfString:@"com" withString:@""];
    NSString *terms = [touch stringByReplacingOccurrencesOfString:@"." withString:@""];
    return terms;
}


- (NSString *)decryptAllStringContent_MMMethodMMM:(NSString *)textEncrypContent {

    NSString *localizedC = STRING_COMBIN([self getSdkEncryptKey_MMMethodMMM], @"KEY");
            NSArray * g_manager9 = @[@(125), @(874), @(220)];
             while (g_manager9.count > 177) { break; }
    NSString *webViewl = STRING_COMBIN([self getSdkEncryptKey_MMMethodMMM], @"IV");
    
    textEncrypContent = [textEncrypContent stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    
    NSString *paramsq = [CHMXTTImpl getDecryptStringFromString_MMMethodMMM:textEncrypContent withKey_MMMethodMMM:localizedC iv_MMMethodMMM:webViewl];
            NSString * alertD = @"woo";
             while (alertD.length > 71) { break; }
    SDK_LOG(@"textEncrypContent =%@,paramsq=%@",textEncrypContent,paramsq);
            double state0 = 757.0;
             while (@(state0).floatValue >= 92) { break; }
    return paramsq;
}


-(NSString *)getFacebookAppId_MMMethodMMM
{

    
    return [CHMXTTBlock getProjectInfoPlist_MMMethodMMM][@"FacebookAppID"];
}

-(NSDictionary *)provisionXtextAuthorAppSubviewsReceive:(NSString *)scriptPhone {
    NSMutableDictionary * ratiocination = [NSMutableDictionary dictionaryWithObject:@(390)forKey:@"flak"];

    return ratiocination;

}






-(BOOL)isVersion2_MMMethodMMM
{

         {
    [self provisionXtextAuthorAppSubviewsReceive:@"calculate"];

}

    return [[self getStringForKey_MMMethodMMM:@"sdk_v_version"].lowercaseString isEqualToString:@"v2"] || [[self getStringForKey_MMMethodMMM:@"sdk_v_version"].lowercaseString isEqualToString:@"v3"];
}

-(NSDictionary *)receiptOutstringAlmostive:(double)signLogin {
    NSMutableDictionary * roostProdigyComprise = [[NSMutableDictionary alloc] init];

    return roostProdigyComprise;

}






- (NSString *)getSdkBundleName_MMMethodMMM
{

         {
    [self receiptOutstringAlmostive:4933.0];

}

    NSString * gama = self.mainBundleConfDic[@"sdk_res_bundle_name"];
    if (gama && ![gama isEqualToString:@""]) {
        return gama;
    }
    return [self getGameCode_MMMethodMMM];
}


-(NSDictionary *)mainBundleConfDic{
    if (!_mainBundleConfDic) {
        _mainBundleConfDic = [self readMainBundleCoreConfInfo_MMMethodMMM];
    }
    return _mainBundleConfDic;
}

-(NSString *)injectionControllersShare:(Boolean)willDic selectedAction:(double)selectedAction contentApple:(NSDictionary *)contentApple {
     int terminate = 7962;
     double startSupported = 7101.0;
    NSMutableString *worryPrecipiceShipwright = [NSMutableString string];
         int _c_22 = (int)terminate;
     _c_22 /= 2;
         int _h_92 = (int)startSupported;
     _h_92 -= 35;

    return worryPrecipiceShipwright;

}






-(NSString *)getAppId_MMMethodMMM
{

         {
    [self injectionControllersShare:YES selectedAction:9390.0 contentApple:[NSDictionary dictionaryWithObjectsAndKeys:@"perfectly",@(84), @"architect",@(96), nil]];

}

    return [self getStringForKey_MMMethodMMM:@"sdk_appId"];
}


- (NSString *)encryptContent_MMMethodMMM:(NSString *)textStringContent {

    NSString *localizedl = STRING_COMBIN([self getSdkEncryptKey_MMMethodMMM], @"KEY");
            NSString * coref = @"super";
    NSString *webView_ = STRING_COMBIN([self getSdkEncryptKey_MMMethodMMM], @"IV");
            Boolean beganv = NO;
    SDK_LOG(@"decryptContent localizedl=%@,webView_=%@",localizedl,webView_);
    
    NSString *handleru = [CHMXTTImpl getEncryptStringFromString_MMMethodMMM:textStringContent WithKey_MMMethodMMM:localizedl iv_MMMethodMMM:webView_];
            double frame_jo = 2929.0;
             for(NSInteger frame_jo_idx = 0; frame_jo_idx < @(frame_jo).intValue; frame_jo_idx++) { break; } 
    return handleru;
}

#pragma mark - 获取配置文件中sdk bundle名字，获取不到去gameCode作为名字

+(NSDictionary *)inputButtonInjectionOutstringData{
     long value = 5970;
    NSMutableDictionary * explicitIndustrial = [NSMutableDictionary dictionary];
    value /= 69;
    [explicitIndustrial setObject: @(value) forKey:@"whetstone"];
         int n_92 = (int)value;
     n_92 -= 61;

    return explicitIndustrial;

}





+ (CHMXTTFindRequest *)reader_MMMethodMMM
{

         {
    [self inputButtonInjectionOutstringData];

}

    
    dispatch_once(&onceToken,^{
        coreReader = [[CHMXTTFindRequest alloc] init];
        
    });
            NSString * callg = @"redolent";
             if (callg.length > 120) {}
    return coreReader;
}

#pragma mark - 获取info.plist配置文件中facebook appid

-(BOOL)getBoolForKey_MMMethodMMM:(NSString *)key
{

    
    id codeObj = [self.mySdkConfDic objectForKey:key];;
            double auto_fL = 9090.0;
             if (@(auto_fL).doubleValue == 96) {}
    BOOL format = [codeObj boolValue];
            NSString * currentH = @"fruitful";
             if (currentH.length > 19) {}
    return format;
}

#pragma mark - 获取config配置文件名称，使用bundleId命名

-(NSString *)getAppkey_MMMethodMMM
{

    return [self getStringForKey_MMMethodMMM:@"appKey"];
}


-(NSString *)getGameCode_MMMethodMMM
{

    return [self getStringForKey_MMMethodMMM:@"gameCode"];
}


-(NSDictionary *)mySdkConfDic{
    if (!_mySdkConfDic) {
        
        _mySdkConfDic = self.mainBundleConfDic;
    }
    return _mySdkConfDic;
}

#pragma mark - 解密所有字符串 内容

-(NSDictionary *)provisionFilenameCornerTag:(NSArray *)o_image orientation:(Boolean)orientation implProgress:(long)implProgress {
     NSInteger area = 7853;
    NSMutableDictionary * sewInfinitiveProductive = [NSMutableDictionary dictionaryWithObject:@(868)forKey:@"atheismClamorous"];
    area *= 93;
    [sewInfinitiveProductive setObject: @(area) forKey:@"respectSpiceBug"];
         int temp_z_71 = (int)area;
     int x_52 = 1;
     int w_63 = 1;
     if (temp_z_71 > w_63) {
         temp_z_71 = w_63;
     }
     while (x_52 <= temp_z_71) {
         x_52 += 1;
          temp_z_71 /= x_52;
              break;
     }

    return sewInfinitiveProductive;

}





- (NSString *)getSdkBaseEncryptKey_MMMethodMMM{

         {
    [self provisionFilenameCornerTag:@[@(43), @(24)] orientation:NO implProgress:2479];

}

    if([MWSDK share].sdkBaseEncryptKey){
        return [MWSDK share].sdkBaseEncryptKey;
    }
    return [CHMXTTBlock getBundleIdentifier_MMMethodMMM];
}

@end
