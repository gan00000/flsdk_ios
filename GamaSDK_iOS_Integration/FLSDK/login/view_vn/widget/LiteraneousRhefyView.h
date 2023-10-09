

#import <UIKit/UIKit.h>
#import "CharacterianPedlowView.h"
#import "AccountModel.h"


typedef void (^AccountModelHander)(BOOL isDelete,AccountModel *_Nullable,NSMutableArray<AccountModel *>  *accountDataList);

NS_ASSUME_NONNULL_BEGIN

@interface LiteraneousRhefyView : CharacterianPedlowView

@property (nonatomic,strong) AccountModelHander mAccountModelClickHander;
@property (nonatomic,strong)NSMutableArray<AccountModel *>  *accountDataList;
@property (nonatomic,strong) UITableView *accountListTableView;
@end

NS_ASSUME_NONNULL_END
