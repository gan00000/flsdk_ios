

#import <UIKit/UIKit.h>
#import "PausetteQuadragenularView.h"
#import "AccountModel.h"


typedef void (^AccountModelHander)(BOOL isDelete,AccountModel *_Nullable,NSMutableArray<AccountModel *>  *accountDataList);

NS_ASSUME_NONNULL_BEGIN

@interface PhesiaNeurView : PausetteQuadragenularView

@property (nonatomic,strong) AccountModelHander mAccountModelClickHander;
@property (nonatomic,strong)NSMutableArray<AccountModel *>  *accountDataList;
@property (nonatomic,strong) UITableView *accountListTableView;
@property (nonatomic, strong) NSDictionary *jejunit25730Troubleous25731;//===insert my property===

@end

NS_ASSUME_NONNULL_END
