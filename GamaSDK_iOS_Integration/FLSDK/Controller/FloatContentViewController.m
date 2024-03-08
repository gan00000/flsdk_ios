//
//  FloatContentViewController.m
//  MW_SDK
//
//  Created by Gan Yuanrong on 2024/3/5.
//  Copyright © 2024 Gama. All rights reserved.
//

#import "FloatContentViewController.h"
#import "FloatMenuCell.h"
#import "UIButton+WebCache.h"
#import "UIImageView+WebCache.h"
#import "UIView+BlockGesture.h"
#import "MWWebView.h"
#import "PersionCenterHorViewController.h"
#import "UIView+BlockGesture.h"

@interface FloatContentViewController ()<UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UIView *floatContentView;

@property (weak, nonatomic) IBOutlet UITableView *menuTableView;
@property (weak, nonatomic) IBOutlet UIView *rightView;
@property (weak, nonatomic) IBOutlet MWWebView *mwWebView;

@property (strong, nonatomic) UIView *persionCenterView;
@property (weak, nonatomic) IBOutlet UIImageView *backBtn;

@property (strong, nonatomic) PersionCenterHorViewController *mPersionCenterHorViewController;

@end

@implementation FloatContentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.view.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_000000 andAlpha_MMMethodMMM:0.3];
    
    self.menuTableView.delegate = self;
    self.menuTableView.dataSource = self;
//    self.menuTableView.tableFooterView = [[UIView alloc] init];
    self.menuTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.menuTableView.estimatedRowHeight = 16;
    self.menuTableView.estimatedSectionFooterHeight = 0;
    self.menuTableView.estimatedSectionHeaderHeight = 0;
    [self.menuTableView registerNib:[UINib nibWithNibName:XIB_FloatMenuCell bundle:SDK_BUNDLE]
         forCellReuseIdentifier:XIB_FloatMenuCell];
    self.menuTableView.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:@"#EDEDED"];
    
    if (@available(iOS 11.0, *)) {
        self.menuTableView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
    } else {
        self.automaticallyAdjustsScrollViewInsets = NO;
    }
    
    self.floatShowMenuList = SDK_DATA.floatShowMenuList;
    if (self.floatShowMenuList.count > 0) {
        self.floatShowMenuList[0].isClick = YES;
    }
    
    self.mPersionCenterHorViewController = [[PersionCenterHorViewController alloc] initWithNibName:XIB_PersionCenterHorViewController bundle:SDK_BUNDLE];
    
    self.persionCenterView = self.mPersionCenterHorViewController.view;
    [self.rightView addSubview:self.persionCenterView];
    [self.persionCenterView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(self.rightView);
    }];
    
    [self.backBtn setImage:GetImage(@"float_back_dismiss")];
    
    self.backBtn.userInteractionEnabled = YES;
    [self.backBtn addTapActionWithBlock_MMMethodMMM:^(UIGestureRecognizer *gestureRecoginzer) {
        [self dismissViewControllerAnimated:NO completion:^{

        }];
    }];
}

- (void)viewDidAppear:(BOOL)animated
{
    self.floatContentView.layer.masksToBounds = YES;
    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:self.floatContentView.bounds byRoundingCorners:UIRectCornerTopRight | UIRectCornerBottomRight cornerRadii:CGSizeMake(25, 25)];
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame = self.floatContentView.bounds;
    maskLayer.path = maskPath.CGPath;
    self.floatContentView.layer.mask = maskLayer;
}

#pragma mark - UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.floatShowMenuList.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSLog(@"indexPath.section:%ld  indexPath.row:%ld", indexPath.section, indexPath.row);
    FloatMenuMode *xFloatMenuMode = self.floatShowMenuList[indexPath.row];
    FloatMenuCell *cell = [tableView dequeueReusableCellWithIdentifier:XIB_FloatMenuCell];
    
    [cell.menuIconImageView sd_setImageWithURL:[NSURL URLWithString:xFloatMenuMode.icon] placeholderImage:[SUtil getAppIconImage_MMMethodMMM]];
    cell.menuTitleLabel.text = xFloatMenuMode.name;
    
    if (xFloatMenuMode.isClick) {
        cell.contentView.backgroundColor = [UIColor whiteColor];
    }else{
        cell.contentView.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:@"#EDEDED"];
    }
    
    return cell;
}
#pragma mark - UITableViewDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
   
    return 60;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
//    ExpoModel *mExpoModel = self.expoModelArry[indexPath.row];
    
    [self updateUI_MMMethodMMM:indexPath.row isFirstLoad_MMMethodMMM:NO];
}

- (void)updateUI_MMMethodMMM:(NSInteger)index isFirstLoad_MMMethodMMM:(BOOL)isFirstLoad{
    
    FloatMenuMode *em = self.floatShowMenuList[index];
    
    if(!isFirstLoad && em.isClick){
        return;
    }
    
//    self.titleLabel.text = em.title;
//    [self.titleBgIV sd_setImageWithURL:[NSURL URLWithString:em.titleImgUrl] placeholderImage:GetImage(activity_img_title)];
//
//    [self.backIV sd_setImageWithURL:[NSURL URLWithString:em.backImgUrl]  placeholderImage:GetImage(activity_img_back)];
//    [self.closeIV sd_setImageWithURL:[NSURL URLWithString:em.closeImgUrl] placeholderImage:GetImage(activity_img_close)];
    
    if ([em.code isEqualToString:@"my"]) {
        
        self.mwWebView.hidden = YES;
        self.persionCenterView.hidden = NO;
        
    }else{
        self.mwWebView.hidden = NO;
        self.persionCenterView.hidden = YES;
        if ([StringUtil isNotEmpty_MMMethodMMM:em.url]) {
            [self.mwWebView loadRequest_MMMethodMMM:em.url];
        }
        
    }
    
//    em.isContentLoad = YES;
    
    for (int i = 0; i < self.floatShowMenuList.count; i++) {
        FloatMenuMode *em_a = self.floatShowMenuList[i];
        if(i==index){
            em_a.isClick = YES;
        }else{
            em_a.isClick = NO;
        }
    }
    [self.menuTableView reloadData];
}

@end
