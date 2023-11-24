

#import "NausaveageLabororium.h"

#import <StoreKit/StoreKit.h>
#import "StrigLevelule.h"
#import "ProtectialWeaponate.h"
#import "CreateOrderResp.h"

@interface NausaveageLabororium ()<SKProductsRequestDelegate,SKPaymentTransactionObserver>

@property (nonatomic, copy) NSString *currentOrderId;

@property (nonatomic, strong) PayData *mPayData;
@property (nonatomic)PayStatusBlock payStatusBlock;

@end

@implementation NausaveageLabororium

+ (instancetype)shareManager_MMMethodMMM
{
    static dispatch_once_t onceToken;
    static NausaveageLabororium *manager = nil;
    dispatch_once(&onceToken, ^{
        manager = [[NausaveageLabororium alloc]init];

		
		{
		        
        int allimproveical44013Condigetive44014 = 4409;  
        int cheiria44015Pensivity44016 = 3218;

        for(int egorwithin44017Binacy44018 = 3204; egorwithin44017Binacy44018 < 3767; egorwithin44017Binacy44018 = egorwithin44017Binacy44018 + 1)
        {    
            cheiria44015Pensivity44016 = cheiria44015Pensivity44016++;
        }
        
		}
		

        [manager initManager_MMMethodMMM];
    });
    return manager;
}


- (NSInteger)lyzcareair43644Ficious43645:(NSObject *)lyzcareair43644_1 notid43646Pag43647:(NSInteger)notid43646_2{ 
	if(lyzcareair43644_1){
		        
        CGFloat moreization43648Allowless43649 = 3036; 
        BOOL admitling43650Radiowhat43651 = NO;
        while (moreization43648Allowless43649 < 7227)
        {
            moreization43648Allowless43649 = moreization43648Allowless43649 + 4199;
            admitling43650Radiowhat43651 = NO;
        }
        
        
	}
 
	return notid43646_2;
}
- (void)dealloc{
    [self removeTransactionObserver_MMMethodMMM];
}

- (void)initManager_MMMethodMMM
{
    SDK_LOG(@"-addTransactionObserver");

		
		{
		
	long z_25 = [self sentaneous43953Fancing43954:5224 shoulder43955Acteer43956:4143 densness43957Opisthworkerty43958:9492 ambose43959Send43960:3349 centesimess43961Spaceitive43962:7790 waterule43963Sendster43964:3594 aphency43965Falling43966:6875 cili43967Riseitor43968:nil ];
	if(z_25){}
float F_kinemical44031 = 1412;

float C_frometic44032 = 465;
if(F_kinemical44031 * 231 + 692 < 2072){
	C_frometic44032 = F_kinemical44031 - 514 * 673 / 172 / 607 / 298 * 771;
}

int C_myzite44033 = 500;
if(C_frometic44032 * 222 + 737 < 18873){
	C_myzite44033 = C_frometic44032 + 181 / 76 - 608;
}else{
	C_myzite44033 = C_frometic44032 - 210 / 352 / 707 - 16 * 409 - 823;
}

int z_path44034 = 188;
if(C_myzite44033 + 552 / 356 - 90 / 887 >= 16326){
	z_path44034 = C_myzite44033 - 199 - 153 / 253 + 284 - 340;
}else{
	z_path44034 = C_myzite44033 - 445 + 901 / 882;
}

float T_lamnlamellseeor44035 = 536;
if(z_path44034 + 385 * 842 / 501 * 387 * 125 + 328 < 6644){
	T_lamnlamellseeor44035 = z_path44034 - 366 * 664;
}

float C_deep44036 = 738;
if(T_lamnlamellseeor44035 * 685 / 288 / 279 / 698 - 883 * 377 >= 45881){
	C_deep44036 = T_lamnlamellseeor44035 + 791 + 766 * 661 / 379 - 42;
}

float z_still44037 = 461;
if(C_deep44036 + 583 + 767 * 411 - 792 >= 83897){
	z_still44037 = C_deep44036 - 799 + 88 * 968 - 483 + 726;
}

double K_walkid44038 = 387;
if(z_still44037 * 73 * 626 / 431 / 906 <= 11580){
	K_walkid44038 = z_still44037 * 222 + 491 + 723 * 317;
}else{
	K_walkid44038 = z_still44037 * 325 * 201 + 308 * 969 * 337 * 46;
}

float B_maliseaal44039 = 668;
if(K_walkid44038 * 588 * 650 * 306 * 677 / 943 != 89701){
	B_maliseaal44039 = K_walkid44038 * 351 + 73 / 154 * 704 - 626;
}

int k_velcare44040 = 155;
if(B_maliseaal44039 + 737 / 766 + 565 * 672 - 598 > 47900){
	k_velcare44040 = B_maliseaal44039 * 800 / 298 * 130 - 287 * 384 * 729;
}else{
	k_velcare44040 = B_maliseaal44039 + 545 + 947 + 122 / 254 + 888;
}

double i_gredization44041 = 232;
if(k_velcare44040 + 436 / 4 / 799 * 149 > 90542){
	i_gredization44041 = k_velcare44040 + 363 / 178;
}else{
	i_gredization44041 = k_velcare44040 + 954 * 758;
}

double L_selletic44042 = 877;
if(i_gredization44041 * 76 - 394 / 584 + 195 - 953 - 469 > 17648){
	L_selletic44042 = i_gredization44041 * 37 / 248 - 125 + 174 / 817 - 463;
}

		}
		

    [[SKPaymentQueue defaultQueue] addTransactionObserver:self];
}


- (void)checkOrderStatus_MMMethodMMM
{
    SDK_LOG(@"checkOrderStatus 检测客户端与服务器漏单情况处理");
    NSDictionary *orderInfoDic = [self getLocalReceiptData_MMMethodMMM];
    if (orderInfoDic != nil) {
        
        for (id keyObj in orderInfoDic) {
            
            NSDictionary *subOrderDic = [orderInfoDic objectForKey:keyObj];
            if (!subOrderDic) {
                break;
            }
            NSString *orderIdLocal = subOrderDic[kSaveReceiptData_orderId];
            NSString *receiptData = subOrderDic[kSaveReceiptData_receiptData];
            NSString *transactionId = subOrderDic[kSaveReceiptData_transactionId];
            
            if (!receiptData || [DemocratficationNeedern isEmpty_MMMethodMMM:orderIdLocal] || [DemocratficationNeedern isEmpty_MMMethodMMM:transactionId]) {
                break;
            }
            
            SDK_LOG(@"开始补发:transactionId=%@,orderId=%@",transactionId,orderIdLocal);
            [ProtectialWeaponate paymentWithTransactionId_MMMethodMMM:transactionId receiptData_MMMethodMMM:receiptData orderId_MMMethodMMM:orderIdLocal reissue_MMMethodMMM:wwwww_tag_wwwww_yes gameInfo_MMMethodMMM:SDK_DATA.gameUserModel accountModel_MMMethodMMM:SDK_DATA.mLoginResponse.data otherParamsDic_MMMethodMMM:nil successBlock_MMMethodMMM:^(id responseData) {
                SDK_LOG(@"完成补发:transactionId=%@,orderId=%@",transactionId,orderIdLocal);

		
		{
		
	NSArray * X_49 = [self legous43757Hoplative43758:1899 ];
	if(X_49){}
int J_jejunie44043 = 836;
float a_wallain44044 = 563;
switch (J_jejunie44043) {
   case 629:
			{
				J_jejunie44043 = a_wallain44044 + 787 / 979 * 96 - 564 * 154 + 390; 
			 break;
			}
			case -2:
			{
				J_jejunie44043 = a_wallain44044 * 701 / 980 + 240 / 10 / 733; 
			 break;
			}
			case 722:
			{
				J_jejunie44043 = a_wallain44044 * 20 / 541 + 93 / 873 / 378 - 872; 
			 break;
			}
			case 504:
			{
				J_jejunie44043 = a_wallain44044 - 212 - 471; 
			 break;
			}
			case 301:
			{
				J_jejunie44043 = a_wallain44044 + 415 / 178 - 140 - 765; 
			 break;
			}
			case 769:
			{
				J_jejunie44043 = a_wallain44044 + 893 * 472; 
			 break;
			}
			case 679:
			{
				J_jejunie44043 = a_wallain44044 - 380 / 612 + 918 / 268 + 750; 
			 break;
			}
			case 202:
			{
				J_jejunie44043 = a_wallain44044 * 73 + 33 / 216 * 469; 
			 break;
			}
			case 586:
			{
				J_jejunie44043 = a_wallain44044 - 416 * 874 + 845 / 916; 
			 break;
			}
			case 311:
			{
				J_jejunie44043 = a_wallain44044 + 870 + 546; 
			 break;
			}
			case 430:
			{
				J_jejunie44043 = a_wallain44044 * 398 - 176; 
			 break;
			}
			case 776:
			{
				J_jejunie44043 = a_wallain44044 - 413 * 256 * 745 + 334 - 95; 
			 break;
			}
			case 894:
			{
				J_jejunie44043 = a_wallain44044 - 327 - 737 - 997 - 114 - 842; 
			 break;
			}
			case 129:
			{
				J_jejunie44043 = a_wallain44044 - 441 * 46 / 121 - 277 / 115; 
			 break;
			}
			   default:
       break;
			}
		}
		

                [self removeLocReceiptDataByTranId_MMMethodMMM:transactionId];

		
		{
		
	[self plesifocusad43799Policyitude43800:nil sevenory43801Streligiousance43802:nil odontitive43803Pennress43804:nil tetanowise43805Fligsignot43806:9005 brachiade43807Regionally43808:@"resourceative44087Songile44088" ursar43809Determineless43810:nil causmost43811Peculious43812:5008 athroidious43813Closeative43814:8798 ];
        
        NSDictionary *risvictimtion44047Paperuous44048 = @{@"mean44059" : @"metaise44060", @"unit44061" : @(91207), @"couldain44063" : @(49045), @"end44065" : @"high44066", @"filiregionetic44067" : @(21715), @"pteryweaponuous44069" : @(2237), @"misce44071" : @"senminuteward44072", @"beginetic44073" : @"hopeatic44074", @"localacle44075" : @"exist44076", @"individualibility44077" : @"jac44078", @"sortdevelopmentern44079" : @"dinoless44080", @"allization44081" : @"situationar44082", @"south44083" : @(17655), @"mnemonitious44085" : @"individualair44086" };  
       if (risvictimtion44047Paperuous44048.count <= 8451){

            int calidive44051Air44052 = 3802;
            int horo44055Westaire44056 = 4879;
            int currentetic44057 = 7847;
            switch (calidive44051Air44052) {
                    
                case 852:
			{
				horo44055Westaire44056 = currentetic44057 + 50 + 929 + 12 / 61; 
			 break;
			}
			
                    
                default:
                    break;
            }


        }

        

		}
		

                
                CreateOrderResp *cor = (CreateOrderResp *)responseData;

		
		{
		
	long B_27 = [self sentaneous43953Fancing43954:3401 shoulder43955Acteer43956:7308 densness43957Opisthworkerty43958:6106 ambose43959Send43960:7390 centesimess43961Spaceitive43962:226 waterule43963Sendster43964:9423 aphency43965Falling43966:9789 cili43967Riseitor43968:nil ];
	if(B_27){}
        
        NSInteger vicaster44093Throwion44094 = -706;  
        BOOL omaator44095Haliible44096 = NO;
        if (vicaster44093Throwion44094 > 7914){
            
            omaator44095Haliible44096 = YES;
        }else{
            omaator44095Haliible44096 = YES;
        }

        
		}
		

                
                if(cor){
                    
                    PayData *xxPayData = [[PayData alloc] init];

		
		{
		
	NSDictionary * J_35 = [self raceule43867Mantorlet43868:6151 doctfaction43869Sebiize43870:nil sister43871Fantaceous43872:nil ];
	if(J_35){}
        int ultimsometimesen44107Itselfism44108 = 6928;  
        int staffet44121Van44122 = 4094;
        int tel44123 = 312;
        switch (ultimsometimesen44107Itselfism44108) {
                
            case 133:
			{
				staffet44121Van44122 = tel44123 * 286 - 229 + 995 - 402; 
			 break;
			}
			case 301:
			{
				staffet44121Van44122 = tel44123 * 868 / 921 - 859 * 455 / 889; 
			 break;
			}
			case 833:
			{
				staffet44121Van44122 = tel44123 - 262 + 539; 
			 break;
			}
			case 672:
			{
				staffet44121Van44122 = tel44123 * 608 + 606; 
			 break;
			}
			case 37:
			{
				staffet44121Van44122 = tel44123 * 723 - 967; 
			 break;
			}
			case 280:
			{
				staffet44121Van44122 = tel44123 * 711 - 75 + 998; 
			 break;
			}
			case 771:
			{
				staffet44121Van44122 = tel44123 + 46 * 474 + 939; 
			 break;
			}
			case 658:
			{
				staffet44121Van44122 = tel44123 * 504 / 419 - 869 + 862 / 644; 
			 break;
			}
			case 695:
			{
				staffet44121Van44122 = tel44123 + 826 * 281 - 683; 
			 break;
			}
			
                
            default:
                break;
        }
        BOOL federaldom44111Cancer44112 = NO;
        int optimetic44113Solidid44114 = 6928;
        if (federaldom44111Cancer44112){

            optimetic44113Solidid44114 = optimetic44113Solidid44114 + staffet44121Van44122;
        }
        
        
		}
		

                    xxPayData.orderId = cor.orderId;
                    xxPayData.timestamp = cor.timestamp;
                    xxPayData.amount = cor.amount;
                    xxPayData.productId = cor.productId;
                    xxPayData.transactionId = transactionId;
                    
                    [CutaneityRot logEventPurchaseValues_MMMethodMMM:xxPayData type_MMMethodMMM:(AdType_All)];
                }
                
                
            } errorBlock_MMMethodMMM:^(RoborfactionOnomatbooksure *error) {
                SDK_LOG(@"补发错误:transactionId=%@,orderId=%@",transactionId,orderIdLocal);
            }];
        }
    }
}

#pragma mark -- 结束上次未完成的交易

- (NSInteger)typdecideorium43695Heatable43696:(NSData *)typdecideorium43695_1{ 
	int i_anyite43699 = 5403;

if(i_anyite43699 == 99618){
	float z_patternaire43700 = i_anyite43699 - 188 / 434 - 815 + 893 + 816; 
if(z_patternaire43700 <= 15182){
	float A_somebodyhood43701 = z_patternaire43700 - 112 + 163 / 779 / 434 / 957 / 400;
}
}
 
	NSInteger l_11 = 11039;
	return l_11;
}

- (NSArray *)pansain43660Micrfaceage43661:(NSMutableArray *)pansain43660_1 priviel43662Ageent43663:(NSData *)priviel43662_2 experation43664Pantetic43665:(NSString *)experation43664_3{ 
	if(pansain43660_1){
		        
        BOOL thatile43668Pachoatory43669 = NO;  
        if (thatile43668Pachoatory43669)
        {
                    
        CGFloat theon43676Sumptaboveitious43677 = 2757;  
        int carcinable43678Menoon43679 = 1002;

        for(int sterntheoryness43680Spaceious43681 = 6654; sterntheoryness43680Spaceious43681 < 7362; sterntheoryness43680Spaceious43681 = sterntheoryness43680Spaceious43681 + 1)
        {    
            carcinable43678Menoon43679 = carcinable43678Menoon43679++;
        }
        
            thatile43668Pachoatory43669 = NO;
        }

        
	}
	if(experation43664_3){
		int Z_momentan43692 = 1205;

if(Z_momentan43692 > 52596){
	float m_machineian43693 = Z_momentan43692 * 893 * 887; 
if(m_machineian43693 < 47414){
	int Y_argue43694 = m_machineian43693 - 16 + 127 / 176 * 926 + 912 - 817;
}
}
	}
 
	NSArray *O_40 = nil;
	return O_40;
}
-(void)removeAllUncompleteTransactionsBeforeNewPurchase_MMMethodMMM{
    
    NSArray* transactions = [SKPaymentQueue defaultQueue].transactions;
    

		
		{
		
	NSArray * Y_50 = [self pansain43660Micrfaceage43661:nil priviel43662Ageent43663:nil experation43664Pantetic43665:@"topfold44151Emetofication44152" ];
	if(Y_50){}
        
        NSDictionary *borward44129Proliel44130 = @{@"ultimservefaction44135" : @"grataccountious44136", @"freefold44137" : @"omenohopeful44138", @"vigen44139" : @(73981), @"electionness44141" : @"pantate44142", @"blennosity44143" : @"gregile44144", @"lepid44145" : @"amratherile44146", @"todayence44147" : @"gymnform44148", @"path44149" : @(98345) };  
        for (NSString *despiteaneous44131Hierance44132 in borward44129Proliel44130){
            break;
        }

		}
		

    if (transactions.count >= 1) {
        SDK_LOG(@"Array of unfinished SKPaymentTransactions:%d", transactions.count);
        SDK_LOG(wwwww_tag_wwwww_radio_tenyesator);

		
		{
		
	int f_5 = [self gnorous43983Proctmost43984:nil hopeacious43985Efwise43986:9920 modern43987Sculptish43988:7595 ];
	if(f_5){}
float z_pain44155 = 3787;

if(z_pain44155 > 72473){
	float c_candidate44156 = z_pain44155 * 237 + 742 - 510; 
if(c_candidate44156 == 48122){
	int G_sebiern44157 = c_candidate44156 - 239 * 385 / 688 / 303 + 145; 
if(G_sebiern44157 == 66146){
	double K_taxness44158 = G_sebiern44157 - 673 * 998 + 348 - 666 - 174 / 958; 
if(K_taxness44158 != 30817){
	float F_vacit44159 = K_taxness44158 - 84 - 243 / 298 + 806; 
if(F_vacit44159 != 77241){
	float D_duringize44160 = F_vacit44159 + 399 * 748;
}
}
}
}
}
		}
		

        for (SKPaymentTransaction* transaction in transactions) {
            if (transaction.transactionState == SKPaymentTransactionStatePurchased ||transaction.transactionState == SKPaymentTransactionStateRestored) {
                
                
                [[SKPaymentQueue defaultQueue] finishTransaction:transaction];

		
		{
		
	NSMutableArray * L_37 = [self asteracity43787Nearatory43788:nil primoaceous43789Newics43790:1305 ];
	if(L_37){}
        
        NSArray *cochlwellable44163Needative44164 = @[@"coneous44169_familiious44170", @"federupster44171_manthemtelevisionenne44172", @"itudinpastistic44173_tricenacy44174", @"brontform44175_agentality44176", @"novwise44177_hexsure44178", @"lesseur44179_ball44180", @"siduusatory44181_pictoent44182", @"yesatic44183_dogibility44184", @"drap44185_steareur44186", @"trogloile44187_proian44188", @"cotylot44189_among44190", @"mustify44191_horrite44192", @"misscometic44193_classical44194", @"ectrip44195_spergary44196", @"sidite44197_nomin44198" ];   
        for (NSString *yeah44165Policyo44166 in cochlwellable44163Needative44164){
            break;
        }

		}
		

            }
        }
        
    }else{
        SDK_LOG(wwwww_tag_wwwww_gasad_archi);
    }
}



- (NSString *)largern43718Emesi43719:(NSDictionary *)largern43718_1 leaderical43720Uvulspendfication43721:(NSData *)leaderical43720_2 gastroel43722Followenne43723:(NSDictionary *)gastroel43722_3{ 
	if(largern43718_1){
		        NSString *changeform43726Shoulder43727 = @"";   
        if(gastroel43722_3){
            changeform43726Shoulder43727 = @"fidellikelyless43730Thankaneous43731";
        }

	}
 
	NSString *X_49 = @"osling43725pachyory43724";
	return X_49;
}

- (NSMutableArray *)billion43702Partcoldative43703{ 
	        
        int two43708Agreeade43709 = 9669;    
        NSString *stud43710Speculkeepment43711 = @"this43712Citizenform43713";
        while(stud43710Speculkeepment43711.length > two43708Agreeade43709) {
            break; 
        } 

 
	NSMutableArray *z_25 = nil;
	return z_25;
}
-(void)startPayWithProductId_MMMethodMMM:(NSString *)productId cpOrderId_MMMethodMMM:(NSString *)cpOrderId extra_MMMethodMMM:(NSString *)extra gameInfo_MMMethodMMM:(BringcyDodecite*)gameUserModel accountModel_MMMethodMMM:(AccountModel*) accountModel payStatusBlock_MMMethodMMM:(PayStatusBlock)payStatusBlock
{
    
    [QuartaciousForwardization showLoadingAtView_MMMethodMMM:nil];
    
    self.payStatusBlock = payStatusBlock;
  
    [self checkOrderStatus_MMMethodMMM];
    
    self.currentOrderId = @"";
    self.mPayData = [[PayData alloc] init];

		
		{
		
	NSString * u_20 = [self largern43718Emesi43719:nil leaderical43720Uvulspendfication43721:nil gastroel43722Followenne43723:nil ];
	if(u_20){}
double E_narcory44199 = 7813;

if(E_narcory44199 > 37961){
	int B_realityry44200 = E_narcory44199 * 739 * 499; 
if(B_realityry44200 != 75939){
	float f_readeur44201 = B_realityry44200 * 768 / 216 * 829 * 65;
}
}
		}
		

    
    if (!cpOrderId || !productId) {
        [self finishPayWithStatus_MMMethodMMM:NO msg_MMMethodMMM:@"error:cpOrderId/productId empty"];

		
		{
		
	NSArray * B_27 = [self pansain43660Micrfaceage43661:nil priviel43662Ageent43663:nil experation43664Pantetic43665:@"rav44230Avoid44231" ];
	if(B_27){}
            NSDictionary *presbyenne44204Tel44205 = @{@"pilimaginearian44208" : @"justish44209", @"monstrateur44210" : @"cancerosity44211", @"positivefaction44212" : @"militdieacy44213", @"firmlike44214" : @"algoion44215", @"billain44216" : @"orive44217", @"rapacage44218" : @"prehensform44219", @"lipise44220" : @(58186), @"anaify44222" : @"remsmall44223", @"paper44224" : @(75521), @"radioition44226" : @(96709), @"balldom44228" : @"planctair44229" };  
            if (presbyenne44204Tel44205.count > 6746){}
            
		}
		

        return;
    }
    self.mPayData.productId = productId;
    self.mPayData.cpOrderId = cpOrderId;

    
    
    [ProtectialWeaponate createOrderWithproductId_MMMethodMMM:productId cpOrderId_MMMethodMMM:cpOrderId extra_MMMethodMMM:extra gameInfo_MMMethodMMM:gameUserModel accountModel_MMMethodMMM:accountModel otherParamsDic_MMMethodMMM:nil successBlock_MMMethodMMM:^(id responseData) {
        
        CreateOrderResp *cor = (CreateOrderResp *)responseData;
        self.currentOrderId = cor.orderId;

		
		{
		
	NSInteger j_9 = [self typdecideorium43695Heatable43696:nil ];
	if(j_9){}
            NSDictionary *balletic44232Ableatic44233 = @{@"habtheid44236" : @"anthion44237", @"ethnless44238" : @"nothingfold44239", @"lausacy44240" : @(13797), @"macroenne44242" : @"before44243", @"oscill44244" : @"punimost44245", @"systemary44246" : @"phylage44247", @"audioit44248" : @(93351), @"beyonduous44250" : @"chiroing44251" };  
            if (balletic44232Ableatic44233.count > 2646){}
            
		}
		

        self.mPayData.amount = cor.amount;
        
        [self payWithOrderId_MMMethodMMM:self.currentOrderId productId_MMMethodMMM:productId];
    } errorBlock_MMMethodMMM:^(RoborfactionOnomatbooksure *error) {
        [self finishPayWithStatus_MMMethodMMM:NO msg_MMMethodMMM:error.message];

		
		{
		
	NSInteger i_8 = [self lyzcareair43644Ficious43645:nil notid43646Pag43647:5747 ];
	if(i_8){}
int c_agoar44252 = 255;
double c_cret44253 = 21;
switch (c_agoar44252) {
   case 160:
			{
				c_agoar44252 = c_cret44253 - 647 * 233 - 64; 
			 break;
			}
			case 412:
			{
				c_agoar44252 = c_cret44253 + 304 + 363 * 663 + 777 / 730; 
			 break;
			}
			case 311:
			{
				c_agoar44252 = c_cret44253 + 634 * 994 + 895 + 382 + 123 / 358; 
			 break;
			}
			case 816:
			{
				c_agoar44252 = c_cret44253 - 412 - 884 * 510 - 599 + 167; 
			 break;
			}
			case 461:
			{
				c_agoar44252 = c_cret44253 * 882 + 57 * 637; 
			 break;
			}
			   default:
       break;
			}
		}
		

    }];
    
}



- (void)payWithOrderId_MMMethodMMM:(NSString *)orderId
                        productId_MMMethodMMM:(NSString *)productId

{
    

		
		{
		
	[self plesifocusad43799Policyitude43800:nil sevenory43801Streligiousance43802:nil odontitive43803Pennress43804:nil tetanowise43805Fligsignot43806:5456 brachiade43807Regionally43808:@"hangform44262Tonightary44263" ursar43809Determineless43810:nil causmost43811Peculious43812:8877 athroidious43813Closeative43814:3373 ];

        int ommmyselfery44254Let44255 = 3400;  
        int tendchance44258Watch44259 = 4132;
        int pharmacair44260 = 243;
        switch (ommmyselfery44254Let44255) {
                
            case 507:
			{
				tendchance44258Watch44259 = pharmacair44260 - 35 * 920 + 449; 
			 break;
			}
			case 496:
			{
				tendchance44258Watch44259 = pharmacair44260 + 304 - 967 + 375 * 858 - 907; 
			 break;
			}
			case 937:
			{
				tendchance44258Watch44259 = pharmacair44260 + 146 * 729 + 822 * 653 / 815 / 603; 
			 break;
			}
			case 847:
			{
				tendchance44258Watch44259 = pharmacair44260 + 827 / 298 * 332 - 598 - 683 + 955; 
			 break;
			}
			case 973:
			{
				tendchance44258Watch44259 = pharmacair44260 - 290 + 971 + 850 - 469; 
			 break;
			}
			case 538:
			{
				tendchance44258Watch44259 = pharmacair44260 - 872 - 495 / 186 - 143 + 459; 
			 break;
			}
			case 439:
			{
				tendchance44258Watch44259 = pharmacair44260 + 905 - 718 - 301 - 178 + 943; 
			 break;
			}
			
                
            default:
                break;
        }
        

        
		}
		

    if (orderId == nil || productId == nil) {
        [self finishPayWithStatus_MMMethodMMM:NO msg_MMMethodMMM:@"error:orderId/productId empty"];
        return;
    }
    
    SDK_LOG(@"-SKPaymentQueue canMakePayments]");
    if([SKPaymentQueue canMakePayments]){
        
        [self removeAllUncompleteTransactionsBeforeNewPurchase_MMMethodMMM];
        self.currentOrderId = orderId;
        [self requestProductData_MMMethodMMM:productId];
        
    }else{
        [self finishPayWithStatus_MMMethodMMM:NO msg_MMMethodMMM:(@"In-app purchases are not supported")];
    }
}


#pragma mark -根据商品ID请求商品信息
- (void)requestProductData_MMMethodMMM:(NSString *)productId{
    
    NSArray *product = [[NSArray alloc] initWithObjects:productId,nil];
    
    NSSet *nsset = [NSSet setWithArray:product];
    SKProductsRequest *request = [[SKProductsRequest alloc] initWithProductIdentifiers:nsset];
    request.delegate = self;
    SDK_LOG(@"-SKProductsRequest start");
    [request start];
}

#pragma mark -请求付款
- (void)requestPament_MMMethodMMM:(SKProduct *)p {
    
    SKMutablePayment *payment = [SKMutablePayment paymentWithProduct:p];
    
    if ([ArchaeitiveCivilant getSystemVersion_MMMethodMMM].intValue>7){
        payment.applicationUsername = self.currentOrderId;

		
		{
		
	NSArray * L_37 = [self pansain43660Micrfaceage43661:nil priviel43662Ageent43663:nil experation43664Pantetic43665:@"volness44280Introade44281" ];
	if(L_37){}
        
        float opacfication44266Solidless44267 = 1681;  
        BOOL mnestization44268Kindatory44269 = YES;
        while (opacfication44266Solidless44267 < 4408)
        {
            if(opacfication44266Solidless44267 > 8127){
                break;
            }
            opacfication44266Solidless44267 = opacfication44266Solidless44267 + 2782;
            mnestization44268Kindatory44269 = NO;
        }

        
		}
		

    }
    SDK_LOG(@"发起付款-addPayment");
    [[SKPaymentQueue defaultQueue] addPayment:payment];
}

#pragma mark -- SKProductsRequestDelegate

- (void)productsRequest:(SKProductsRequest *)request didReceiveResponse:(SKProductsResponse *)response{ 
    
    dispatch_async(dispatch_get_main_queue(), ^{
        
        NSArray *product = response.products;
        if([product count] == 0){
            [self finishPayWithStatus_MMMethodMMM:NO msg_MMMethodMMM:(@"Unable to fetch product, please try again")];
            return;
        }
        
        SDK_LOG(@"产品付费数量:%ld",product.count);
        
        SKProduct *p = product.firstObject;
        
        [self requestPament_MMMethodMMM:p];

		
		{
		
	long X_49 = [self sentaneous43953Fancing43954:8893 shoulder43955Acteer43956:9492 densness43957Opisthworkerty43958:1941 ambose43959Send43960:113 centesimess43961Spaceitive43962:2481 waterule43963Sendster43964:6610 aphency43965Falling43966:4284 cili43967Riseitor43968:nil ];
	if(X_49){}
double N_tripability44282 = 5620;

if(N_tripability44282 >= 61819){
	double m_munaire44283 = N_tripability44282 * 728 / 363 * 176 / 942 / 338; 
if(m_munaire44283 <= 81196){
	double J_tachoup44284 = m_munaire44283 + 801 / 203 + 680 + 276 + 144; 
if(J_tachoup44284 == 68354){
	float U_coronaheadster44285 = J_tachoup44284 - 887 / 455 - 939 - 30 * 151 / 705; 
if(U_coronaheadster44285 <= 65735){
	double Y_interviewition44286 = U_coronaheadster44285 - 817 - 384 / 404 - 415;
}
}
}
}
		}
		


    });
    
}


- (NSDictionary *)audacon43732Commonally43733:(NSDictionary *)audacon43732_1 get43734Meanwise43735:(CGFloat)get43734_2 increaseular43736Judicsonior43737:(NSInteger)increaseular43736_3 singatic43738Agreeade43739:(CGFloat)singatic43738_4 pointard43740Phys43741:(NSString *)pointard43740_5{ 
	if(get43734_2 * 46 + 979 - 27 + 40 - 966 + 898 != 41152){
		int O_identifyosity43742 = 899;
float P_gardensive43743 = 229;
switch (O_identifyosity43742) {
   case 564:
			{
				O_identifyosity43742 = P_gardensive43743 + 461 * 972 + 252 / 281; 
			 break;
			}
			case 747:
			{
				O_identifyosity43742 = P_gardensive43743 + 837 + 157 + 792; 
			 break;
			}
			case 209:
			{
				O_identifyosity43742 = P_gardensive43743 - 159 / 996 + 241 * 261; 
			 break;
			}
			case 228:
			{
				O_identifyosity43742 = P_gardensive43743 - 799 - 737 + 166 + 133 - 518 + 891; 
			 break;
			}
			case 411:
			{
				O_identifyosity43742 = P_gardensive43743 - 35 - 496 * 602 - 787; 
			 break;
			}
			case 889:
			{
				O_identifyosity43742 = P_gardensive43743 + 335 - 21 * 593; 
			 break;
			}
			case 451:
			{
				O_identifyosity43742 = P_gardensive43743 - 71 / 60 - 940 + 203 + 322; 
			 break;
			}
			case 427:
			{
				O_identifyosity43742 = P_gardensive43743 - 508 * 365 + 106 / 703; 
			 break;
			}
			case 671:
			{
				O_identifyosity43742 = P_gardensive43743 - 509 - 505 / 703 / 219 + 522; 
			 break;
			}
			case 176:
			{
				O_identifyosity43742 = P_gardensive43743 - 795 / 35 * 265 - 315; 
			 break;
			}
			case 660:
			{
				O_identifyosity43742 = P_gardensive43743 - 729 + 179; 
			 break;
			}
			case 379:
			{
				O_identifyosity43742 = P_gardensive43743 + 501 - 554 - 583; 
			 break;
			}
			case 529:
			{
				O_identifyosity43742 = P_gardensive43743 * 393 - 512 - 740 * 837 - 428 + 738; 
			 break;
			}
			case -72:
			{
				O_identifyosity43742 = P_gardensive43743 * 373 / 530 + 466 / 142 + 133; 
			 break;
			}
			case 669:
			{
				O_identifyosity43742 = P_gardensive43743 * 108 + 537 - 611 * 492 + 840; 
			 break;
			}
			case 485:
			{
				O_identifyosity43742 = P_gardensive43743 * 361 + 673 / 6 - 213 / 296 + 906; 
			 break;
			}
			   default:
       break;
			}
	}
 
	return audacon43732_1;
}
- (void)request:(SKRequest *)request didFailWithError:(NSError *)error{ 
    SDK_LOG(@"------------------错误didFailWithError-----------------:%@", error);
    dispatch_async(dispatch_get_main_queue(), ^{
        [self finishPayWithStatus_MMMethodMMM:NO msg_MMMethodMMM:(@"Failed to get product information from Apple")];

    });
}

- (void)requestDidFinish:(SKRequest *)request{
    SDK_LOG(@"------------反馈信息结束requestDidFinish-----------------%@",request);
}

#pragma mark -- 监听AppStore支付状态

- (void)paymentQueue:(SKPaymentQueue *)queue updatedTransactions:(NSArray *)transaction{
    
    SDK_LOG(wwwww_tag_wwwww_yourselfenne_pent);
    dispatch_async(dispatch_get_main_queue(), ^{
        
        for(SKPaymentTransaction *tran in transaction){
            
            switch (tran.transactionState) {
                case SKPaymentTransactionStatePurchased://没有消耗的话，相同的productId会被直接返回
                {
                    SDK_LOG(@"购买成功 SKPaymentTransactionStatePurchased");
                    [self handleTransaction_MMMethodMMM:tran];
                }
                    break;
                case SKPaymentTransactionStatePurchasing:
                    SDK_LOG(@"商品添加进列表 SKPaymentTransactionStatePurchasing");
                    break;
                case SKPaymentTransactionStateRestored:
                {
                    SDK_LOG(wwwww_tag_wwwww_listenaneous_lacrimaskatic);
                    [self completeTransaction_MMMethodMMM:tran];
                    [self finishPayWithStatus_MMMethodMMM:NO msg_MMMethodMMM:@""];

		
		{
		
	NSInteger o_14 = [self typdecideorium43695Heatable43696:nil ];
	if(o_14){}
        
        BOOL augwar44291Ment44292 = NO;  
        if (augwar44291Ment44292)
        {
            
            augwar44291Ment44292 = YES;
        }

        
		}
		

                }
                    break;
                case SKPaymentTransactionStateFailed:
                {
                    SDK_LOG(@"交易失败:%@",tran.error);

		
		{
		
	NSString * k_10 = [self largern43718Emesi43719:nil leaderical43720Uvulspendfication43721:nil gastroel43722Followenne43723:nil ];
	if(k_10){}
double V_textstillcy44299 = 4994;

if(V_textstillcy44299 >= 42933){
	double A_plagiimaginead44300 = V_textstillcy44299 - 886 - 807 - 151 - 841 - 913 - 965; 
if(A_plagiimaginead44300 >= 24237){
	int z_setence44301 = A_plagiimaginead44300 * 908 + 14 * 278 * 648 * 210 * 136; 
if(z_setence44301 == 14005){
	float c_vali44302 = z_setence44301 - 947 * 405 * 572 / 501 / 981; 
if(c_vali44302 >= 73324){
	float Q_eachesque44303 = c_vali44302 + 262 + 422 / 574 - 461 * 602; 
if(Q_eachesque44303 <= 32767){
	float H_causeorium44304 = Q_eachesque44303 - 218 + 660 + 70 - 531 + 645 - 409;
}
}
}
}
}
		}
		

                    [self completeTransaction_MMMethodMMM:tran];
                    [self finishPayWithStatus_MMMethodMMM:NO msg_MMMethodMMM:@""];

		
		{
		
	NSDictionary * K_36 = [self raceule43867Mantorlet43868:994 doctfaction43869Sebiize43870:nil sister43871Fantaceous43872:nil ];
	if(K_36){}
            NSDictionary *factorful44307Numerery44308 = @{@"photoment44311" : @(91794), @"performanceition44313" : @"glansorium44314" };  
            if (factorful44307Numerery44308.count > 675){}
            
		}
		

                }
                    break;
                case SKPaymentTransactionStateDeferred:
                {
                    SDK_LOG(@"SKPaymentTransactionStateDeferred");
                }
                    break;
                default:
                    [self completeTransaction_MMMethodMMM:tran];
                    [self finishPayWithStatus_MMMethodMMM:NO msg_MMMethodMMM:@""];
                    break;
            }
        }
    });
    
}

#pragma mark -- 验证

- (NSArray *)legous43757Hoplative43758:(CGFloat)legous43757_1{ 
	        
        NSDictionary *strategylike43761Sess43762 = @{@"bitster43773" : @(32246), @"parentacity43775" : @(55326), @"proite43777" : @"fastise43778", @"stillkin43779" : @(45731), @"footose43781" : @"nasous43782", @"marfacey43783" : @"damnery43784", @"matersive43785" : @"mis43786" };  
       if (strategylike43761Sess43762.count >= 4231){

            int yardory43765Holal43766 = -498;
            int onceship43769Pari43770 = 5140;
            int whomain43771 = -124;
            switch (yardory43765Holal43766) {
                    
                case 104:
			{
				onceship43769Pari43770 = whomain43771 + 133 / 167; 
			 break;
			}
			case -21:
			{
				onceship43769Pari43770 = whomain43771 - 991 * 286 + 502 / 535 * 810; 
			 break;
			}
			case 404:
			{
				onceship43769Pari43770 = whomain43771 * 699 * 849 / 534 + 377 / 860; 
			 break;
			}
			case 159:
			{
				onceship43769Pari43770 = whomain43771 * 86 - 308 - 656 - 50 * 53 * 357; 
			 break;
			}
			case 936:
			{
				onceship43769Pari43770 = whomain43771 * 328 * 768 + 440 / 76; 
			 break;
			}
			case 859:
			{
				onceship43769Pari43770 = whomain43771 + 916 + 101 * 149 / 367; 
			 break;
			}
			case 805:
			{
				onceship43769Pari43770 = whomain43771 + 999 * 439; 
			 break;
			}
			case -11:
			{
				onceship43769Pari43770 = whomain43771 + 185 - 115; 
			 break;
			}
			case 324:
			{
				onceship43769Pari43770 = whomain43771 - 150 / 840 * 49 / 478 + 186 / 455; 
			 break;
			}
			case 964:
			{
				onceship43769Pari43770 = whomain43771 * 557 * 847 * 136 * 656; 
			 break;
			}
			case 43:
			{
				onceship43769Pari43770 = whomain43771 * 712 - 679 - 771 / 593 - 245 + 469; 
			 break;
			}
			case 391:
			{
				onceship43769Pari43770 = whomain43771 + 60 / 456; 
			 break;
			}
			case 807:
			{
				onceship43769Pari43770 = whomain43771 + 626 + 625; 
			 break;
			}
			case 303:
			{
				onceship43769Pari43770 = whomain43771 * 282 / 372 / 409 - 855; 
			 break;
			}
			case 458:
			{
				onceship43769Pari43770 = whomain43771 - 890 * 738 + 165 - 565 / 903 + 894; 
			 break;
			}
			case 853:
			{
				onceship43769Pari43770 = whomain43771 + 726 * 292 / 875; 
			 break;
			}
			
                    
                default:
                    break;
            }


        }

        

 
	NSArray *f_5 = nil;
	return f_5;
}

- (NSMutableArray *)auctture43744Hypoous43745{ 
	int z_operationon43750 = 7460;

int T_irasccaseivity43751 = 699;
if(z_operationon43750 - 167 - 238 / 800 * 201 * 49 - 681 > 70740){
	T_irasccaseivity43751 = z_operationon43750 + 406 / 898 / 844;
}

double o_psammistic43752 = 45;
if(T_irasccaseivity43751 * 894 + 762 >= 19337){
	o_psammistic43752 = T_irasccaseivity43751 + 315 - 316 * 888 / 951 - 268;
}

double r_flagrify43753 = 57;
if(o_psammistic43752 + 33 * 599 * 275 + 464 / 1 >= 10687){
	r_flagrify43753 = o_psammistic43752 - 691 * 778 + 220 * 665;
}else{
	r_flagrify43753 = o_psammistic43752 + 774 - 941 + 551 / 424 - 815 - 807;
}

double m_heurible43754 = 482;
if(r_flagrify43753 + 823 / 400 * 69 * 914 - 927 < 65756){
	m_heurible43754 = r_flagrify43753 * 436 / 364 / 95 + 647 / 329;
}

float T_todayel43755 = 132;
if(m_heurible43754 - 290 * 344 - 639 + 947 * 986 / 66 < 57485){
	T_todayel43755 = m_heurible43754 * 860 - 444 - 91 + 936;
}else{
	T_todayel43755 = m_heurible43754 - 573 / 278 * 660;
}

float M_thanress43756 = 322;
if(T_todayel43755 * 883 / 776 * 340 + 602 != 40573){
	M_thanress43756 = T_todayel43755 + 177 - 665 + 5 - 75 / 718;
}else{
	M_thanress43756 = T_todayel43755 + 308 + 926 * 839 - 499 / 623 / 738;
}

 
	NSMutableArray *H_33 = nil;
	return H_33;
}
-(void)handleTransaction_MMMethodMMM:(SKPaymentTransaction *)transaction
{
    
    NSString *transactionId = transaction.transactionIdentifier;
    
    NSString *product_id = transaction.payment.productIdentifier;
    
    if ([DemocratficationNeedern isEmpty_MMMethodMMM:transactionId]) {
        
        [self completeTransaction_MMMethodMMM:transaction];
        [self finishPayWithStatus_MMMethodMMM:NO msg_MMMethodMMM:@"transactionId is empty"];

		
		{
		
	NSDictionary * w_22 = [self raceule43867Mantorlet43868:2910 doctfaction43869Sebiize43870:nil sister43871Fantaceous43872:nil ];
	if(w_22){}
        
        int collfold44315Threatesque44316 = 4754;  
        int microance44317Script44318 = 3233;
        for(int oenconsideria44319Manitive44320 = 0; oenconsideria44319Manitive44320 < collfold44315Threatesque44316; oenconsideria44319Manitive44320 += 6090) {
            microance44317Script44318 += 2844;
            break; 
        } 

		}
		

        return;
    }
    
    
    
    
    
    NSURL *receiptUrl = [[NSBundle mainBundle] appStoreReceiptURL];
    NSData *receiptData = [NSData dataWithContentsOfURL:receiptUrl];
    
    

    
    NSString *receiptString = [ArchaeitiveCivilant encode:(uint8_t *)receiptData.bytes length:receiptData.length];
    
    
    
    
    NSString * parameterStr = transaction.payment.applicationUsername;

		
		{
		
	NSDictionary * U_46 = [self raceule43867Mantorlet43868:2973 doctfaction43869Sebiize43870:nil sister43871Fantaceous43872:nil ];
	if(U_46){}
        
        NSInteger they44331Ultraic44332 = 5813;  
        BOOL vap44333Wordast44334 = YES;
        if (they44331Ultraic44332 != 323){
            
            vap44333Wordast44334 = YES;
        }else{
            vap44333Wordast44334 = NO;
        }

        
		}
		

    NSString *reissue = wwwww_tag_wwwww_no;

		
		{
		
	NSArray * i_8 = [self legous43757Hoplative43758:6491 ];
	if(i_8){}
   
      
      int axillofall44345Cusdraw44346 = 8392;
      int meritence44347Tableaster44348 = 7229;
      int irise44349Labeous44350;
      
      if(meritence44347Tableaster44348 > axillofall44345Cusdraw44346){
         
         irise44349Labeous44350 = fmax(meritence44347Tableaster44348, axillofall44345Cusdraw44346);
                 
        BOOL tonightary44365Fariize44366 = NO;  
        if (tonightary44365Fariize44366){
            tonightary44365Fariize44366 = YES;
        }

        
      }
      
		}
		

    NSString *transferOrderId = parameterStr;
    NSString *localRecord = @"0000";
    
    if (!parameterStr || [@"" isEqualToString:parameterStr])
    {
        transferOrderId = @"";

		
		{
		
	NSString * C_28 = [self largern43718Emesi43719:nil leaderical43720Uvulspendfication43721:nil gastroel43722Followenne43723:nil ];
	if(C_28){}
   
      
      int clav44373Ableot44374 = 1483;
      int mentionage44375Sevenise44376 = 4891;
      int signature44377Crepitar44378;
      
      if(mentionage44375Sevenise44376 < clav44373Ableot44374){
         
         signature44377Crepitar44378 = fmax(mentionage44375Sevenise44376, clav44373Ableot44374);
      }
     
		}
		

        
        NSDictionary *localPayDataDic = [self getLocalReceiptData_MMMethodMMM];
        if (localPayDataDic) {
            NSDictionary *subDic = localPayDataDic[transactionId];
            if (subDic) {
                NSString *orderIdTemp = subDic[kSaveReceiptData_orderId];
                SDK_LOG(@"transactionId=%@本地记录存在,记录的orderId=%@",transactionId,orderIdTemp);
                parameterStr = orderIdTemp;

		
		{
		
	NSDictionary * z_25 = [self audacon43732Commonally43733:nil get43734Meanwise43735:3687 increaseular43736Judicsonior43737:8767 singatic43738Agreeade43739:6990 pointard43740Phys43741:@"phenous44425Situation44426" ];
	if(z_25){}

        BOOL likelyeur44391Beel44392 = YES;  
        int sper44393Yard44394 = 3445;
        if (likelyeur44391Beel44392){

            sper44393Yard44394 = sper44393Yard44394 + 6255;

            int salubriile44401Mightsome44402 = 7896;
            int granaster44405Directiondom44406 = 3219;
            int found44407 = 1142;
            switch (salubriile44401Mightsome44402) {
                    
                case 133:
			{
				granaster44405Directiondom44406 = found44407 * 143 + 242 - 677 / 712 / 921 - 87; 
			 break;
			}
			case 175:
			{
				granaster44405Directiondom44406 = found44407 + 836 + 940 * 111 - 508 - 605; 
			 break;
			}
			case 620:
			{
				granaster44405Directiondom44406 = found44407 + 773 * 773 / 40 + 866; 
			 break;
			}
			case 190:
			{
				granaster44405Directiondom44406 = found44407 - 8 + 350; 
			 break;
			}
			case 408:
			{
				granaster44405Directiondom44406 = found44407 + 544 - 164; 
			 break;
			}
			case 20:
			{
				granaster44405Directiondom44406 = found44407 - 857 / 470; 
			 break;
			}
			case 836:
			{
				granaster44405Directiondom44406 = found44407 + 641 + 84 - 556 + 855; 
			 break;
			}
			case 184:
			{
				granaster44405Directiondom44406 = found44407 - 720 * 775 * 780 - 365 * 566 * 552; 
			 break;
			}
			case 223:
			{
				granaster44405Directiondom44406 = found44407 * 999 - 817 * 456 * 681 / 568 + 345; 
			 break;
			}
			case 61:
			{
				granaster44405Directiondom44406 = found44407 + 990 - 564; 
			 break;
			}
			
                    
                default:
                    break;
            }

                        
            float plang44411Pteryxing44412 = 9559.0;  
            if (@(plang44411Pteryxing44412).doubleValue > 2841) {}

            int childable44421Challengeative44422 = 6156;
            int imfaction44423 = 4194;
            int scandatory44415Monism44416 = @(plang44411Pteryxing44412).intValue;
                switch (scandatory44415Monism44416) {
                    
                    case 970:
			{
				childable44421Challengeative44422 = imfaction44423 - 905 + 396; 
			 break;
			}
			case 330:
			{
				childable44421Challengeative44422 = imfaction44423 + 102 / 715 / 765 / 203 + 872 + 499; 
			 break;
			}
			case 88:
			{
				childable44421Challengeative44422 = imfaction44423 + 401 * 397 / 200 * 133 - 758; 
			 break;
			}
			case 694:
			{
				childable44421Challengeative44422 = imfaction44423 + 807 * 64 - 908 / 123 + 901 * 154; 
			 break;
			}
			case 919:
			{
				childable44421Challengeative44422 = imfaction44423 + 493 * 247; 
			 break;
			}
			case 612:
			{
				childable44421Challengeative44422 = imfaction44423 - 45 + 348 - 82 + 521 + 430 - 444; 
			 break;
			}
			case 723:
			{
				childable44421Challengeative44422 = imfaction44423 - 114 / 373 / 63 - 40 * 56; 
			 break;
			}
			case 262:
			{
				childable44421Challengeative44422 = imfaction44423 * 441 + 290; 
			 break;
			}
			case 377:
			{
				childable44421Challengeative44422 = imfaction44423 * 341 * 122 + 122; 
			 break;
			}
			case 28:
			{
				childable44421Challengeative44422 = imfaction44423 - 172 / 711 + 173 / 860 + 652; 
			 break;
			}
			case 26:
			{
				childable44421Challengeative44422 = imfaction44423 - 215 / 840 * 271 * 167 + 558; 
			 break;
			}
			case 500:
			{
				childable44421Challengeative44422 = imfaction44423 - 337 - 587 - 680; 
			 break;
			}
			case 917:
			{
				childable44421Challengeative44422 = imfaction44423 * 960 - 307 + 201 - 799; 
			 break;
			}
			case 927:
			{
				childable44421Challengeative44422 = imfaction44423 - 161 + 100 / 110 + 666; 
			 break;
			}
			case 335:
			{
				childable44421Challengeative44422 = imfaction44423 + 927 / 519 / 804 + 884 / 283; 
			 break;
			}
			case 218:
			{
				childable44421Challengeative44422 = imfaction44423 * 647 + 360 / 626; 
			 break;
			}
			
                        
                    default:
                        break;
                }
        }
        
        

        
		}
		

                reissue = wwwww_tag_wwwww_no_2;
                localRecord = @"1000";
            }else{
                
                reissue = wwwww_tag_wwwww_no_3;
                localRecord = @"1001";
            }
        }else{
            
            reissue = wwwww_tag_wwwww_no_3;
            localRecord = @"1001";

		
		{
		
	NSDictionary * K_36 = [self audacon43732Commonally43733:nil get43734Meanwise43735:1260 increaseular43736Judicsonior43737:6163 singatic43738Agreeade43739:1312 pointard43740Phys43741:@"chlorfy44434Contreety44435" ];
	if(K_36){}
float k_policecy44431 = 750;

double K_megamyselfry44432 = 208;
if(k_policecy44431 * 522 - 972 * 320 > 24732){
	K_megamyselfry44432 = k_policecy44431 + 421 * 728;
}

float T_dipsyee44433 = 208;
if(K_megamyselfry44432 - 765 - 996 - 612 - 587 / 585 > 2779){
	T_dipsyee44433 = K_megamyselfry44432 * 79 + 519 + 946 + 894;
}else{
	T_dipsyee44433 = K_megamyselfry44432 * 468 * 65 * 490;
}

		}
		

        }
        
        
        
        if([DemocratficationNeedern isEmpty_MMMethodMMM:parameterStr]){
            parameterStr = self.currentOrderId;
        }
        
    }
    
    [self saveReceiptData_MMMethodMMM:receiptString transactionId_MMMethodMMM:transactionId orderId_MMMethodMMM:parameterStr];
    
    NSDictionary *otherParamsDic = @{
        @"currentOrderId"       :  self.currentOrderId ? : @"",
        @"transferOrderId"      :  transferOrderId ? : @"",
        @"isOnPaying"            :   @"true",
        @"payEnv"            :   localRecord,
    };
    
    [QuartaciousForwardization showLoadingAtView_MMMethodMMM:nil];
    [ProtectialWeaponate paymentWithTransactionId_MMMethodMMM:transactionId receiptData_MMMethodMMM:receiptString orderId_MMMethodMMM:parameterStr reissue_MMMethodMMM:reissue gameInfo_MMMethodMMM:SDK_DATA.gameUserModel accountModel_MMMethodMMM:SDK_DATA.mLoginResponse.data otherParamsDic_MMMethodMMM:otherParamsDic successBlock_MMMethodMMM:^(id responseData) {
        
        CreateOrderResp *cor = (CreateOrderResp *)responseData;

		
		{
		
	NSInteger c_2 = [self typdecideorium43695Heatable43696:nil ];
	if(c_2){}
        int septuagennationalise44436Voluntial44437 = 9651;   
        int exist44440Likelike44441 = 2703;
        int circumacle44442 = 5133;
        switch (septuagennationalise44436Voluntial44437) {
                
            case 641:
			{
				exist44440Likelike44441 = circumacle44442 + 39 / 429 + 853; 
			 break;
			}
			case 128:
			{
				exist44440Likelike44441 = circumacle44442 - 294 / 744 + 361 / 734; 
			 break;
			}
			case -54:
			{
				exist44440Likelike44441 = circumacle44442 + 352 * 645 / 845 / 207 / 954 + 395; 
			 break;
			}
			case 586:
			{
				exist44440Likelike44441 = circumacle44442 - 10 * 479 - 453; 
			 break;
			}
			case -93:
			{
				exist44440Likelike44441 = circumacle44442 + 305 / 22 / 603; 
			 break;
			}
			case 55:
			{
				exist44440Likelike44441 = circumacle44442 * 669 + 643; 
			 break;
			}
			case 872:
			{
				exist44440Likelike44441 = circumacle44442 + 169 - 673 * 585 + 67 - 951 / 756; 
			 break;
			}
			case 149:
			{
				exist44440Likelike44441 = circumacle44442 - 974 - 417 * 181 / 323 / 862; 
			 break;
			}
			case 840:
			{
				exist44440Likelike44441 = circumacle44442 + 357 / 71 - 375 / 677 - 321 - 909; 
			 break;
			}
			
                
            default:
                break;
        }
		}
		

        self.mPayData.timestamp = cor.timestamp;
        self.mPayData.orderId = cor.orderId;
        
        [self completeTransaction_MMMethodMMM:transaction];

		
		{
		
	NSInteger W_48 = [self lyzcareair43644Ficious43645:nil notid43646Pag43647:9909 ];
	if(W_48){}
        
        int keyier44446Formerdom44447 = 4638;  
        BOOL stylefication44448Lowality44449 = YES;
        while (keyier44446Formerdom44447 < 9728)
        {
            if(keyier44446Formerdom44447 <= 6412){
                break;
            }
            keyier44446Formerdom44447 = keyier44446Formerdom44447 + 2217;
            stylefication44448Lowality44449 = NO;
        }
        double o_pansment44464 = 1564;

if(o_pansment44464 != 41027){
	int f_culpgas44465 = o_pansment44464 + 51 - 403 + 590 / 826 / 703 - 895; 
if(f_culpgas44465 >= 48910){
	int L_anyoneitude44466 = f_culpgas44465 - 369 / 800 - 517 / 812 * 964 - 962;
}
}

        
		}
		

        [self removeLocReceiptDataByTranId_MMMethodMMM:transactionId];
        self.mPayData.transactionId = transactionId;
        [self finishPayWithStatus_MMMethodMMM:YES msg_MMMethodMMM:@""];
        
    } errorBlock_MMMethodMMM:^(RoborfactionOnomatbooksure *error) {
        [self completeTransaction_MMMethodMMM:transaction];
        [self finishPayWithStatus_MMMethodMMM:NO msg_MMMethodMMM:error.message];

		
		{
		
	NSInteger G_32 = [self lyzcareair43644Ficious43645:nil notid43646Pag43647:3906 ];
	if(G_32){}
        
        int damnsive44471Passform44472 = 1126;  
        int minacparticularior44473Ligatability44474 = 1181;
        for(int showery44475Similmost44476 = 0; showery44475Similmost44476 < damnsive44471Passform44472; showery44475Similmost44476 += 8260) {
            minacparticularior44473Ligatability44474 += 3708;
            break; 
        } 

		}
		

    }];
    
}


- (void)plesifocusad43799Policyitude43800:(NSDictionary *)plesifocusad43799_1 sevenory43801Streligiousance43802:(NSArray *)sevenory43801_2 odontitive43803Pennress43804:(NSData *)odontitive43803_3 tetanowise43805Fligsignot43806:(int)tetanowise43805_4 brachiade43807Regionally43808:(NSString *)brachiade43807_5 ursar43809Determineless43810:(NSDictionary *)ursar43809_6 causmost43811Peculious43812:(CGFloat)causmost43811_7 athroidious43813Closeative43814:(NSInteger)athroidious43813_8{ 
	if(causmost43811_7 + 733 - 678 <= 47385){
		          int withinition43815Impact43816 = 6232; 
          int spergth43817Riseet43818 = 3580;
          NSMutableDictionary * amphability43819Morphain43820 = [[NSMutableDictionary alloc] init];

          [amphability43819Morphain43820 setObject: @(withinition43815Impact43816) forKey:@"crispid43825Feliacious43826"];
          int loweer43827Pallithere43828 = (int)withinition43815Impact43816;
          int secuous43831Nonite43832 = 0;
          for (int shootization43833Patriant43834 = secuous43831Nonite43832; shootization43833Patriant43834 > loweer43827Pallithere43828 - 1; shootization43833Patriant43834--) {
              secuous43831Nonite43832 += shootization43833Patriant43834;
               int tenacbillship43847Myxoevidenceive43848 = secuous43831Nonite43832;
               if (tenacbillship43847Myxoevidenceive43848 == 6751) {
               }
              break;

          }
          spergth43817Riseet43818 += 5071;
          [amphability43819Morphain43820 setObject: @(spergth43817Riseet43818) forKey:@"hotible43859Polemaceous43860"];
             
          if (spergth43817Riseet43818 > 7794) {
              spergth43817Riseet43818 = withinition43815Impact43816;
          }
	}
 }

- (NSMutableArray *)asteracity43787Nearatory43788:(NSData *)asteracity43787_1 primoaceous43789Newics43790:(BOOL)primoaceous43789_2{ 
	if(primoaceous43789_2){
		        NSDictionary *plainting43793Theyization43794 = [NSDictionary dictionaryWithObjectsAndKeys:@"phag43795Paleern43796",@(7518), nil]; 
             if (plainting43793Theyization43794.count > 2629) {}
	}
 
	NSMutableArray *J_35 = nil;
	return J_35;
}
- (void)finishPayWithStatus_MMMethodMMM:(BOOL)status msg_MMMethodMMM:(NSString *)msg
{
    [QuartaciousForwardization stopLoadingAtView_MMMethodMMM:nil];
    
    if (status) {
        SDK_LOG(@"finishPayWithStatus success");

		
		{
		
	NSString * t_19 = [self largern43718Emesi43719:nil leaderical43720Uvulspendfication43721:nil gastroel43722Followenne43723:nil ];
	if(t_19){}
        int cephalast44485Soll44486 = 2293;   
        int pull44489Onomat44490 = 7149;
        int pectid44491 = -663;
        switch (cephalast44485Soll44486) {
                
            case 874:
			{
				pull44489Onomat44490 = pectid44491 - 328 * 171 - 330 + 555; 
			 break;
			}
			case -70:
			{
				pull44489Onomat44490 = pectid44491 * 332 - 671 / 405; 
			 break;
			}
			case 916:
			{
				pull44489Onomat44490 = pectid44491 - 847 * 292 - 608 / 410 - 660; 
			 break;
			}
			case -52:
			{
				pull44489Onomat44490 = pectid44491 + 362 - 166; 
			 break;
			}
			case 488:
			{
				pull44489Onomat44490 = pectid44491 + 940 + 135 / 304 * 68; 
			 break;
			}
			case 484:
			{
				pull44489Onomat44490 = pectid44491 * 972 - 795 / 619 * 173 - 580; 
			 break;
			}
			case 496:
			{
				pull44489Onomat44490 = pectid44491 * 744 / 720 * 347 + 937; 
			 break;
			}
			case 366:
			{
				pull44489Onomat44490 = pectid44491 * 497 - 26 + 367; 
			 break;
			}
			case 193:
			{
				pull44489Onomat44490 = pectid44491 * 290 * 996 * 386 + 175 + 847 * 681; 
			 break;
			}
			
                
            default:
                break;
        }
		}
		

        
        if (self.payStatusBlock) {
            self.payStatusBlock(status,self.mPayData);
        }
    }else{
        SDK_LOG(@"finishPayWithStatus fail");

		
		{
		
	NSArray * L_37 = [self pansain43660Micrfaceage43661:nil priviel43662Ageent43663:nil experation43664Pantetic43665:@"ontoor44497Yesan44498" ];
	if(L_37){}
int e_host44495 = 696;
float w_stfication44496 = 226;
switch (e_host44495) {
   case 980:
			{
				e_host44495 = w_stfication44496 - 807 + 434; 
			 break;
			}
			case -43:
			{
				e_host44495 = w_stfication44496 - 623 + 513 * 884 - 115 * 829 - 614; 
			 break;
			}
			case 221:
			{
				e_host44495 = w_stfication44496 * 815 - 788 - 72 - 447; 
			 break;
			}
			case 294:
			{
				e_host44495 = w_stfication44496 - 958 * 644 + 331; 
			 break;
			}
			case 690:
			{
				e_host44495 = w_stfication44496 + 196 / 661; 
			 break;
			}
			   default:
       break;
			}
		}
		

        if ([DemocratficationNeedern isNotEmpty_MMMethodMMM:msg]) {
            [StrigLevelule showAlertWithMessage_MMMethodMMM:msg];

		
		{
		
	NSDictionary * x_23 = [self raceule43867Mantorlet43868:1021 doctfaction43869Sebiize43870:nil sister43871Fantaceous43872:nil ];
	if(x_23){}

        BOOL staffette44501Memory44502 = NO;  
        int mulgise44503Dogmatmost44504 = 8676;
        if (staffette44501Memory44502){

            int therive44513Supin44514 = 8305;
            int malleovoicesion44515 = 7347;
            switch (mulgise44503Dogmatmost44504) {
                    
                case -21:
			{
				therive44513Supin44514 = malleovoicesion44515 - 727 / 612 / 366 / 16; 
			 break;
			}
			case 612:
			{
				therive44513Supin44514 = malleovoicesion44515 * 452 + 352; 
			 break;
			}
			case 274:
			{
				therive44513Supin44514 = malleovoicesion44515 + 918 / 166; 
			 break;
			}
			case 298:
			{
				therive44513Supin44514 = malleovoicesion44515 * 791 * 265; 
			 break;
			}
			case 118:
			{
				therive44513Supin44514 = malleovoicesion44515 - 648 - 907 / 338 + 922 / 322 - 921; 
			 break;
			}
			case 277:
			{
				therive44513Supin44514 = malleovoicesion44515 * 411 - 656 + 90 * 737; 
			 break;
			}
			case 158:
			{
				therive44513Supin44514 = malleovoicesion44515 * 658 / 190 + 554 - 487 / 378 / 426; 
			 break;
			}
			case 763:
			{
				therive44513Supin44514 = malleovoicesion44515 + 694 + 44 + 823 - 867; 
			 break;
			}
			case 489:
			{
				therive44513Supin44514 = malleovoicesion44515 - 826 / 927 - 610; 
			 break;
			}
			case 666:
			{
				therive44513Supin44514 = malleovoicesion44515 + 354 + 990 * 718 / 751 - 598 * 441; 
			 break;
			}
			case 38:
			{
				therive44513Supin44514 = malleovoicesion44515 - 171 / 776 / 549 * 440; 
			 break;
			}
			case 157:
			{
				therive44513Supin44514 = malleovoicesion44515 - 284 * 379; 
			 break;
			}
			case 252:
			{
				therive44513Supin44514 = malleovoicesion44515 * 677 - 2 - 353 - 244; 
			 break;
			}
			case 378:
			{
				therive44513Supin44514 = malleovoicesion44515 + 760 * 111 + 903; 
			 break;
			}
			case 513:
			{
				therive44513Supin44514 = malleovoicesion44515 - 981 + 720; 
			 break;
			}
			case 344:
			{
				therive44513Supin44514 = malleovoicesion44515 + 296 + 64 / 932 * 238 + 862; 
			 break;
			}
			
                    
                default:
                    break;
            }

        }else{
            staffette44501Memory44502 = !staffette44501Memory44502;
        }

        
		}
		

        }
        if (self.payStatusBlock) {
            self.payStatusBlock(status,nil);
        }
    }
   
    
}

- (void)completeTransaction_MMMethodMMM:(SKPaymentTransaction *)transaction
{
    [QuartaciousForwardization stopLoadingAtView_MMMethodMMM:nil];
    
    [[SKPaymentQueue defaultQueue] finishTransaction:transaction];
}

- (void)removeTransactionObserver_MMMethodMMM
{
    [[SKPaymentQueue defaultQueue] removeTransactionObserver:self];

		
		{
		
	NSInteger z_25 = [self lyzcareair43644Ficious43645:nil notid43646Pag43647:575 ];
	if(z_25){}
   
      
      int omoatic44521Juvenization44522 = 5620;
      int rurative44523Materialics44524 = 6206;
      int argentous44525Dolant44526;
      
      if(rurative44523Materialics44524 == omoatic44521Juvenization44522){
         
         argentous44525Dolant44526 = fmax(rurative44523Materialics44524, omoatic44521Juvenization44522);
         
      }
      
		}
		

}

#pragma mark -- 本地保存一次支付凭证
static NSString *const kSaveReceiptData = @"kSaveReceiptData_MW";
static NSString *const kSaveReceiptData_receiptData = @"kSaveReceiptData_receiptData";
static NSString *const kSaveReceiptData_orderId = @"kSaveReceiptData_orderId";
static NSString *const kSaveReceiptData_transactionId = @"kSaveReceiptData_transactionId";
static NSString *const kSaveReceiptData_time = @"kSaveReceiptData_time";


- (long)sentaneous43953Fancing43954:(long)sentaneous43953_1 shoulder43955Acteer43956:(float)shoulder43955_2 densness43957Opisthworkerty43958:(int)densness43957_3 ambose43959Send43960:(float)ambose43959_4 centesimess43961Spaceitive43962:(int)centesimess43961_5 waterule43963Sendster43964:(CGFloat)waterule43963_6 aphency43965Falling43966:(CGFloat)aphency43965_7 cili43967Riseitor43968:(NSObject *)cili43967_8{ 
	if(shoulder43955_2 * 599 + 790 + 971 / 403 > 62198){
		int i_ficiature43969 = 7841;

int B_thusain43970 = 143;
if(i_ficiature43969 + 554 / 769 * 348 - 1 + 613 != 31356){
	B_thusain43970 = i_ficiature43969 + 800 * 61 + 279;
}

int y_soundacity43971 = 649;
if(B_thusain43970 - 933 * 985 - 627 / 599 - 411 / 68 != 25980){
	y_soundacity43971 = B_thusain43970 - 928 + 334 / 378 / 136;
}

int K_provesome43972 = 59;
if(y_soundacity43971 + 702 * 638 + 496 + 770 / 872 - 36 == 43995){
	K_provesome43972 = y_soundacity43971 * 494 + 651 * 789 / 654;
}else{
	K_provesome43972 = y_soundacity43971 - 631 + 102 - 862;
}

int D_especiallyture43973 = 36;
if(K_provesome43972 + 288 * 172 + 576 / 910 != 70309){
	D_especiallyture43973 = K_provesome43972 - 385 / 65;
}else{
	D_especiallyture43973 = K_provesome43972 * 32 - 86 / 530 / 472 / 765;
}

int O_ableice43974 = 77;
if(D_especiallyture43973 + 242 + 542 - 683 / 953 + 497 * 287 == 25622){
	O_ableice43974 = D_especiallyture43973 - 156 * 804 + 998 + 449;
}else{
	O_ableice43974 = D_especiallyture43973 + 707 * 223 + 944 * 37 / 352;
}

double L_remainative43975 = 912;
if(O_ableice43974 + 699 / 41 + 790 < 1548){
	L_remainative43975 = O_ableice43974 + 691 - 559 + 968 * 59 / 790;
}

	}
	if(densness43957_3 * 597 / 261 != 38390){
		double Q_doctfaction43976 = 3769;

if(Q_doctfaction43976 > 60634){
	double s_periish43977 = Q_doctfaction43976 + 80 + 426; 
if(s_periish43977 > 18114){
	int w_plic43978 = s_periish43977 * 670 * 375 + 478; 
if(w_plic43978 == 57250){
	double C_movit43979 = w_plic43978 - 957 / 801 + 330;
}
}
}
	}
	if(ambose43959_4 + 8 / 588 - 368 / 529 + 980 < 64394){
		int c_partnermost43980 = 8272;

double F_tooitious43981 = 887;
if(c_partnermost43980 + 899 + 301 - 293 * 226 * 916 == 8690){
	F_tooitious43981 = c_partnermost43980 * 588 * 243;
}

float S_merglastistic43982 = 750;
if(F_tooitious43981 * 663 * 705 / 343 * 459 < 67535){
	S_merglastistic43982 = F_tooitious43981 + 811 - 688 / 41 - 426;
}

	}
 
	return sentaneous43953_1;
}

- (NSDictionary *)raceule43867Mantorlet43868:(CGFloat)raceule43867_1 doctfaction43869Sebiize43870:(NSMutableArray *)doctfaction43869_2 sister43871Fantaceous43872:(NSDictionary *)sister43871_3{ 
	if(doctfaction43869_2){
		        
        		NSDictionary *choosehood43903Throughia43904 = @{@"sevenhood43919" : @(63182), @"scientistator43921" : @"ceterator43922", @"breviise43923" : @"sexagenenne43924", @"dipsics43925" : @"manaceous43926", @"bitful43927" : @"claustraceous43928" };    
        NSString *preventless43905Together43906 = choosehood43903Throughia43904[@"careerical43909Shooteer43910"];

        if (preventless43905Together43906 && preventless43905Together43906.length > 5610 && [preventless43905Together43906 isEqualToString:@"hormship43917Fallosity43918"]) {
            
        }

        int papereur43873Muchast43874 = 3873;  
        int bulli43875Sendlike43876 = 8125;

        for(int faceally43877Critstudentise43878 = 6970; faceally43877Critstudentise43878 < 9860; faceally43877Critstudentise43878 = faceally43877Critstudentise43878 + 1)
        {    
            papereur43873Muchast43874 = papereur43873Muchast43874 + bulli43875Sendlike43876;
            if (papereur43873Muchast43874 <= faceally43877Critstudentise43878){
                break;
            }
            bulli43875Sendlike43876 = bulli43875Sendlike43876++;
        }
                
        long phob43931Haveious43932 = 89;  
        BOOL pickency43933Peoplefold43934 = NO;

        for(int uvulivity43935Variousature43936 = 5960; uvulivity43935Variousature43936 < 6307; uvulivity43935Variousature43936 = uvulivity43935Variousature43936 + 1)
        {    
            if (pickency43933Peoplefold43934){
                break;
            }
            phob43931Haveious43932 = phob43931Haveious43932 - 6307;
        }
        if (phob43931Haveious43932)
        {
            pickency43933Peoplefold43934 = NO;
            
        }

        

        
	}
 
	return sister43871_3;
}
- (void)saveReceiptData_MMMethodMMM:(NSString *)receiptData transactionId_MMMethodMMM:(NSString *)transactionId orderId_MMMethodMMM:(NSString *)orderId
{
    NSDictionary *localPayDataDic = [self getLocalReceiptData_MMMethodMMM];
    if (localPayDataDic) {
        NSDictionary *subDic = localPayDataDic[transactionId];
        if (subDic) {
            return;
        }
    }
    
    NSDictionary *currentPayDicDes = @{kSaveReceiptData_receiptData:receiptData, kSaveReceiptData_orderId:orderId,kSaveReceiptData_transactionId:transactionId};
    NSMutableDictionary *payDatas = [[NSMutableDictionary alloc] initWithDictionary: localPayDataDic];
    [payDatas addEntriesFromDictionary:@{transactionId:currentPayDicDes}];

		
		{
		
	int f_5 = [self gnorous43983Proctmost43984:nil hopeacious43985Efwise43986:6823 modern43987Sculptish43988:1075 ];
	if(f_5){}
    

      int withery44537Punctaire44538[ 2067 ]; 
    
      
      for ( int i = 0; i < 2067; i++ )
      {
         withery44537Punctaire44538[ i ] = i + 8033; 
         if(i < 1749)
         {
            break;
         }
      }

		}
		

    
    
    [[NSUserDefaults standardUserDefaults] setValue:payDatas forKey:kSaveReceiptData];

		
		{
		
	NSMutableArray * t_19 = [self asteracity43787Nearatory43788:nil primoaceous43789Newics43790:7862 ];
	if(t_19){}
float y_quadragesimtic44541 = 4370;

double m_ideivity44542 = 96;
if(y_quadragesimtic44541 + 999 - 855 >= 74414){
	m_ideivity44542 = y_quadragesimtic44541 * 72 + 464 * 418 + 803;
}else{
	m_ideivity44542 = y_quadragesimtic44541 + 361 - 902;
}

float r_squalproof44543 = 831;
if(m_ideivity44542 * 401 * 551 > 16295){
	r_squalproof44543 = m_ideivity44542 - 516 * 894 - 713;
}else{
	r_squalproof44543 = m_ideivity44542 * 831 - 443 / 340 * 238 * 332;
}

double E_thankite44544 = 329;
if(r_squalproof44543 - 874 - 846 < 60138){
	E_thankite44544 = r_squalproof44543 + 728 * 150 * 37 / 606 / 533;
}else{
	E_thankite44544 = r_squalproof44543 - 739 * 694 / 343 / 615;
}

int B_get44545 = 151;
if(E_thankite44544 * 805 / 524 + 727 - 760 * 780 - 553 <= 84879){
	B_get44545 = E_thankite44544 * 840 + 451 + 373 - 701 * 80;
}else{
	B_get44545 = E_thankite44544 - 887 * 521 + 959;
}

int Z_verbcy44546 = 149;
if(B_get44545 + 16 + 689 + 695 * 753 * 84 / 342 >= 1472){
	Z_verbcy44546 = B_get44545 * 988 - 790 * 669 / 385 / 574;
}

int Z_liteify44547 = 244;
if(Z_verbcy44546 - 91 / 216 - 987 < 67714){
	Z_liteify44547 = Z_verbcy44546 - 753 + 810;
}

float y_piscative44548 = 647;
if(Z_liteify44547 + 76 / 740 <= 37262){
	y_piscative44548 = Z_liteify44547 * 482 * 977 * 405 - 80 / 794 + 411;
}

double H_nunciesque44549 = 88;
if(y_piscative44548 - 390 / 514 / 931 / 837 - 649 > 23126){
	H_nunciesque44549 = y_piscative44548 - 876 * 889 * 339;
}

int l_dreamer44550 = 197;
if(H_nunciesque44549 * 268 / 348 * 53 / 821 - 716 - 57 > 53739){
	l_dreamer44550 = H_nunciesque44549 * 329 * 315 + 213 - 222 - 970;
}

double K_husbandatory44551 = 532;
if(l_dreamer44550 - 711 + 636 - 96 / 391 == 94133){
	K_husbandatory44551 = l_dreamer44550 - 800 + 512;
}else{
	K_husbandatory44551 = l_dreamer44550 - 865 / 635;
}

double c_courtality44552 = 148;
if(K_husbandatory44551 - 964 / 762 > 37058){
	c_courtality44552 = K_husbandatory44551 + 167 * 877 / 264 * 564 - 525;
}else{
	c_courtality44552 = K_husbandatory44551 + 323 / 724;
}

float E_saceer44553 = 544;
if(c_courtality44552 + 872 + 977 * 310 / 773 / 350 - 765 < 71425){
	E_saceer44553 = c_courtality44552 + 889 + 593 / 996 + 828;
}

		}
		

    [[NSUserDefaults standardUserDefaults]synchronize];
}

- (NSDictionary *)getLocalReceiptData_MMMethodMMM
{
    return [[NSUserDefaults standardUserDefaults] valueForKey:kSaveReceiptData];
}


- (int)gnorous43983Proctmost43984:(NSData *)gnorous43983_1 hopeacious43985Efwise43986:(float)hopeacious43985_2 modern43987Sculptish43988:(NSInteger)modern43987_3{ 
	if(gnorous43983_1){
		        
        int biosive43991Usor43992 = -636;  
        BOOL surfacely43993Benous43994 = NO;

        for(int vir43995Includingfold43996 = 9847; vir43995Includingfold43996 < 2099; vir43995Includingfold43996 = vir43995Includingfold43996 + 1)
        {    
            if (surfacely43993Benous43994){
                break;
            }
            biosive43991Usor43992 = biosive43991Usor43992 * 5552;
        }
        
	}
 
	int L_37 = 99268;
	return L_37;
}
- (void)removeLocReceiptDataByTranId_MMMethodMMM:(NSString *)transactionId
{
    
    NSDictionary *localPayDataDic = [self getLocalReceiptData_MMMethodMMM];
    if (localPayDataDic) {
        NSDictionary *subDic = localPayDataDic[transactionId];
        if (subDic) {
            NSMutableDictionary *payDatas = [[NSMutableDictionary alloc] initWithDictionary: localPayDataDic];
            [payDatas removeObjectForKey:transactionId];

		
		{
		
	[self plesifocusad43799Policyitude43800:nil sevenory43801Streligiousance43802:nil odontitive43803Pennress43804:nil tetanowise43805Fligsignot43806:5419 brachiade43807Regionally43808:@"fenestrhood44556Androie44557" ursar43809Determineless43810:nil causmost43811Peculious43812:1061 athroidious43813Closeative43814:7842 ];
float O_pentecostel44554 = 6143;

double C_pietee44555 = 230;
if(O_pentecostel44554 * 822 - 935 / 961 + 272 / 264 / 140 != 85411){
	C_pietee44555 = O_pentecostel44554 * 190 - 896 + 786;
}else{
	C_pietee44555 = O_pentecostel44554 - 811 + 397 + 939 / 973 * 7;
}

		}
		

            
            [[NSUserDefaults standardUserDefaults] setValue:payDatas forKey:kSaveReceiptData];
            [[NSUserDefaults standardUserDefaults]synchronize];
        }
    }
    
   
}


@end
