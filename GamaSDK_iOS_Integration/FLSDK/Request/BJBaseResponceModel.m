
#import "BJBaseResponceModel.h"

@implementation BJBaseResponceModel

- (BOOL)isRequestSuccess_MMMethodMMM{
    
    return self.code == BJResponseCode_OK_Login || self.code == BJResponseCode_OK_Register;
}
@end
