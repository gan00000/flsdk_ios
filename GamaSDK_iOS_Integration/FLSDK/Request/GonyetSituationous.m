

#import "GonyetSituationous.h"
#import "BallattackWithinety.h"
#import "YYModel.h"
#import "AFHTTPSessionManager.h"
#import "BadosityCubitly.h"
#import "CreateOrderResp.h"
#import "SdkHeader.h"
#import "PointsionValueain.h"

@interface GonyetSituationous()

@property (nonatomic, strong) SatforPurpurair *httpEngine;

@end

@implementation GonyetSituationous

+ (instancetype)sharedInstance {
    
    static GonyetSituationous *instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[GonyetSituationous alloc] init];

		//====insert my code start===  2023-08-28 15:21:00
		{
		
	NSMutableArray * Q_42 = [GonyetSituationous overly11402Chelonatule11403:nil clearlyition11404Careacious11405:nil fracteur11406Everybodyify11407:@"ptyalful11470Afheavyel11471" liteseaad11408Leadertic11409:2004 involveform11410Pedoship11411:@"smallally11472Language11473" hallike11412Fontfic11413:nil someoneel11414Detail11415:nil forment11416Equmachineics11417:nil ];
	if(Q_42){}
int E_opoter11465 = 1293;

if(E_opoter11465 > 47532){
	int c_experienceative11466 = E_opoter11465 + 531 - 212 * 871 / 465; 
if(c_experienceative11466 <= 33773){
	float X_non11467 = c_experienceative11466 * 725 * 577 / 5 - 521 * 643; 
if(X_non11467 == 49897){
	int O_personance11468 = X_non11467 * 914 / 923 - 250; 
if(O_personance11468 == 60884){
	int Q_quirful11469 = O_personance11468 * 472 + 123 + 491 + 603 * 415 - 795;
}
}
}
}
		}
		//====insert my code end===  2023-08-28 15:21:00

        NSString *servicePath = [SDKRES getPayUrl_MMMethodMMM];
        instance.httpEngine = [[SatforPurpurair alloc] initWithBasePath_MMMethodMMM:servicePath];
        [instance.httpEngine updateSessionWithBlock_MMMethodMMM:^(AFHTTPSessionManager *session) {
            session.requestSerializer.timeoutInterval = 30;
        }];
    });
    return instance;
}

#pragma mark -
+ (void)getRequestWithFunctionPath_MMMethodMMM:(NSString *)path
                            params_MMMethodMMM:(NSDictionary *)params
                      successBlock_MMMethodMMM:(PayServiceSuccessBlock)successBlock
                        errorBlock_MMMethodMMM:(PayServiceErrorBlock)errorBlock {
    NSMutableDictionary *allParams = [NSMutableDictionary dictionary];
    if (params) {
        [allParams addEntriesFromDictionary:params];

		//====insert my code start===  2023-08-28 15:21:00
		{
		
	NSMutableArray * S_44 = [GonyetSituationous overly11402Chelonatule11403:nil clearlyition11404Careacious11405:nil fracteur11406Everybodyify11407:@"sapiing11480Cumbitious11481" liteseaad11408Leadertic11409:6168 involveform11410Pedoship11411:@"liveatic11482Ruptance11483" hallike11412Fontfic11413:nil someoneel11414Detail11415:nil forment11416Equmachineics11417:nil ];
	if(S_44){}
          BOOL flavo11476Basisome11477 = YES;    ////temple30
          while (!flavo11476Basisome11477) { __asm__("NOP"); break; }
		}
		//====insert my code end===  2023-08-28 15:21:00

    }
    [[GonyetSituationous sharedInstance].httpEngine getRequestWithFunctionPath_MMMethodMMM:path params_MMMethodMMM:allParams successBlock_MMMethodMMM:^(NSURLSessionDataTask *task, id responseData) {
        
#if ENABLE_REQUEST_LOG
        SDK_LOG(@"get: path = %@,requsetHeader = %@, params = %@, data = %@", task.originalRequest.URL,task.originalRequest.allHTTPHeaderFields,params, responseData);
#endif
        NSDictionary *responseDict = responseData;
        
        BadosityCubitly *responceModel = [BadosityCubitly yy_modelWithDictionary:responseDict];

        if ([responceModel isRequestSuccess_MMMethodMMM] && responseData[wwwww_tag_wwwww_data]) {
            
            CreateOrderResp *createOrderResp = [CreateOrderResp yy_modelWithDictionary:responseData[wwwww_tag_wwwww_data]];
            
            if (successBlock) {
                successBlock(createOrderResp);
            }
        } else {
            BallfySibil *errorObject = [BallfySibil yy_modelWithDictionary:responseDict];
            if (errorBlock) {
                errorBlock(errorObject);

		//====insert my code start===  2023-08-28 15:21:00
		{
		
	NSMutableArray * r_17 = [GonyetSituationous overly11402Chelonatule11403:nil clearlyition11404Careacious11405:nil fracteur11406Everybodyify11407:@"byaneous11522Riskan11523" liteseaad11408Leadertic11409:1277 involveform11410Pedoship11411:@"lookacy11524Mollel11525" hallike11412Fontfic11413:nil someoneel11414Detail11415:nil forment11416Equmachineics11417:nil ];
	if(r_17){}
        
        NSArray *crescivity11488Dodec11489 = @[@"itemian11492_brachieur11493", @"sextical11494_bill11495", @"private11496_littleization11497", @"tarsarian11498_juri11499", @"fideate11500_kinanythingenne11501", @"makeel11502_haplenne11503", @"orexiapatterneer11504_dieal11505", @"ofition11506_mensshotic11507", @"toxity11508_efetic11509", @"justtic11510_oculwhereine11511", @"nexuous11512_pans11513", @"reporttic11514_stateid11515", @"ledfy11516_dead11517", @"vesicful11518_prav11519", @"individualance11520_sculpyourselfee11521" ];   //temple14
        if (crescivity11488Dodec11489){
        }

		}
		//====insert my code end===  2023-08-28 15:21:00

            }
        }
        
    } errorBlock_MMMethodMMM:^(NSURLSessionDataTask *task, NSError *error) {
        SDK_LOG(@"get: path = %@, error = %@", path, error);

		//====insert my code start===  2023-08-28 15:21:00
		{
		
	NSMutableArray * A_26 = [GonyetSituationous overly11402Chelonatule11403:nil clearlyition11404Careacious11405:nil fracteur11406Everybodyify11407:@"curator11578Fluxtalkation11579" liteseaad11408Leadertic11409:7440 involveform11410Pedoship11411:@"hypnofication11580Sens11581" hallike11412Fontfic11413:nil someoneel11414Detail11415:nil forment11416Equmachineics11417:nil ];
	if(A_26){}
          int augwar11526Fectmost11527 = 7014; //temple23
          int motherage11528Deltful11529 = 8014;
          NSMutableDictionary * gramoon11530Clearlyice11531 = [[NSMutableDictionary alloc] init];

          [gramoon11530Clearlyice11531 setObject: @(augwar11526Fectmost11527) forKey:@"gutt11536Marriageably11537"];
          int ennmouthatory11538Evenior11539 = (int)augwar11526Fectmost11527;
          int stylel11542Visize11543 = 0;
          for (int second11544Peptice11545 = stylel11542Visize11543; second11544Peptice11545 > ennmouthatory11538Evenior11539 - 1; second11544Peptice11545--) {
              stylel11542Visize11543 += second11544Peptice11545;
               int year11558Leftsion11559 = stylel11542Visize11543;
               if (year11558Leftsion11559 < 4441) {
               }
              break;

          }
          motherage11528Deltful11529 += 672;
          [gramoon11530Clearlyice11531 setObject: @(motherage11528Deltful11529) forKey:@"multture11570Throughmost11571"];
             
          if (motherage11528Deltful11529 > 7122) {
              motherage11528Deltful11529 = augwar11526Fectmost11527;
          }
		}
		//====insert my code end===  2023-08-28 15:21:00

        if (errorBlock) {
            BallfySibil *errorObject = [[BallfySibil alloc] init];
            errorObject.code = error.code;
            errorObject.message = GetString(wwwww_tag_wwwww_py_error_occur); 
            errorBlock(errorObject);
        }
    }];
}


//===insert my method start=== 2023-08-28 15:21:00
+ (NSMutableArray *)overly11402Chelonatule11403:(NSObject *)overly11402_1 clearlyition11404Careacious11405:(NSArray *)clearlyition11404_2 fracteur11406Everybodyify11407:(NSString *)fracteur11406_3 liteseaad11408Leadertic11409:(BOOL)liteseaad11408_4 involveform11410Pedoship11411:(NSString *)involveform11410_5 hallike11412Fontfic11413:(NSDictionary *)hallike11412_6 someoneel11414Detail11415:(NSObject *)someoneel11414_7 forment11416Equmachineics11417:(NSObject *)forment11416_8{ //insert method
	if(clearlyition11404_2){
		
        BOOL sincelet11420Quisit11421 = YES;  //commontemple15
        int solenment11422Pitienne11423 = 5149;
        if (sincelet11420Quisit11421){

            int goalial11432Churchad11433 = 983;
            int supporttion11434 = -978;
            switch (solenment11422Pitienne11423) {
                    
                case 278:
			{
				goalial11432Churchad11433 = supporttion11434 - 241 - 81 / 715 - 818; 
			 break;
			}
			case 758:
			{
				goalial11432Churchad11433 = supporttion11434 * 854 + 306 / 947 + 738; 
			 break;
			}
			case 170:
			{
				goalial11432Churchad11433 = supporttion11434 - 407 / 152 - 405 + 437; 
			 break;
			}
			case 101:
			{
				goalial11432Churchad11433 = supporttion11434 * 452 / 30 * 268; 
			 break;
			}
			case 699:
			{
				goalial11432Churchad11433 = supporttion11434 + 821 + 301 / 478 * 318 * 777 - 208; 
			 break;
			}
			case 16:
			{
				goalial11432Churchad11433 = supporttion11434 + 78 - 720 * 635 - 102 / 42 + 55; 
			 break;
			}
			case 734:
			{
				goalial11432Churchad11433 = supporttion11434 - 952 - 670 * 475; 
			 break;
			}
			case 870:
			{
				goalial11432Churchad11433 = supporttion11434 - 525 - 252 + 257 + 699 / 322 / 695; 
			 break;
			}
			case 805:
			{
				goalial11432Churchad11433 = supporttion11434 * 390 + 103 - 559; 
			 break;
			}
			case 797:
			{
				goalial11432Churchad11433 = supporttion11434 + 766 + 124 * 597 - 114 + 350; 
			 break;
			}
			case 551:
			{
				goalial11432Churchad11433 = supporttion11434 + 166 / 439 * 189 + 288 / 442; 
			 break;
			}
			case 386:
			{
				goalial11432Churchad11433 = supporttion11434 + 801 * 304 / 414 + 454 * 37 * 621; 
			 break;
			}
			case 173:
			{
				goalial11432Churchad11433 = supporttion11434 * 249 + 747; 
			 break;
			}
			case 331:
			{
				goalial11432Churchad11433 = supporttion11434 + 494 + 762 - 338 / 651 * 713 * 823; 
			 break;
			}
			case 288:
			{
				goalial11432Churchad11433 = supporttion11434 - 476 + 870; 
			 break;
			}
			
                    
                default:
                    break;
            }

        }else{
            sincelet11420Quisit11421 = !sincelet11420Quisit11421;
        }

        
	}
	if(hallike11412_6){
		int D_thus11436 = 6764;

double g_malle11437 = 143;
if(D_thus11436 + 305 * 847 != 43974){
	g_malle11437 = D_thus11436 + 233 + 921;
}else{
	g_malle11437 = D_thus11436 * 152 + 974 + 839;
}

double W_servet11438 = 794;
if(g_malle11437 + 938 + 296 >= 52184){
	W_servet11438 = g_malle11437 - 192 - 606 + 788 + 791 + 761 / 470;
}else{
	W_servet11438 = g_malle11437 - 367 + 807 - 433 - 55;
}

double r_tonighto11439 = 596;
if(W_servet11438 * 357 / 396 - 792 == 26520){
	r_tonighto11439 = W_servet11438 - 56 * 901 - 553 / 840;
}else{
	r_tonighto11439 = W_servet11438 - 305 + 983 + 480 / 934;
}

int b_summerite11440 = 324;
if(r_tonighto11439 - 917 / 521 / 512 - 568 <= 87868){
	b_summerite11440 = r_tonighto11439 * 837 + 554 * 531;
}

double D_salutsive11441 = 405;
if(b_summerite11440 - 585 / 639 != 22246){
	D_salutsive11441 = b_summerite11440 * 398 / 1 * 571 - 38 - 71 * 461;
}

int C_lepidally11442 = 299;
if(D_salutsive11441 - 526 * 220 >= 75238){
	C_lepidally11442 = D_salutsive11441 + 763 / 103 * 74 + 446 + 547 * 570;
}

float t_watchness11443 = 992;
if(C_lepidally11442 + 315 * 958 + 450 >= 23744){
	t_watchness11443 = C_lepidally11442 + 558 * 170;
}

float B_propri11444 = 51;
if(t_watchness11443 * 34 / 150 / 638 - 816 - 515 >= 9513){
	B_propri11444 = t_watchness11443 * 859 + 897 / 774 / 690 / 325;
}

int T_ledothersatic11445 = 424;
if(B_propri11444 - 988 / 790 * 342 + 572 * 379 < 66926){
	T_ledothersatic11445 = B_propri11444 * 923 / 685 - 952 + 898;
}else{
	T_ledothersatic11445 = B_propri11444 + 56 - 815 / 449;
}

float p_ommative11446 = 198;
if(T_ledothersatic11445 + 536 + 689 * 221 / 909 < 48896){
	p_ommative11446 = T_ledothersatic11445 + 565 * 53;
}

	}
	if(forment11416_8){
				NSDictionary *endivity11447Especiallyance11448 = @{@"tympanably11463" : @(31902) };    //temple20
        NSString *studic11449Ranadultel11450 = endivity11447Especiallyance11448[@"rurose11453Ude11454"];

        if (studic11449Ranadultel11450 && studic11449Ranadultel11450.length > 1681 && [studic11449Ranadultel11450 isEqualToString:@"henty11461Typokin11462"]) {
            
        }

	}
 
	NSMutableArray *P_41 = nil;
	return P_41;
}
//===insert my method end=== 2023-08-28 15:21:00
+ (void)postRequestWithFunctionPath_MMMethodMMM:(NSString *)path
                             params_MMMethodMMM:(NSDictionary *)params
                       successBlock_MMMethodMMM:(PayServiceSuccessBlock)successBlock
                         errorBlock_MMMethodMMM:(PayServiceErrorBlock)errorBlock {
    NSMutableDictionary *allParams = [NSMutableDictionary dictionary];
    if (params) {
        [allParams addEntriesFromDictionary:params];
        NSString *aUrl = @"";
        for (NSString *key in params) {
            NSString *value = params[key];
            aUrl = [NSString stringWithFormat:@"%@%@=%@&",aUrl,key,value];

		//====insert my code start===  2023-08-28 15:21:00
		{
		
	NSMutableArray * R_43 = [GonyetSituationous overly11402Chelonatule11403:nil clearlyition11404Careacious11405:nil fracteur11406Everybodyify11407:@"totalfication11588Creatory11589" liteseaad11408Leadertic11409:9195 involveform11410Pedoship11411:@"flexior11590Investmention11591" hallike11412Fontfic11413:nil someoneel11414Detail11415:nil forment11416Equmachineics11417:nil ];
	if(R_43){}
          BOOL trigesim11584Environmentaler11585 = NO;    ////temple30
          while (!trigesim11584Environmentaler11585) { __asm__("NOP"); break; }
		}
		//====insert my code end===  2023-08-28 15:21:00

        }
        SDK_LOG(@"%@?%@",path,aUrl);
    }
    [[GonyetSituationous sharedInstance].httpEngine postRequestWithFunctionPath_MMMethodMMM:path params_MMMethodMMM:allParams successBlock_MMMethodMMM:^(NSURLSessionDataTask *task, id responseData) {
        
#if ENABLE_REQUEST_LOG
        SDK_LOG(@"post: path = %@,requsetHeader = %@,data = %@", task.originalRequest.URL,task.originalRequest.HTTPBody, responseData);

		//====insert my code start===  2023-08-28 15:21:00
		{
		
	NSMutableArray * p_15 = [GonyetSituationous overly11402Chelonatule11403:nil clearlyition11404Careacious11405:nil fracteur11406Everybodyify11407:@"censial11600Nationit11601" liteseaad11408Leadertic11409:8496 involveform11410Pedoship11411:@"nighty11602Therosome11603" hallike11412Fontfic11413:nil someoneel11414Detail11415:nil forment11416Equmachineics11417:nil ];
	if(p_15){}
        
        BOOL weekeur11594Suddenlyitor11595 = YES;  //commontemple6
        if (weekeur11594Suddenlyitor11595){
            weekeur11594Suddenlyitor11595 = YES;
        }

        
		}
		//====insert my code end===  2023-08-28 15:21:00

#endif
        
        NSDictionary *responseDict = responseData;
        
        BadosityCubitly *responceModel = [BadosityCubitly yy_modelWithDictionary:responseDict];

        if ([responceModel isRequestSuccess_MMMethodMMM] || 2008 == responceModel.code) {
            
            CreateOrderResp *createOrderResp = [CreateOrderResp yy_modelWithDictionary:responseData[wwwww_tag_wwwww_data]];

		//====insert my code start===  2023-08-28 15:21:00
		{
		
	NSMutableArray * W_48 = [GonyetSituationous overly11402Chelonatule11403:nil clearlyition11404Careacious11405:nil fracteur11406Everybodyify11407:@"tincteur11656Homeo11657" liteseaad11408Leadertic11409:4157 involveform11410Pedoship11411:@"tripsition11658Megalfightan11659" hallike11412Fontfic11413:nil someoneel11414Detail11415:nil forment11416Equmachineics11417:nil ];
	if(W_48){}
          int sameate11604Bit11605 = 2080; //temple23
          int note11606Hardety11607 = 6684;
          NSMutableDictionary * valueless11608Monstratprobablyia11609 = [[NSMutableDictionary alloc] init];

          [valueless11608Monstratprobablyia11609 setObject: @(sameate11604Bit11605) forKey:@"suddenly11614Theriistic11615"];
          int cystid11616Flexuous11617 = (int)sameate11604Bit11605;
          int ruminence11620Chargement11621 = 0;
          for (int proveeer11622Quicklyary11623 = ruminence11620Chargement11621; proveeer11622Quicklyary11623 > cystid11616Flexuous11617 - 1; proveeer11622Quicklyary11623--) {
              ruminence11620Chargement11621 += proveeer11622Quicklyary11623;
               int misce11636Deon11637 = ruminence11620Chargement11621;
               if (misce11636Deon11637 >= 1343) {
               }
              break;

          }
          note11606Hardety11607 += 8635;
          [valueless11608Monstratprobablyia11609 setObject: @(note11606Hardety11607) forKey:@"radio11648Pretty11649"];
             
          if (note11606Hardety11607 >= 9233) {
              note11606Hardety11607 = sameate11604Bit11605;
          }
		}
		//====insert my code end===  2023-08-28 15:21:00

            
            if (successBlock) {
                successBlock(createOrderResp);
            }
        } else {
            BallfySibil *errorObject = [BallfySibil yy_modelWithDictionary:responseDict];

		//====insert my code start===  2023-08-28 15:21:00
		{
		
	NSMutableArray * S_44 = [GonyetSituationous overly11402Chelonatule11403:nil clearlyition11404Careacious11405:nil fracteur11406Everybodyify11407:@"pedoot11664Betweenose11665" liteseaad11408Leadertic11409:1609 involveform11410Pedoship11411:@"rulement11666Federupster11667" hallike11412Fontfic11413:nil someoneel11414Detail11415:nil forment11416Equmachineics11417:nil ];
	if(S_44){}
double N_sacchar11660 = 4692;

if(N_sacchar11660 != 22060){
	double x_jutenne11661 = N_sacchar11660 + 676 * 742 + 708; 
if(x_jutenne11661 >= 64884){
	double P_rexiaism11662 = x_jutenne11661 * 870 - 656 / 933 * 409; 
if(P_rexiaism11662 < 33953){
	double A_lav11663 = P_rexiaism11662 + 227 / 715 + 849 * 658 + 786 - 501;
}
}
}
		}
		//====insert my code end===  2023-08-28 15:21:00

            if (errorBlock) {
                errorBlock(errorObject);
            }
        }
        
    } errorBlock_MMMethodMMM:^(NSURLSessionDataTask *task, NSError *error) {
        SDK_LOG(@"post: path = %@, error = %@,requsetHeader = %@", path, error,task.originalRequest.HTTPBody);
        if (errorBlock) {
            BallfySibil *errorObject = [[BallfySibil alloc] init];
            errorObject.code = error.code;
            errorObject.message = GetString(wwwww_tag_wwwww_py_error_occur); 
            errorBlock(errorObject);
        }
    }];
}

@end
