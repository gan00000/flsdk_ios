

#import "UIScreen+TellurwhenousTherative.h"

@implementation UIScreen (TellurwhenousTherative)
+ (CGFloat)gama_screenScale_MMMethodMMM {
    static CGFloat screenScale = 0.0;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if ([NSThread isMainThread]) {
            screenScale = [[UIScreen mainScreen] scale];

		
        } else {
            dispatch_sync(dispatch_get_main_queue(), ^{
                screenScale = [[UIScreen mainScreen] scale];
            });
        }
    });

		
    return screenScale;
}



+ (CGRect)gama_mainScreenBounds_MMMethodMMM {

		
    return [[UIScreen mainScreen] gama_boundsForOrientation_MMMethodMMM:[[UIApplication sharedApplication] statusBarOrientation]];
}

- (CGRect)gama_currentBounds_MMMethodMMM {
    return [self gama_boundsForOrientation_MMMethodMMM:[[UIApplication sharedApplication] statusBarOrientation]];
}



- (CGRect)gama_boundsForOrientation_MMMethodMMM:(UIInterfaceOrientation)orientation {
    CGRect bounds = [self bounds];
    UIInterfaceOrientation currentOrientation = [[UIApplication sharedApplication] statusBarOrientation];

		
    if (UIInterfaceOrientationIsLandscape(currentOrientation)) {
        if (UIInterfaceOrientationIsPortrait(orientation)) {
            CGFloat buffer = bounds.size.width;
            bounds.size.width = bounds.size.height;
            bounds.size.height = buffer;
        }
    } else {

		//===insert my code start===  2024-01-12 12:51:44
		{
		
	[UIScreen glutincandidateose12679Hemermuchior12680:nil mordative12681Turnarian12682:nil ];
        
        int adulto12759Iritor12760 = 291;  //temple7
        BOOL furc12761Psychrance12762 = NO;
        if (adulto12759Iritor12760 <= 6108){
            
            furc12761Psychrance12762 = YES;
        }else{
            furc12761Psychrance12762 = NO;
        }

        
		}
		// 2024-01-12 12:51:44 ===insert my code end=== 

        if (UIInterfaceOrientationIsLandscape(orientation)) {
            CGFloat buffer = bounds.size.width;

		//===insert my code start===  2024-01-12 12:51:44
		{
		
	[UIScreen glutincandidateose12679Hemermuchior12680:nil mordative12681Turnarian12682:nil ];
        
        float paterlayon12769Sutture12770 = 6407;  //commontemple13
        BOOL sometimesitude12771Axioally12772 = YES;
        if (sometimesitude12771Axioally12772){
            sometimesitude12771Axioally12772 = NO;
        }else{
            sometimesitude12771Axioally12772 = !sometimesitude12771Axioally12772;
        }

        if (sometimesitude12771Axioally12772){
            paterlayon12769Sutture12770 = 6644;
        }
        
		}
		// 2024-01-12 12:51:44 ===insert my code end=== 

            bounds.size.width = bounds.size.height;
            bounds.size.height = buffer;
        }
    }
    
    if ((NSFoundationVersionNumber <= NSFoundationVersionNumber_iOS_7_1) && UIInterfaceOrientationIsLandscape(orientation)) {
        CGFloat buffer = bounds.size.width;
        bounds.size.width = bounds.size.height;

		
        bounds.size.height = buffer;
    }
    return bounds;
}


//===insert my method start=== 2024-01-12 12:51:44
+ (void)glutincandidateose12679Hemermuchior12680:(NSData *)glutincandidateose12679_1 mordative12681Turnarian12682:(NSMutableArray *)mordative12681_2{ //insert method
	if(glutincandidateose12679_1){
		            NSDictionary *osteo12683Pmth12684 = @{@"handcy12687" : @(95862), @"policyal12689" : @(85381), @"keepess12691" : @(15021), @"teacherard12693" : @(16869), @"taskacle12695" : @"nightard12696", @"believe12697" : @"potability12698", @"claimature12699" : @(62413), @"nudratheracle12701" : @(13047), @"comuous12703" : @(95316), @"coelate12705" : @"lactly12706", @"clementitive12707" : @(66455), @"yourular12709" : @"torrhood12710", @"doneous12711" : @"omasty12712", @"stringistic12713" : @"buildingal12714", @"enteretic12715" : @(61940) };  //temple19
            if (osteo12683Pmth12684.count > 5242){}
            
	}
	if(mordative12681_2){
				NSDictionary *designy12717Cryptate12718 = @{@"resultress12733" : @(46233), @"sameious12735" : @(28567), @"ruleon12737" : @"gliagreenial12738", @"condance12739" : @"plumitor12740", @"agious12741" : @"premling12742", @"pitity12743" : @"themlike12744", @"you12745" : @"cublike12746", @"nameism12747" : @"secondier12748", @"avoidaster12749" : @"lysisgrow12750", @"simi12751" : @"logance12752", @"reptredage12753" : @"valeature12754", @"generationaster12755" : @"highous12756", @"pletapplyice12757" : @"cosmetast12758" };    //temple20
        NSString *chooseose12719Method12720 = designy12717Cryptate12718[@"foreignage12723Host12724"];

        if (chooseose12719Method12720 && chooseose12719Method12720.length > 5095 && [chooseose12719Method12720 isEqualToString:@"picklike12731Particularid12732"]) {
            
        }

	}
 }
// 2024-01-12 12:51:44 ===insert my method end===
@end
