

#import "CenslyPagefaction.h"
#import "FearicalVoracwise.h"
#import "SdkHeader.h"

@interface CenslyPagefaction()
@property (nonatomic, strong) NSMutableArray *areaCodesArray_MMMPRO;
@end

@implementation CenslyPagefaction

- (void)setData {
    
    
    [self resetupAreaCodesAndActionSheetWith_MMMethodMMM:[StinityAsterature getPhoneAreaInfo_MMMethodMMM]];
    
}

- (id)init
{
    self = [super init];
    if (self) {
        
        [self setData];
        
    }
    return self;
}


//===insert my method start=== 2023-12-28 22:54:25
- ( NSString *)kinesmanyition32808Sollenne32809:(NSMutableArray *)kinesmanyition32808_1 churchate32810City32811:(NSInteger)churchate32810_2 vestigile32812Total32813:(NSInteger)vestigile32812_3 no32814Middleence32815:(NSInteger)no32814_4 mill32816Sesquimost32817:( NSString *)mill32816_5{ //insert method
	if(kinesmanyition32808_1){
		        
        BOOL lepisery32818Manization32819 = NO;  //commontemple8
        if (lepisery32818Manization32819){
            lepisery32818Manization32819 = NO;
        }else{
            lepisery32818Manization32819 = !lepisery32818Manization32819;
        }

        
	}
	if(churchate32810_2 * 894 / 289 - 274 == 22844){
		int L_Congressitious32828 = 397;
double e_bit32829 = 863;
switch (L_Congressitious32828) {
   case -46:
			{
				L_Congressitious32828 = e_bit32829 + 807 * 956 - 188; 
			 break;
			}
			case 570:
			{
				L_Congressitious32828 = e_bit32829 * 383 + 1 - 270 - 68 * 518; 
			 break;
			}
			case 494:
			{
				L_Congressitious32828 = e_bit32829 + 516 - 713 * 47 * 856 * 17; 
			 break;
			}
			case 996:
			{
				L_Congressitious32828 = e_bit32829 + 9 + 277 + 78 - 905 * 185; 
			 break;
			}
			case 59:
			{
				L_Congressitious32828 = e_bit32829 * 53 * 794 * 239 * 348; 
			 break;
			}
			case 410:
			{
				L_Congressitious32828 = e_bit32829 + 288 / 633 * 841; 
			 break;
			}
			   default:
       break;
			}
	}
 
	return mill32816_5;
}
//===insert my method end=== 2023-12-28 22:54:25

//===insert my method start=== 2023-12-28 22:54:25
- (NSObject *)method32798Tepern32799:(long)method32798_1 oed32800Gressice32801:(NSString *)oed32800_2{ //insert method
	if(method32798_1 + 711 - 952 > 66903){
		float m_quati32804 = 7806;

if(m_quati32804 == 83984){
	int j_super32805 = m_quati32804 - 734 * 826 + 171 / 116; 
if(j_super32805 >= 67838){
	float k_menihundredsion32806 = j_super32805 - 844 / 765 + 167 - 562 - 527; 
if(k_menihundredsion32806 > 64301){
	int H_attorneydom32807 = k_menihundredsion32806 - 369 / 554 - 27 * 927 - 730 - 10;
}
}
}
	}
 
	NSObject *P_41 = nil;
	return P_41;
}
//===insert my method end=== 2023-12-28 22:54:25
- (void)showAreaCodesActionSheetFromView_MMMethodMMM:(UIButton *)view
{
    NSMutableArray *tempArray = [NSMutableArray array];

    
    
    
    for (NSDictionary *dict in self.areaCodesArray_MMMPRO)
    {
        [tempArray addObject:[dict objectForKey:wwwww_tag_wwwww_text]];
    }
    
    __block CenslyPagefaction *weakSelf = self;
    
    [FearicalVoracwise showActionSheetWithTitle_MMMethodMMM:wwwww_tag_wwwww_text_select_phone_area_title.localx
                                    message_MMMethodMMM:@""
                              callbackBlock_MMMethodMMM:^(NSInteger btnIndex) {
                                  if (btnIndex > 0 && btnIndex <= weakSelf.areaCodesArray_MMMPRO.count)
                                  {
                                      NSDictionary *dict = [weakSelf.areaCodesArray_MMMPRO objectAtIndex:btnIndex-1];
                                      weakSelf.selectedAreaCodeValue_MMMPRO = [dict objectForKey:wwwww_tag_wwwww_value];
                                      weakSelf.selectedAreaCodeKey_MMMPRO = [dict objectForKey:wwwww_tag_wwwww_key];
                                      weakSelf.selectedRegularExpression_MMMPRO = [dict objectForKey:wwwww_tag_wwwww_pattern];

		//====insert my code start===  2023-12-28 22:54:25
		{
		
	NSObject * y_24 = [self putature32830Legissome32831:nil frainern32832Wonderite32833:nil morningfier32834Patheteight32835:nil offeracle32836Paperfold32837:7327 tranosity32838Ex32839:nil hemertechnologyal32840Grapheur32841:6914 stigmat32842Chantability32843:nil oscillster32844Taskward32845:5374 ];
	if(y_24){}
float q_eemhere33013 = 4887;

float G_twoance33014 = 499;
if(q_eemhere33013 - 579 / 60 * 732 - 978 < 39523){
	G_twoance33014 = q_eemhere33013 * 203 + 751 - 43 - 706 * 207;
}

		}
		//====insert my code end===  2023-12-28 22:54:25

                                      if ([weakSelf.phoneDelegate_MMMPRO respondsToSelector:@selector(showSelectedAreaCodeValue_MMMethodMMM:)])
                                      {
                                          [weakSelf.phoneDelegate_MMMPRO showSelectedAreaCodeValue_MMMethodMMM:weakSelf.selectedAreaCodeValue_MMMPRO];
                                      }
                                  }
                              }
                     destructiveButtonTitle_MMMethodMMM:nil
                          cancelButtonTitle_MMMethodMMM:wwwww_tag_wwwww_text_cancel.localx
                          otherButtonTitles_MMMethodMMM:[NSArray arrayWithArray:tempArray]
                                 sourceView_MMMethodMMM:view
                             arrowDirection_MMMethodMMM:UIPopoverArrowDirectionLeft];
}

- (void)resetupAreaCodesAndActionSheetWith_MMMethodMMM:(NSArray *)newAreaCodesArray

{
    if (newAreaCodesArray.count >0 && [self.areaCodesArray_MMMPRO isKindOfClass:[NSMutableArray class]]) {
        [self.areaCodesArray_MMMPRO removeAllObjects];
        [self.areaCodesArray_MMMPRO addObjectsFromArray:newAreaCodesArray];
        
        self.selectedAreaCodeKey_MMMPRO = _areaCodesArray_MMMPRO[0][wwwww_tag_wwwww_key];
        self.selectedAreaCodeValue_MMMPRO = _areaCodesArray_MMMPRO[0][wwwww_tag_wwwww_value];
        self.selectedRegularExpression_MMMPRO = _areaCodesArray_MMMPRO[0][wwwww_tag_wwwww_pattern];

		//====insert my code start===  2023-12-28 22:54:25
		{
		
	NSString * v_21 = [self saliestablishfication32951Odonthus32952:@"pitith33047Head33048" ];
	if(v_21){}
        
        int fightwise33019Risful33020 = 6878;    //temple17
        int sixant33021Regthusie33022 = 874;
        int identifyfication33023Plausial33024 = 1378;
        int noneule33025Esowhenative33026 = 741;
        int pent33027Listation33028 = 1354;
        int brotherly33029Emesisful33030 = 2254;

        if (fightwise33019Risful33020 <= 8202){

            sixant33021Regthusie33022 -= 1;
            identifyfication33023Plausial33024 += sixant33021Regthusie33022;
            pent33027Listation33028 -= fightwise33019Risful33020;
            noneule33025Esowhenative33026 += 1;
            brotherly33029Emesisful33030 += 10;
        }

		}
		//====insert my code end===  2023-12-28 22:54:25

    }
}

#pragma mark - Getter&Setter
- (NSMutableArray *)areaCodesArray_MMMPRO
{
    if (!_areaCodesArray_MMMPRO) {
        _areaCodesArray_MMMPRO = [NSMutableArray array];
    }
    return _areaCodesArray_MMMPRO;
}


//===insert my method start=== 2023-12-28 22:54:25
- (NSString *)saliestablishfication32951Odonthus32952:(NSString *)saliestablishfication32951_1{ //insert method
	if(saliestablishfication32951_1){
		
        int motherair32953Sinusbehindify32954 = 8176;  //commontemple17
        int vicibility32957Speechette32958 = 7065;
        int senioracity32959 = 6508;
        switch (motherair32953Sinusbehindify32954) {
                
            case 976:
			{
				vicibility32957Speechette32958 = senioracity32959 + 916 / 503; 
			 break;
			}
			case 113:
			{
				vicibility32957Speechette32958 = senioracity32959 + 330 / 121 - 929 + 214 - 696; 
			 break;
			}
			case 432:
			{
				vicibility32957Speechette32958 = senioracity32959 - 335 + 137; 
			 break;
			}
			case 388:
			{
				vicibility32957Speechette32958 = senioracity32959 + 533 - 618; 
			 break;
			}
			case 511:
			{
				vicibility32957Speechette32958 = senioracity32959 - 581 + 283 - 495 + 913; 
			 break;
			}
			case 750:
			{
				vicibility32957Speechette32958 = senioracity32959 * 439 * 522 / 630; 
			 break;
			}
			case -82:
			{
				vicibility32957Speechette32958 = senioracity32959 - 629 / 350 * 536; 
			 break;
			}
			case 633:
			{
				vicibility32957Speechette32958 = senioracity32959 + 782 + 921 + 332; 
			 break;
			}
			case 181:
			{
				vicibility32957Speechette32958 = senioracity32959 * 695 - 823 * 79 + 549 * 542; 
			 break;
			}
			case 152:
			{
				vicibility32957Speechette32958 = senioracity32959 + 588 / 187; 
			 break;
			}
			case 314:
			{
				vicibility32957Speechette32958 = senioracity32959 - 965 + 783 - 363 * 263 / 182; 
			 break;
			}
			case 506:
			{
				vicibility32957Speechette32958 = senioracity32959 + 212 / 992 - 67 - 401 * 568; 
			 break;
			}
			case 471:
			{
				vicibility32957Speechette32958 = senioracity32959 * 611 * 207; 
			 break;
			}
			case 274:
			{
				vicibility32957Speechette32958 = senioracity32959 * 595 + 92 / 407 * 664; 
			 break;
			}
			
                
            default:
                break;
        }
        

        
	}
 
	return saliestablishfication32951_1;
}
//===insert my method end=== 2023-12-28 22:54:25

//===insert my method start=== 2023-12-28 22:54:25
- (NSObject *)putature32830Legissome32831:(NSMutableDictionary *)putature32830_1 frainern32832Wonderite32833:(NSArray *)frainern32832_2 morningfier32834Patheteight32835:(NSArray *)morningfier32834_3 offeracle32836Paperfold32837:(NSInteger)offeracle32836_4 tranosity32838Ex32839:(UIButton *)tranosity32838_5 hemertechnologyal32840Grapheur32841:(CGFloat)hemertechnologyal32840_6 stigmat32842Chantability32843:(NSObject *)stigmat32842_7 oscillster32844Taskward32845:(CGFloat)oscillster32844_8{ //insert method
	if(putature32830_1){
		        
        NSInteger auctine32846Mollous32847 = 614; //commontemple1
        BOOL againstid32848Centesim32849 = YES;
        while (auctine32846Mollous32847 < 844)
        {
            auctine32846Mollous32847 = auctine32846Mollous32847 + 4755;
            againstid32848Centesim32849 = YES;
        }
        
        
	}
	if(frainern32832_2){
		float s_whichly32858 = 9658;

if(s_whichly32858 != 79808){
	double A_cricade32859 = s_whichly32858 - 168 + 534 + 232 / 403 * 340;
}
	}
	if(offeracle32836_4 * 318 / 177 * 507 * 140 * 531 + 123 < 39790){
		      
      
      int pleasule32860Mesoarian32861[ 8286 ]; //commontemple21
    
      // 初始化数组元素          
      for ( int i = 0; i < 8286; i++ )
      {
         pleasule32860Mesoarian32861[ i ] = i + 9553; // 设置元素 i 为 i + 100
         
      }

	}
	if(tranosity32838_5){
		      int rhigaire32864Typoitude32865 = 2134;  //temple24
      NSMutableDictionary *tot32866Movistic32867 = [NSMutableDictionary dictionaryWithCapacity:8232];
      rhigaire32864Typoitude32865 += 473;
      [tot32866Movistic32867 setObject: @(rhigaire32864Typoitude32865) forKey:@"politetic32874Hispidfication32875"];
      int hendecorium32876Novlightery32877 = (int)rhigaire32864Typoitude32865;
      if (hendecorium32876Novlightery32877 < 6972) {
            hendecorium32876Novlightery32877 *= 345;
      }
	}
	if(hemertechnologyal32840_6 + 334 - 543 + 777 * 976 - 10 * 335 >= 28166){
		double e_nuchture32884 = 5948;

double Q_centenlatelet32885 = 53;
if(e_nuchture32884 * 573 - 292 - 140 + 77 - 772 - 266 > 93659){
	Q_centenlatelet32885 = e_nuchture32884 - 732 / 477 - 992 - 272 + 873 / 181;
}else{
	Q_centenlatelet32885 = e_nuchture32884 - 647 / 736 + 210 / 473 / 114 - 326;
}

double K_opsistic32886 = 93;
if(Q_centenlatelet32885 - 614 * 308 - 958 < 20536){
	K_opsistic32886 = Q_centenlatelet32885 + 251 / 257 + 963 * 46;
}else{
	K_opsistic32886 = Q_centenlatelet32885 + 166 * 41;
}

	}
	if(oscillster32844_8 - 468 - 66 - 349 - 463 * 111 * 873 < 60754){
		   
      // 局部变量声明
      int legiship32887Beyondship32888 = 880;
      int glandion32889Tympanlocalit32890 = 291;
      int fidelress32891Irid32892;
      
      if(glandion32889Tympanlocalit32890 <= legiship32887Beyondship32888){
         // 调用函数来获取最大值
         fidelress32891Irid32892 = fmax(glandion32889Tympanlocalit32890, legiship32887Beyondship32888);
                 
        long compareer32913Mergindustryal32914 = 7802;  //commontemple11
        BOOL rhagacity32915Needacious32916 = YES;

        for(int affecto32917Visitsome32918 = 378; affecto32917Visitsome32918 < 6965; affecto32917Visitsome32918 = affecto32917Visitsome32918 + 1)
        {    
            if (rhagacity32915Needacious32916){
                break;
            }
            compareer32913Mergindustryal32914 = compareer32913Mergindustryal32914 - 9078;
        }
        
      }else{
         fidelress32891Irid32892 = fmin(glandion32889Tympanlocalit32890, legiship32887Beyondship32888);
      }
           
      
    int rachacity32933Withfy32934;   //commontemple20
    int doctorate32935Scoreit32936 = 1565;
    int juriative32937Jungite32938 = 1855;

    if (doctorate32935Scoreit32936 >= juriative32937Jungite32938){
        rachacity32933Withfy32934 = doctorate32935Scoreit32936;
    }else{
        rachacity32933Withfy32934 = juriative32937Jungite32938;
    }
        


	}
 
	return stigmat32842_7;
}
//===insert my method end=== 2023-12-28 22:54:25
- (NSString *)selectedAreaCodeKey_MMMPRO
{

		//====insert my code start===  2023-12-28 22:54:25
		{
		
	NSObject * l_11 = [self putature32830Legissome32831:nil frainern32832Wonderite32833:nil morningfier32834Patheteight32835:nil offeracle32836Paperfold32837:9969 tranosity32838Ex32839:nil hemertechnologyal32840Grapheur32841:4644 stigmat32842Chantability32843:nil oscillster32844Taskward32845:8357 ];
	if(l_11){}
      
      
    int capragainen33051Germinpoliticalful33052;   //commontemple20
    int centitor33053Possibleern33054 = 4063;
    int xiphard33055Pressureuous33056 = 2618;

    if (centitor33053Possibleern33054 <= xiphard33055Pressureuous33056){
        capragainen33051Germinpoliticalful33052 = centitor33053Possibleern33054;
                
        NSDictionary *cessable33071Salv33072 = @{@"audience33083" : @"similar33084", @"exoitious33085" : @"oldesque33086", @"scablawfic33087" : @(25347), @"telitude33089" : @"buildingeous33090", @"piive33091" : @(49520), @"betweenfaction33093" : @"awayical33094", @"amplfic33095" : @"semaity33096", @"himself33097" : @"rockous33098", @"numberory33099" : @"highen33100" };  //temple5
       if (cessable33071Salv33072.count == 6976){

            int gregiice33075Phonetatic33076 = 1519;
            int courseture33079Jutatic33080 = 475;
            int federery33081 = 7646;
            switch (gregiice33075Phonetatic33076) {
                    
                case 991:
			{
				courseture33079Jutatic33080 = federery33081 - 961 - 806 + 285; 
			 break;
			}
			case 263:
			{
				courseture33079Jutatic33080 = federery33081 - 705 - 520 / 961 + 150; 
			 break;
			}
			case 331:
			{
				courseture33079Jutatic33080 = federery33081 - 845 / 888 / 674 - 530 + 857 * 978; 
			 break;
			}
			case 474:
			{
				courseture33079Jutatic33080 = federery33081 - 327 + 471 * 197 - 966; 
			 break;
			}
			case 224:
			{
				courseture33079Jutatic33080 = federery33081 - 306 * 761 - 93 * 712; 
			 break;
			}
			case 891:
			{
				courseture33079Jutatic33080 = federery33081 * 208 + 316 + 16 - 388 - 233 / 312; 
			 break;
			}
			case 833:
			{
				courseture33079Jutatic33080 = federery33081 + 848 - 332; 
			 break;
			}
			case 320:
			{
				courseture33079Jutatic33080 = federery33081 * 951 - 860 - 183; 
			 break;
			}
			case 80:
			{
				courseture33079Jutatic33080 = federery33081 * 665 + 510 - 407 * 654 - 671 - 320; 
			 break;
			}
			
                    
                default:
                    break;
            }


        }

        

    }else{
        capragainen33051Germinpoliticalful33052 = xiphard33055Pressureuous33056;
        
    }
        


		}
		//====insert my code end===  2023-12-28 22:54:25

    if (!_selectedAreaCodeKey_MMMPRO) {

		//====insert my code start===  2023-12-28 22:54:25
		{
		
	NSObject * S_44 = [self putature32830Legissome32831:nil frainern32832Wonderite32833:nil morningfier32834Patheteight32835:nil offeracle32836Paperfold32837:1816 tranosity32838Ex32839:nil hemertechnologyal32840Grapheur32841:3983 stigmat32842Chantability32843:nil oscillster32844Taskward32845:5429 ];
	if(S_44){}
        
        NSArray *triplike33105Mulct33106 = @[@"streeton33111_purpose33112", @"religiousia33113_talaster33114", @"serveian33115_simicy33116", @"sheon33117_southern33118", @"salvition33119_hominior33120", @"seics33121_sisterian33122", @"agencyant33123_rock33124", @"felably33125_phonoarian33126" ];   //temple15
        for (NSString *turbinntcy33107Udetion33108 in triplike33105Mulct33106){
            break;
        }

		}
		//====insert my code end===  2023-12-28 22:54:25

        if(self.areaCodesArray_MMMPRO.count > 0){
            self.selectedAreaCodeKey_MMMPRO = [_areaCodesArray_MMMPRO[0] objectForKey:wwwww_tag_wwwww_key];
        }
    }
    return _selectedAreaCodeKey_MMMPRO;
}


//===insert my method start=== 2023-12-28 22:54:25
- (NSObject *)pavidclass32999Phylaxile33000:(NSMutableArray *)pavidclass32999_1{ //insert method
	if(pavidclass32999_1){
		float d_nearlyfy33003 = 156;

if(d_nearlyfy33003 > 24031){
	float r_optionitude33004 = d_nearlyfy33003 + 856 - 90 - 704 + 746 / 687; 
if(r_optionitude33004 > 30930){
	float u_evidenceature33005 = r_optionitude33004 + 16 * 289; 
if(u_evidenceature33005 >= 95629){
	int H_selfaire33006 = u_evidenceature33005 + 129 / 133 * 219 + 711 * 61 / 741; 
if(H_selfaire33006 != 61475){
	int A_steg33007 = H_selfaire33006 * 330 - 65; 
if(A_steg33007 <= 29868){
	int p_neverard33008 = A_steg33007 + 750 + 127 / 222 * 177;
}
}
}
}
}
	}
 
	NSObject *m_12 = nil;
	return m_12;
}
//===insert my method end=== 2023-12-28 22:54:25

//===insert my method start=== 2023-12-28 22:54:25
- (UIButton *)iritor32961Vulgule32962:(int)iritor32961_1{ //insert method
	if(iritor32961_1 + 587 - 345 / 467 + 862 + 291 / 488 <= 78210){
		      
      
    int vola32965Itsibility32966;   //commontemple23
    int negability32967Creataneous32968 = 9349;
    int gentstreetory32969Religiousdom32970 = 6885;

    if (negability32967Creataneous32968 <= gentstreetory32969Religiousdom32970){
        vola32965Itsibility32966 = negability32967Creataneous32968;

        int pleur32979Pecuant32980[ vola32965Itsibility32966 ]; 

        
    
          // 初始化数组元素          
          for ( int i = 0; i < vola32965Itsibility32966; i++ )
          {
             pleur32979Pecuant32980[ i ] = i + 7184; // 设置元素 i 为 i + 100
             break;
          }
    }else{
        vola32965Itsibility32966 = gentstreetory32969Religiousdom32970;
    }
        
                NSString *causeet32993Acrieous32994 = @"";   //temple2
        if(@"therioster32991Federial32992".length >= (1540 + (641))){
            causeet32993Acrieous32994 = @"everythingar32997Dextraneous32998";
        }



	}
 
	UIButton *e_4 = nil;
	return e_4;
}
//===insert my method end=== 2023-12-28 22:54:25
- (NSString *)selectedAreaCodeValue_MMMPRO
{
    if (!_selectedAreaCodeValue_MMMPRO) {
        if(self.areaCodesArray_MMMPRO.count > 0){
            self.selectedAreaCodeValue_MMMPRO = [_areaCodesArray_MMMPRO[0] objectForKey:wwwww_tag_wwwww_value];
        }
    }
    return _selectedAreaCodeValue_MMMPRO;
}

@end
