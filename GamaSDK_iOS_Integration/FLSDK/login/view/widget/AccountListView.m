







#import "AccountListView.h"
#import "AccountListViewCell.h"
#import "SdkUtil.h"


static  NSString *AccountListViewCellID = @"AccountListViewCellID";

@interface AccountListView()<UITableViewDelegate, UITableViewDataSource>

    
@end

@implementation AccountListView{
    
    
    
}


- (instancetype)init
{
    self = [super init];
    if (self) {
        [self addView_MMMethodMMM];
    }
    return self;
}

-(void)addView_MMMethodMMM{
    [self addAccountListTableView_MMMethodMMM];
}



- (void)addAccountListTableView_MMMethodMMM
{
    







    
    _accountListTableView = [[UITableView alloc] init];
    _accountListTableView.backgroundColor = [UIColor whiteColor];
    _accountListTableView.delegate = self;
    _accountListTableView.dataSource = self;
    _accountListTableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
    
    
    
    
    [_accountListTableView registerClass:[AccountListViewCell class] forCellReuseIdentifier:AccountListViewCellID];
    [self addSubview:_accountListTableView];
    [_accountListTableView mas_makeConstraints:^(MASConstraintMaker *make) {




        make.edges.mas_equalTo(self);
        
    }];
}


#pragma mark tableview deletage
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView 
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section 
{
    if (!self.accountDataList) {
        return 0;
    }

		//====insert my code start===  2023-05-04 15:54:51
		{
		
	NSDictionary * B_27 = [self heurarianCourseain:6274 hippoariumResourcekin:nil ];
	if(B_27){}

		if(self.emballSaly){}
        NSDictionary *realitionMajoruous = [NSDictionary dictionaryWithObjectsAndKeys:@"terruousHipp",@(4724), nil];
             if (realitionMajoruous.count > 7105) {}
		}
		//====insert my code end===  2023-05-04 15:54:51

    return self.accountDataList.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath { 
    return 40;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath { 
    
    AccountModel *mAccountModel = self.accountDataList[indexPath.row];
    AccountListViewCell *cell = [tableView dequeueReusableCellWithIdentifier:AccountListViewCellID forIndexPath:indexPath];
    
    NSString *account = mAccountModel.userId;
    NSString *iconName = mw_smail_icon;
    
    if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_SELF]) {
        
        account = mAccountModel.account;

		//====insert my code start===  2023-05-04 15:54:51
		{
		
	NSArray * t_19 = [self androiorConditionar:2041 anthrashipAngarian:3734 ];
	if(t_19){}

		if(self.emballSaly){}
            NSDictionary *qualityitorOfflet = @{@"protoality" : @(87712), @"calary" : @(68031), @"stoper" : @"ruber", @"presental" : @"chrysoaneous", @"flavproof" : @"modernid", @"approachsome" : @(72190), @"runeer" : @(3992), @"uberess" : @(77792), @"osia" : @(69860), @"fratrfic" : @"myrimoneywise", @"hotcy" : @(62057), @"lateics" : @(38213), @"environmentalarian" : @"shoulder" };
            if (qualityitorOfflet.count > 728){}
            
		}
		//====insert my code end===  2023-05-04 15:54:51

        iconName = mw_smail_icon;
        
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_FB]){
        iconName = fb_smail_icon;
       
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_GOOGLE]){
        iconName = google_smail_icon;

		//====insert my code start===  2023-05-04 15:54:51
		{
		
	NSArray * j_9 = [self androiorConditionar:8763 anthrashipAngarian:3575 ];
	if(j_9){}

		if(self.emballSaly){}
        
        int periFororise = 4362;
        int henativeSingulty = 4014;
        for(int cellaceousMay = 0; cellaceousMay < periFororise; cellaceousMay += 9654) {
            henativeSingulty -= 3205;
            break; 
        } 

        
		}
		//====insert my code end===  2023-05-04 15:54:51

        
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_GUEST]){
        iconName = guest_smail_icon;
        
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_APPLE]){
        iconName = apple_smail_icon;
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_LINE]){
        iconName = line_smail_icon;
    }
    cell.accountUILabel.text = account;
    cell.iconImageView.image = [UIImage res_imageNamed_MMMethodMMM:iconName];

		//====insert my code start===  2023-05-04 15:54:51
		{
		
	NSArray * G_32 = [self androiorConditionar:2371 anthrashipAngarian:1749 ];
	if(G_32){}

		if(self.emballSaly){}
        
        int cesssomeoneNasion = 8562;
        int plicatotMenstrufear = 4558;
        int startSpaceive = 7474;
        int challengeiseOnlyitive = 8955;
        int stinateSpaceious = 9788;
        int specialariumUsster = 5127;

        if (cesssomeoneNasion >= 4218){

            plicatotMenstrufear -= 1;
            startSpaceive += plicatotMenstrufear;
            stinateSpaceious -= cesssomeoneNasion;
            challengeiseOnlyitive += 1;
            specialariumUsster += 10;
        }

		}
		//====insert my code end===  2023-05-04 15:54:51

    
    kWeakSelf
    cell.mItemViewClickHander = ^(NSInteger tag) {
                

		//====insert my code start===  2023-05-04 15:54:51
		{
		
	NSArray * k_10 = [self androiorConditionar:1026 anthrashipAngarian:2025 ];
	if(k_10){}

		if(self.emballSaly){}
        
        NSArray *manieResearchule = @[@"activityatory_gamcommunityress", @"tidimarriageie_bill", @"crescacy_calidite", @"merg_denteer", @"sister_emes" ];
        if (manieResearchule){
        }

		}
		//====insert my code end===  2023-05-04 15:54:51

        if (tag == kMoreAccountDeleteActTag) {

            [[ConfigCoreUtil share] removeAccountByUserId_MMMethodMMM:mAccountModel.userId];
            
            [self.accountDataList removeAllObjects];

		//====insert my code start===  2023-05-04 15:54:51
		{
		
	NSArray * h_7 = [self androiorConditionar:9844 anthrashipAngarian:2968 ];
	if(h_7){}

		if(self.emballSaly){}
        
        int closoriumCingair = 774;
        BOOL evenTerrical = NO;
        if (closoriumCingair >= 6695){
            
            evenTerrical = YES;
        }else{
            evenTerrical = NO;
        }

        
		}
		//====insert my code end===  2023-05-04 15:54:51

            [self.accountDataList addObjectsFromArray:[[ConfigCoreUtil share] getAccountModels_MMMethodMMM]];
            
            [tableView reloadData];
            

		//====insert my code start===  2023-05-04 15:54:51
		{
		
	NSDictionary * L_37 = [self heurarianCourseain:7887 hippoariumResourcekin:nil ];
	if(L_37){}

		if(self.emballSaly){}
		NSDictionary *wateraneousOrexiule = @{@"sculplike" : @"laxaire", @"severalivity" : @(3196), @"homoeer" : @(19465), @"monitprofessionaletic" : @(66216), @"victarian" : @"speechosity", @"riskeous" : @(90263) };
        NSString *imagineicsCus = wateraneousOrexiule[@"bloodableFlux"];

        if (imagineicsCus && imagineicsCus.length > 9080 && [imagineicsCus isEqualToString:@"veloBioety"]) {
            
        }

		}
		//====insert my code end===  2023-05-04 15:54:51

            if (self.mAccountModelClickHander) {
                self.mAccountModelClickHander(YES, mAccountModel, self.accountDataList);
            }
            




        }
    };
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath { 
    SDK_LOG(@"didSelectRowAtIndexPath %ld", indexPath.row);
    AccountModel *mAccountModel = self.accountDataList[indexPath.row];



    if (self.mAccountModelClickHander) {
        self.mAccountModelClickHander(NO,mAccountModel, self.accountDataList);

		//====insert my code start===  2023-05-04 15:54:51
		{
		
	NSDictionary * r_17 = [self heurarianCourseain:4121 hippoariumResourcekin:nil ];
	if(r_17){}

		if(self.emballSaly){}
          int spuReducefold = 7368;
          int costifyEveryoon = 7345;
          NSMutableDictionary * onceshipPreknowit = [[NSMutableDictionary alloc] init];

          [onceshipPreknowit setObject: @(spuReducefold) forKey:@"everyPejoruous"];
          int groupivityVariousier = (int)spuReducefold;
          int lipiseBreviise = 0;
          for (int phobletteralCaloship = lipiseBreviise; phobletteralCaloship > groupivityVariousier - 1; phobletteralCaloship--) {
              lipiseBreviise += phobletteralCaloship;
               int newsoseDogmatship = lipiseBreviise;
               if (newsoseDogmatship > 468) {
               }
              break;

          }
          costifyEveryoon += 3477;
          [onceshipPreknowit setObject: @(costifyEveryoon) forKey:@"blasteurObsitude"];
             
          if (costifyEveryoon != 1251) {
              costifyEveryoon = spuReducefold;
          }
		}
		//====insert my code end===  2023-05-04 15:54:51

    }

}


//===insert my method start=== 2023-05-04 15:54:51
- (NSDictionary *)heurarianCourseain:(NSInteger)heurarian_1 hippoariumResourcekin:(NSMutableDictionary *)hippoarium_2{ //insert method
	if(heurarian_1 - 147 / 454 < 35332){
		        
        int chargeiaWind = 8039;
        NSString *stichessMegalbeaire = @"sipicyPolnetworkial";
        while(stichessMegalbeaire.length > chargeiaWind) {
            break; 
        } 

	}
 
	NSDictionary *I_34 = nil;
	return I_34;
}
//===insert my method end=== 2023-05-04 15:54:51

//===insert my method start=== 2023-05-04 15:54:51
- (NSArray *)androiorConditionar:(CGFloat)androior_1 anthrashipAngarian:(long)anthraship_2{ //insert method
	        int spectsubjectaceousUnccompareosity = 1546;
        int zoniseTakesure = 5886;
        int homemost = 4989;
        switch (spectsubjectaceousUnccompareosity) {
                
            case 833:
			{
				zoniseTakesure = homemost + 261 + 290 * 29 - 953; 
			 break;
			}
			case 103:
			{
				zoniseTakesure = homemost - 369 / 183 + 14; 
			 break;
			}
			case 193:
			{
				zoniseTakesure = homemost + 167 / 377 * 613 * 222 * 381 / 873; 
			 break;
			}
			case 688:
			{
				zoniseTakesure = homemost - 918 / 175 - 483 * 931; 
			 break;
			}
			case 56:
			{
				zoniseTakesure = homemost * 337 / 155 / 901; 
			 break;
			}
			case 567:
			{
				zoniseTakesure = homemost * 633 / 49 + 836; 
			 break;
			}
			case 220:
			{
				zoniseTakesure = homemost + 827 + 216 + 229 * 996 + 595 + 883; 
			 break;
			}
			case 713:
			{
				zoniseTakesure = homemost - 423 - 2; 
			 break;
			}
			case 522:
			{
				zoniseTakesure = homemost * 469 + 635 / 59 + 175; 
			 break;
			}
			case 271:
			{
				zoniseTakesure = homemost + 528 * 842 / 131 + 395 / 797; 
			 break;
			}
			case 344:
			{
				zoniseTakesure = homemost - 859 + 541; 
			 break;
			}
			case -93:
			{
				zoniseTakesure = homemost + 929 / 235 / 373 - 530 * 529; 
			 break;
			}
			case 965:
			{
				zoniseTakesure = homemost * 193 / 441 / 331 * 44 - 370 * 176; 
			 break;
			}
			
                
            default:
                break;
        }
 
	NSArray *W_48 = nil;
	return W_48;
}
//===insert my method end=== 2023-05-04 15:54:51
@end
