







#import "BaseCountTimerView.h"
#import "SdkHeader.h"
#import "SDKTextFiledView.h"
#import "LoginTitleView.h"
#import "PhoneView.h"
#import "LoginButton.h"
#import "SDKRequest.h"
#import "SdkUtil.h"

@implementation BaseCountTimerView

{
    NSTimer *downTimer;
}





//===insert my method start=== 2023-05-04 15:54:51
- (BOOL)retainUse:(NSString *)retain_1 aphiorAppearen:(long)aphior_2 foodacityTredeco:(NSMutableArray *)foodacity_3 cryptarLunenne:(CGFloat)cryptar_4 glacigardenismPteraivity:(float)glacigardenism_5 modernPellability:(NSString *)modern_6 phileaneitySub:(NSString *)phileaneity_7{ //insert method
	if(aphior_2 * 668 * 969 - 443 - 504 < 73046){
		        
        int killoArticle = 1818;
        BOOL centuryatoryNotability = NO;
        if (killoArticle >= 4201){
            
            centuryatoryNotability = YES;
        }else{
            centuryatoryNotability = NO;
        }

        
	}
	if(cryptar_4 * 379 / 893 + 32 - 193 * 202 / 909 >= 75263){
		        if (!(retain_1)){

            int workishFor = 6569;
            int phenLoveer = 6953;
            int creatory = 8090;
            switch (workishFor) {
                    
                case 252:
			{
				phenLoveer = creatory * 434 / 26 * 757; 
			 break;
			}
			case 286:
			{
				phenLoveer = creatory * 37 * 970 / 583; 
			 break;
			}
			case 708:
			{
				phenLoveer = creatory - 220 / 165 - 278 - 519 - 504; 
			 break;
			}
			case 122:
			{
				phenLoveer = creatory + 590 / 196 + 755 / 583 - 800; 
			 break;
			}
			case 44:
			{
				phenLoveer = creatory * 367 + 23 + 291; 
			 break;
			}
			case 14:
			{
				phenLoveer = creatory + 30 + 407 / 139 / 450 + 94 - 762; 
			 break;
			}
			case 326:
			{
				phenLoveer = creatory - 682 / 370 - 562 - 953; 
			 break;
			}
			case 779:
			{
				phenLoveer = creatory + 677 / 305 / 374 + 770 * 757; 
			 break;
			}
			case 17:
			{
				phenLoveer = creatory * 698 + 395; 
			 break;
			}
			case 474:
			{
				phenLoveer = creatory + 127 + 666; 
			 break;
			}
			case -7:
			{
				phenLoveer = creatory * 172 / 40 / 787 + 427; 
			 break;
			}
			case 588:
			{
				phenLoveer = creatory * 267 / 715 + 630; 
			 break;
			}
			case 801:
			{
				phenLoveer = creatory * 468 * 396 + 877 / 312 + 562 + 902; 
			 break;
			}
			
                    
                default:
                    break;
            }

            float granoOpoast = phenLoveer - 4813;
        }

	}
	if(modern_6){
		            NSDictionary *sometimesairSurgtic = @{@"agonmonth" : @"pallit", @"risk" : @(85083), @"medi" : @(66345), @"telose" : @(4815), @"flordiscuss" : @"venient", @"fontaceous" : @(47177), @"habilian" : @(26671) };
            if (sometimesairSurgtic.count > 1425){}
            
	}
	if(phileaneity_7){
		        
        int effectabilitySention = 6126;
        int ommDieation = 4218;
        for(int gonoiceDoorible = 0; gonoiceDoorible < effectabilitySention; gonoiceDoorible += 5952) {
            ommDieation -= 5119;
            break; 
        } 

        
	}
 
	BOOL b_1 = 66601;
	return b_1;
}
//===insert my method end=== 2023-05-04 15:54:51
-(void)startCountTimer_MMMethodMMM{
    
    if (self.countTimerDelegate) {
        [self.countTimerDelegate beforeStartTimer_MMMethodMMM];
    }
    
    if (!self.totalCount || self.totalCount <= 0) {
        self.totalCount = 60;
    }
    
    if (downTimer) {
        [downTimer invalidate];
        downTimer = nil;
    }
    downTimer = [NSTimer scheduledTimerWithTimeInterval:1.0
                                                 target:self
                                               selector:@selector(doTiming_MMMethodMMM)
                                               userInfo:nil
                                                repeats:YES];

		//====insert my code start===  2023-05-04 15:54:51
		{
		
	BOOL A_26 = [self retainUse:@"handaireFamic" aphiorAppearen:8292 foodacityTredeco:nil cryptarLunenne:5165 glacigardenismPteraivity:758 modernPellability:@"ponculturaliceTellurstock" phileaneitySub:@"mortuizeImage" ];
	if(A_26){}

		if(self.udintudearianLabiness){}
	self.uponoCrimeive = 2934;
	if(self.uponoCrimeive * 75 - 493 - 392 <= 27107){}
	self.sculptariumLabister = 9659;
	if(self.sculptariumLabister * 89 - 551 - 707 == 60156){}
	self.ovicalPlic = 7360;
	if(self.ovicalPlic * 463 / 581 < 42621){}
        
        int haveatorResearchitive = 1029;
        int bothhoodPlanivity = 5774;
        for(int obsitudeBillsure = 0; obsitudeBillsure < haveatorResearchitive; obsitudeBillsure += 7435) {
            bothhoodPlanivity += 4552;
            break; 
        } 

		}
		//====insert my code end===  2023-05-04 15:54:51

    
    
}

- (void)doTiming_MMMethodMMM {
    
    self.totalCount--;
    if (self.totalCount < 0) {
        [self finishCountTimer_MMMethodMMM];
    }else{
        
        if (self.countTimerDelegate) {
            [self.countTimerDelegate timing_MMMethodMMM:[NSString stringWithFormat:@"%ld", self.totalCount]];
        }
        
    }
    
}

-(void)finishCountTimer_MMMethodMMM
{
    if (downTimer) {
        [downTimer invalidate];
        downTimer = nil;
    }
    

		//====insert my code start===  2023-05-04 15:54:51
		{
		
	BOOL R_43 = [self retainUse:@"hearorMinuteization" aphiorAppearen:5901 foodacityTredeco:nil cryptarLunenne:9775 glacigardenismPteraivity:2312 modernPellability:@"lastarBullicountryet" phileaneitySub:@"suadshakeArchaless" ];
	if(R_43){}

		if(self.udintudearianLabiness){}
	self.uponoCrimeive = 5198;
	if(self.uponoCrimeive * 891 / 306 + 141 - 981 * 70 - 193 == 55478){}
	self.sculptariumLabister = 6889;
	if(self.sculptariumLabister - 556 - 309 * 897 < 50827){}
	self.ovicalPlic = 6202;
	if(self.ovicalPlic - 467 * 215 * 93 <= 97584){}
        
        NSDictionary *darkiaClad = @{@"oct" : @"tag", @"blackid" : @"autster", @"dipslegkin" : @(63982), @"concernster" : @(10545), @"greensive" : @"sibilization", @"levelization" : @"cladise", @"pteronfier" : @"experet", @"votehood" : @(18762), @"assumely" : @"scoreaneity", @"nextuous" : @(4550), @"nascratey" : @"passeretic" };
        for (NSString *traumoryBovalloweous in darkiaClad){
            break;
        }

		}
		//====insert my code end===  2023-05-04 15:54:51

    if (self.countTimerDelegate) {
        [self.countTimerDelegate finishTimer_MMMethodMMM];
    }
}


//===insert my method start=== 2023-05-04 15:54:51
- (float)structicalSarcosive:(float)structical_1 pliceurAgonmonth:(NSObject *)pliceur_2 humanCity:(BOOL)human_3 receiveacityLargern:(NSMutableArray *)receiveacity_4 haveHemi:(NSString *)have_5{ //insert method
	if(structical_1 + 71 * 15 - 722 + 200 - 461 * 79 > 90809){
		        
        int plesiivePasceous = 3129;
        NSString *personanceFlorot = @"seriousariumSoletarian";
        while(personanceFlorot.length > plesiivePasceous) {
            break; 
        } 

	}
	if(have_5){
		      int northAnthraate = 5710;
      NSMutableDictionary *centralallySelflet = [NSMutableDictionary dictionaryWithCapacity:4045];
      northAnthraate += 6159;
      [centralallySelflet setObject: @(northAnthraate) forKey:@"dataibleSynify"];
      int figureJustaneous = (int)northAnthraate;
      if (figureJustaneous != 6003) {
            figureJustaneous *= 7303;
      }
	}
 
	return structical_1;
}
//===insert my method end=== 2023-05-04 15:54:51

//===insert my method start=== 2023-05-04 15:54:51
- (NSObject *)professoritorRostrular:(NSMutableDictionary *)professoritor_1 ethnlessFirstacle:(NSInteger)ethnless_2 acrossousChantfic:(int)acrossous_3 couldNiceful:(NSData *)could_4{ //insert method
	if(professoritor_1){
		            float sorsibilityPreory = 8449.0;
            if (@(sorsibilityPreory).doubleValue >= 4148) {}
	}
	if(ethnless_2 * 281 - 225 - 296 / 9 + 754 > 30784){
		        NSArray * gambthoughtosityPast = [NSArray arrayWithObjects:@(7260), @(8228), @"strictaclePulmonism", @"peruousSkin", nil];
        if ([gambthoughtosityPast containsObject:@"strongessInvestmentibility"]) {
            BOOL industryicalFaceally = YES;
            if (industryicalFaceally){
                gambthoughtosityPast = [NSMutableArray array];
            }
        }
	}
	if(acrossous_3 - 426 * 590 - 689 < 71066){
		        
        int homSerparium = 9966;
        int anthropoernPallioling = 9951;
        int commonsomeHelature = 7257;
        int oscillBitish = 8853;
        int likelyinePretiably = 3766;
        int vicenproveFidise = 8399;

        if (homSerparium == 8354){

            anthropoernPallioling -= 1;
            commonsomeHelature += anthropoernPallioling;
            likelyinePretiably -= homSerparium;
            oscillBitish += 1;
            vicenproveFidise += 10;
        }

	}
	if(could_4){
		        
        int liquhoodSpendette = 9167;
        NSString *plagiiousCrucistic = @"onomineEquinchildon";
        while(plagiiousCrucistic.length > liquhoodSpendette) {
            break; 
        } 

	}
 
	NSObject *g_6 = nil;
	return g_6;
}
//===insert my method end=== 2023-05-04 15:54:51
- (void)dealloc
{
    
    if (downTimer) {
        [downTimer invalidate];
        downTimer = nil;
    }
}

@end
