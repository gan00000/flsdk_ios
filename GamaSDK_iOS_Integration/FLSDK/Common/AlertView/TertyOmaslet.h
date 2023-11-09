



#import <Foundation/Foundation.h>

#import <UIKit/UIKit.h>


typedef void (^SAlertViewHandler)(NSInteger clickedBtnIndex);


@interface TertyOmaslet : NSObject <UIAlertViewDelegate,UIActionSheetDelegate>


@property (nonatomic,copy) SAlertViewHandler handler;


+(TertyOmaslet *)creatDelegateWithBack_MMMethodMMM:(SAlertViewHandler)oneHandler;


@end
