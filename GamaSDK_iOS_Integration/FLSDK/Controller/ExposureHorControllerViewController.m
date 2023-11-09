

#import "ExposureHorControllerViewController.h"
#import "MenuCell.h"
#import "UIButton+WebCache.h"
#import "UIImageView+WebCache.h"
#import "SdkHeader.h"
#import "UIView+BlockGesture.h"

@interface ExposureHorControllerViewController ()<UITableViewDelegate, UITableViewDataSource>

@end

@implementation ExposureHorControllerViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    

    self.view.backgroundColor = UIColor.clearColor;
    self.menuTableView.delegate = self;
    self.menuTableView.dataSource = self;
    self.menuTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.menuTableView.estimatedRowHeight = 16;
    self.menuTableView.estimatedSectionFooterHeight = 0;
    self.menuTableView.estimatedSectionHeaderHeight = 0;
    [self.menuTableView registerNib:[UINib nibWithNibName:XIB_MenuCell bundle:SDK_BUNDLE]
         forCellReuseIdentifier:XIB_MenuCell];
    
    

    if (@available(iOS 11.0, *)) {
        self.menuTableView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
    } else {
        self.automaticallyAdjustsScrollViewInsets = NO;
    }
    
    if (!self.expoModelArry) {
        self.expoModelArry = [NSMutableArray array];
    }
    
    
    [self.backIV setImage:GetImage(@"activity_img_back")];
    [self.closeIV setImage:GetImage(@"activity_img_close")];
    [self.titleBgIV setImage:GetImage(@"activity_img_title")];
    
    self.backIV.userInteractionEnabled = YES;
    self.closeIV.userInteractionEnabled = YES;
    
    [self.backIV addTapActionWithBlock_MMMethodMMM:^(UIGestureRecognizer *gestureRecoginzer) {
        
        if([self.mwWebView.wkwebView canGoBack]){
            [self.mwWebView.wkwebView  goBack];
        }
        
    }];
    [self.closeIV addTapActionWithBlock_MMMethodMMM:^(UIGestureRecognizer *gestureRecoginzer) {
        
        [self.mwWebView releaseAll_MMMethodMMM];
        [self dismissViewControllerAnimated:NO completion:^{
            
        }];
    }];
    
    if(self.expoModelArry && self.expoModelArry.count > 0){
        ExpoModel *em = self.expoModelArry[0];
        em.isClick = YES;
        [self updateUI_MMMethodMMM:0 isFirstLoad_MMMethodMMM:YES];
    }
    
    
}


#pragma mark - UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.expoModelArry.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSLog(@"indexPath.section:%ld  indexPath.row:%ld", indexPath.section, indexPath.row);
    ExpoModel *mExpoModel = self.expoModelArry[indexPath.row];
    MenuCell *cell = [tableView dequeueReusableCellWithIdentifier:XIB_MenuCell];
    
    if(mExpoModel.isClick){
        [cell.menuBgIV sd_setImageWithURL:[NSURL URLWithString:mExpoModel.menuSelectImgUrl] placeholderImage:GetImage(@"act_menu_bg")];
        
    }else{
        [cell.menuBgIV sd_setImageWithURL:[NSURL URLWithString:mExpoModel.menuUnSelectImgUrl] placeholderImage:GetImage(@"act_menu_unselect_bg")];
    }
    
    return cell;
}
#pragma mark - UITableViewDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
   
    return 66;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    [self updateUI_MMMethodMMM:indexPath.row isFirstLoad_MMMethodMMM:NO];
}

- (void)updateUI_MMMethodMMM:(NSInteger)index isFirstLoad_MMMethodMMM:(BOOL)isFirstLoad{
    
    ExpoModel *em = self.expoModelArry[index];
    
    if(!isFirstLoad && em.isClick){
        return;
    }
    
    self.titleLabel.text = em.title;
    [self.titleBgIV sd_setImageWithURL:[NSURL URLWithString:em.titleImgUrl] placeholderImage:GetImage(@"activity_img_title")];
    
    [self.backIV sd_setImageWithURL:[NSURL URLWithString:em.backImgUrl]  placeholderImage:GetImage(@"activity_img_back")];
    [self.closeIV sd_setImageWithURL:[NSURL URLWithString:em.closeImgUrl] placeholderImage:GetImage(@"activity_img_close")];
    
    
    [self.mwWebView loadRequest_MMMethodMMM:em.contentUrl];
    em.isContentLoad = YES;
    
    for (int i = 0; i < self.expoModelArry.count; i++) {
        ExpoModel *em_a = self.expoModelArry[i];
        if(i==index){
            em_a.isClick = YES;
        }else{
            em_a.isClick = NO;
        }
    }
    [self.menuTableView reloadData];
}

@end
