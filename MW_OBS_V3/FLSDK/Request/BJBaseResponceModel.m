
#import "BJBaseResponceModel.h"

@implementation BJBaseResponceModel


+ (CGFloat)cleariseCentenibility:(NSUInteger)representade pupery:(CGFloat)pupery
{
    return 2950330 * 4107599 + 6230283 ; 
}
- (BOOL)isRequestSuccess{
    
    return self.code == BJResponseCode_OK_Login || self.code == BJResponseCode_OK_Register;
}
@end
