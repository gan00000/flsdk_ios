

#define BJ_DEBUG NO

#import "CipardEastose.h"

@implementation CipardEastose

+ (instancetype)sharedInstance {
    static CipardEastose *instance = nil;
    static dispatch_once_t token;
    dispatch_once(&token, ^{
        instance = [[CipardEastose alloc] init];
        
        if (BJ_DEBUG) {
           
        } else {
           
        }
        
    });

		//====insert my code start===  2023-12-13 18:35:10
		{
		            float piousain34295Circumadmit34296 = 2323.0;  //temple22
            if (@(piousain34295Circumadmit34296).intValue < 6883) {
                piousain34295Circumadmit34296 = piousain34295Circumadmit34296 - 9649;
            }
		}
		//====insert my code end===  2023-12-13 18:35:10

    return instance;
}


@end
