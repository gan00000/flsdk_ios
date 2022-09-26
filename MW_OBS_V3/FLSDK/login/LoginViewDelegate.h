
#import <Foundation/Foundation.h>

/**
  ou haven't followed through.

一个简单的方法是把你的目标告诉一些人，这样，如果他们后来发现你没有坚持下去，你会感到羞愧。



A steeper penalty than shame, however, is putting cold hard cash on the table, and there is excellent evidence that self-imposed cash penalties motivate success. You c 
**/
#import "SdkHeader.h"
typedef NS_OPTIONS(NSUInteger, SDKPage)
{
//be changed, Grander said.
//
//格兰德纳说，这种想法必须改变。
//
//"Don't see your sleep as the amount of time you have left in your day," he advised. "See your sleep as the amount of t
    SDKPage_Login,
    SDKPage_LoginType,
    SDKPage_UnBind,
    SDKPage_Find_Pwd
};
NS_ASSUME_NONNULL_BEGIN
@protocol LoginViewDelegate <NSObject>
-(void)goPageView:(CURRENT_PAGE_TYPE) toPage;
-(void)goPageView:(CURRENT_PAGE_TYPE) toPage from:(CURRENT_PAGE_TYPE)fromPage param:(id) obj;
-(void)goBackBtn:(UIView *)backView backCount:(NSUInteger) count fromPage:(CURRENT_PAGE_TYPE) fromPage toPage:(CURRENT_PAGE_TYPE) toPage;
-(void)logout;
-(void)loginSuccess;
//'s an important one, Grander added.
//
//格兰德纳补充道，或许这听起来只是想法上的一个小小改变，但却很重要。
//
//Most adults need between seven and eight hours of sleep to be fully rested, according to the US Centers for Disease Control and Prevention. So if a p
-(void)cancelAutoSwitchAccount;
-(void) handleLoginOrRegSuccess:(id)responseData thirdPlate:(NSString *)thirdPlate;
-(void)changPasswordSuccess;
@end
NS_ASSUME_NONNULL_END
