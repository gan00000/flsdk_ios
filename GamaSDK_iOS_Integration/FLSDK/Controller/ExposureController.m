//
//  ExposureController.m
//  SDK_DEMO_KR
//
//  Created by Gan Yuanrong on 2023/10/11.
//  Copyright © 2023 Gama. All rights reserved.
//

#import "ExposureController.h"
#import "UIButton+WebCache.h"
#import "UIImageView+WebCache.h"
#import "Masonry.h"
#import "UIView+BlockGesture.h"

#define VIEW_CONTENT_HEIGHT 360
#define VIEW_CONTENT_WIDTH 340

@interface ExposureController () <UIScrollViewDelegate>

@property (nonatomic, strong) NSMutableArray<WKWebView *> *mWebViewArry;
@property (nonatomic, assign) NSInteger currentIndex;
@end

@implementation ExposureController





- (IBAction)closeBtAction:(id)sender {
    
    [self dismissViewControllerAnimated:NO completion:^{
        
    }];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    if (!self.expoModelArry) {
        self.expoModelArry = [NSMutableArray array];
    }
    self.mWebViewArry = [NSMutableArray array];
//    for (int i =0; i<6; i++) {
//
//        ExpoModel *em = [[ExpoModel alloc] init];
//        em.title = [NSString stringWithFormat:@"title=%d", i];
//        em.contentUrl = @"https://www.baidu.com/";
//
//        [self.expoModelArry addObject:em];
//
//    }
    self.view.backgroundColor = UIColor.lightGrayColor;
    
    int mSize = self.expoModelArry.count;
    self.currentIndex = 0;
    
    
    [self.backIV setImage:GetImage(@"activity_img_back")];
    [self.closeIV setImage:GetImage(@"activity_img_close")];
    [self.titleBgIV setImage:GetImage(@"activity_img_title")];
    
    self.backIV.userInteractionEnabled = YES;
    self.closeIV.userInteractionEnabled = YES;
    
    [self.backIV addTapActionWithBlock_MMMethodMMM:^(UIGestureRecognizer *gestureRecoginzer) {
        
        WKWebView *indexWebView = self.mWebViewArry[self.currentIndex];
        if([indexWebView canGoBack]){
            [indexWebView goBack];
        }
        
    }];
    [self.closeIV addTapActionWithBlock_MMMethodMMM:^(UIGestureRecognizer *gestureRecoginzer) {
        
        [self dismissViewControllerAnimated:NO completion:^{
            
        }];
    }];
    
    
    self.pageControl.pageIndicatorTintColor = [UIColor whiteColor]; // 未选中的点的颜色
    
    self.pageControl.currentPageIndicatorTintColor = [UIColor colorWithHexString_MMMethodMMM:@"#4BACFD"]; // 选中的点的颜色
    self.pageControl.currentPage = self.currentIndex; // 当前第几个点 默认0
    self.pageControl.hidesForSinglePage = YES; // 如果页面只有1个的时候，指示器自动消失

//    self.pageControl.defersCurrentPageDisplay = NO; // 当你改变页面时，指示器是不会改变的，只有当你给updateCurrentPageDisplay发送消息才会改变现实， 默认是NO
    self.pageControl.numberOfPages = mSize; // 设置总共有多少个小点，也就是有多少个页面
    
    
    self.mScrollView.delegate = self;
    
    if(mSize > 0){
        [self.mScrollView setContentSize:CGSizeMake(mSize * VIEW_CONTENT_WIDTH, VIEW_CONTENT_HEIGHT)];
    //    [self.mScrollView setContentOffset:CGPointMake(340, 0)];
        WKWebView *firstWebView;
        for (int i = 0; i < mSize; i ++) {
            WKWebView *mWebView = [[WKWebView alloc] initWithFrame: CGRectMake(i * VIEW_CONTENT_WIDTH, 0, VIEW_CONTENT_WIDTH, VIEW_CONTENT_HEIGHT)];
//            if(i % 2 == 1){
//                mView.backgroundColor = UIColor.blackColor;
//            }else{
//                mView.backgroundColor = UIColor.blueColor;
//            }
//            mView.text = [NSString stringWithFormat:@"xss=%d", i];
            if(i == 0){
                firstWebView = mWebView;
            }
            [self.mWebViewArry addObject:mWebView];
            [self.mScrollView addSubview:mWebView];
        }
        
//        if(firstWebView){
//            [firstWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:self.expoModelArry[0].contentUrl]]];
//        }
        ExpoModel *em = self.expoModelArry[self.currentIndex];
        [self updateUI:em];
    }
   
}

#pragma mark - UIScrollViewDelegate
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView {
    SDK_LOG(@"scrollViewWillBeginDragging");
}
- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate {
    SDK_LOG(@"scrollViewDidEndDragging");
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    SDK_LOG(@"scrollViewDidEndDecelerating");
    
    if(scrollView == self.mScrollView){

        self.currentIndex = self.mScrollView.contentOffset.x/VIEW_CONTENT_WIDTH; //计算当前的页码
        SDK_LOG(@"currentIndex=%d", self.currentIndex);
        SDK_LOG(@"self.pageControl.currentPage=%d", self.pageControl.currentPage);
        if(self.pageControl.currentPage == self.currentIndex){//一直在当前页
            return;
        }
        
        self.pageControl.currentPage = self.currentIndex;

//        [self.mScrollView setContentOffset:CGPointMake(340 * (self.pageControl.currentPage),               self.mScrollView.contentOffset.y) animated:YES]; //设置scrollview的显示为当前滑动到的页面
        
        [self.mScrollView setContentOffset:CGPointMake(self.currentIndex*VIEW_CONTENT_WIDTH, self.mScrollView.contentOffset.y)
                                 animated:YES];
        
        ExpoModel *em = self.expoModelArry[self.currentIndex];
        [self updateUI:em];
        
    }
    
}
- (void)scrollViewDidEndScrollingAnimation:(UIScrollView *)scrollView {
    SDK_LOG(@"scrollViewDidEndScrollingAnimation");
}


- (void)updateUI:(ExpoModel *)em {
    
    self.titleLabel.text = em.title;
    [self.titleBgIV sd_setImageWithURL:[NSURL URLWithString:em.titleImgUrl] placeholderImage:GetImage(@"activity_img_title")];
    
    [self.backIV sd_setImageWithURL:[NSURL URLWithString:em.backImgUrl] placeholderImage:GetImage(@"activity_img_back")];
    [self.closeIV sd_setImageWithURL:[NSURL URLWithString:em.closeImgUrl]  placeholderImage:GetImage(@"activity_img_close")];
    
    if(em.isContentLoad){
        return;
    }
    WKWebView *indexWebView = self.mWebViewArry[self.currentIndex];
    [indexWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:em.contentUrl]]];
    em.isContentLoad = YES;
}


@end
