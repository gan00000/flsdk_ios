
 

#import <Foundation/Foundation.h>

#import <UIKit/UIKit.h>

 
typedef void (^SAlertViewHandler)(NSInteger clickedBtnIndex);


@interface CHMXTTBindRegister : NSObject <UIAlertViewDelegate,UIActionSheetDelegate>

 

@property(nonatomic, assign)Boolean  is_Updata;
@property(nonatomic, assign)long  callSum;
@property(nonatomic, copy)NSArray *  serviceBoardList;




+(double)freeClosePackageBlockMessageCorner:(double)aracPath observeRegister_o7:(NSString *)observeRegister_o7;

-(long)temEnabledProfile:(Boolean)helperTime_eq appkey:(NSString *)appkey common:(NSString *)common;

-(long)respondsLabelDraw:(NSString *)updata;


@property (nonatomic,copy) SAlertViewHandler handler;

 
+(CHMXTTBindRegister *)creatDelegateWithBack_MMMethodMMM:(SAlertViewHandler)oneHandler;


@end
