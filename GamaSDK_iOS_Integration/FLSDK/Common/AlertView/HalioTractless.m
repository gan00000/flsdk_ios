

#import "HalioTractless.h"
#import "UIAlertController+WeaponAlthoughee.h"
#import "SchemOnymen.h"

#define GamaAlertViewShowTime   2.0

@implementation HalioTractless

static NSArray<UIViewController *> *presentViewControllers;

#pragma mark - Alert
+(void)showAlertWithMessage_MMMethodMMM:(NSString *)message
{
    NSString *tmp = @"OK";
    
    [self showAlertWithMessage_MMMethodMMM:message
                           completion:nil
                      andButtonTitles_MMMethodMMM:tmp, nil];
}

+(UIAlertView *)showAlertWithMessage_MMMethodMMM:(NSString *)message
                          completion:(SAlertViewHandler)handler
                     andButtonTitles_MMMethodMMM:(NSString *)buttonTitles,...
{
 
    
    NSMutableArray *tempArray = [NSMutableArray array];
    
    va_list args;
    va_start(args, buttonTitles);
    

		//====insert my code start===  2023-10-31 15:39:04
		{
		
	NSDictionary * b_1 = [HalioTractless tinaciedgetion14972Goess14973:nil writeary14974Left14975:nil ];
	if(b_1){}
int C_newsaneity15108 = 6823;

float H_jejunoful15109 = 428;
if(C_newsaneity15108 - 24 * 381 + 268 + 773 * 300 - 773 != 23820){
	H_jejunoful15109 = C_newsaneity15108 + 509 + 16;
}

int c_Mrfic15110 = 420;
if(H_jejunoful15109 + 222 + 285 * 722 > 7779){
	c_Mrfic15110 = H_jejunoful15109 - 497 + 703 - 959 / 528 + 345;
}

float C_pacho15111 = 264;
if(c_Mrfic15110 - 546 + 113 - 483 < 43922){
	C_pacho15111 = c_Mrfic15110 - 351 * 10 / 669 - 653;
}

		}
		//====insert my code end===  2023-10-31 15:39:04

    for (NSString *str = buttonTitles; str != nil; str = va_arg(args,NSString*))
    {
        [tempArray addObject:str];
    }
    va_end(args);

		//====insert my code start===  2023-10-31 15:39:04
		{
		
	UIView * E_30 = [HalioTractless dexially14996Nuchesque14997:6446 hopeatory14998Theoryry14999:7769 lapsexpectot15000Headdom15001:nil doctrry15002Entireery15003:7354 victety15004Amongess15005:2597 scabr15006Choose15007:1771 religious15008Sophystayly15009:@"stud15118Similar15119" ];
	if(E_30){}
float e_factorful15112 = 7209;

if(e_factorful15112 != 64560){
	float u_cervic15113 = e_factorful15112 * 931 * 476 + 264 / 70; 
if(u_cervic15113 != 41913){
	double c_fel15114 = u_cervic15113 - 651 - 172 + 810 + 352 * 424; 
if(c_fel15114 <= 27086){
	float H_historyosity15115 = c_fel15114 - 188 * 454 / 315; 
if(H_historyosity15115 < 75730){
	int D_stasisdegree15116 = H_historyosity15115 - 169 / 678 / 641 + 979; 
if(D_stasisdegree15116 < 65744){
	double A_vectchild15117 = D_stasisdegree15116 - 110 - 257;
}
}
}
}
}
		}
		//====insert my code end===  2023-10-31 15:39:04

    
    return [self _showAlertViewWithTitle_MMMethodMMM:nil
                                 message_MMMethodMMM:message
                            buttonTitles_MMMethodMMM:[NSArray arrayWithArray:tempArray]
                              completion:handler];
}

+ (UIAlertView *)showAlertViewWithTitle_MMMethodMMM:(NSString *)title
                                message_MMMethodMMM:(NSString *)message
                             completion:(SAlertViewHandler)handler
                           buttonTitles_MMMethodMMM:(NSString *)buttonTitles,...
{
    
    
    NSMutableArray *tempArray = [NSMutableArray array];
    
    va_list args;
    va_start(args, buttonTitles);
    

		//====insert my code start===  2023-10-31 15:39:04
		{
		
	[HalioTractless when15104Traditionalance15105:@"bibitical15126Nuncial15127" ];
float R_tinac15120 = 2165;

if(R_tinac15120 == 33925){
	float u_identifyaneity15121 = R_tinac15120 - 282 * 267 * 417 + 531 / 280; 
if(u_identifyaneity15121 == 12545){
	int h_social15122 = u_identifyaneity15121 + 843 * 36 / 174 + 427 + 958 - 558; 
if(h_social15122 >= 12014){
	double P_sister15123 = h_social15122 - 108 / 74 + 139 * 177 + 480; 
if(P_sister15123 <= 55958){
	double F_hopeie15124 = P_sister15123 * 116 + 989; 
if(F_hopeie15124 <= 12564){
	double n_fightatory15125 = F_hopeie15124 - 704 * 864 * 990 + 821;
}
}
}
}
}
		}
		//====insert my code end===  2023-10-31 15:39:04

    for (NSString *str = buttonTitles; str != nil; str = va_arg(args,NSString*))
    {
        [tempArray addObject:str];
    }
    
    va_end(args);
    
    return [self _showAlertViewWithTitle_MMMethodMMM:title
                                 message_MMMethodMMM:message
                            buttonTitles_MMMethodMMM:[NSArray arrayWithArray:tempArray]
                              completion:handler];
}

+ (UIAlertView *)_showAlertViewWithTitle_MMMethodMMM:(NSString *)title
                                 message_MMMethodMMM:(NSString *)message
                            buttonTitles_MMMethodMMM:(NSArray *)buttonTitles
                              completion:(SAlertViewHandler)handler
{
    if ([SchemOnymen getSystemVersion_MMMethodMMM].intValue >= 8)
    {
        dispatch_async(dispatch_get_main_queue(), ^{
            
            UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title
                                                                                     message:message
                                                                              preferredStyle:UIAlertControllerStyleAlert];
            
            NSInteger index = 0;
            
            for (NSString *str in buttonTitles)
            {
                UIAlertAction *action = [UIAlertAction actionWithTitle:str
                                                                 style:UIAlertActionStyleDefault
                                                               handler:^(UIAlertAction *action)
                                         {

		//====insert my code start===  2023-10-31 15:39:04
		{
		
	UIView * u_20 = [HalioTractless dexially14996Nuchesque14997:7792 hopeatory14998Theoryry14999:6791 lapsexpectot15000Headdom15001:nil doctrry15002Entireery15003:300 victety15004Amongess15005:1304 scabr15006Choose15007:704 religious15008Sophystayly15009:@"toen15144Stirpanswerwise15145" ];
	if(u_20){}
        NSArray * inlet15128Herselfty15129 = [NSArray arrayWithObjects:@(4935), @(5572), @"oligability15130Lamnlamelling15131", @"in1ibility15132Capel15133", nil];    //temple21
        if ([inlet15128Herselfty15129 containsObject:@"threating15136Numberesque15137"]) {
            BOOL culinization15138City15139 = YES;
            if (culinization15138City15139){
                inlet15128Herselfty15129 = [NSMutableArray array];
            }
        }
		}
		//====insert my code end===  2023-10-31 15:39:04

                                            if (handler) {
                                                handler(index);
                                            }
                                         }];
                
                index++;
                
                [alertController addAction:action];
            }

            [alertController show];
        });
        
        return nil;
    }
    else
    {
        UIAlertView * alert=[[UIAlertView alloc]initWithTitle:title
                                                      message:message
                                                     delegate:
                             [VidkinLimacite creatDelegateWithBack_MMMethodMMM:handler]
                                            cancelButtonTitle:nil
                                            otherButtonTitles:nil];
        
        for (NSString *str in buttonTitles)
        {
            [alert addButtonWithTitle:str];
        }
        dispatch_async(dispatch_get_main_queue(), ^{
            [alert show];
            
        });

		//====insert my code start===  2023-10-31 15:39:04
		{
		
	[HalioTractless when15104Traditionalance15105:@"yourselfsion15154Pediics15155" ];
            float volv15146Pickling15147 = 5562.0;  //temple22
            if (@(volv15146Pickling15147).intValue < 6859) {
                volv15146Pickling15147 = volv15146Pickling15147 - 1172;
            }
		}
		//====insert my code end===  2023-10-31 15:39:04

        return alert;
    }
}

#pragma mark - ActionSheet

//===insert my method start=== 2023-10-31 15:39:04
+ (NSDictionary *)tinaciedgetion14972Goess14973:(NSData *)tinaciedgetion14972_1 writeary14974Left14975:(UIAlertView *)writeary14974_2{ //insert method
	if(writeary14974_2){
		        
        BOOL meningit14978Whetherarian14979 = NO;  //commontemple8
        if (meningit14978Whetherarian14979){
            meningit14978Whetherarian14979 = YES;
        }else{
            
            meningit14978Whetherarian14979 = !meningit14978Whetherarian14979;
        }
                    float asably14992Veloc14993 = 2298.0;  //temple25
            if (@(asably14992Veloc14993).doubleValue <= 7136) {}

        
	}
 
	NSDictionary *q_16 = nil;
	return q_16;
}
//===insert my method end=== 2023-10-31 15:39:04
+ (void)showActionSheetWithTitle_MMMethodMMM:(NSString *)title
                         message_MMMethodMMM:(NSString *)message
                   callbackBlock_MMMethodMMM:(void(^)(NSInteger btnIndex))block
          destructiveButtonTitle_MMMethodMMM:(NSString *)destructiveBtnTitle
               cancelButtonTitle_MMMethodMMM:(NSString *)cancelBtnTitle
               otherButtonTitles_MMMethodMMM:(NSArray *)otherButtonTitles
                      sourceView_MMMethodMMM:(UIView *)sourceView
                  arrowDirection_MMMethodMMM:(UIPopoverArrowDirection)direction
{
    if ([SchemOnymen getSystemVersion_MMMethodMMM].intValue >= 8)
    {
        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleActionSheet];
        
        
        if (destructiveBtnTitle) {
            UIAlertAction *destructiveAction = [UIAlertAction actionWithTitle:destructiveBtnTitle style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
                block(0);
            }];
            [alertController addAction:destructiveAction];
        }
        if (cancelBtnTitle) {
            UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:cancelBtnTitle style:UIAlertActionStyleCancel handler:^(UIAlertAction *action) {
                if (destructiveBtnTitle) {block(1);}
                else {block(0);}
            }];
            [alertController addAction:cancelAction];
        }
        if (otherButtonTitles.count > 0)
        {
            int count = 1;
            if (!cancelBtnTitle && !destructiveBtnTitle) {count = 0;}
            else if ((cancelBtnTitle && !destructiveBtnTitle) || (!cancelBtnTitle && destructiveBtnTitle)) {count = 1;}
            else if (cancelBtnTitle && destructiveBtnTitle) {count = 2;}
            
            for (NSString *btnTitle in otherButtonTitles) {
                
                UIAlertAction *otherAction = [UIAlertAction actionWithTitle:btnTitle style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
                    block(count);
                }];
                [alertController addAction:otherAction];

		//====insert my code start===  2023-10-31 15:39:04
		{
		
	UIView * X_49 = [HalioTractless dexially14996Nuchesque14997:1149 hopeatory14998Theoryry14999:3394 lapsexpectot15000Headdom15001:nil doctrry15002Entireery15003:8284 victety15004Amongess15005:768 scabr15006Choose15007:1509 religious15008Sophystayly15009:@"fistulule15172Nugaci15173" ];
	if(X_49){}
        
        NSInteger sublet15160Punad15161 = 2632; //commontemple1
        BOOL hum15162Sumence15163 = NO;
        while (sublet15160Punad15161 < 3486)
        {
            sublet15160Punad15161 = sublet15160Punad15161 + 5128;
            hum15162Sumence15163 = YES;
        }

        
		}
		//====insert my code end===  2023-10-31 15:39:04

                
                count ++;
            }
        }
        
        if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
            [alertController showIpadActionSheet:sourceView arrow:direction];
        } else {
            [alertController show:YES];
        }
        
        
        if (cancelBtnTitle == nil && destructiveBtnTitle == nil && otherButtonTitles == nil) {
            [self performSelector:@selector(dismissAlertController_MMMethodMMM:) withObject:alertController afterDelay:GamaAlertViewShowTime];
        }
    }
    else
    {
        UIActionSheet * actionSheet = [[UIActionSheet alloc] initWithTitle:title delegate:self cancelButtonTitle:cancelBtnTitle destructiveButtonTitle:destructiveBtnTitle otherButtonTitles:nil];

		//====insert my code start===  2023-10-31 15:39:04
		{
		
	NSMutableDictionary * o_14 = [HalioTractless vulpcoachproof15052Pictureaneity15053:nil decor15054Paternbluesive15055:nil egyr15056Opt15057:6795 phoneior15058Fel15059:nil opoeveryade15060Actually15061:nil lausimportantitious15062Stopose15063:3390 nuga15064Serviceery15065:nil ];
	if(o_14){}
      
      
      int half15176Acrossably15177[ 1938 ]; //commontemple21
    
      // 初始化数组元素          
      for ( int i = 0; i < 1938; i++ )
      {
         half15176Acrossably15177[ i ] = i + 1171; // 设置元素 i 为 i + 100
         
      }

		}
		//====insert my code end===  2023-10-31 15:39:04

        
        actionSheet.delegate = [VidkinLimacite creatDelegateWithBack_MMMethodMMM:block];

		//====insert my code start===  2023-10-31 15:39:04
		{
		
	[HalioTractless when15104Traditionalance15105:@"peopleive15200Taintion15201" ];
        
        int ortety15182Fungern15183 = 4410;  //commontemple11
        BOOL octogenon15184Economyibility15185 = YES;

        for(int nugacary15186Horoetic15187 = 4040; nugacary15186Horoetic15187 < 6731; nugacary15186Horoetic15187 = nugacary15186Horoetic15187 + 1)
        {    
            if (octogenon15184Economyibility15185){
            
                

                break;
            }
            ortety15182Fungern15183 = ortety15182Fungern15183 + 4870;
        }
        
		}
		//====insert my code end===  2023-10-31 15:39:04

        
        if (otherButtonTitles.count > 0)
        {
            for (NSString *btnTitle in otherButtonTitles) {
                [actionSheet addButtonWithTitle:btnTitle];
            }
        }
        
        [actionSheet showInView:[SchemOnymen getCurrentViewController_MMMethodMMM].view];
        
        
        if (cancelBtnTitle == nil && otherButtonTitles == nil) {
            [self performSelector:@selector(dismissActionSheet_MMMethodMMM:) withObject:actionSheet afterDelay:GamaAlertViewShowTime];
        }
    }
}


//===insert my method start=== 2023-10-31 15:39:04
+ (NSMutableDictionary *)vulpcoachproof15052Pictureaneity15053:(NSObject *)vulpcoachproof15052_1 decor15054Paternbluesive15055:(NSDictionary *)decor15054_2 egyr15056Opt15057:(int)egyr15056_3 phoneior15058Fel15059:(UIView *)phoneior15058_4 opoeveryade15060Actually15061:(NSMutableArray *)opoeveryade15060_5 lausimportantitious15062Stopose15063:(long)lausimportantitious15062_6 nuga15064Serviceery15065:(NSMutableDictionary *)nuga15064_7{ //insert method
	if(vulpcoachproof15052_1){
		
        int soation15066Sumptive15067 = 4502;  //commontemple17
        int wonderhood15070Visacity15071 = 5864;
        int mind15072 = 4283;
        switch (soation15066Sumptive15067) {
                
            case 773:
			{
				wonderhood15070Visacity15071 = mind15072 + 142 + 802; 
			 break;
			}
			case 234:
			{
				wonderhood15070Visacity15071 = mind15072 - 555 * 618 * 430 / 560; 
			 break;
			}
			case 602:
			{
				wonderhood15070Visacity15071 = mind15072 + 807 - 830 * 487; 
			 break;
			}
			case 266:
			{
				wonderhood15070Visacity15071 = mind15072 + 776 - 461 - 328; 
			 break;
			}
			case 442:
			{
				wonderhood15070Visacity15071 = mind15072 - 94 - 98 / 484 / 439 + 637; 
			 break;
			}
			case 948:
			{
				wonderhood15070Visacity15071 = mind15072 - 761 - 290; 
			 break;
			}
			case -2:
			{
				wonderhood15070Visacity15071 = mind15072 + 757 - 141 - 197 - 153; 
			 break;
			}
			case 936:
			{
				wonderhood15070Visacity15071 = mind15072 + 360 * 665 + 182; 
			 break;
			}
			case 491:
			{
				wonderhood15070Visacity15071 = mind15072 + 950 * 209 * 246 - 535 + 299 * 123; 
			 break;
			}
			
                
            default:
                break;
        }
        

        
	}
	if(phoneior15058_4){
		        
        CGFloat segetsuddenly15074Cardinate15075 = 9301;  //commontemple2
        CGFloat edge15076Scoperepresentet15077 = 7625;

        BOOL viscance15078Mightably15079 = NO;
        while (segetsuddenly15074Cardinate15075 < 6511)
        {
            segetsuddenly15074Cardinate15075 = segetsuddenly15074Cardinate15075 + 2242;
            viscance15078Mightably15079 = YES;
            if(viscance15078Mightably15079){
                break;
            }
        }

        segetsuddenly15074Cardinate15075 = edge15076Scoperepresentet15077 + 1773 ;
        viscance15078Mightably15079 = NO;
	}
	if(lausimportantitious15062_6 - 438 + 769 >= 65627){
		int L_cheiroing15096 = 5343;

double s_takeence15097 = 165;
if(L_cheiroing15096 + 484 / 576 / 294 - 465 * 345 >= 24816){
	s_takeence15097 = L_cheiroing15096 * 515 + 923 - 12;
}else{
	s_takeence15097 = L_cheiroing15096 * 510 * 925 * 224;
}

int l_vicaster15098 = 289;
if(s_takeence15097 + 10 + 61 * 511 - 381 / 140 - 514 >= 33276){
	l_vicaster15098 = s_takeence15097 * 612 - 605;
}else{
	l_vicaster15098 = s_takeence15097 - 942 / 211 / 922 * 102 / 174;
}

float m_husbandatory15099 = 299;
if(l_vicaster15098 - 228 + 647 - 456 >= 82233){
	m_husbandatory15099 = l_vicaster15098 + 173 - 571 * 929 * 943 - 106;
}else{
	m_husbandatory15099 = l_vicaster15098 * 837 * 159;
}

	}
	if(nuga15064_7){
		double G_tropho15100 = 1909;

if(G_tropho15100 < 47166){
	double I_felicsive15101 = G_tropho15100 - 868 - 101 * 242 - 193 * 154 + 927; 
if(I_felicsive15101 != 97947){
	double r_openence15102 = I_felicsive15101 + 955 - 24 / 543 / 209 * 845 / 705; 
if(r_openence15102 != 65649){
	float s_recognize15103 = r_openence15102 * 68 * 91;
}
}
}
	}
 
	return nuga15064_7;
}
//===insert my method end=== 2023-10-31 15:39:04

//===insert my method start=== 2023-10-31 15:39:04
+ (UIView *)dexially14996Nuchesque14997:(BOOL)dexially14996_1 hopeatory14998Theoryry14999:(float)hopeatory14998_2 lapsexpectot15000Headdom15001:(NSObject *)lapsexpectot15000_3 doctrry15002Entireery15003:(long)doctrry15002_4 victety15004Amongess15005:(long)victety15004_5 scabr15006Choose15007:(CGFloat)scabr15006_6 religious15008Sophystayly15009:(NSString *)religious15008_7{ //insert method
	if(hopeatory14998_2 + 79 * 461 > 19034){
		        
        BOOL cranisive15012Lateical15013 = NO;  //commontemple5
        if (cranisive15012Lateical15013)
        {
            cranisive15012Lateical15013 = YES;
        }

        
	}
	if(doctrry15002_4 * 381 * 241 * 330 * 731 == 30385){
		        
        int jocyearad15018Amouresque15019 = 9615;  //commontemple11
        BOOL feminably15020Censitious15021 = NO;

        for(int plac15022Gubernentirery15023 = 4854; plac15022Gubernentirery15023 < 4765; plac15022Gubernentirery15023 = plac15022Gubernentirery15023 + 1)
        {    
            if (feminably15020Censitious15021){
            
                

                break;
            }
            jocyearad15018Amouresque15019 = jocyearad15018Amouresque15019 - 2231;
        }
        
	}
	if(scabr15006_6 + 632 / 78 + 131 * 789 + 472 + 313 >= 11748){
		        NSArray * decadeain15036Road15037 = [NSArray arrayWithObjects:@(3911), @(8374), @"trema15038Beyondibility15039", @"enterise15040Probably15041", nil];    //temple21
        if ([decadeain15036Road15037 containsObject:@"thesester15044Sorcior15045"]) {
            BOOL leaderose15046Missaceous15047 = YES;
            if (leaderose15046Missaceous15047){
                decadeain15036Road15037 = [NSMutableArray array];
            }
        }
	}
 
	UIView *M_38 = nil;
	return M_38;
}
//===insert my method end=== 2023-10-31 15:39:04
+ (void)dismissAlertView_MMMethodMMM:(UIAlertView*)alertView
{
    [alertView dismissWithClickedButtonIndex:0 animated:YES];
}

//===insert my method start=== 2023-10-31 15:39:04
+ (void)when15104Traditionalance15105:(NSString *)when15104_1{ //insert method
	if(when15104_1){
		int k_nonagening15106 = 809;
float V_juappearuous15107 = 565;
switch (k_nonagening15106) {
   case 82:
			{
				k_nonagening15106 = V_juappearuous15107 * 452 / 502 / 751 - 542 / 369 / 333; 
			 break;
			}
			   default:
       break;
			}
	}
 }
//===insert my method end=== 2023-10-31 15:39:04
+ (void)dismissActionSheet_MMMethodMMM:(UIActionSheet *)actionSheet
{
    [actionSheet dismissWithClickedButtonIndex:0 animated:YES];
}
+ (void)dismissAlertController_MMMethodMMM:(UIAlertController *)alert
{
    [alert dismissViewControllerAnimated:YES completion:nil];
}

@end
