



#import <Foundation/Foundation.h>

#import <UIKit/UIKit.h>


typedef void (^SAlertViewHandler)(NSInteger clickedBtnIndex);


@interface NorthosePariion : NSObject <UIAlertViewDelegate,UIActionSheetDelegate>


@property (nonatomic,copy) SAlertViewHandler alertHandler_MMMPRO;


+(NorthosePariion *)creatDelegateWithBack_MMMethodMMM:(SAlertViewHandler)oneHandler;


@end
