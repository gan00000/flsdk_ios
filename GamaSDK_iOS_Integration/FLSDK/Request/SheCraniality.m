
#import "SheCraniality.h"

@implementation SheCraniality

- (BOOL)isRequestSuccess_MMMethodMMM{
    
    return self.code == BJResponseCode_OK_Login || self.code == BJResponseCode_OK_Register;
}
@end
