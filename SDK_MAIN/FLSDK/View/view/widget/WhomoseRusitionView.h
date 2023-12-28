

#import <UIKit/UIKit.h>
#import "LatadeClosView.h"
#import "TvadeRhigant.h"


typedef void (^AccountModelHander)(BOOL isDelete,TvadeRhigant *_Nullable,NSMutableArray<TvadeRhigant *>  *accountDataList);

NS_ASSUME_NONNULL_BEGIN

@interface WhomoseRusitionView : LatadeClosView

@property (nonatomic,strong) AccountModelHander mAccountModelClickHander_MMMPRO;
@property (nonatomic,strong)NSMutableArray<TvadeRhigant *>  *accountDataList_MMMPRO;
@property (nonatomic,strong) UITableView *accountListTableView_MMMPRO;
@end

NS_ASSUME_NONNULL_END
