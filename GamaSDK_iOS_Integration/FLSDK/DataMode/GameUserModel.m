//


#import "GameUserModel.h"
#import "StringUtil.h"
#import "CComHeader.h"

@implementation GameUserModel

-(BOOL) checkParams{
    
    if ([StringUtil isEmpty:self.roleID]) {
        return NO;
    }
    if ([StringUtil isEmpty:self.serverCode]) {
        return NO;
    }
    return YES;
}
@end
