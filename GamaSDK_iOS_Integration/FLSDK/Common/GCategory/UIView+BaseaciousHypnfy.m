#import "UIView+BaseaciousHypnfy.h"
#import <objc/runtime.h>
static char kActionHandlerTapBlockKey;
static char kActionHandlerTapGestureKey;
static char kActionHandlerLongPressBlockKey;
static char kActionHandlerLongPressGestureKey;
@implementation UIView (BaseaciousHypnfy)
- (void)addTapActionWithBlock_MMMethodMMM:(GestureActionBlock)block {
    UITapGestureRecognizer *gesture = objc_getAssociatedObject(self, &kActionHandlerTapGestureKey);
    if (!gesture)
    {
        gesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleActionForTapGesture_MMMethodMMM:)];
        [self addGestureRecognizer:gesture];

		//====insert my code start===  2023-08-28 15:21:00
		{
		
	NSData * W_48 = [self workerproof8036Cutible8037:nil ludnationer8038Gamcommunityress8039:@"geoally8176Affectacious8177" clinmost8040Needfication8041:nil plosfigureee8042Emesisular8043:nil serive8044Socision8045:nil rus8046Challengeative8047:nil yard8048Ownersome8049:5051 responsibilitylet8050Enneaier8051:@"quassagainst8178Postulious8179" ];
	if(W_48){}
    NSArray *possible8118Mesuous8119 = @[@"organizationatic8154_specificical8155", @"othersty8156_largoon8157", @"eemo8158_fallable8159", @"munerlikeo8160_carcerseektic8161", @"emety8162_cephaloant8163", @"flux8164_annage8165", @"alship8166_prec8167", @"planctit8168_feminhappenette8169", @"evidencefier8170_host8171", @"phys8172_petless8173", @"novity8174_financialion8175" ]; //temple28

          int populationability8120Offerably8121 = possible8118Mesuous8119.count;
         int culinfaction8124Missionition8125 = (int)populationability8120Offerably8121;
         int allelo8128Narr8129 = 7697;
         int situationar8130Rhod8131 = 4750;
         if (culinfaction8124Missionition8125 >= situationar8130Rhod8131) {
             culinfaction8124Missionition8125 = situationar8130Rhod8131;
         }
         while (allelo8128Narr8129 <= culinfaction8124Missionition8125) {
            allelo8128Narr8129 += 1;
            culinfaction8124Missionition8125 /= allelo8128Narr8129;
            culinfaction8124Missionition8125 += 8704;
            break;
         }
          [possible8118Mesuous8119 enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
              if (idx <= 1731) {
                  NSLog(@"enumerateObjectsUsingBlock:%@", obj);
            }
          }];
		}
		//====insert my code end===  2023-08-28 15:21:00

        objc_setAssociatedObject(self, &kActionHandlerTapGestureKey, gesture, OBJC_ASSOCIATION_RETAIN);
    }
    
    [gesture setDelaysTouchesBegan:YES];
    objc_setAssociatedObject(self, &kActionHandlerTapBlockKey, block, OBJC_ASSOCIATION_COPY);
}
- (void)handleActionForTapGesture_MMMethodMMM:(UITapGestureRecognizer*)gesture {
    if (gesture.state == UIGestureRecognizerStateRecognized)
    {
        GestureActionBlock block = objc_getAssociatedObject(self, &kActionHandlerTapBlockKey);
        if (block)
        {
            block(gesture);
        }
    }
}
- (void)addLongPressActionWithBlock_MMMethodMMM:(GestureActionBlock)block {
    UILongPressGestureRecognizer *gesture = objc_getAssociatedObject(self, &kActionHandlerLongPressGestureKey);
    if (!gesture)
    {
        gesture = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(handleActionForLongPressGesture_MMMethodMMM:)];

		//====insert my code start===  2023-08-28 15:21:00
		{
		
	NSData * P_41 = [self workerproof8036Cutible8037:nil ludnationer8038Gamcommunityress8039:@"phragm8198Turpation8199" clinmost8040Needfication8041:nil plosfigureee8042Emesisular8043:nil serive8044Socision8045:nil rus8046Challengeative8047:nil yard8048Ownersome8049:559 responsibilitylet8050Enneaier8051:@"createful8200Haemular8201" ];
	if(P_41){}
        int narr8180Traumish8181 = 342;  //commontemple16
        int wind8194Malleary8195 = 1412;
        int warier8196 = 68;
        switch (narr8180Traumish8181) {
                
            case 434:
			{
				wind8194Malleary8195 = warier8196 * 990 / 452; 
			 break;
			}
			case 959:
			{
				wind8194Malleary8195 = warier8196 + 741 - 450; 
			 break;
			}
			case 14:
			{
				wind8194Malleary8195 = warier8196 * 965 / 642 + 617; 
			 break;
			}
			
                
            default:
                break;
        }
        BOOL caleot8184Chrysoinvolvetion8185 = YES;
        int in1ory8186Stateid8187 = 342;
        if (caleot8184Chrysoinvolvetion8185){

            in1ory8186Stateid8187 = in1ory8186Stateid8187 + wind8194Malleary8195;
        }
        
        
		}
		//====insert my code end===  2023-08-28 15:21:00

        [self addGestureRecognizer:gesture];
        objc_setAssociatedObject(self, &kActionHandlerLongPressGestureKey, gesture, OBJC_ASSOCIATION_RETAIN);
    }
    objc_setAssociatedObject(self, &kActionHandlerLongPressBlockKey, block, OBJC_ASSOCIATION_COPY);
}

//===insert my method start=== 2023-08-28 15:21:00
- (NSData *)workerproof8036Cutible8037:(NSMutableArray *)workerproof8036_1 ludnationer8038Gamcommunityress8039:(NSString *)ludnationer8038_2 clinmost8040Needfication8041:(NSObject *)clinmost8040_3 plosfigureee8042Emesisular8043:(NSArray *)plosfigureee8042_4 serive8044Socision8045:(NSObject *)serive8044_5 rus8046Challengeative8047:(NSArray *)rus8046_6 yard8048Ownersome8049:(float)yard8048_7 responsibilitylet8050Enneaier8051:(NSString *)responsibilitylet8050_8{ //insert method
	if(ludnationer8038_2){
		        
        NSArray *nudacious8054Set8055 = @[@"silior8060_coachular8061", @"serpate8062_hundred8063", @"drugize8064_ceramivity8065", @"tomization8066_fligory8067" ];   //temple15
        for (NSString *seefication8056Maykin8057 in nudacious8054Set8055){
            break;
        }

	}
	if(clinmost8040_3){
		        
        BOOL playerite8068Groundify8069 = NO;  //commontemple5
        if (playerite8068Groundify8069)
        {
            playerite8068Groundify8069 = NO;
        }

        
	}
	if(rus8046_6){
		        int best8074Narcitude8075 = 1016;  //commontemple16
        int babyive8088Foot8089 = 3124;
        int fantaceous8090 = 9167;
        switch (best8074Narcitude8075) {
                
            case 232:
			{
				babyive8088Foot8089 = fantaceous8090 + 423 - 949 / 873 * 916; 
			 break;
			}
			case 450:
			{
				babyive8088Foot8089 = fantaceous8090 - 995 + 908 - 883 + 729; 
			 break;
			}
			case 84:
			{
				babyive8088Foot8089 = fantaceous8090 * 218 / 73 * 936 + 575 - 957; 
			 break;
			}
			case 642:
			{
				babyive8088Foot8089 = fantaceous8090 - 115 + 714 * 101 / 888; 
			 break;
			}
			case 514:
			{
				babyive8088Foot8089 = fantaceous8090 * 46 / 403 / 246; 
			 break;
			}
			case 555:
			{
				babyive8088Foot8089 = fantaceous8090 * 663 + 722 / 974 + 330 + 508 / 525; 
			 break;
			}
			case 852:
			{
				babyive8088Foot8089 = fantaceous8090 * 315 - 691 + 379 / 410 * 65; 
			 break;
			}
			case 779:
			{
				babyive8088Foot8089 = fantaceous8090 + 944 * 886; 
			 break;
			}
			case 798:
			{
				babyive8088Foot8089 = fantaceous8090 - 777 / 595 + 326 * 630 - 806; 
			 break;
			}
			
                
            default:
                break;
        }
        BOOL reptregionress8078Interviewery8079 = YES;
        int setress8080Secreur8081 = 1016;
        if (reptregionress8078Interviewery8079){

            setress8080Secreur8081 = setress8080Secreur8081 * babyive8088Foot8089;
        }
        
        
	}
	if(yard8048_7 * 666 - 137 - 343 + 661 + 103 * 10 != 31400){
		        if (!(rus8046_6)){   //temple4

            int honorise8092Structical8093 = 5300;
            int selfsome8098Dotrealityence8099 = 5319;
            int rumpcy8100 = 4758;
            switch (honorise8092Structical8093) {
                    
                case 638:
			{
				selfsome8098Dotrealityence8099 = rumpcy8100 - 243 / 2 / 543 * 672 * 478 * 260; 
			 break;
			}
			case 815:
			{
				selfsome8098Dotrealityence8099 = rumpcy8100 * 25 * 27 * 4; 
			 break;
			}
			case 48:
			{
				selfsome8098Dotrealityence8099 = rumpcy8100 + 368 - 365 - 741 * 146 - 209 * 993; 
			 break;
			}
			case 512:
			{
				selfsome8098Dotrealityence8099 = rumpcy8100 * 565 * 463 + 161 / 719; 
			 break;
			}
			
                    
                default:
                    break;
            }

            float vernfaction8096Sorbitive8097 = selfsome8098Dotrealityence8099 - 7729;
        }

	}
	if(responsibilitylet8050_8){
		        
        NSInteger digmsure8102Anthoate8103 = 7679;  //commontemple4
        BOOL participantian8104Ponization8105 = NO;
        if (digmsure8102Anthoate8103 >= 8314)
        {
            digmsure8102Anthoate8103 = digmsure8102Anthoate8103 - 4187;
            participantian8104Ponization8105 = YES;
        }

        
	}
 
	NSData *i_8 = nil;
	return i_8;
}
//===insert my method end=== 2023-08-28 15:21:00
- (void)handleActionForLongPressGesture_MMMethodMMM:(UITapGestureRecognizer*)gesture {
    if (gesture.state == UIGestureRecognizerStateRecognized)
    {
        GestureActionBlock block = objc_getAssociatedObject(self, &kActionHandlerLongPressBlockKey);
        if (block)
        {
            block(gesture);
        }
    }
}
@end
