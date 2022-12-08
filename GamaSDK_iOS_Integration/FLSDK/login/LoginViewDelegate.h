
#import <Foundation/Foundation.h>
#import "SdkHeader.h"

typedef NS_OPTIONS(NSUInteger, SDKPage)
{
    SDKPage_Login,
    SDKPage_LoginType,
    SDKPage_UnBind,
    SDKPage_Find_Pwd
};


NS_ASSUME_NONNULL_BEGIN

@protocol LoginViewDelegate <NSObject>

-(void)goPageView_MMMethodMMM:(CURRENT_PAGE_TYPE) toPage;
-(void)goPageView_MMMethodMMM:(CURRENT_PAGE_TYPE) toPage from_MMMethodMMM:(CURRENT_PAGE_TYPE)fromPage param_MMMethodMMM:(id) obj;

-(void)goBackBtn_MMMethodMMM:(UIView *)backView backCount_MMMethodMMM:(NSUInteger) count fromPage_MMMethodMMM:(CURRENT_PAGE_TYPE) fromPage toPage_MMMethodMMM:(CURRENT_PAGE_TYPE) toPage;

-(void)logout_MMMethodMMM;
-(void)loginSuccess_MMMethodMMM;

-(void)cancelAutoSwitchAccount_MMMethodMMM;

-(void) handleLoginOrRegSuccess_MMMethodMMM:(id)responseData thirdPlate_MMMethodMMM:(NSString *)thirdPlate;

-(void)changPasswordSuccess_MMMethodMMM;

@end

NS_ASSUME_NONNULL_END
