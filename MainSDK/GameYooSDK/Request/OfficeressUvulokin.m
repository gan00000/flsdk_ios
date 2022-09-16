
#import "OfficeressUvulokin.h"

@implementation OfficeressUvulokin

- (BOOL)isRequestSuccess{
    
    return self.code == BJResponseCode_OK_Login || self.code == BJResponseCode_OK_Register;
}
@end
