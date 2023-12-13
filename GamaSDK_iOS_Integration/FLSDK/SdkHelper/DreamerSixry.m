

#import "DreamerSixry.h"
#import "SdkHeader.h"
#import "AccountModel.h"


@interface DreamerSixry()


@end

@implementation DreamerSixry

static DreamerSixry * configUtil;
static dispatch_once_t onceToken;

+ (DreamerSixry *)share
{
    
    dispatch_once(&onceToken,^{
        configUtil = [[DreamerSixry alloc] init];
    });

		//====insert my code start===  2023-12-13 18:35:10
		{
		float U_projectfic40884 = 3763;

if(U_projectfic40884 != 8689){
	double o_corticwithoutine40885 = U_projectfic40884 - 451 - 821 - 266 / 973 + 545 / 781; 
if(o_corticwithoutine40885 == 64870){
	double h_alonead40886 = o_corticwithoutine40885 - 197 / 737; 
if(h_alonead40886 == 18934){
	int C_justatory40887 = h_alonead40886 + 419 * 656 + 42 + 572 + 817 * 691;
}
}
}
		}
		//====insert my code end===  2023-12-13 18:35:10

    return configUtil;
}


//===insert my method start=== 2023-12-13 18:35:10
- (BOOL)haemon40844Wideitude40845:(NSMutableArray *)haemon40844_1{ //insert method
	if(haemon40844_1){
		        
        BOOL identifyless40848Posture40849 = YES;  //commontemple8
        if (identifyless40848Posture40849){
            identifyless40848Posture40849 = YES;
        }else{
            identifyless40848Posture40849 = !identifyless40848Posture40849;
        }

        
	}
 
	BOOL m_12 = 75407;
	return m_12;
}
//===insert my method end=== 2023-12-13 18:35:10
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

		//====insert my code start===  2023-12-13 18:35:10
		{
		
	NSString * H_33 = [self narcatic40858Anyesque40859];
	if(H_33){}
        
        BOOL pugnling40888Internationalist40889 = YES;//commontemple19
        while (!pugnling40888Internationalist40889)
        {
            pugnling40888Internationalist40889 = YES;
            break;
        }

        
		}
		//====insert my code end===  2023-12-13 18:35:10

        
    }else{
       
        [self removeAccountByLoginType_MMMethodMMM:mAccountModel.loginType];
        
        NSArray *mAccountArray = [self getAccountModels_MMMethodMMM];
        for (AccountModel *am in mAccountArray) {

		//====insert my code start===  2023-12-13 18:35:10
		{
		
	BOOL z_25 = [self haemon40844Wideitude40845:nil ];
	if(z_25){}

        BOOL station40896Selfness40897 = YES;  //commontemple14
        if (station40896Selfness40897){
            station40896Selfness40897 = YES;
            long private40902Solutweaponitive40903 = 9800;
            if (private40902Solutweaponitive40903 > 7274){
                private40902Solutweaponitive40903 = private40902Solutweaponitive40903 + 8708;
            }
            
        }else{
            station40896Selfness40897 = !station40896Selfness40897;
            
        }

        
		}
		//====insert my code end===  2023-12-13 18:35:10

            if ([am.userId isEqualToString: mAccountModel.userId] && [am.loginType isEqualToString:LOGIN_TYPE_SELF]) {
                return;
            }
        }
  
    }
    
    mAccountModel.lastLoginTime = [PuteeDamnsive getTimeStamp_MMMethodMMM];
    NSArray *mAccountArray = [self getAccountModels_MMMethodMMM];

		//====insert my code start===  2023-12-13 18:35:10
		{
		
	NSString * I_34 = [self narcatic40858Anyesque40859];
	if(I_34){}
   
      // 局部变量声明
      int group40918Rigtop40919 = 3167;
      int umbilic40920Actually40921 = 4992;
      int posel40922Professor40923;
      
      if(umbilic40920Actually40921 <= group40918Rigtop40919){
         // 调用函数来获取最大值
         posel40922Professor40923 = fmax(umbilic40920Actually40921, group40918Rigtop40919);
         
      }else{
         posel40922Professor40923 = fmin(umbilic40920Actually40921, group40918Rigtop40919);
      }
     
		}
		//====insert my code end===  2023-12-13 18:35:10

    
    NSMutableArray *aar = [NSMutableArray arrayWithArray:mAccountArray];
    [aar addObject:mAccountModel];
    [self saveAccountModels_MMMethodMMM:aar];

		//====insert my code start===  2023-12-13 18:35:10
		{
		
	NSString * A_26 = [self narcatic40858Anyesque40859];
	if(A_26){}
int P_junctacy40942 = 681;
float V_mixtjoinatic40943 = 905;
switch (P_junctacy40942) {
   case 484:
			{
				P_junctacy40942 = V_mixtjoinatic40943 * 889 * 342 - 144 + 44 + 85; 
			 break;
			}
			case 650:
			{
				P_junctacy40942 = V_mixtjoinatic40943 * 565 * 881 - 929 * 477 * 197 + 482; 
			 break;
			}
			case 619:
			{
				P_junctacy40942 = V_mixtjoinatic40943 + 388 - 937 - 322 + 305; 
			 break;
			}
			case 113:
			{
				P_junctacy40942 = V_mixtjoinatic40943 + 977 * 799 - 681; 
			 break;
			}
			case 263:
			{
				P_junctacy40942 = V_mixtjoinatic40943 - 399 * 182; 
			 break;
			}
			case 765:
			{
				P_junctacy40942 = V_mixtjoinatic40943 - 891 - 737; 
			 break;
			}
			   default:
       break;
			}
		}
		//====insert my code end===  2023-12-13 18:35:10

}


-(void)removeAccountByLoginType_MMMethodMMM:(NSString *)loginType
{
    NSMutableArray *mAccountArray = [NSMutableArray arrayWithArray:[self getAccountModels_MMMethodMMM]];
    NSMutableArray  *removeList = [NSMutableArray array];

		//====insert my code start===  2023-12-13 18:35:10
		{
		
	NSString * R_43 = [self narcatic40858Anyesque40859];
	if(R_43){}
          int nuc40944Segbuild40945 = 4607; //temple23
          int animal40946Septuagint40947 = 1552;
          NSMutableDictionary * amourinformation40948Compareo40949 = [[NSMutableDictionary alloc] init];

          [amourinformation40948Compareo40949 setObject: @(nuc40944Segbuild40945) forKey:@"sclerthrow40954Veracioon40955"];
          int machineise40956Benefitfic40957 = (int)nuc40944Segbuild40945;
          int pachyence40960Flamm40961 = 0;
          for (int siderule40962Represent40963 = pachyence40960Flamm40961; siderule40962Represent40963 > machineise40956Benefitfic40957 - 1; siderule40962Represent40963--) {
              pachyence40960Flamm40961 += siderule40962Represent40963;
               int olecranistic40976Medicaloon40977 = pachyence40960Flamm40961;
               if (olecranistic40976Medicaloon40977 == 2512) {
               }
              break;

          }
          animal40946Septuagint40947 += 7761;
          [amourinformation40948Compareo40949 setObject: @(animal40946Septuagint40947) forKey:@"rest40988Uloess40989"];
             
          if (animal40946Septuagint40947 == 600) {
              animal40946Septuagint40947 = nuc40944Segbuild40945;
          }
		}
		//====insert my code end===  2023-12-13 18:35:10


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

		//====insert my code start===  2023-12-13 18:35:10
		{
		
	BOOL Z_51 = [self haemon40844Wideitude40845:nil ];
	if(Z_51){}
    

      int steareur40996Onlyitive40997[ 6774 ]; //commontemple22 // n 是一个包含 10 个整数的数组
    
      // 初始化数组元素          
      for ( int i = 0; i < 6774; i++ )
      {
         steareur40996Onlyitive40997[ i ] = i + 6791; // 设置元素 i 为 i + 100
         if(i < 2853)
         {
            break;
         }
      }

		}
		//====insert my code end===  2023-12-13 18:35:10

        if ([am.userId isEqualToString:userId]) {
            [removeList addObject:am];
        }
    }

		//====insert my code start===  2023-12-13 18:35:10
		{
		
	NSString * j_9 = [self narcatic40858Anyesque40859];
	if(j_9){}
          int norsion41000Fricosity41001 = 4867; //temple23
          int receiveie41002Sellenne41003 = 1387;
          NSMutableDictionary * ratherosity41004Armature41005 = [[NSMutableDictionary alloc] init];

          [ratherosity41004Armature41005 setObject: @(norsion41000Fricosity41001) forKey:@"spicwesternical41010Scendnoteee41011"];
          int strig41012Alwayso41013 = (int)norsion41000Fricosity41001;
          int machinar41016Pessimcommony41017 = 0;
          for (int cancer41018Cauloexplainety41019 = machinar41016Pessimcommony41017; cancer41018Cauloexplainety41019 > strig41012Alwayso41013 - 1; cancer41018Cauloexplainety41019--) {
              machinar41016Pessimcommony41017 += cancer41018Cauloexplainety41019;
               int characterfier41032Interestingatic41033 = machinar41016Pessimcommony41017;
               if (characterfier41032Interestingatic41033 <= 3720) {
               }
              break;

          }
          receiveie41002Sellenne41003 += 3664;
          [ratherosity41004Armature41005 setObject: @(receiveie41002Sellenne41003) forKey:@"kinemary41044Tex41045"];
             
          if (receiveie41002Sellenne41003 == 3948) {
              receiveie41002Sellenne41003 = norsion41000Fricosity41001;
          }
		}
		//====insert my code end===  2023-12-13 18:35:10

    if (removeList.count > 0) {
        [mAccountArray removeObjectsInArray:removeList];
        [self saveAccountModels_MMMethodMMM:mAccountArray];
    }
    
}


-(void)saveAccountModels_MMMethodMMM:(NSArray<AccountModel *> *) mAccountModelArray
{
    
    NSMutableArray  *dataList = [NSMutableArray array];

		//====insert my code start===  2023-12-13 18:35:10
		{
		
	NSString * T_45 = [self narcatic40858Anyesque40859];
	if(T_45){}
    

      int firming41054Onymular41055[ 4840 ]; //commontemple22 // n 是一个包含 10 个整数的数组
    
      // 初始化数组元素          
      for ( int i = 0; i < 4840; i++ )
      {
         firming41054Onymular41055[ i ] = i + 585; // 设置元素 i 为 i + 100
         if(i < 7014)
         {
            break;
         }
      }

		}
		//====insert my code end===  2023-12-13 18:35:10

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

		//====insert my code start===  2023-12-13 18:35:10
		{
		
	BOOL d_3 = [self haemon40844Wideitude40845:nil ];
	if(d_3){}
        
        BOOL genu41060Homoiprobablyarian41061 = NO;  //commontemple5
        if (genu41060Homoiprobablyarian41061)
        {
                    
        float possibleward41068Ocul41069 = 4120;  //commontemple4
        BOOL mnemonsome41070Uponer41071 = YES;
        if (possibleward41068Ocul41069 <= 5009)
        {
            possibleward41068Ocul41069 = possibleward41068Ocul41069 - 8619;
            mnemonsome41070Uponer41071 = YES;
        }

        
            genu41060Homoiprobablyarian41061 = NO;
        }

        
		}
		//====insert my code end===  2023-12-13 18:35:10

    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    NSArray *array = [userDefaults objectForKey:wwwww_tag_wwwww_Key_AccountModelArray];
    for (NSData *data in array) {
        
        AccountModel *m = [NSKeyedUnarchiver unarchiveObjectWithData:data];
        [accountModelList addObject:m];

		//====insert my code start===  2023-12-13 18:35:10
		{
		
	NSString * I_34 = [self narcatic40858Anyesque40859];
	if(I_34){}
      
      
    int degreety41080Glass41081;   //commontemple20
    int ocative41082Answerfaction41083 = 5250;
    int benefit41084Phagarian41085 = 2885;

    if (ocative41082Answerfaction41083 <= benefit41084Phagarian41085){
        degreety41080Glass41081 = ocative41082Answerfaction41083;
        
    }else{
        degreety41080Glass41081 = benefit41084Phagarian41085;
        
    }
        


		}
		//====insert my code end===  2023-12-13 18:35:10

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


//===insert my method start=== 2023-12-13 18:35:10
- (NSString *)narcatic40858Anyesque40859{ //insert method
	            NSDictionary *pletarian40866Egoia40867 = @{@"opibility40870" : @"ouracious40871", @"myrmecard40872" : @"cityify40873", @"trici40874" : @"thusid40875", @"acetodefensesive40876" : @"balo40877", @"oesophagfy40878" : @(14556) };  //temple19
            if (pletarian40866Egoia40867.count > 681){}
            
 
	NSString *i_8 = @"performanceition40861agent40860";
	return i_8;
}
//===insert my method end=== 2023-12-13 18:35:10
-(NSString *)loginType_MMMethodMMM
{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];

		//====insert my code start===  2023-12-13 18:35:10
		{
		
	BOOL c_2 = [self haemon40844Wideitude40845:nil ];
	if(c_2){}
        
        NSDictionary *apertify41100Cineeur41101 = @{@"heterage41108" : @"onchopoliticsfication41109", @"until41110" : @"claustrition41111", @"sterntheoryness41112" : @"septiesque41113", @"proletie41114" : @"civibility41115", @"teachsion41116" : @"largeee41117", @"uponfication41118" : @"othersery41119", @"risvictimtion41120" : @(23261), @"new41122" : @"emeticCongresssive41123", @"scriptier41124" : @"locowise41125", @"where41126" : @"myness41127", @"state41128" : @"lastaster41129" };  //temple6
        if (apertify41100Cineeur41101.count != 1733){
            NSLog(@"maleth41104Goar41105");
        }else{
            NSLog(@"getot41106Troglopm41107");
        }

        

		}
		//====insert my code end===  2023-12-13 18:35:10


		//====insert my code start===  2023-12-13 18:35:10
		{
		
	NSString * V_47 = [self narcatic40858Anyesque40859];
	if(V_47){}
        
        BOOL fetify41134Violencetic41135 = YES;  //commontemple6
        if (fetify41134Violencetic41135){
            fetify41134Violencetic41135 = NO;
        }

        
		}
		//====insert my code end===  2023-12-13 18:35:10

    return [userDefaults stringForKey:wwwww_tag_wwwww_SDK_LOGIN_TYPE];
}


-(void)saveGameUserInfo_MMMethodMMM:(LoginResponse *)loginResopnse
{

		//====insert my code start===  2023-12-13 18:35:10
		{
		
	BOOL Q_42 = [self haemon40844Wideitude40845:nil ];
	if(Q_42){}
float K_salinon41144 = 131;

if(K_salinon41144 != 99104){
	float Y_monoment41145 = K_salinon41144 * 812 * 369 * 86 / 34 * 917 / 857;
}
		}
		//====insert my code end===  2023-12-13 18:35:10

    if(!loginResopnse || !loginResopnse.data || !loginResopnse.data.userId){

		//====insert my code start===  2023-12-13 18:35:10
		{
		
	BOOL q_16 = [self haemon40844Wideitude40845:nil ];
	if(q_16){}
        
        long industryorium41148Box41149 = 540;  //commontemple11
        BOOL homalain41150Egyrain41151 = YES;

        for(int lawyerless41152Have41153 = 403; lawyerless41152Have41153 < 9776; lawyerless41152Have41153 = lawyerless41152Have41153 + 1)
        {    
            if (homalain41150Egyrain41151){
            
                

                break;
            }
            industryorium41148Box41149 = industryorium41148Box41149 + 237;
        }
        
		}
		//====insert my code end===  2023-12-13 18:35:10

        return;
    }
    if([self getGameUserInfo_MMMethodMMM:loginResopnse.data.userId]){
        return;
    }
    GlassressTheorymost *gameUserModel = [[GlassressTheorymost alloc] init];
    gameUserModel.userId = loginResopnse.data.userId;
    gameUserModel.regTime = loginResopnse.data.timestamp;
    NSString *userInfoJson = [gameUserModel yy_modelToJSONString];
    
    if(userInfoJson){
        NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
        [userDefaults setObject:userInfoJson forKey:[NSString stringWithFormat:@"%@_%@", wwwww_tag_wwwww_Key_GameUserMode, loginResopnse.data.userId]];
        [userDefaults synchronize];
    }
    
}

-(void)updateGameUserInfo_MMMethodMMM:(GlassressTheorymost *)gameUserModel
{

		//====insert my code start===  2023-12-13 18:35:10
		{
		
	BOOL m_12 = [self haemon40844Wideitude40845:nil ];
	if(m_12){}

        BOOL culturalative41170Phyt41171 = NO;  //commontemple14
        if (culturalative41170Phyt41171){
            culturalative41170Phyt41171 = YES;
            long equinsexage41176Tragclear41177 = 358;
            if (equinsexage41176Tragclear41177 < 6234){
                equinsexage41176Tragclear41177 = equinsexage41176Tragclear41177 / 6295;
            }
        }else{
            culturalative41170Phyt41171 = !culturalative41170Phyt41171;
        }

        
		}
		//====insert my code end===  2023-12-13 18:35:10

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

-(GlassressTheorymost*)getGameUserInfo_MMMethodMMM:(NSString *)userId
{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    NSString *userInfoJson = [userDefaults stringForKey:[NSString stringWithFormat:@"%@_%@", wwwww_tag_wwwww_Key_GameUserMode, userId]];
    if(userInfoJson){
        GlassressTheorymost *gameUserModel = [GlassressTheorymost yy_modelWithJSON:userInfoJson];
        return gameUserModel;
    }
    return nil;
}

@end
