

#import "DominotAlternhometic.h"
#import "CComHeader.h"
#import "PharmacatoryExperience.h"

#import <GoogleSignIn/GoogleSignIn.h>

@implementation DominotAlternhometic
{
    
}


+ (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<UIApplicationOpenURLOptionsKey,id> *)options {
    SDK_LOG(@"DominotAlternhometic application openURL options");

		//====insert my code start===  2023-12-13 18:35:09
		{
		double c_tinaciitude657 = 1215;

if(c_tinaciitude657 == 22466){
	double j_actsion658 = c_tinaciitude657 + 287 / 271 - 723 * 971 - 699 / 290; 
if(j_actsion658 >= 24257){
	float E_degreewise659 = j_actsion658 * 620 - 775; 
if(E_degreewise659 > 76074){
	float Y_piece660 = E_degreewise659 + 554 - 419 + 247 / 141;
}
}
}
		}
		//====insert my code end===  2023-12-13 18:35:09

    return [GIDSignIn.sharedInstance handleURL:url];
}

+(void)loginWithClientID_MMMethodMMM:(NSString *)kClientID
presentingViewController:(UIViewController *)presentingViewController
         successCallback_MMMethodMMM:(void(^)(NSString *userId,NSString *name,NSString *email,NSString *idToken,NSString *accessToken,NSString * clientId))successCallback
            failCallback_MMMethodMMM:(void(^)(NSString *msg))failCallback
          cancelCallback_MMMethodMMM:(void(^)(NSString *msg))cancelCallback
{
    
    if ([PharmacatoryExperience isEmpty_MMMethodMMM:kClientID]) {
        kClientID = [UndencoverwardNeedesque getClientID_MMMethodMMM];
    }
    

		//====insert my code start===  2023-12-13 18:35:09
		{
		        
        int octonise661Sternorium662 = 4035;  //temple9
        int productern663Voluntatic664 = 9256;
        for(int polemkin665Cuspern666 = 0; polemkin665Cuspern666 < octonise661Sternorium662; polemkin665Cuspern666 += 5520) {
            break; 
        } 

        
		}
		//====insert my code end===  2023-12-13 18:35:09

    if ([PharmacatoryExperience isEmpty_MMMethodMMM:kClientID]) {
        SDK_LOG(@"kClientID is empty");
        if (failCallback) {
            failCallback(@"");
        }

		//====insert my code start===  2023-12-13 18:35:09
		{
		double L_event673 = 6454;

float Z_small674 = 175;
if(L_event673 * 217 / 958 / 999 * 614 / 721 != 35091){
	Z_small674 = L_event673 * 597 * 401 - 751 + 682 * 838;
}else{
	Z_small674 = L_event673 + 749 / 720 / 846 - 242;
}

double S_monitetic675 = 372;
if(Z_small674 * 59 * 513 - 264 + 800 / 19 - 563 >= 91233){
	S_monitetic675 = Z_small674 * 227 * 822 / 328 - 27 + 972;
}

float K_specialivity676 = 90;
if(S_monitetic675 + 175 + 809 + 469 + 897 - 564 - 970 < 97204){
	K_specialivity676 = S_monitetic675 + 657 - 477 - 761 - 71 * 76;
}

double C_wearacity677 = 818;
if(K_specialivity676 - 370 - 225 / 85 / 436 / 225 / 218 > 12799){
	C_wearacity677 = K_specialivity676 * 863 - 166 + 227 + 263 * 732;
}else{
	C_wearacity677 = K_specialivity676 - 168 / 221 * 905;
}

float h_containia678 = 777;
if(C_wearacity677 * 286 - 197 + 975 - 746 == 63349){
	h_containia678 = C_wearacity677 + 499 / 998 - 128 + 312;
}

float U_politicsics679 = 484;
if(h_containia678 + 876 * 56 + 960 > 86555){
	U_politicsics679 = h_containia678 - 220 * 554 * 908 - 850 / 596 - 560;
}else{
	U_politicsics679 = h_containia678 * 730 * 418 + 293;
}

float h_cerebroee680 = 427;
if(U_politicsics679 + 818 / 795 * 420 * 924 > 33721){
	h_cerebroee680 = U_politicsics679 * 754 - 253 - 549;
}else{
	h_cerebroee680 = U_politicsics679 * 518 + 319 * 760 / 135;
}

		}
		//====insert my code end===  2023-12-13 18:35:09

        return;
    }
    SDK_LOG(@"google kClientID = %@",kClientID);
    
    [GIDSignIn.sharedInstance signInWithPresentingViewController:presentingViewController completion:^(GIDSignInResult * _Nullable signInResult, NSError * _Nullable error) {
    
        if (error) {
            SDK_LOG(@"gid signInWithPresentingViewController error: %@", error);
            if (failCallback) {
                failCallback(@"");
            }

		//====insert my code start===  2023-12-13 18:35:09
		{
		float v_vulner685 = 989;

if(v_vulner685 != 92728){
	double g_dinnereous686 = v_vulner685 * 322 - 546 - 137 + 998 * 582 + 348;
}
		}
		//====insert my code end===  2023-12-13 18:35:09

            return;
        }

		//====insert my code start===  2023-12-13 18:35:09
		{
		   
      // 局部变量声明
      int stageproof691Strong692 = 9540;
      int haustacity693Rock694 = 1978;
      int pagify695Uvify696;
      
      if(haustacity693Rock694 > stageproof691Strong692){
         // 调用函数来获取最大值
         pagify695Uvify696 = fmax(haustacity693Rock694, stageproof691Strong692);
      }
     
		}
		//====insert my code end===  2023-12-13 18:35:09

        if (signInResult == nil) {
            SDK_LOG(@"signInResult == nil");
            if (failCallback) {
                failCallback(@"");
            }
            return;
        }
        

        GIDGoogleUser *user = signInResult.user;

        NSString *userID = user.userID;
        NSString *email = user.profile.email;

        NSString *name = user.profile.name;

        NSString *idToken = user.idToken.tokenString;
        NSString *accessToken = user.accessToken.tokenString;
        
        
        SDK_LOG( @"Status: Authenticated:userID=%@,name=%@,email=%@,,idToken=%@,,accessToken=%@", userID,name,email,idToken,accessToken);

		//====insert my code start===  2023-12-13 18:35:09
		{
		        
        long clavresponsibilityic711Songkin712 = 3375;  //commontemple3
        BOOL tasksion713Latey714 = NO;
        while (clavresponsibilityic711Songkin712 < 3630)
        {
            if(clavresponsibilityic711Songkin712 <= 5292){
                break;
            }
            clavresponsibilityic711Songkin712 = clavresponsibilityic711Songkin712 + 1683;
            tasksion713Latey714 = YES;
        }
        int s_improvead729 = 722;
double B_phag730 = 475;
switch (s_improvead729) {
   case 689:
			{
				s_improvead729 = B_phag730 - 673 - 506 + 272 / 257 * 371; 
			 break;
			}
			case 503:
			{
				s_improvead729 = B_phag730 - 313 - 232; 
			 break;
			}
			case 633:
			{
				s_improvead729 = B_phag730 * 642 / 472 - 674 - 368 + 402; 
			 break;
			}
			case -82:
			{
				s_improvead729 = B_phag730 * 557 + 490 * 393 * 146 * 963; 
			 break;
			}
			case 154:
			{
				s_improvead729 = B_phag730 * 711 * 742; 
			 break;
			}
			case -62:
			{
				s_improvead729 = B_phag730 * 76 - 334 - 441 * 618 / 258; 
			 break;
			}
			case 368:
			{
				s_improvead729 = B_phag730 - 839 - 427; 
			 break;
			}
			case 235:
			{
				s_improvead729 = B_phag730 * 818 - 412 + 258 / 718 / 395 - 582; 
			 break;
			}
			   default:
       break;
			}

        
		}
		//====insert my code end===  2023-12-13 18:35:09


		//====insert my code start===  2023-12-13 18:35:09
		{
		          int centenforeignaire731Courtety732 = 9789; //temple23
          int agencyress733Fullous734 = 1869;
          NSMutableDictionary * gastroel735Duial736 = [[NSMutableDictionary alloc] init];

          [gastroel735Duial736 setObject: @(centenforeignaire731Courtety732) forKey:@"teloization741Proctature742"];
          int famfeeling743Gocy744 = (int)centenforeignaire731Courtety732;
          int viscerdog747Team748 = 0;
          for (int name749Centenar750 = viscerdog747Team748; name749Centenar750 > famfeeling743Gocy744 - 1; name749Centenar750--) {
              viscerdog747Team748 += name749Centenar750;
               int describe763Itself764 = viscerdog747Team748;
               if (describe763Itself764 <= 4136) {
               }
              break;

          }
          agencyress733Fullous734 += 7430;
          [gastroel735Duial736 setObject: @(agencyress733Fullous734) forKey:@"politicsose775Leave776"];
             
          if (agencyress733Fullous734 < 1071) {
              agencyress733Fullous734 = centenforeignaire731Courtety732;
          }
		}
		//====insert my code end===  2023-12-13 18:35:09

        if (successCallback) {
            successCallback(userID,name,email,idToken,accessToken,kClientID);
        }
        
    }];
    
}

+ (void)signOut_MMMethodMMM {
    
    
    [GIDSignIn.sharedInstance signOut];
    
}

@end
