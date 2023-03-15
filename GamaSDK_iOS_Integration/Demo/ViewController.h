//
//  ViewController.h
//  
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIActionSheetDelegate,UITableViewDataSource,UITableViewDelegate>

@property (nonatomic,retain) UITableView *buttonsTable;
@property (nonatomic,retain) NSDictionary *btnsDic;
@property (nonatomic,retain) NSArray *keyArray;
@property (nonatomic,retain) NSArray *valueArray;

@end
