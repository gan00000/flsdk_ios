//
//  IAP_ViewController.m
//
//
//  Created by Sunny on 15/12/4.
//  Copyright © 2015年 sunn. All rights reserved.
//

#import "IAP_ViewController.h"
#import "UserModel.h"
#import "CenturyiaGraphic.h"
#import "ResHeader.h"

#import "MWSDK.h"

@interface IAP_ViewController () <UITableViewDataSource,UITableViewDelegate>
{
    UITableView *_iapTable;
    NSMutableArray *_dataSource;
}
@end

@implementation IAP_ViewController

//- (void)dealloc {
//    [_iapTable release];
//    [_dataSource release];
//    [super dealloc];
//}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createTableView];
}

- (void)createTableView {
    NSArray *productArr = @[
                            @"com.gs.sst.daily1",
                            ];
    _dataSource = [productArr copy];
//    _iapTable = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, [CenturyiaGraphic getCurrentScreenFrame].size.width, [CenturyiaGraphic getCurrentScreenFrame].size.height) style:UITableViewStylePlain];
    _iapTable.dataSource = self;
    _iapTable.delegate = self;
    [self.view addSubview:_iapTable];
}

#pragma mark - TableView DataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _dataSource.count + 1;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIde = @"cell_identifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIde];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIde];
    }
    
    if (0 == indexPath.row) {
        cell.textLabel.text = @"Back";
    } else {
        cell.textLabel.text = _dataSource[indexPath.row-1];
    }
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (0 == indexPath.row) {
        [self dismissViewControllerAnimated:YES completion:nil];
    } else {
        [self buyProduct:_dataSource[indexPath.row-1]];
    }
}

- (void)buyProduct:(NSString *)productId {
    /*********************************************
     商品信息
     *********************************************/
    NSString *aProductID =  productId;
    
    
    /*********************************************
     交易信息
     *********************************************/
    NSString
    *cpOrderId = @"atestaporderid",
    *extra = @"hehe";

//    [[FLSDK share] payWithRoleId:<#(NSString *)#> roleName:<#(NSString *)#> roleLevel:<#(NSString *)#> roleVipLevel:<#(NSString *)#> serverCode:<#(NSString *)#> serverName:<#(NSString *)#> productId:<#(NSString *)#> cpOrderId:<#(NSString *)#> extra:<#(NSString *)#> completionHandler:<#^(SDK_PAY_STATUS status, NSDictionary *result)handler#>];
}

@end
