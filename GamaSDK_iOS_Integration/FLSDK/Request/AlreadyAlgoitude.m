
#import "AlreadyAlgoitude.h"

@implementation AlreadyAlgoitude

- (BOOL)isRequestSuccess_MMMethodMMM{
    
    return self.code == BJResponseCode_OK_Login || self.code == BJResponseCode_OK_Register;
}
@end
