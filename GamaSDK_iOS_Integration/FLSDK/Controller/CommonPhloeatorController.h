

#import <UIKit/UIKit.h>
#import "ExpoModel.h"
#import <WebKit/WebKit.h>
#import "ArctoBatationView.h"

NS_ASSUME_NONNULL_BEGIN

@interface CommonPhloeatorController : UIViewController

@property (nonatomic, strong) NSMutableArray<ExpoModel *> *expoModelArry;

@property (weak, nonatomic) IBOutlet UITableView *menuTableView;
@property (weak, nonatomic) IBOutlet UIImageView *titleBgIV;
@property (weak, nonatomic) IBOutlet UIImageView *backIV;
@property (weak, nonatomic) IBOutlet UIImageView *closeIV;


@property (weak, nonatomic) IBOutlet UIView *contentView;

@property (weak, nonatomic) IBOutlet ArctoBatationView *mwWebView;

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;


@end

NS_ASSUME_NONNULL_END
