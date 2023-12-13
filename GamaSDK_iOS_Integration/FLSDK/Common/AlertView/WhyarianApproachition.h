



#import <Foundation/Foundation.h>

#import <UIKit/UIKit.h>


typedef void (^SAlertViewHandler)(NSInteger clickedBtnIndex);


@interface WhyarianApproachition : NSObject <UIAlertViewDelegate,UIActionSheetDelegate>


@property (nonatomic,copy) SAlertViewHandler handler;


+(WhyarianApproachition *)creatDelegateWithBack_MMMethodMMM:(SAlertViewHandler)oneHandler;


@end
