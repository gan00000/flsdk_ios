

#import "ExposureController.h"
#import "UIButton+WebCache.h"
#import "UIImageView+WebCache.h"
#import "Masonry.h"
#import "UIView+BlockGesture.h"
#import "MWWebView.h"

#define VIEW_CONTENT_HEIGHT 360
#define VIEW_CONTENT_WIDTH 340

@interface ExposureController () <UIScrollViewDelegate>

@property (nonatomic, strong) NSMutableArray<MWWebView *> *mWebViewArry;
@property (nonatomic, assign) NSInteger currentIndex;
@end

@implementation ExposureController


- (void)closeBtAction_MMMethodMMM{
    
    for (MWWebView *mMWWebView in self.mWebViewArry) {
        [mMWWebView releaseAll_MMMethodMMM];
    }
    [self dismissViewControllerAnimated:NO completion:^{
        
    }];
}

- (void)dealloc{
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    if (!self.expoModelArry) {
        self.expoModelArry = [NSMutableArray array];
    }
    self.mWebViewArry = [NSMutableArray array];
    self.view.backgroundColor = UIColor.clearColor;
    
    int mSize = self.expoModelArry.count;
    self.currentIndex = 0;
    
    
    [self.backIV setImage:GetImage(@"activity_img_back")];
    [self.closeIV setImage:GetImage(@"activity_img_close")];
    [self.titleBgIV setImage:GetImage(@"activity_img_title")];
    
    self.backIV.userInteractionEnabled = YES;
    self.closeIV.userInteractionEnabled = YES;
    
    [self.backIV addTapActionWithBlock_MMMethodMMM:^(UIGestureRecognizer *gestureRecoginzer) {
        
        MWWebView *indexWebView = self.mWebViewArry[self.currentIndex];
        
        if([indexWebView.wkwebView canGoBack]){
            [indexWebView.wkwebView goBack];
        }
        
    }];
    [self.closeIV addTapActionWithBlock_MMMethodMMM:^(UIGestureRecognizer *gestureRecoginzer) {
        
        [self closeBtAction_MMMethodMMM];
    }];
    
    
    self.pageControl.pageIndicatorTintColor = [UIColor whiteColor]; 
    
    self.pageControl.currentPageIndicatorTintColor = [UIColor colorWithHexString_MMMethodMMM:@"#4BACFD"]; 
    self.pageControl.currentPage = self.currentIndex; 
    self.pageControl.hidesForSinglePage = YES; 

    self.pageControl.numberOfPages = mSize; 
    
    
    self.mScrollView.delegate = self;
    
    if(mSize > 0){
        [self.mScrollView setContentSize:CGSizeMake(mSize * VIEW_CONTENT_WIDTH, VIEW_CONTENT_HEIGHT)];
    
        MWWebView *firstWebView;
        for (int i = 0; i < mSize; i ++) {
            
            MWWebView *mWebView = [[MWWebView alloc] initWithFrame: CGRectMake(i * VIEW_CONTENT_WIDTH, 0, VIEW_CONTENT_WIDTH, VIEW_CONTENT_HEIGHT)];
            if(i == 0){
                firstWebView = mWebView;
            }
            [self.mWebViewArry addObject:mWebView];
            [self.mScrollView addSubview:mWebView];
        }
        
        ExpoModel *em = self.expoModelArry[self.currentIndex];
        [self updateUI_MMMethodMMM:em];
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

        self.currentIndex = self.mScrollView.contentOffset.x/VIEW_CONTENT_WIDTH; 
        SDK_LOG(@"currentIndex=%d", self.currentIndex);
        SDK_LOG(@"self.pageControl.currentPage=%d", self.pageControl.currentPage);
        if(self.pageControl.currentPage == self.currentIndex){
            return;
        }
        
        self.pageControl.currentPage = self.currentIndex;

        
        [self.mScrollView setContentOffset:CGPointMake(self.currentIndex*VIEW_CONTENT_WIDTH, self.mScrollView.contentOffset.y)
                                 animated:YES];
        
        ExpoModel *em = self.expoModelArry[self.currentIndex];
        [self updateUI_MMMethodMMM:em];
        
    }
    
}
- (void)scrollViewDidEndScrollingAnimation:(UIScrollView *)scrollView {
    SDK_LOG(@"scrollViewDidEndScrollingAnimation");
}


- (void)updateUI_MMMethodMMM:(ExpoModel *)em {
    
    self.titleLabel.text = em.title;
    [self.titleBgIV sd_setImageWithURL:[NSURL URLWithString:em.titleImgUrl] placeholderImage:GetImage(@"activity_img_title")];
    
    [self.backIV sd_setImageWithURL:[NSURL URLWithString:em.backImgUrl] placeholderImage:GetImage(@"activity_img_back")];
    [self.closeIV sd_setImageWithURL:[NSURL URLWithString:em.closeImgUrl]  placeholderImage:GetImage(@"activity_img_close")];
    
    if(em.isContentLoad){
        return;
    }
    MWWebView *indexWebView = self.mWebViewArry[self.currentIndex];
    [indexWebView loadRequest_MMMethodMMM:em.contentUrl];
    em.isContentLoad = YES;
}


@end
