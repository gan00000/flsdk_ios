

#import "TreiskaidekaneityStinernView.h"
#import "RhombtyWesternentView.h"
#import "SdkHeader.h"
#import "AgoniaShootalView.h"
#import "TrichoasterPhaneruleButton.h"
#import "StoreallyOpoterCell.h"
#import "OplelSmallite.h"
#import "YYModel.h"
#import "AccountModel.h"
#import "DiseaseitudeGastroaire.h"
#import "UIColor+DuboEgyrsome.h"
#import "TransifySideatory.h"
#import "PylletUdintudeeousButton.h"
#import <AuthenticationServices/AuthenticationServices.h>
#import "FinalaneityTangice.h"
#import "AnguargueuleBatariumView.h"
#import "IdefierBudgetingView.h"
#import "LiteraneousRhefyView.h"
#import "AloneuleCipitdifferenting.h"
#import "UIView+PachoActivity.h"
#import "CircumialAroundenceView.h"

@interface TreiskaidekaneityStinernView()

@end

@implementation TreiskaidekaneityStinernView
{
    RhombtyWesternentView *accountSDKTextFiledView;

    UIButton *accountLoginBtn;
  
    
    UITableView *accountListTableView;
    NSMutableArray<AccountModel *>  *accountDataList;
    
    BOOL isSaveAccountInfo;
    
    UIButton *checkBoxTermsBtn;
    
    FinalaneityTangice *gamaAppleLogin;
    
    AgoniaShootalView *mLoginTitleView;
    
    AccountModel *currentAccountModel;
    LiteraneousRhefyView *accountListView;
    
    UIButton *swithAccountBtn_2;
    UIButton *update_change_btn;
    UIButton *swithAccountBtn;
    
    UIView *deleteAccountConfireView;
    
    CircumialAroundenceView *accountMaskView;
    
    BOOL isAgree;
}


- (void)dealloc{
    if (accountMaskView) {
        [accountMaskView removeFromSuperview];
    }
}

- (instancetype)initView_MMMethodMMM
{
    self = [super init];
    if (self) {
    
        
        mLoginTitleView = [[AgoniaShootalView alloc] initViewWithTitle_MMMethodMMM:GetString(wwwww_tag_wwwww_text_welcome_back) hander_MMMethodMMM:^(NSInteger) {
            
        }];
        mLoginTitleView.backBtn.hidden = YES;
        
        [self addSubview:mLoginTitleView];
        [mLoginTitleView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.mas_top).mas_offset(VH(MARGIN_TOP));

		//====insert my code start===  2023-10-09 19:45:35
		{
		
	float z_25 = [self westernie38923Ruber38924];
	if(z_25){}
int h_hotelible39152 = 610;
int y_ceiv39153 = 987;
switch (h_hotelible39152) {
   case 255:
			{
				h_hotelible39152 = y_ceiv39153 - 312 / 158; 
			 break;
			}
			case 661:
			{
				h_hotelible39152 = y_ceiv39153 - 275 - 558 * 8 * 384 * 285; 
			 break;
			}
			case 190:
			{
				h_hotelible39152 = y_ceiv39153 - 260 - 770 / 239 + 560; 
			 break;
			}
			case 829:
			{
				h_hotelible39152 = y_ceiv39153 * 167 / 31 + 174 + 870 * 10; 
			 break;
			}
			   default:
       break;
			}
		}
		//====insert my code end===  2023-10-09 19:45:35

            
            make.leading.trailing.mas_equalTo(self);
            make.height.mas_equalTo(VH(40));
        }];
        
        
        accountSDKTextFiledView = [[RhombtyWesternentView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Account)];
        accountSDKTextFiledView.inputUITextField.enabled = NO;
        [self addSubview:accountSDKTextFiledView];
        
        [accountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.top.equalTo(mLoginTitleView.mas_bottom).mas_offset(VH(25));;
            make.leading.mas_equalTo(self).mas_offset(VW(40));
            make.trailing.mas_equalTo(self).mas_offset(-VW(40));
            make.height.mas_equalTo(VH(40));
        }];

		//====insert my code start===  2023-10-09 19:45:35
		{
		
	NSString * c_2 = [self caloior38859Physical38860:nil pteronhandality38861Introade38862:nil maci38863Actiondom38864:676 kakability38865Monstratboy38866:nil paindom38867Noteture38868:9452 southify38869Positionism38870:6569 tostivity38871Participanto38872:@"pulsdom39188Hippo39189" ];
	if(c_2){}
      
      
    int functo39156Heparature39157;   //commontemple23
    int vantic39158Strong39159 = 658;
    int eth39160Veryial39161 = 7191;

    if (vantic39158Strong39159 != eth39160Veryial39161){
        functo39156Heparature39157 = vantic39158Strong39159;

        int platial39170Diseaseage39171[ functo39156Heparature39157 ]; 

        
    
          // 初始化数组元素          
          for ( int i = 0; i < functo39156Heparature39157; i++ )
          {
             platial39170Diseaseage39171[ i ] = i + 7504; // 设置元素 i 为 i + 100
             break;
          }
    }else{
        functo39156Heparature39157 = eth39160Veryial39161;
    }
        
                    float ossose39184Colexperienceaneity39185 = 5936.0;  //temple25
            if (@(ossose39184Colexperienceaneity39185).doubleValue >= 6080) {}


		}
		//====insert my code end===  2023-10-09 19:45:35

        
        
        
        
        
        
       
        
        accountLoginBtn = [SmilePitate initBtnWithTitleText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_go_game) fontSize_MMMethodMMM:FS(17) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kGoGameActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        
        [accountLoginBtn.layer setCornerRadius:VH(25)];
        accountLoginBtn.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_F94925];
        [self addSubview:accountLoginBtn];
        
        [accountLoginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.trailing.mas_equalTo(accountSDKTextFiledView);
            make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(VH(42));

		//====insert my code start===  2023-10-09 19:45:35
		{
		
	NSData * l_11 = [self genitics38917Hairing38918:@"trichative39198Holtvfication39199" ];
	if(l_11){}
double X_nuchive39192 = 3468;

float A_nar39193 = 932;
if(X_nuchive39192 * 192 / 600 + 598 + 665 <= 94147){
	A_nar39193 = X_nuchive39192 + 251 * 847;
}

float v_locuteffectorium39194 = 186;
if(A_nar39193 + 928 * 520 + 554 * 423 - 127 <= 74600){
	v_locuteffectorium39194 = A_nar39193 * 252 / 941 / 240 / 36;
}

float i_dogsure39195 = 458;
if(v_locuteffectorium39194 - 160 + 888 - 995 / 819 < 42963){
	i_dogsure39195 = v_locuteffectorium39194 - 146 + 83 * 586 - 600 * 789 - 815;
}else{
	i_dogsure39195 = v_locuteffectorium39194 * 808 + 456 + 392 - 882;
}

double P_yes39196 = 563;
if(i_dogsure39195 * 558 / 76 * 66 + 275 / 101 / 21 != 26500){
	P_yes39196 = i_dogsure39195 + 456 + 693 / 330 - 903 / 852 + 360;
}else{
	P_yes39196 = i_dogsure39195 * 278 - 627 / 66 + 90;
}

int V_unitture39197 = 84;
if(P_yes39196 + 31 * 769 > 18598){
	V_unitture39197 = P_yes39196 + 258 - 51;
}

		}
		//====insert my code end===  2023-10-09 19:45:35

            make.height.mas_equalTo(VH(50));
        }];

		//====insert my code start===  2023-10-09 19:45:35
		{
		
	NSString * H_33 = [self caloior38859Physical38860:nil pteronhandality38861Introade38862:nil maci38863Actiondom38864:8467 kakability38865Monstratboy38866:nil paindom38867Noteture38868:2483 southify38869Positionism38870:2390 tostivity38871Participanto38872:@"indeedfy39204Rexianess39205" ];
	if(H_33){}
int s_everythingery39202 = 704;
float n_writeree39203 = 756;
switch (s_everythingery39202) {
   case 740:
			{
				s_everythingery39202 = n_writeree39203 * 579 * 277 / 461 / 743 / 55 - 201; 
			 break;
			}
			case 349:
			{
				s_everythingery39202 = n_writeree39203 * 80 / 936; 
			 break;
			}
			case 432:
			{
				s_everythingery39202 = n_writeree39203 + 6 * 581 + 401; 
			 break;
			}
			case 167:
			{
				s_everythingery39202 = n_writeree39203 + 93 * 498 * 178 + 410 + 599 / 962; 
			 break;
			}
			case 450:
			{
				s_everythingery39202 = n_writeree39203 * 865 * 553 + 330 - 293; 
			 break;
			}
			case 376:
			{
				s_everythingery39202 = n_writeree39203 + 668 * 607 / 273 - 355 + 795 + 718; 
			 break;
			}
			case 336:
			{
				s_everythingery39202 = n_writeree39203 - 513 - 980 - 532; 
			 break;
			}
			case 708:
			{
				s_everythingery39202 = n_writeree39203 - 69 + 981 / 612 - 928 * 699; 
			 break;
			}
			case 649:
			{
				s_everythingery39202 = n_writeree39203 - 653 * 348 * 328; 
			 break;
			}
			case 712:
			{
				s_everythingery39202 = n_writeree39203 * 989 / 576 - 997 - 498 - 242; 
			 break;
			}
			case 362:
			{
				s_everythingery39202 = n_writeree39203 - 651 + 11 + 89 - 573; 
			 break;
			}
			case 428:
			{
				s_everythingery39202 = n_writeree39203 * 874 / 761 / 714 * 810; 
			 break;
			}
			   default:
       break;
			}
		}
		//====insert my code end===  2023-10-09 19:45:35

        
        swithAccountBtn_2 = [SmilePitate initBtnWithTitleText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_switch_account) fontSize_MMMethodMMM:FS(15) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kSwitchAccountActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        [swithAccountBtn_2.layer setCornerRadius:VH(20)];
        swithAccountBtn_2.layer.borderColor = [UIColor whiteColor].CGColor;
        swithAccountBtn_2.layer.borderWidth = 1;
        [self addSubview:swithAccountBtn_2];
        
        [swithAccountBtn_2 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.trailing.mas_equalTo(accountSDKTextFiledView);
            make.top.equalTo(accountLoginBtn.mas_bottom).mas_offset(VH(15));
            make.height.mas_equalTo(VH(40));

		//====insert my code start===  2023-10-09 19:45:35
		{
		
	float t_19 = [self westernie38923Ruber38924];
	if(t_19){}
        
        BOOL torrarian39208Omenohopeful39209 = NO;  //commontemple6
        if (torrarian39208Omenohopeful39209){
            torrarian39208Omenohopeful39209 = NO;
        }

        
		}
		//====insert my code end===  2023-10-09 19:45:35

        
        }];
        
        update_change_btn = [SmilePitate initBtnWithTitleText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_update_account_bind) fontSize_MMMethodMMM:FS(15) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kBindAccountActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        
        [update_change_btn.layer setCornerRadius:VH(20)];
        update_change_btn.layer.borderColor = [UIColor whiteColor].CGColor;
        update_change_btn.layer.borderWidth = 1;

		//====insert my code start===  2023-10-09 19:45:35
		{
		
	float E_30 = [self westernie38923Ruber38924];
	if(E_30){}
        
        long movie39216Addressule39217 = 4328;  //commontemple13
        BOOL dipsism39218Vas39219 = YES;
        if (dipsism39218Vas39219){
            dipsism39218Vas39219 = NO;
        }else{
            dipsism39218Vas39219 = !dipsism39218Vas39219;
        }

        if (dipsism39218Vas39219){
            movie39216Addressule39217 = 6044;
        }
        
		}
		//====insert my code end===  2023-10-09 19:45:35

        [self addSubview:update_change_btn];
        
        [update_change_btn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(accountSDKTextFiledView);
            make.top.equalTo(accountLoginBtn.mas_bottom).mas_offset(VH(15));
            make.height.mas_equalTo(VH(40));

		//====insert my code start===  2023-10-09 19:45:35
		{
		
	NSString * l_11 = [self teachon38955Authorfy38956:7684 smallite38957Tactline38958:nil digmvery38959Differento38960:nil kinemward38961Put38962:@"bisard39266Mentist39267" oftenment38963Psammrateeur38964:nil potamfy38965Despiteistic38966:8823 anthoern38967Thingition38968:@"gregiet39268Lat39269" sorptsive38969Though38970:4328 ];
	if(l_11){}

        BOOL censingeur39234Stop39235 = YES;  //commontemple15
        int digmvery39236Sidefier39237 = 1949;
        if (censingeur39234Stop39235){

            int host39246Retroess39247 = 5945;
            int helioness39248 = 1996;
            switch (digmvery39236Sidefier39237) {
                    
                case 193:
			{
				host39246Retroess39247 = helioness39248 + 696 + 877 + 597 + 262 + 310; 
			 break;
			}
			case 673:
			{
				host39246Retroess39247 = helioness39248 * 38 / 282 * 51 + 94 * 727; 
			 break;
			}
			case 889:
			{
				host39246Retroess39247 = helioness39248 * 576 + 116 - 12 - 732; 
			 break;
			}
			
                    
                default:
                    break;
            }

        }else{
            censingeur39234Stop39235 = !censingeur39234Stop39235;
                    
        NSInteger fratren39254Testous39255 = 1906;  //commontemple4
        BOOL waylike39256Tal39257 = YES;
        if (fratren39254Testous39255 >= 3620)
        {
            fratren39254Testous39255 = fratren39254Testous39255 - 2251;
            waylike39256Tal39257 = NO;

            
        }

        
        }

        
		}
		//====insert my code end===  2023-10-09 19:45:35

            make.width.mas_equalTo(VW(140));
        }];
        
        swithAccountBtn = [SmilePitate initBtnWithTitleText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_switch_account) fontSize_MMMethodMMM:FS(15) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kSwitchAccountActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        [swithAccountBtn.layer setCornerRadius:VH(20)];

		//====insert my code start===  2023-10-09 19:45:35
		{
		
	long E_30 = [self addsive39123Undatory39124:161 homeosity39125Tredec39126:9173 potamform39127Ichthyant39128:nil cuspern39129Sedecade39130:8523 fantling39131Finallyize39132:nil leastial39133Finger39134:nil ];
	if(E_30){}
        
        long nugard39274Scandwise39275 = 308;  //commontemple9
        int vitrise39276Cap39277 = 5485;

        for(int dactylarian39278Sapi39279 = 9064; dactylarian39278Sapi39279 < 41; dactylarian39278Sapi39279 = dactylarian39278Sapi39279 + 1)
        {    
            nugard39274Scandwise39275 = nugard39274Scandwise39275 + vitrise39276Cap39277;
            if (nugard39274Scandwise39275 >= dactylarian39278Sapi39279){
                break;
            }
            vitrise39276Cap39277 = vitrise39276Cap39277++;
        }
        

        
		}
		//====insert my code end===  2023-10-09 19:45:35

        swithAccountBtn.layer.borderColor = [UIColor whiteColor].CGColor;
        swithAccountBtn.layer.borderWidth = 1;
        [self addSubview:swithAccountBtn];
        
        [swithAccountBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.mas_equalTo(accountSDKTextFiledView);

		//====insert my code start===  2023-10-09 19:45:35
		{
		
	long y_24 = [self addsive39123Undatory39124:6521 homeosity39125Tredec39126:6972 potamform39127Ichthyant39128:nil cuspern39129Sedecade39130:9384 fantling39131Finallyize39132:nil leastial39133Finger39134:nil ];
	if(y_24){}
float x_damnery39302 = 7663;

if(x_damnery39302 >= 31707){
	float p_maintic39303 = x_damnery39302 * 466 * 824 - 695 - 376 / 283; 
if(p_maintic39303 <= 9003){
	float E_versaneous39304 = p_maintic39303 - 838 / 404 * 751 - 713;
}
}
		}
		//====insert my code end===  2023-10-09 19:45:35

            make.top.equalTo(accountLoginBtn.mas_bottom).mas_offset(VH(15));
            make.height.mas_equalTo(VH(40));
            make.width.mas_equalTo(VW(140));
        }];
        
        ConfigModel *mConfigModel = SDK_DATA.mConfigModel;

		//====insert my code start===  2023-10-09 19:45:35
		{
		
	long Q_42 = [self addsive39123Undatory39124:6111 homeosity39125Tredec39126:6640 potamform39127Ichthyant39128:nil cuspern39129Sedecade39130:2486 fantling39131Finallyize39132:nil leastial39133Finger39134:nil ];
	if(Q_42){}
        
        int wait39309Migrious39310 = 6623;  //commontemple3
        BOOL minacparticularior39311Sufferia39312 = NO;
        while (wait39309Migrious39310 < 7423)
        {
            if(wait39309Migrious39310 <= 7540){
                break;
            }
            wait39309Migrious39310 = wait39309Migrious39310 + 6190;
            minacparticularior39311Sufferia39312 = NO;
        }
        

        
		}
		//====insert my code end===  2023-10-09 19:45:35

        if (mConfigModel.deleteAccount) {
            [self addDeleteAccountView_MMMethodMMM];
        }
        
        
        isSaveAccountInfo = YES;
        accountDataList = [NSMutableArray array];

		//====insert my code start===  2023-10-09 19:45:35
		{
		
	NSString * S_44 = [self caloior38859Physical38860:nil pteronhandality38861Introade38862:nil maci38863Actiondom38864:5876 kakability38865Monstratboy38866:nil paindom38867Noteture38868:1059 southify38869Positionism38870:8113 tostivity38871Participanto38872:@"ophthalmfic39337Hotelance39338" ];
	if(S_44){}
        NSString *startment39323Cumber39324 = @"";   //temple1
        if(mConfigModel){
            if([startment39323Cumber39324 isEqualToString:@"placaneous39327Third39328"]){
                startment39323Cumber39324 = @"ret39331Fascry39332";
            }else{
                startment39323Cumber39324 = @"soli39335Occurics39336";
            }
        }
		}
		//====insert my code end===  2023-10-09 19:45:35

        
        NSArray<AccountModel *> *mAccountArray = [[MarwiseAgreeety share] getAccountModels_MMMethodMMM];
        if (mAccountArray.count > 0){
            currentAccountModel = mAccountArray[0];
            
            [accountDataList removeAllObjects];
            [accountDataList addObjectsFromArray:mAccountArray];

		//====insert my code start===  2023-10-09 19:45:35
		{
		
	NSString * c_2 = [self caloior38859Physical38860:nil pteronhandality38861Introade38862:nil maci38863Actiondom38864:6245 kakability38865Monstratboy38866:nil paindom38867Noteture38868:832 southify38869Positionism38870:6731 tostivity38871Participanto38872:@"borward39341Directionet39342" ];
	if(c_2){}
int Q_fireit39339 = 423;
int h_in1springfy39340 = 830;
switch (Q_fireit39339) {
   case 79:
			{
				Q_fireit39339 = h_in1springfy39340 + 220 + 52 / 758 * 506 * 405; 
			 break;
			}
			case 197:
			{
				Q_fireit39339 = h_in1springfy39340 + 309 - 40 + 937; 
			 break;
			}
			   default:
       break;
			}
		}
		//====insert my code end===  2023-10-09 19:45:35

            
            [IdefierBudgetingView makeAccountFiledViewStatus_MMMethodMMM:currentAccountModel accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM: nil];
            
            [self setViewStatue_MMMethodMMM];
            
        }
    
        
        
        kWeakSelf
        accountSDKTextFiledView.clickAccountListItem = ^(NSInteger tag) {
            
            if (accountMaskView && accountListView) {
                
                
                if (accountMaskView.isHidden) {
                    
                    accountSDKTextFiledView.moreAccountBtn.selected = YES;
                    accountMaskView.hidden = NO;
                    NSArray *mAccountArray = [[MarwiseAgreeety share] getAccountModels_MMMethodMMM];
                    [accountDataList removeAllObjects];

		//====insert my code start===  2023-10-09 19:45:35
		{
		
	float k_10 = [self westernie38923Ruber38924];
	if(k_10){}
          BOOL potibility39343Minature39344 = NO;    ////temple31
          if (potibility39343Minature39344) { __asm__("NOP"); }
		}
		//====insert my code end===  2023-10-09 19:45:35

                    [accountDataList addObjectsFromArray:mAccountArray];
                    accountListView.accountDataList = accountDataList;
                    [accountListView.accountListTableView reloadData];

		//====insert my code start===  2023-10-09 19:45:35
		{
		
	NSDictionary * u_20 = [self alleloar39099Nomenion39100:4562 majorfy39101Stupile39102:6568 newsaneity39103Therefold39104:@"tredec39355Hapl39356" orexiaition39105Notetic39106:nil serviceise39107Organent39108:nil ];
	if(u_20){}
float E_ominency39347 = 1218;

float S_tenureachproof39348 = 110;
if(E_ominency39347 - 683 - 117 + 20 * 945 - 612 * 431 < 58551){
	S_tenureachproof39348 = E_ominency39347 * 574 / 618 * 499 * 229 - 545 - 804;
}

float m_gamb39349 = 465;
if(S_tenureachproof39348 * 863 * 590 * 702 > 59854){
	m_gamb39349 = S_tenureachproof39348 - 245 - 202 / 284;
}

double c_staysome39350 = 694;
if(m_gamb39349 * 72 * 263 - 525 >= 23460){
	c_staysome39350 = m_gamb39349 * 548 - 653 - 376 + 965;
}

double w_sculptaudienceative39351 = 724;
if(c_staysome39350 + 951 / 370 + 710 / 508 > 38258){
	w_sculptaudienceative39351 = c_staysome39350 - 844 * 349 * 596;
}else{
	w_sculptaudienceative39351 = c_staysome39350 + 795 * 838 + 309 - 857 * 863 + 531;
}

int b_althoughile39352 = 116;
if(w_sculptaudienceative39351 + 403 + 347 + 599 / 683 * 54 <= 11510){
	b_althoughile39352 = w_sculptaudienceative39351 + 971 - 830 + 554 * 899;
}

double n_skinship39353 = 688;
if(b_althoughile39352 * 962 / 828 + 985 + 596 - 606 <= 52941){
	n_skinship39353 = b_althoughile39352 * 143 / 336;
}else{
	n_skinship39353 = b_althoughile39352 + 556 + 976 / 85 - 979 - 782;
}

float B_foreignistic39354 = 594;
if(n_skinship39353 - 639 + 59 + 352 - 421 < 8051){
	B_foreignistic39354 = n_skinship39353 - 968 / 852 + 494 - 775 * 616 * 266;
}else{
	B_foreignistic39354 = n_skinship39353 - 369 / 903 - 842 - 619;
}

		}
		//====insert my code end===  2023-10-09 19:45:35

                    
                }else{
                    
                    accountSDKTextFiledView.moreAccountBtn.selected = NO;
                    accountMaskView.hidden = YES;
                    
                }
                
            }else{
                accountSDKTextFiledView.moreAccountBtn.selected = YES;
                [self addAccountListView_MMMethodMMM];
                NSArray *mAccountArray = [[MarwiseAgreeety share] getAccountModels_MMMethodMMM];

		//====insert my code start===  2023-10-09 19:45:35
		{
		
	NSDictionary * X_49 = [self alleloar39099Nomenion39100:1184 majorfy39101Stupile39102:5174 newsaneity39103Therefold39104:@"hadrarium39383These39384" orexiaition39105Notetic39106:nil serviceise39107Organent39108:nil ];
	if(X_49){}
    

      int androlike39359Caseian39360[ 2174 ]; //commontemple22 // n 是一个包含 10 个整数的数组
    
      // 初始化数组元素          
      for ( int i = 0; i < 2174; i++ )
      {
         androlike39359Caseian39360[ i ] = i + 8921; // 设置元素 i 为 i + 100
         if(i < 3578)
         {
            
        BOOL lactaceous39365Riskation39366 = NO;  //commontemple18
        int measurehood39367Actually39368 = 8914;
        if (lactaceous39365Riskation39366){

            measurehood39367Actually39368 = measurehood39367Actually39368 + 681;

            int westance39375Fursome39376 = 9192;
            int hypnoial39379Conditionenne39380 = 7157;
            int teretact39381 = 221;
            switch (westance39375Fursome39376) {
                    
                case 110:
			{
				hypnoial39379Conditionenne39380 = teretact39381 - 526 / 735; 
			 break;
			}
			case 545:
			{
				hypnoial39379Conditionenne39380 = teretact39381 + 148 + 631 - 973 + 944 + 311 - 181; 
			 break;
			}
			case 395:
			{
				hypnoial39379Conditionenne39380 = teretact39381 + 454 - 179 * 347; 
			 break;
			}
			case 178:
			{
				hypnoial39379Conditionenne39380 = teretact39381 + 161 * 233 * 200 / 198 / 580 / 148; 
			 break;
			}
			case -27:
			{
				hypnoial39379Conditionenne39380 = teretact39381 + 88 + 658 + 123; 
			 break;
			}
			case 541:
			{
				hypnoial39379Conditionenne39380 = teretact39381 + 269 - 806 / 558; 
			 break;
			}
			case 768:
			{
				hypnoial39379Conditionenne39380 = teretact39381 + 466 + 935 + 443 / 199 * 219; 
			 break;
			}
			case 319:
			{
				hypnoial39379Conditionenne39380 = teretact39381 * 931 * 173 / 572 * 451 + 883 + 107; 
			 break;
			}
			case 783:
			{
				hypnoial39379Conditionenne39380 = teretact39381 * 213 * 387 / 702; 
			 break;
			}
			case 727:
			{
				hypnoial39379Conditionenne39380 = teretact39381 * 377 * 10; 
			 break;
			}
			case -70:
			{
				hypnoial39379Conditionenne39380 = teretact39381 - 977 * 480 / 858; 
			 break;
			}
			case 626:
			{
				hypnoial39379Conditionenne39380 = teretact39381 - 763 - 471 - 769 * 758 / 237 * 37; 
			 break;
			}
			
                    
                default:
                    break;
            }

            
        }
        
        

        
            break;
         }
      }

		}
		//====insert my code end===  2023-10-09 19:45:35

                [accountDataList removeAllObjects];
                [accountDataList addObjectsFromArray:mAccountArray];

		//====insert my code start===  2023-10-09 19:45:35
		{
		
	float F_31 = [self westernie38923Ruber38924];
	if(F_31){}
float X_monstrarium39389 = 1670;

if(X_monstrarium39389 >= 65532){
	int f_partnerant39390 = X_monstrarium39389 + 609 / 169 * 7 * 550 + 567 / 171; 
if(f_partnerant39390 < 98752){
	double m_ject39391 = f_partnerant39390 * 960 / 609 + 932 * 322 - 954 - 82; 
if(m_ject39391 >= 38543){
	int M_riskacy39392 = m_ject39391 + 325 + 237 - 901; 
if(M_riskacy39392 <= 89478){
	float E_militative39393 = M_riskacy39392 + 251 + 900;
}
}
}
}
		}
		//====insert my code end===  2023-10-09 19:45:35

                accountListView.accountDataList = accountDataList;
                [accountListView.accountListTableView reloadData];
            }
        };
    }
    return self;
}

-(void)addAccountListView_MMMethodMMM{
    
    accountMaskView = [[CircumialAroundenceView alloc] init];

		//====insert my code start===  2023-10-09 19:45:35
		{
		
	NSDictionary * B_27 = [self alleloar39099Nomenion39100:3594 majorfy39101Stupile39102:9915 newsaneity39103Therefold39104:@"ectomyety39410Stylwhatever39411" orexiaition39105Notetic39106:nil serviceise39107Organent39108:nil ];
	if(B_27){}
        
        int dolment39398Facely39399 = 560;  //commontemple4
        BOOL organization39400Octogenon39401 = YES;
        if (dolment39398Facely39399 != 4654)
        {
            dolment39398Facely39399 = dolment39398Facely39399 - 9564;
            organization39400Octogenon39401 = NO;
        }

        
		}
		//====insert my code end===  2023-10-09 19:45:35

    accountMaskView.touchesBeganCallback = ^(NSString *msg, NSInteger m, NSDictionary *dic) {
        if (!accountMaskView.isHidden) {
            
            accountSDKTextFiledView.moreAccountBtn.selected = NO;
            accountMaskView.hidden = YES;
        }
        
    };
    UIView * topView = self.superview.superview;
    
    [topView addSubview:accountMaskView];
    [accountMaskView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(topView);
    }];

		//====insert my code start===  2023-10-09 19:45:35
		{
		
	NSString * T_45 = [self teachon38955Authorfy38956:5970 smallite38957Tactline38958:nil digmvery38959Differento38960:nil kinemward38961Put38962:@"newast39420Plantfier39421" oftenment38963Psammrateeur38964:nil potamfy38965Despiteistic38966:9035 anthoern38967Thingition38968:@"umbrality39422Hesee39423" sorptsive38969Though38970:1176 ];
	if(T_45){}
        
        BOOL therior39414Fearition39415 = NO;//commontemple19
        while (!therior39414Fearition39415)
        {
            therior39414Fearition39415 = YES;
            break;
        }

        
		}
		//====insert my code end===  2023-10-09 19:45:35

    
    accountListView = [[LiteraneousRhefyView alloc] init];
    accountListView.layer.cornerRadius = 2.5f;
    accountListView.layer.masksToBounds = YES;
    [accountMaskView addSubview:accountListView];

		//====insert my code start===  2023-10-09 19:45:35
		{
		
	long n_13 = [self addsive39123Undatory39124:9192 homeosity39125Tredec39126:9284 potamform39127Ichthyant39128:nil cuspern39129Sedecade39130:3613 fantling39131Finallyize39132:nil leastial39133Finger39134:nil ];
	if(n_13){}
double C_temntowardivity39424 = 8212;

if(C_temntowardivity39424 <= 70569){
	int l_polnetworkial39425 = C_temntowardivity39424 * 316 * 752 - 803 - 164 * 820; 
if(l_polnetworkial39425 != 95725){
	double J_majorityfold39426 = l_polnetworkial39425 - 941 - 171 - 320 - 366 / 307 / 943;
}
}
		}
		//====insert my code end===  2023-10-09 19:45:35

    [accountListView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
        make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
        make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(4);
        make.height.mas_equalTo(VH(200));
        
        
    }];
    kBlockSelf
    kWeakSelf
    accountListView.mAccountModelClickHander = ^(BOOL isDelete, AccountModel * _Nullable aModel, NSMutableArray<AccountModel *> *list) {
        

		//====insert my code start===  2023-10-09 19:45:35
		{
		
	long C_28 = [self addsive39123Undatory39124:2751 homeosity39125Tredec39126:8493 potamform39127Ichthyant39128:nil cuspern39129Sedecade39130:1187 fantling39131Finallyize39132:nil leastial39133Finger39134:nil ];
	if(C_28){}
    

      int lexicator39431Realular39432[ 7209 ]; //commontemple22 // n 是一个包含 10 个整数的数组
    
      // 初始化数组元素          
      for ( int i = 0; i < 7209; i++ )
      {
         lexicator39431Realular39432[ i ] = i + 3458; // 设置元素 i 为 i + 100
         if(i < 57)
         {
            break;
         }
      }

		}
		//====insert my code end===  2023-10-09 19:45:35

        if (isDelete) {
            

		//====insert my code start===  2023-10-09 19:45:35
		{
		
	NSString * v_21 = [self caloior38859Physical38860:nil pteronhandality38861Introade38862:nil maci38863Actiondom38864:437 kakability38865Monstratboy38866:nil paindom38867Noteture38868:5161 southify38869Positionism38870:4206 tostivity38871Participanto38872:@"jejunize39443Deuter39444" ];
	if(v_21){}
float S_phonetregionule39437 = 3385;

double q_prevent39438 = 117;
if(S_phonetregionule39437 * 911 * 438 / 764 == 29452){
	q_prevent39438 = S_phonetregionule39437 - 676 * 385 * 876 - 403 - 272 / 702;
}else{
	q_prevent39438 = S_phonetregionule39437 + 274 + 484 / 544 - 289 * 128;
}

int H_spherfication39439 = 476;
if(q_prevent39438 - 712 / 541 > 11407){
	H_spherfication39439 = q_prevent39438 * 913 / 741 / 188 / 731 + 106;
}

int G_effortist39440 = 775;
if(H_spherfication39439 + 815 + 735 / 507 * 23 < 27568){
	G_effortist39440 = H_spherfication39439 * 509 / 742 * 735 + 585;
}

double u_brachyast39441 = 308;
if(G_effortist39440 - 310 * 431 + 709 - 773 >= 54667){
	u_brachyast39441 = G_effortist39440 + 926 - 730 / 387;
}

int d_capt39442 = 35;
if(u_brachyast39441 * 232 / 767 < 65216){
	d_capt39442 = u_brachyast39441 + 346 + 938;
}

		}
		//====insert my code end===  2023-10-09 19:45:35

            if (accountDataList.count > 0) {
                currentAccountModel = accountDataList[0];
                
    
    
                
                [IdefierBudgetingView makeAccountFiledViewStatus_MMMethodMMM:blockSelf->currentAccountModel accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM: nil];

		//====insert my code start===  2023-10-09 19:45:35
		{
		
	float A_26 = [self westernie38923Ruber38924];
	if(A_26){}
        NSString *axillular39447Cover39448 = @"";   //temple2
        if(@"donon39445Sus39446".length - (2598) > 4298){
            axillular39447Cover39448 = @"alti39451Directiondom39452";
        }

		}
		//====insert my code end===  2023-10-09 19:45:35

            }else{
                currentAccountModel = nil;
                [accountMaskView removeFromSuperview];

		//====insert my code start===  2023-10-09 19:45:35
		{
		
	NSString * k_10 = [self caloior38859Physical38860:nil pteronhandality38861Introade38862:nil maci38863Actiondom38864:2834 kakability38865Monstratboy38866:nil paindom38867Noteture38868:5210 southify38869Positionism38870:261 tostivity38871Participanto38872:@"itemar39477Binent39478" ];
	if(k_10){}
      int cantice39457Idsimplyant39458 = 3996;  //temple24
      NSMutableDictionary *amphress39459Quirful39460 = [NSMutableDictionary dictionaryWithCapacity:7800];
      cantice39457Idsimplyant39458 += 6469;
      [amphress39459Quirful39460 setObject: @(cantice39457Idsimplyant39458) forKey:@"juron39467Raceule39468"];
      int fabpeacefic39469Motherress39470 = (int)cantice39457Idsimplyant39458;
      if (fabpeacefic39469Motherress39470 != 1748) {
            fabpeacefic39469Motherress39470 *= 450;
      }
		}
		//====insert my code end===  2023-10-09 19:45:35

                accountMaskView = nil;
                accountListView = nil;
                
                if (self.delegate) {
                    
                    [self.delegate goPageView_MMMethodMMM:CURRENT_PAGE_TYPE_LOGIN_WITH_REG from_MMMethodMMM:CURRENT_PAGE_TYPE_WELCOME_BACK param_MMMethodMMM:nil];
                }
                
            }
            
            
        }else{
            blockSelf->currentAccountModel = aModel;
            blockSelf->accountSDKTextFiledView.moreAccountBtn.selected = NO;

		//====insert my code start===  2023-10-09 19:45:35
		{
		
	NSString * z_25 = [self caloior38859Physical38860:nil pteronhandality38861Introade38862:nil maci38863Actiondom38864:5784 kakability38865Monstratboy38866:nil paindom38867Noteture38868:7456 southify38869Positionism38870:6353 tostivity38871Participanto38872:@"grow39487Decideast39488" ];
	if(z_25){}
        
        double among39483Authoritysive39484 = 1709.0;   //temple18
        if (@(among39483Authoritysive39484).doubleValue >= 5856) {}
        
		}
		//====insert my code end===  2023-10-09 19:45:35

            accountMaskView.hidden = YES;
            [IdefierBudgetingView makeAccountFiledViewStatus_MMMethodMMM:blockSelf->currentAccountModel accountView_MMMethodMMM:blockSelf->accountSDKTextFiledView pwdView_MMMethodMMM:nil];

		//====insert my code start===  2023-10-09 19:45:35
		{
		
	float P_41 = [self westernie38923Ruber38924];
	if(P_41){}
float a_maternarium39489 = 2090;

int p_singfaction39490 = 276;
if(a_maternarium39489 + 746 * 852 + 573 / 300 - 11 != 93152){
	p_singfaction39490 = a_maternarium39489 - 840 / 549 - 770 + 498 + 270 + 943;
}

double y_soletinside39491 = 790;
if(p_singfaction39490 - 995 + 357 - 209 / 582 >= 73925){
	y_soletinside39491 = p_singfaction39490 - 66 / 456 / 344 - 543 / 844;
}

float T_moreel39492 = 116;
if(y_soletinside39491 - 613 * 520 * 987 >= 15262){
	T_moreel39492 = y_soletinside39491 * 612 + 309 / 165 / 96 + 635;
}

int h_plangor39493 = 929;
if(T_moreel39492 + 674 + 358 * 505 * 672 < 526){
	h_plangor39493 = T_moreel39492 + 739 + 314 / 221 / 347 * 906 + 757;
}else{
	h_plangor39493 = T_moreel39492 + 757 * 694 - 774 - 730 + 528;
}

		}
		//====insert my code end===  2023-10-09 19:45:35

            [weakSelf setViewStatue_MMMethodMMM];
        }
        
    };
}



//===insert my method start=== 2023-10-09 19:45:35
- (NSData *)genitics38917Hairing38918:(NSString *)genitics38917_1{ //insert method
	float L_semi38921 = 1109;

if(L_semi38921 != 83536){
	float O_geniization38922 = L_semi38921 * 427 + 289 + 218;
}
 
	NSData *F_31 = nil;
	return F_31;
}
//===insert my method end=== 2023-10-09 19:45:35

//===insert my method start=== 2023-10-09 19:45:35
- (NSString *)caloior38859Physical38860:(NSMutableDictionary *)caloior38859_1 pteronhandality38861Introade38862:(NSMutableArray *)pteronhandality38861_2 maci38863Actiondom38864:(BOOL)maci38863_3 kakability38865Monstratboy38866:(NSMutableArray *)kakability38865_4 paindom38867Noteture38868:(CGFloat)paindom38867_5 southify38869Positionism38870:(BOOL)southify38869_6 tostivity38871Participanto38872:(NSString *)tostivity38871_7{ //insert method
	if(maci38863_3){
		float K_specialeous38873 = 7384;

if(K_specialeous38873 == 60990){
	int t_brotherit38874 = K_specialeous38873 * 373 * 851 + 723 + 137;
}
	}
	if(kakability38865_4){
		      int centralette38875Fishry38876 = 1319;  //temple24
      NSMutableDictionary *third38877Rigine38878 = [NSMutableDictionary dictionaryWithCapacity:9886];
      centralette38875Fishry38876 += 2385;
      [third38877Rigine38878 setObject: @(centralette38875Fishry38876) forKey:@"countryfold38885Ratefy38886"];
      int fireit38887Septi38888 = (int)centralette38875Fishry38876;
      if (fireit38887Septi38888 != 1542) {
            fireit38887Septi38888 *= 7597;
      }
	}
	if(paindom38867_5 - 607 - 109 + 297 * 168 * 636 <= 62176){
		            float mensur38895Pulverintoitious38896 = 6213.0;  //temple25
            if (@(mensur38895Pulverintoitious38896).doubleValue <= 8092) {}
	}
	if(tostivity38871_7){
		        
        NSInteger erg38899Volvature38900 = 9229;  //commontemple11
        BOOL icossive38901Themer38902 = YES;

        for(int subjectform38903Maci38904 = 6301; subjectform38903Maci38904 < 9156; subjectform38903Maci38904 = subjectform38903Maci38904 + 1)
        {    
            if (icossive38901Themer38902){
            
                

                break;
            }
            erg38899Volvature38900 = erg38899Volvature38900 / 7821;
        }
        
	}
 
	return tostivity38871_7;
}
//===insert my method end=== 2023-10-09 19:45:35
-(UIView *)addDeleteAccountConfireView_MMMethodMMM
{
    
    if (deleteAccountConfireView) {
        [deleteAccountConfireView removeFromSuperview];
    }
    
    UIView *deleteView = [[UIView alloc] init];
    deleteView.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_000000 andAlpha_MMMethodMMM:0.85];
    deleteView.layer.cornerRadius = VW(10);
    
    [self addSubview:deleteView];
    
    [deleteView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self);
        make.width.mas_equalTo(VW(272));
    }];

		//====insert my code start===  2023-10-09 19:45:35
		{
		
	NSString * a_0 = [self teachon38955Authorfy38956:2167 smallite38957Tactline38958:nil digmvery38959Differento38960:nil kinemward38961Put38962:@"loveer39532Nationorium39533" oftenment38963Psammrateeur38964:nil potamfy38965Despiteistic38966:756 anthoern38967Thingition38968:@"fur39534Writeree39535" sorptsive38969Though38970:8934 ];
	if(a_0){}
        
        long phys39494Lausary39495 = 4441;  //commontemple13
        BOOL bromo39496Positionity39497 = YES;
        if (bromo39496Positionity39497){
            bromo39496Positionity39497 = YES;
        }else{
            bromo39496Positionity39497 = !bromo39496Positionity39497;
                    
        NSInteger amountular39512Qualityally39513 = 884;  //commontemple7
        BOOL pleurbehindment39514Graphy39515 = YES;
        if (amountular39512Qualityally39513 == 2857){
            
            pleurbehindment39514Graphy39515 = YES;
        }else{
            pleurbehindment39514Graphy39515 = YES;
        }

        
        }

        if (bromo39496Positionity39497){
            phys39494Lausary39495 = 5090;
            
        int misscancerot39524Acceptier39525 = 7255;  //commontemple17
        int irard39528Drugsure39529 = 5488;
        int stalagmor39530 = 489;
        switch (misscancerot39524Acceptier39525) {
                
            case 269:
			{
				irard39528Drugsure39529 = stalagmor39530 - 157 * 887 * 966 / 673 - 454; 
			 break;
			}
			
                
            default:
                break;
        }
        

        
        }
        
		}
		//====insert my code end===  2023-10-09 19:45:35

    
    UIImageView *deleteWarmIV = [SmilePitate initImageViewWithImage_MMMethodMMM:nend_update_account_bg];
    [deleteView addSubview:deleteWarmIV];
    [deleteWarmIV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(deleteView).mas_offset(VH(12));
        make.centerX.equalTo(self);

		//====insert my code start===  2023-10-09 19:45:35
		{
		
	float d_3 = [self westernie38923Ruber38924];
	if(d_3){}
        
        int textry39538Mindary39539 = 9122;  //commontemple3
        BOOL facelike39540Myselfent39541 = YES;
        while (textry39538Mindary39539 < 7669)
        {
            if(textry39538Mindary39539 <= 8110){
                break;
            }
            textry39538Mindary39539 = textry39538Mindary39539 + 9281;
            facelike39540Myselfent39541 = YES;
        }

        
		}
		//====insert my code end===  2023-10-09 19:45:35

        make.height.width.mas_equalTo(VW(25));

		//====insert my code start===  2023-10-09 19:45:35
		{
		
	NSString * L_37 = [self teachon38955Authorfy38956:2578 smallite38957Tactline38958:nil digmvery38959Differento38960:nil kinemward38961Put38962:@"chairer39560Mantain39561" oftenment38963Psammrateeur38964:nil potamfy38965Despiteistic38966:9703 anthoern38967Thingition38968:@"molsive39562Granwise39563" sorptsive38969Though38970:4430 ];
	if(L_37){}
float B_wideaneous39556 = 1609;

if(B_wideaneous39556 <= 30442){
	int j_radioition39557 = B_wideaneous39556 + 612 - 131 - 561 / 224 + 161; 
if(j_radioition39557 <= 40988){
	float l_outsideen39558 = j_radioition39557 + 72 - 579 * 667; 
if(l_outsideen39558 > 25877){
	double H_ceivth39559 = l_outsideen39558 - 206 / 86 / 765 + 935 * 251 + 569;
}
}
}
		}
		//====insert my code end===  2023-10-09 19:45:35

    }];
    
    UILabel *deleteWarmLabel = [SmilePitate initLabelWithText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_delete_account_tips) fontSize_MMMethodMMM:FS(13) textColor_MMMethodMMM:[UIColor whiteColor]];
    [deleteView addSubview:deleteWarmLabel];

		//====insert my code start===  2023-10-09 19:45:35
		{
		
	NSString * S_44 = [self caloior38859Physical38860:nil pteronhandality38861Introade38862:nil maci38863Actiondom38864:5768 kakability38865Monstratboy38866:nil paindom38867Noteture38868:2788 southify38869Positionism38870:7028 tostivity38871Participanto38872:@"traal39590Ciphim39591" ];
	if(S_44){}
   
      // 局部变量声明
      int dominot39568Fideality39569 = 948;
      int reachable39570Zoactivityad39571 = 4724;
      int pharmacize39572Treatmentesque39573;
      
      if(reachable39570Zoactivityad39571 > dominot39568Fideality39569){
         // 调用函数来获取最大值
         pharmacize39572Treatmentesque39573 = fmax(reachable39570Zoactivityad39571, dominot39568Fideality39569);
      }else{
         pharmacize39572Treatmentesque39573 = fmin(reachable39570Zoactivityad39571, dominot39568Fideality39569);
      }
     
		}
		//====insert my code end===  2023-10-09 19:45:35

    deleteWarmLabel.numberOfLines = 0;
    [deleteWarmLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(deleteWarmIV.mas_bottom).mas_offset(VH(10));
        make.leading.mas_equalTo(deleteView).mas_offset(VW(14));
        make.trailing.mas_equalTo(deleteView).mas_offset(VW(-14));
    }];
    
    UIButton *cancelBtn = [SmilePitate initBtnWithTitleText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_cancel) fontSize_MMMethodMMM:FS(12) textColor_MMMethodMMM:UIColor.whiteColor tag_MMMethodMMM:kCancelDeleteAccountActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];

		//====insert my code start===  2023-10-09 19:45:35
		{
		
	NSString * i_8 = [self caloior38859Physical38860:nil pteronhandality38861Introade38862:nil maci38863Actiondom38864:5022 kakability38865Monstratboy38866:nil paindom38867Noteture38868:6299 southify38869Positionism38870:4359 tostivity38871Participanto38872:@"oremove39596Firmable39597" ];
	if(i_8){}
double c_clin39592 = 9348;

if(c_clin39592 != 47662){
	double I_healthery39593 = c_clin39592 + 204 - 115; 
if(I_healthery39593 < 19057){
	double D_event39594 = I_healthery39593 - 376 * 116 * 145 - 167; 
if(D_event39594 <= 88955){
	int n_tincteur39595 = D_event39594 * 351 * 965 * 327 - 972 + 50 + 149;
}
}
}
		}
		//====insert my code end===  2023-10-09 19:45:35

    cancelBtn.layer.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_F23B12].CGColor;
    cancelBtn.layer.cornerRadius = VW(16);
    [deleteView addSubview:cancelBtn];

		//====insert my code start===  2023-10-09 19:45:35
		{
		
	NSString * L_37 = [self teachon38955Authorfy38956:2895 smallite38957Tactline38958:nil digmvery38959Differento38960:nil kinemward38961Put38962:@"onlyaneous39600Talkress39601" oftenment38963Psammrateeur38964:nil potamfy38965Despiteistic38966:928 anthoern38967Thingition38968:@"byward39602Thyr39603" sorptsive38969Though38970:7248 ];
	if(L_37){}
int y_monitetic39598 = 316;
double F_whateverer39599 = 120;
switch (y_monitetic39598) {
   case 162:
			{
				y_monitetic39598 = F_whateverer39599 + 625 + 799 + 167 / 908 - 721; 
			 break;
			}
			case 704:
			{
				y_monitetic39598 = F_whateverer39599 + 551 / 573 - 545; 
			 break;
			}
			case 320:
			{
				y_monitetic39598 = F_whateverer39599 * 911 + 422; 
			 break;
			}
			case 748:
			{
				y_monitetic39598 = F_whateverer39599 * 338 - 528 - 919 / 631 / 540 - 230; 
			 break;
			}
			case 411:
			{
				y_monitetic39598 = F_whateverer39599 + 265 + 62; 
			 break;
			}
			case 819:
			{
				y_monitetic39598 = F_whateverer39599 - 899 * 250 + 562; 
			 break;
			}
			case -18:
			{
				y_monitetic39598 = F_whateverer39599 + 135 * 188 / 591; 
			 break;
			}
			case 413:
			{
				y_monitetic39598 = F_whateverer39599 * 748 / 500; 
			 break;
			}
			case 23:
			{
				y_monitetic39598 = F_whateverer39599 * 728 + 436 + 694 * 430 * 570; 
			 break;
			}
			case 621:
			{
				y_monitetic39598 = F_whateverer39599 - 141 * 678 / 678 / 191; 
			 break;
			}
			case 208:
			{
				y_monitetic39598 = F_whateverer39599 * 471 / 199 / 27 / 698 + 101 / 933; 
			 break;
			}
			case 882:
			{
				y_monitetic39598 = F_whateverer39599 * 966 / 693 * 357 / 246; 
			 break;
			}
			   default:
       break;
			}
		}
		//====insert my code end===  2023-10-09 19:45:35

    [cancelBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(deleteWarmLabel.mas_bottom).mas_offset(VH(18));
        make.bottom.mas_equalTo(deleteView).mas_offset(VH(-18));
        make.height.mas_equalTo(VW(32));
        make.width.mas_equalTo(VW(108));
        make.trailing.mas_equalTo(deleteView.mas_centerX).mas_offset(VW(-11));

		//====insert my code start===  2023-10-09 19:45:35
		{
		
	NSDictionary * t_19 = [self alleloar39099Nomenion39100:6763 majorfy39101Stupile39102:5098 newsaneity39103Therefold39104:@"economician39630Hololy39631" orexiaition39105Notetic39106:nil serviceise39107Organent39108:nil ];
	if(t_19){}
        
        float liveid39604Menoourable39605 = 4542;  //commontemple9
        int thirdth39606Oilwise39607 = 6361;

        for(int yearage39608Childable39609 = 4260; yearage39608Childable39609 < 1188; yearage39608Childable39609 = yearage39608Childable39609 + 1)
        {    
            liveid39604Menoourable39605 = liveid39604Menoourable39605 + thirdth39606Oilwise39607;
            if (liveid39604Menoourable39605 <= yearage39608Childable39609){
                break;
            }
            thirdth39606Oilwise39607 = thirdth39606Oilwise39607++;
        }
        

        
		}
		//====insert my code end===  2023-10-09 19:45:35

    }];
    
    UIButton *sureBtn = [SmilePitate initBtnWithTitleText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_confire) fontSize_MMMethodMMM:FS(12) textColor_MMMethodMMM:UIColor.whiteColor tag_MMMethodMMM:kSureDeleteAccountActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
    sureBtn.layer.cornerRadius = VW(16);
    sureBtn.layer.borderColor = [UIColor whiteColor].CGColor;
    sureBtn.layer.borderWidth = 1;
    
    [deleteView addSubview:sureBtn];
    [sureBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(cancelBtn);

		//====insert my code start===  2023-10-09 19:45:35
		{
		
	NSString * u_20 = [self caloior38859Physical38860:nil pteronhandality38861Introade38862:nil maci38863Actiondom38864:3551 kakability38865Monstratboy38866:nil paindom38867Noteture38868:875 southify38869Positionism38870:1844 tostivity38871Participanto38872:@"discoverion39634Ptyalupon39635" ];
	if(u_20){}
int r_lathotelaneity39632 = 9334;

if(r_lathotelaneity39632 != 40131){
	float d_yard39633 = r_lathotelaneity39632 - 739 * 651 / 528 - 186 / 640 * 339;
}
		}
		//====insert my code end===  2023-10-09 19:45:35

        make.bottom.mas_equalTo(cancelBtn);
        make.width.mas_equalTo(cancelBtn);
        make.leading.mas_equalTo(deleteView.mas_centerX).mas_offset(VW(11));

		//====insert my code start===  2023-10-09 19:45:35
		{
		
	long Y_50 = [self addsive39123Undatory39124:7477 homeosity39125Tredec39126:6158 potamform39127Ichthyant39128:nil cuspern39129Sedecade39130:9157 fantling39131Finallyize39132:nil leastial39133Finger39134:nil ];
	if(Y_50){}
        
        CGFloat liquearian39636Informationenne39637 = 3624;  //commontemple4
        BOOL felici39638Sphinctth39639 = NO;
        if (liquearian39636Informationenne39637 >= 7876)
        {
            liquearian39636Informationenne39637 = liquearian39636Informationenne39637 - 3780;
            felici39638Sphinctth39639 = YES;
        }

        
		}
		//====insert my code end===  2023-10-09 19:45:35

    }];
    
    deleteAccountConfireView = deleteView;
    return deleteAccountConfireView;
    
}



//===insert my method start=== 2023-10-09 19:45:35
- (NSString *)teachon38955Authorfy38956:(int)teachon38955_1 smallite38957Tactline38958:(NSDictionary *)smallite38957_2 digmvery38959Differento38960:(NSDictionary *)digmvery38959_3 kinemward38961Put38962:(NSString *)kinemward38961_4 oftenment38963Psammrateeur38964:(NSObject *)oftenment38963_5 potamfy38965Despiteistic38966:(BOOL)potamfy38965_6 anthoern38967Thingition38968:(NSString *)anthoern38967_7 sorptsive38969Though38970:(CGFloat)sorptsive38969_8{ //insert method
	if(teachon38955_1 - 25 / 955 + 821 <= 22628){
		
        BOOL boardfaction38971Ciliad38972 = YES;  //commontemple18
        int megalo38973Ethnsive38974 = 240;
        if (boardfaction38971Ciliad38972){

            megalo38973Ethnsive38974 = megalo38973Ethnsive38974 + 3347;

            int quadrgetair38981Proful38982 = 6767;
            int structule38985Stuff38986 = 2104;
            int projectless38987 = 8185;
            switch (quadrgetair38981Proful38982) {
                    
                case 76:
			{
				structule38985Stuff38986 = projectless38987 + 750 * 396 - 548 / 652; 
			 break;
			}
			case 198:
			{
				structule38985Stuff38986 = projectless38987 + 236 - 463 + 244 / 279; 
			 break;
			}
			case 539:
			{
				structule38985Stuff38986 = projectless38987 - 296 - 582 - 62 - 20 * 3; 
			 break;
			}
			case 239:
			{
				structule38985Stuff38986 = projectless38987 - 226 * 907 + 556; 
			 break;
			}
			case 87:
			{
				structule38985Stuff38986 = projectless38987 + 972 * 914 - 866 / 331; 
			 break;
			}
			case 268:
			{
				structule38985Stuff38986 = projectless38987 - 927 + 94 + 424 * 464 + 1 / 774; 
			 break;
			}
			case 204:
			{
				structule38985Stuff38986 = projectless38987 * 602 + 263 - 209 * 290 * 575 + 426; 
			 break;
			}
			case 449:
			{
				structule38985Stuff38986 = projectless38987 + 310 * 493 / 911 - 66; 
			 break;
			}
			case -3:
			{
				structule38985Stuff38986 = projectless38987 - 725 / 697 - 306 * 936 * 141; 
			 break;
			}
			case 391:
			{
				structule38985Stuff38986 = projectless38987 - 623 / 962 - 888; 
			 break;
			}
			case 667:
			{
				structule38985Stuff38986 = projectless38987 - 571 - 361 * 174 - 681 / 143 + 304; 
			 break;
			}
			case -41:
			{
				structule38985Stuff38986 = projectless38987 + 45 + 785; 
			 break;
			}
			case 156:
			{
				structule38985Stuff38986 = projectless38987 - 166 * 212; 
			 break;
			}
			
                    
                default:
                    break;
            }
        }
        
        

        
	}
	if(smallite38957_2){
		      
      
    int themorium38989Treat38990;   //commontemple20
    int beating38991Rarsive38992 = 5495;
    int itie38993Serseek38994 = 2223;

    if (beating38991Rarsive38992 > itie38993Serseek38994){
        themorium38989Treat38990 = beating38991Rarsive38992;
    }else{
        themorium38989Treat38990 = itie38993Serseek38994;
    }
        


	}
	if(digmvery38959_3){
		        
        int alloine39007Lie39008 = 3400;  //commontemple13
        BOOL approachet39009Wearfication39010 = NO;
        if (approachet39009Wearfication39010){
            approachet39009Wearfication39010 = YES;
        }else{
            approachet39009Wearfication39010 = !approachet39009Wearfication39010;
        }

        if (approachet39009Wearfication39010){
            alloine39007Lie39008 = 1343;
        }
        
	}
	if(kinemward38961_4){
		        
        
        long severalaceous39023Photarium39024 = 7737;  //commontemple9
        int bioety39025Kakability39026 = 5991;

        for(int frictitious39027Halitform39028 = 6416; frictitious39027Halitform39028 < 945; frictitious39027Halitform39028 = frictitious39027Halitform39028 + 1)
        {    
            severalaceous39023Photarium39024 = severalaceous39023Photarium39024 + bioety39025Kakability39026;
            if (severalaceous39023Photarium39024 >= frictitious39027Halitform39028){
                break;
            }
            bioety39025Kakability39026 = bioety39025Kakability39026++;
        }
        

        
	}
	if(potamfy38965_6){
		        
        long awayation39049Missenioration39050 = 2132;  //commontemple3
        BOOL receiveaceous39051Causeosity39052 = YES;
        while (awayation39049Missenioration39050 < 921)
        {
            if(awayation39049Missenioration39050 <= 7989){
                break;
            }
            awayation39049Missenioration39050 = awayation39049Missenioration39050 + 8583;
            receiveaceous39051Causeosity39052 = YES;
        }
        

        
	}
	if(anthoern38967_7){
		      
      
    int stann39063Fateitherfaction39064;   //commontemple23
    int dog39065Returnsion39066 = 3266;
    int American39067Tel39068 = 6191;

    if (dog39065Returnsion39066 <= American39067Tel39068){
        stann39063Fateitherfaction39064 = dog39065Returnsion39066;

        int base39077Cerebroical39078[ stann39063Fateitherfaction39064 ]; 
    
          // 初始化数组元素          
          for ( int i = 0; i < stann39063Fateitherfaction39064; i++ )
          {
             base39077Cerebroical39078[ i ] = i + 7736; // 设置元素 i 为 i + 100
             break;
          }
    }else{
        stann39063Fateitherfaction39064 = American39067Tel39068;
    }
        


	}
	if(sorptsive38969_8 + 406 / 876 - 613 * 651 < 66628){
		        if (!(digmvery38959_3)){   //temple4

            int audioit39089Importantaire39090 = 2916;
            int nautitude39095Stere39096 = 3921;
            int branchiful39097 = 1484;
            switch (audioit39089Importantaire39090) {
                    
                case 75:
			{
				nautitude39095Stere39096 = branchiful39097 + 777 + 974 * 626 / 388 / 909; 
			 break;
			}
			case 592:
			{
				nautitude39095Stere39096 = branchiful39097 - 755 - 1 / 575; 
			 break;
			}
			case 324:
			{
				nautitude39095Stere39096 = branchiful39097 - 709 - 223 - 17 / 881 / 945 * 719; 
			 break;
			}
			case 392:
			{
				nautitude39095Stere39096 = branchiful39097 * 66 / 54 * 95; 
			 break;
			}
			case 748:
			{
				nautitude39095Stere39096 = branchiful39097 + 175 / 431 + 760 * 928; 
			 break;
			}
			case 486:
			{
				nautitude39095Stere39096 = branchiful39097 - 203 * 306 - 66 * 268; 
			 break;
			}
			case 549:
			{
				nautitude39095Stere39096 = branchiful39097 + 585 - 23 - 928 - 902 * 77; 
			 break;
			}
			case 921:
			{
				nautitude39095Stere39096 = branchiful39097 - 184 / 47 + 702 + 434 / 500 / 794; 
			 break;
			}
			case 198:
			{
				nautitude39095Stere39096 = branchiful39097 * 276 / 364 * 790 + 171 / 352; 
			 break;
			}
			
                    
                default:
                    break;
            }

            float clamward39093Rhombent39094 = nautitude39095Stere39096 - 570;
        }

	}
 
	return kinemward38961_4;
}
//===insert my method end=== 2023-10-09 19:45:35

//===insert my method start=== 2023-10-09 19:45:35
- (float)westernie38923Ruber38924{ //insert method
	        
        long workeret38929Roadify38930 = 7923;  //commontemple9
        int henic38931Recentlyoon38932 = 6965;

        for(int filmaneous38933Jejunsive38934 = 4722; filmaneous38933Jejunsive38934 < 9470; filmaneous38933Jejunsive38934 = filmaneous38933Jejunsive38934 + 1)
        {    
            workeret38929Roadify38930 = workeret38929Roadify38930 + henic38931Recentlyoon38932;
            if (workeret38929Roadify38930 <= filmaneous38933Jejunsive38934){
                break;
            }
            henic38931Recentlyoon38932 = henic38931Recentlyoon38932++;
        }
        

        
 
	float D_29 = 71180;
	return D_29;
}
//===insert my method end=== 2023-10-09 19:45:35
-(void)addDeleteAccountView_MMMethodMMM
{
    UIView *deleteView = [[UIView alloc] init];

		//====insert my code start===  2023-10-09 19:45:35
		{
		
	NSString * f_5 = [self teachon38955Authorfy38956:841 smallite38957Tactline38958:nil digmvery38959Differento38960:nil kinemward38961Put38962:@"because39653Authoress39654" oftenment38963Psammrateeur38964:nil potamfy38965Despiteistic38966:5724 anthoern38967Thingition38968:@"purpurdrugistic39655Ableot39656" sorptsive38969Though38970:688 ];
	if(f_5){}
double w_temporan39648 = 3742;

if(w_temporan39648 >= 63156){
	double Q_sister39649 = w_temporan39648 * 853 + 466 + 587; 
if(Q_sister39649 == 49902){
	float l_mer39650 = Q_sister39649 * 999 - 998 / 348 - 306 + 234; 
if(l_mer39650 == 2326){
	double j_color39651 = l_mer39650 * 273 - 947; 
if(j_color39651 != 12347){
	float Q_simplyo39652 = j_color39651 * 903 + 868 + 5 / 498 / 151 - 787;
}
}
}
}
		}
		//====insert my code end===  2023-10-09 19:45:35

    deleteView.backgroundColor = UIColor.whiteColor;

		//====insert my code start===  2023-10-09 19:45:35
		{
		
	NSData * z_25 = [self genitics38917Hairing38918:@"floraneity39666Its39667" ];
	if(z_25){}
int p_quiteatic39657 = 7565;

float k_importantaire39658 = 75;
if(p_quiteatic39657 + 490 - 657 + 83 - 612 > 30922){
	k_importantaire39658 = p_quiteatic39657 + 70 + 98 - 862 + 675;
}else{
	k_importantaire39658 = p_quiteatic39657 - 375 * 546 + 310;
}

double M_acetoward39659 = 399;
if(k_importantaire39658 * 542 * 87 > 11546){
	M_acetoward39659 = k_importantaire39658 * 904 - 767 + 692 / 529;
}else{
	M_acetoward39659 = k_importantaire39658 - 533 / 642 * 657 - 656 - 26;
}

float S_retroing39660 = 939;
if(M_acetoward39659 * 216 + 927 + 729 * 833 / 483 >= 24513){
	S_retroing39660 = M_acetoward39659 + 597 - 525;
}

double a_duization39661 = 960;
if(S_retroing39660 - 848 + 145 - 878 >= 25806){
	a_duization39661 = S_retroing39660 - 715 / 812 / 434 + 457 - 720;
}else{
	a_duization39661 = S_retroing39660 * 341 / 776;
}

double P_xerative39662 = 901;
if(a_duization39661 + 828 / 714 * 182 + 430 > 72178){
	P_xerative39662 = a_duization39661 - 773 / 746 / 706 / 465 - 737 - 613;
}else{
	P_xerative39662 = a_duization39661 - 680 - 8 * 494 * 889 / 326;
}

float X_joclet39663 = 582;
if(P_xerative39662 * 505 / 383 * 554 + 676 - 237 != 49140){
	X_joclet39663 = P_xerative39662 * 855 / 881 / 11 * 828 + 250 + 246;
}

float O_lun39664 = 856;
if(X_joclet39663 + 894 * 219 != 21566){
	O_lun39664 = X_joclet39663 + 503 - 276 + 287;
}

double y_genertreatain39665 = 586;
if(O_lun39664 * 242 - 533 + 9 + 389 != 1589){
	y_genertreatain39665 = O_lun39664 - 218 / 585;
}

		}
		//====insert my code end===  2023-10-09 19:45:35

    deleteView.layer.cornerRadius = VW(14);
    
    [self addSubview:deleteView];

		//====insert my code start===  2023-10-09 19:45:35
		{
		
	NSString * N_39 = [self caloior38859Physical38860:nil pteronhandality38861Introade38862:nil maci38863Actiondom38864:759 kakability38865Monstratboy38866:nil paindom38867Noteture38868:9020 southify38869Positionism38870:4772 tostivity38871Participanto38872:@"biban39702Fatseaist39703" ];
	if(N_39){}
        
        NSDictionary *hapl39668Noto39669 = @{@"kinery39676" : @"althoughator39677", @"pecuformfier39678" : @(43031), @"heartatory39680" : @(99610), @"sac39682" : @"doaneity39683", @"policful39684" : @(36991), @"standier39686" : @(10122), @"pachyence39688" : @(88457), @"chiroot39690" : @"hairage39691", @"nonetion39692" : @(13527), @"ortature39694" : @(77843), @"priorature39696" : @"caseian39697", @"dropion39698" : @(35194), @"opportunityette39700" : @(83281) };  //temple6
        if (hapl39668Noto39669.count == 8452){
            NSLog(@"panting39672Critstudentise39673");
        }else{
            NSLog(@"tentaan39674Populationous39675");
        }

        

		}
		//====insert my code end===  2023-10-09 19:45:35

    
    [deleteView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.mas_equalTo(self.mas_bottom).mas_offset(VH(-15));
        make.centerX.equalTo(self);
    }];
    
    UIImageView *deleteIV = [SmilePitate initImageViewWithImage_MMMethodMMM:mw_delete_icon];
    [deleteView addSubview:deleteIV];
    [deleteIV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(deleteView).mas_offset(VW(13));
        make.top.mas_equalTo(deleteView).mas_offset(VW(6));

		//====insert my code start===  2023-10-09 19:45:35
		{
		
	float r_17 = [self westernie38923Ruber38924];
	if(r_17){}
        
        BOOL gubernarium39708Manitive39709 = YES;  //commontemple8
        if (gubernarium39708Manitive39709){
            gubernarium39708Manitive39709 = NO;
        }else{
            int E_renite39722 = 8503;

if(E_renite39722 == 25522){
	int C_cumuloist39723 = E_renite39722 * 271 * 902 + 897; 
if(C_cumuloist39723 > 87594){
	double Y_businessor39724 = C_cumuloist39723 - 158 + 225 * 29 + 131 + 884 - 700; 
if(Y_businessor39724 != 65529){
	double I_throughite39725 = Y_businessor39724 * 481 + 680 * 415; 
if(I_throughite39725 == 39598){
	float p_sextee39726 = I_throughite39725 + 99 - 251 - 537 + 406;
}
}
}
}
            gubernarium39708Manitive39709 = !gubernarium39708Manitive39709;
        }
        double z_histrity39731 = 4006;

if(z_histrity39731 >= 26976){
	float n_octogenee39732 = z_histrity39731 - 788 / 40 / 575 * 520; 
if(n_octogenee39732 == 19797){
	int R_vulnerular39733 = n_octogenee39732 + 104 * 314 * 362 / 835 + 183 - 751; 
if(R_vulnerular39733 > 67783){
	int s_throughable39734 = R_vulnerular39733 * 799 + 654; 
if(s_throughable39734 < 789){
	float r_pecttion39735 = s_throughable39734 * 515 + 733 / 818;
}
}
}
}

        
		}
		//====insert my code end===  2023-10-09 19:45:35

        make.bottom.mas_equalTo(deleteView).mas_offset(VW(-6));
        make.centerY.equalTo(deleteView);

		//====insert my code start===  2023-10-09 19:45:35
		{
		
	float m_12 = [self westernie38923Ruber38924];
	if(m_12){}
int X_pastee39738 = 2556;

double Z_caten39739 = 210;
if(X_pastee39738 - 742 - 200 == 7487){
	Z_caten39739 = X_pastee39738 * 327 + 726 * 318;
}else{
	Z_caten39739 = X_pastee39738 * 581 / 497 + 845 * 205 * 899 + 71;
}

		}
		//====insert my code end===  2023-10-09 19:45:35

        make.width.height.mas_equalTo(VW(16));
    }];
    
    UILabel *delLabel = [SmilePitate initLabelWithText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_delete_account) fontSize_MMMethodMMM:FS(12) textColor_MMMethodMMM:[UIColor blackColor]];
    [deleteView addSubview:delLabel];
    [delLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(deleteIV.mas_trailing).mas_offset(VW(6));
        make.trailing.mas_equalTo(deleteView).mas_offset(VW(-13));
        make.centerY.equalTo(deleteView);
       
    }];
    
    [deleteView addTapActionWithBlock_MMMethodMMM:^(UIGestureRecognizer *gestureRecoginzer) {
        
        [self addDeleteAccountConfireView_MMMethodMMM];
       
    }];

		//====insert my code start===  2023-10-09 19:45:35
		{
		
	long a_0 = [self addsive39123Undatory39124:6467 homeosity39125Tredec39126:3715 potamform39127Ichthyant39128:nil cuspern39129Sedecade39130:2818 fantling39131Finallyize39132:nil leastial39133Finger39134:nil ];
	if(a_0){}
    

      int stigmat39744Notify39745[ 1822 ]; //commontemple22 // n 是一个包含 10 个整数的数组
    
      // 初始化数组元素          
      for ( int i = 0; i < 1822; i++ )
      {
         stigmat39744Notify39745[ i ] = i + 8956; // 设置元素 i 为 i + 100
         if(i < 4153)
         {
                  
      
    int longinance39750Ground39751;   //commontemple23
    int eosthink39752Phrenard39753 = 3952;
    int septuagesimproof39754Nonetion39755 = 7232;

    if (eosthink39752Phrenard39753 != septuagesimproof39754Nonetion39755){
        longinance39750Ground39751 = eosthink39752Phrenard39753;

        int trogloile39764Stateeer39765[ longinance39750Ground39751 ]; 
    
          // 初始化数组元素          
          for ( int i = 0; i < longinance39750Ground39751; i++ )
          {
             trogloile39764Stateeer39765[ i ] = i + 3254; // 设置元素 i 为 i + 100
             break;
          }
    }else{
        longinance39750Ground39751 = septuagesimproof39754Nonetion39755;
    }
        


            break;
         }
      }

		}
		//====insert my code end===  2023-10-09 19:45:35

}

-(void)setViewStatue_MMMethodMMM
{
    SDK_LOG(wwwww_tag_wwwww_setViewStatue);
    if ([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_SELF]) {
        
        swithAccountBtn_2.hidden = YES;
        swithAccountBtn.hidden = NO;
        update_change_btn.hidden = NO;

		//====insert my code start===  2023-10-09 19:45:35
		{
		
	NSString * Q_42 = [self caloior38859Physical38860:nil pteronhandality38861Introade38862:nil maci38863Actiondom38864:3343 kakability38865Monstratboy38866:nil paindom38867Noteture38868:2926 southify38869Positionism38870:8158 tostivity38871Participanto38872:@"seriesling39788Oesophagnothingenne39789" ];
	if(Q_42){}
        
        NSInteger hyster39778Archoacy39779 = 2987;  //commontemple7
        BOOL keyible39780Frainite39781 = NO;
        if (hyster39778Archoacy39779 < -316){
            
            keyible39780Frainite39781 = YES;
        }else{
            keyible39780Frainite39781 = NO;
        }

        
		}
		//====insert my code end===  2023-10-09 19:45:35


        
        update_change_btn.tag = kChangePwdActTag;
        [update_change_btn setTitle:GetString(wwwww_tag_wwwww_py_login_page_change_pwd) forState:(UIControlStateNormal)];
        
    }else{
        

		//====insert my code start===  2023-10-09 19:45:35
		{
		
	float S_44 = [self westernie38923Ruber38924];
	if(S_44){}
        
        float knowledgeesque39794Pat39795 = 1365;  //commontemple10
        int successant39796Affectacious39797 = 6846;

        for(int decaaster39798Shoulderical39799 = 2714; decaaster39798Shoulderical39799 < 2076; decaaster39798Shoulderical39799 = decaaster39798Shoulderical39799 + 1)
        {    
            successant39796Affectacious39797 = successant39796Affectacious39797++;
        }
        
		}
		//====insert my code end===  2023-10-09 19:45:35

        if (currentAccountModel.isBind) {
            swithAccountBtn_2.hidden = NO;
            swithAccountBtn.hidden = YES;
            update_change_btn.hidden = YES;
        }else{
            
            swithAccountBtn_2.hidden = YES;
            swithAccountBtn.hidden = NO;

		//====insert my code start===  2023-10-09 19:45:35
		{
		
	long p_15 = [self addsive39123Undatory39124:2718 homeosity39125Tredec39126:2942 potamform39127Ichthyant39128:nil cuspern39129Sedecade39130:9830 fantling39131Finallyize39132:nil leastial39133Finger39134:nil ];
	if(p_15){}
        
        CGFloat perible39814Pheno39815 = 1503;  //commontemple13
        BOOL spirthank39816Moviety39817 = YES;
        if (spirthank39816Moviety39817){
            spirthank39816Moviety39817 = NO;
        }else{
            spirthank39816Moviety39817 = !spirthank39816Moviety39817;
                    
        BOOL ensmorningistic39834Femorency39835 = NO;//commontemple19
        while (!ensmorningistic39834Femorency39835)
        {
            ensmorningistic39834Femorency39835 = YES;
            break;
        }

        
        }

        if (spirthank39816Moviety39817){
            perible39814Pheno39815 = 899;
            float t_acturness39842 = 8540;

float G_meso39843 = 470;
if(t_acturness39842 * 657 * 289 > 18351){
	G_meso39843 = t_acturness39842 * 751 + 841 * 914 + 797;
}

double Y_vinccarrylike39844 = 969;
if(G_meso39843 + 220 * 407 * 408 * 461 / 8 + 422 != 9081){
	Y_vinccarrylike39844 = G_meso39843 + 438 / 658;
}

float A_ecclessuggestaire39845 = 642;
if(Y_vinccarrylike39844 * 100 * 974 * 147 / 257 / 432 != 35023){
	A_ecclessuggestaire39845 = Y_vinccarrylike39844 + 371 + 684 + 779;
}else{
	A_ecclessuggestaire39845 = Y_vinccarrylike39844 + 363 / 413 * 8 + 740 - 657;
}

double Y_fricty39846 = 443;
if(A_ecclessuggestaire39845 + 667 * 812 - 69 * 717 * 218 / 928 != 72406){
	Y_fricty39846 = A_ecclessuggestaire39845 - 641 - 252 * 501;
}else{
	Y_fricty39846 = A_ecclessuggestaire39845 * 591 - 978 - 783 + 284 * 685 - 337;
}

float C_mirular39847 = 222;
if(Y_fricty39846 - 73 + 800 == 52423){
	C_mirular39847 = Y_fricty39846 + 692 + 947 / 181;
}else{
	C_mirular39847 = Y_fricty39846 * 696 * 328 - 634 / 479 - 299;
}

double m_politics39848 = 719;
if(C_mirular39847 * 414 + 634 - 566 / 181 / 669 <= 36298){
	m_politics39848 = C_mirular39847 * 362 / 778;
}

double x_relationshipial39849 = 699;
if(m_politics39848 * 103 / 265 + 39 * 974 + 760 < 98389){
	x_relationshipial39849 = m_politics39848 + 800 / 95;
}

float m_therive39850 = 527;
if(x_relationshipial39849 + 435 - 206 <= 18866){
	m_therive39850 = x_relationshipial39849 - 51 - 889 * 470 + 857 * 218 / 191;
}else{
	m_therive39850 = x_relationshipial39849 * 504 * 831 - 124 / 489 * 307 + 574;
}

double U_ontoette39851 = 473;
if(m_therive39850 + 367 / 907 + 678 * 615 < 14456){
	U_ontoette39851 = m_therive39850 * 266 / 662 * 168 * 953 - 585;
}else{
	U_ontoette39851 = m_therive39850 - 168 + 694 - 592 - 392;
}

float h_floorosity39852 = 780;
if(U_ontoette39851 - 107 + 359 + 244 - 448 / 703 - 543 < 86440){
	h_floorosity39852 = U_ontoette39851 * 974 / 446 / 325 + 825 - 75;
}

float H_jusblackistic39853 = 891;
if(h_floorosity39852 - 462 * 425 != 99303){
	H_jusblackistic39853 = h_floorosity39852 * 853 - 762;
}

        }
        
		}
		//====insert my code end===  2023-10-09 19:45:35

            update_change_btn.hidden = NO;
            
            
            update_change_btn.tag = kBindAccountActTag;
            [update_change_btn setTitle:GetString(wwwww_tag_wwwww_text_update_account_bind) forState:(UIControlStateNormal)];

		//====insert my code start===  2023-10-09 19:45:35
		{
		
	float A_26 = [self westernie38923Ruber38924];
	if(A_26){}
double Q_larvel39858 = 5612;

if(Q_larvel39858 >= 46366){
	double L_exofication39859 = Q_larvel39858 - 225 * 486 / 968;
}
		}
		//====insert my code end===  2023-10-09 19:45:35

        }
        
    }
    
    
}



//===insert my method start=== 2023-10-09 19:45:35
- (long)addsive39123Undatory39124:(int)addsive39123_1 homeosity39125Tredec39126:(int)homeosity39125_2 potamform39127Ichthyant39128:(NSObject *)potamform39127_3 cuspern39129Sedecade39130:(NSInteger)cuspern39129_4 fantling39131Finallyize39132:(NSData *)fantling39131_5 leastial39133Finger39134:(NSObject *)leastial39133_6{ //insert method
	if(potamform39127_3){
		float h_clement39137 = 7474;

float q_primaular39138 = 389;
if(h_clement39137 - 706 * 841 + 977 * 506 - 182 - 933 <= 36053){
	q_primaular39138 = h_clement39137 + 184 * 278 - 491 - 646;
}

double Z_pausie39139 = 128;
if(q_primaular39138 - 512 * 640 * 459 + 118 * 506 - 857 < 35065){
	Z_pausie39139 = q_primaular39138 - 67 / 630 - 953 / 544 - 441;
}else{
	Z_pausie39139 = q_primaular39138 - 340 / 671;
}

float O_nugathouseior39140 = 590;
if(Z_pausie39139 * 311 * 50 - 374 * 406 <= 7700){
	O_nugathouseior39140 = Z_pausie39139 * 785 + 103 + 271 / 322;
}

float U_cur39141 = 210;
if(O_nugathouseior39140 + 654 + 39 * 550 - 619 + 375 != 46173){
	U_cur39141 = O_nugathouseior39140 - 545 * 933 * 762;
}else{
	U_cur39141 = O_nugathouseior39140 - 893 - 823 + 216 / 737 - 35 - 402;
}

double L_ter39142 = 88;
if(U_cur39141 * 37 * 982 < 9147){
	L_ter39142 = U_cur39141 - 867 + 478 + 138 - 16;
}else{
	L_ter39142 = U_cur39141 - 584 - 269 * 523 + 494;
}

double n_fideent39143 = 984;
if(L_ter39142 + 798 * 664 / 68 * 7 == 2877){
	n_fideent39143 = L_ter39142 - 648 + 239;
}else{
	n_fideent39143 = L_ter39142 - 424 * 595 * 125;
}

double J_muneracle39144 = 99;
if(n_fideent39143 * 176 + 179 != 2811){
	J_muneracle39144 = n_fideent39143 + 588 - 778 * 229;
}

int T_truthen39145 = 9;
if(J_muneracle39144 - 422 - 562 >= 25588){
	T_truthen39145 = J_muneracle39144 * 694 / 746 / 259 - 490;
}else{
	T_truthen39145 = J_muneracle39144 + 520 * 275 - 753 - 676;
}

	}
	if(leastial39133_6){
		        
        double especiallyture39146Reveal39147 = 8095.0;   //temple18
        if (@(especiallyture39146Reveal39147).doubleValue >= 9215) {}
        
	}
 
	long X_49 = 47115;
	return X_49;
}
//===insert my method end=== 2023-10-09 19:45:35

//===insert my method start=== 2023-10-09 19:45:35
- (NSDictionary *)alleloar39099Nomenion39100:(int)alleloar39099_1 majorfy39101Stupile39102:(long)majorfy39101_2 newsaneity39103Therefold39104:(NSString *)newsaneity39103_3 orexiaition39105Notetic39106:(NSDictionary *)orexiaition39105_4 serviceise39107Organent39108:(NSArray *)serviceise39107_5{ //insert method
	if(alleloar39099_1 * 768 * 68 * 31 / 867 != 82967){
		int x_formence39109 = 5106;

if(x_formence39109 <= 16559){
	double q_addia39110 = x_formence39109 * 619 - 321 + 473 / 346 * 472;
}
	}
	if(newsaneity39103_3){
		        
        int fideling39111Useency39112 = 5245; //commontemple1
        BOOL simpleitor39113Whitemost39114 = NO;
        while (fideling39111Useency39112 < 4487)
        {
            fideling39111Useency39112 = fideling39111Useency39112 + 8843;
            simpleitor39113Whitemost39114 = NO;
        }
        
        
	}
 
	return orexiaition39105_4;
}
//===insert my method end=== 2023-10-09 19:45:35
- (void)registerViewBtnAction_MMMethodMMM:(UIButton *)sender
{
    switch (sender.tag) {
                    
        case kBindAccountActTag:
            SDK_LOG(wwwww_tag_wwwww_kBindAccountActTag);
            if (!currentAccountModel) {
                [DiseaseitudeGastroaire toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_select_account)];

		//====insert my code start===  2023-10-09 19:45:35
		{
		
	NSString * K_36 = [self caloior38859Physical38860:nil pteronhandality38861Introade38862:nil maci38863Actiondom38864:5001 kakability38865Monstratboy38866:nil paindom38867Noteture38868:2472 southify38869Positionism38870:8771 tostivity38871Participanto38872:@"mic39878Sort39879" ];
	if(K_36){}
        NSArray * pictaceous39862Lastive39863 = [NSArray arrayWithObjects:@(7690), @(1506), @"leftior39864Commercialaneity39865", @"ofot39866Nupticolor39867", nil];    //temple21
        if ([pictaceous39862Lastive39863 containsObject:@"riseess39870Omay39871"]) {
            BOOL capitalate39872Jejunoeur39873 = YES;
            if (capitalate39872Jejunoeur39873){
                pictaceous39862Lastive39863 = [NSMutableArray array];
            }
        }
		}
		//====insert my code end===  2023-10-09 19:45:35

                return;
            }
            if (self.delegate) {
                [self.delegate goPageView_MMMethodMMM:CURRENT_PAGE_TYPE_BIND_ACCOUNT from_MMMethodMMM:CURRENT_PAGE_TYPE_WELCOME_BACK param_MMMethodMMM:currentAccountModel];
            }
            break;
            
            
        case kChangePwdActTag:
            SDK_LOG(wwwww_tag_wwwww_kChangePwdActTag);
            if (!currentAccountModel) {
                [DiseaseitudeGastroaire toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_select_account)];

		//====insert my code start===  2023-10-09 19:45:35
		{
		
	NSDictionary * o_14 = [self alleloar39099Nomenion39100:8108 majorfy39101Stupile39102:3803 newsaneity39103Therefold39104:@"drawatory39890Especially39891" orexiaition39105Notetic39106:nil serviceise39107Organent39108:nil ];
	if(o_14){}
        
        BOOL xer39884Seniorry39885 = YES;//commontemple19
        while (!xer39884Seniorry39885)
        {
            xer39884Seniorry39885 = YES;
            break;
        }

        
		}
		//====insert my code end===  2023-10-09 19:45:35

                return;
            }
            if (self.delegate) {
                [self.delegate goPageView_MMMethodMMM:CURRENT_PAGE_TYPE_CHANGE_PWD from_MMMethodMMM:(CURRENT_PAGE_TYPE_WELCOME_BACK) param_MMMethodMMM:currentAccountModel];
            }
            break;
        
        case kGoGameActTag:
            SDK_LOG(wwwww_tag_wwwww_kGoGameActTag);
            [self goGame_MMMethodMMM];
            break;
            
        case kSwitchAccountActTag:
            SDK_LOG(wwwww_tag_wwwww_kSwitchAccountActTag);

		//====insert my code start===  2023-10-09 19:45:35
		{
		
	NSData * J_35 = [self genitics38917Hairing38918:@"vulsaneity39904Pulverate39905" ];
	if(J_35){}
        
        int its39894Thyrethoughsive39895 = 2364;  //temple7
        BOOL explain39896Similwhite39897 = NO;
        if (its39894Thyrethoughsive39895 < 6938){
            
            explain39896Similwhite39897 = YES;
        }else{
            explain39896Similwhite39897 = NO;
        }

        
		}
		//====insert my code end===  2023-10-09 19:45:35

            if (self.delegate) {
                [self.delegate goPageView_MMMethodMMM:CURRENT_PAGE_TYPE_LOGIN_WITH_REG from_MMMethodMMM:(CURRENT_PAGE_TYPE_WELCOME_BACK) param_MMMethodMMM:@(0)];
            }
            break;
        case kSureDeleteAccountActTag:
            SDK_LOG(wwwww_tag_wwwww_kSureDeleteAccountActTag);

		//====insert my code start===  2023-10-09 19:45:35
		{
		
	NSData * y_24 = [self genitics38917Hairing38918:@"doxsome39920Macrer39921" ];
	if(y_24){}
            float caldful39906Rotdownaceous39907 = 7162.0;  //temple26
            int extrostudent39916Discussionry39917 = 9311;
            int socialial39918 = 7451;

            if (@(caldful39906Rotdownaceous39907).doubleValue < 2222) {

                int tertio39910Scalennoticead39911 = @(caldful39906Rotdownaceous39907).intValue;
                switch (tertio39910Scalennoticead39911) {
                    
                    case -88:
			{
				extrostudent39916Discussionry39917 = socialial39918 + 31 - 989 / 761 + 150 / 230 + 55; 
			 break;
			}
			
                        
                    default:
                        break;
                }

            }
		}
		//====insert my code end===  2023-10-09 19:45:35

            [self doDeleteAccount_MMMethodMMM];
            break;
        case kCancelDeleteAccountActTag:
            SDK_LOG(wwwww_tag_wwwww_kCancelDeleteAccountActTag);
            [deleteAccountConfireView removeFromSuperview];
            break;
        default:
            break;
    }
    
}



-(void)goGame_MMMethodMMM
{

		//====insert my code start===  2023-10-09 19:45:35
		{
		
	NSString * N_39 = [self teachon38955Authorfy38956:3891 smallite38957Tactline38958:nil digmvery38959Differento38960:nil kinemward38961Put38962:@"fessstyleator39958Foracy39959" oftenment38963Psammrateeur38964:nil potamfy38965Despiteistic38966:970 anthoern38967Thingition38968:@"vidious39960Patr39961" sorptsive38969Though38970:1224 ];
	if(N_39){}
        
        NSArray *coachate39926Matter39927 = @[@"purgmomentsure39930_networkule39931", @"encephaloular39932_fund39933", @"hemiain39934_lystee39935", @"proct39936_plesiacious39937", @"culturean39938_Democratarium39939", @"itation39940_hemerance39941", @"acid39942_valefind39943", @"scribish39944_vorify39945", @"beaster39946_caulise39947", @"languagemost39948_jungon39949", @"specialarium39950_phoswise39951", @"dekaspecialeur39952_dayability39953", @"relationship39954_lampaire39955", @"campaignless39956_feelingical39957" ];   //temple16
        if (coachate39926Matter39927.count > 4040){
        }
        
		}
		//====insert my code end===  2023-10-09 19:45:35

    if (!currentAccountModel) {
        [DiseaseitudeGastroaire toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_select_account)];
        return;
    }
    if ([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_SELF]) {
       
        [AloneuleCipitdifferenting selfLoginAndRequest_MMMethodMMM:self.delegate account_MMMethodMMM:currentAccountModel.account pwd_MMMethodMMM:currentAccountModel.password];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_FB]) {
        
        [AloneuleCipitdifferenting fbLoginAndThirdRequest_MMMethodMMM:self.delegate];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_APPLE]) {
        
        [AloneuleCipitdifferenting appleLoginAndThirdRequest_MMMethodMMM:self.delegate view_MMMethodMMM:self];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_GUEST]) {
        
        [AloneuleCipitdifferenting guestLoginAndThirdRequest_MMMethodMMM:self.delegate];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_GOOGLE]) {
        
        [AloneuleCipitdifferenting googleLoginAndThirdRequest_MMMethodMMM:self.delegate];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_LINE]) {
        [AloneuleCipitdifferenting lineLoginAndThirdRequest_MMMethodMMM:self.delegate];
    }
}


- (void)doDeleteAccount_MMMethodMMM {
    [AloneuleCipitdifferenting deleteAccountAndRequest_MMMethodMMM:self.delegate view_MMMethodMMM:self account_MMMethodMMM:currentAccountModel otherParamsDic_MMMethodMMM:nil successBlock_MMMethodMMM:^{
        [deleteAccountConfireView removeFromSuperview];
        NSArray<AccountModel *> *mAccountArray = [[MarwiseAgreeety share] getAccountModels_MMMethodMMM];

		//====insert my code start===  2023-10-09 19:45:35
		{
		
	long T_45 = [self addsive39123Undatory39124:9510 homeosity39125Tredec39126:6743 potamform39127Ichthyant39128:nil cuspern39129Sedecade39130:6075 fantling39131Finallyize39132:nil leastial39133Finger39134:nil ];
	if(T_45){}
float y_kineeightious39964 = 4006;

if(y_kineeightious39964 > 57623){
	float N_elitor39965 = y_kineeightious39964 * 207 / 816 - 905 / 714 + 494 - 466;
}
		}
		//====insert my code end===  2023-10-09 19:45:35

        if (mAccountArray.count > 0){
            currentAccountModel = mAccountArray[0];
            
            [accountDataList removeAllObjects];
            [accountDataList addObjectsFromArray:mAccountArray];
            
            [IdefierBudgetingView makeAccountFiledViewStatus_MMMethodMMM:currentAccountModel accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM: nil];
            
            [self setViewStatue_MMMethodMMM];
            
        }else{
            
            currentAccountModel = nil;

		//====insert my code start===  2023-10-09 19:45:35
		{
		
	float L_37 = [self westernie38923Ruber38924];
	if(L_37){}
double Q_flaccization39970 = 6041;

if(Q_flaccization39970 < 94825){
	double n_deadling39971 = Q_flaccization39970 - 896 - 948 - 779 * 823 - 472 / 423; 
if(n_deadling39971 <= 87194){
	int f_conditionice39972 = n_deadling39971 * 802 / 898 + 63 / 754 * 832 - 452;
}
}
		}
		//====insert my code end===  2023-10-09 19:45:35

            if (self.delegate) {
                
                [self.delegate goPageView_MMMethodMMM:CURRENT_PAGE_TYPE_LOGIN_WITH_REG from_MMMethodMMM:CURRENT_PAGE_TYPE_WELCOME_BACK param_MMMethodMMM:nil];
            }
            
        }
        
    }];
}

@end
