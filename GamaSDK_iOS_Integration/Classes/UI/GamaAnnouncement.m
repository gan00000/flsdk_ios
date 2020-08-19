//
//  GamaAnnouncement.m
//  GamaSDK_iOS
//
//  Created by coke on 2020/5/20.
//  Copyright © 2020 Gama. All rights reserved.
//
#import "HelloHeader.h"
#import "UIImage+Gradient.h"
#import "GamaUtils.h"
#import "GamaAnnouncement.h"
#import <WebKit/WebKit.h>

#define GAMA_ANNOUNCEMET_BG_TAG 2020052201
#define GAMA_ANNOUNCEMET_BTN_TAG 2020052202

#define GAMA_PROVISIONS_FIRST_ENBLE @"gama_provisions_first_enble"

@interface GamaAnnouncement ()
@property (copy,nonatomic) void (^completer)(void);
@end

@implementation GamaAnnouncement
{
    UIImageView *mainBg;
    
    BOOL orientation;
    CGFloat rate ; // 校对比值
    CGFloat curWidth ;
    CGFloat curHeight ;
    CGFloat oriBgImgWidth ;
    CGFloat oriBgImgHeight ;
    
    CGFloat onCalWidth;
    CGFloat onCalHeight;
    
    CGFloat originBgWidthOfHeight;// 背景图片宽高比

    WKWebView *provisionWebView;
    
    UIButton *leftBtn;
    UIButton *rightBtn;
    BOOL agreenLogin;
    
    BOOL protraitLeftProvision;
    BOOL protraitRightProvision;
    
}
- (instancetype)initWithCompleter:(void (^)(void))completer
{
    if(self = [super init]){
        [self propertyPrapare];
        [self provisionsView];
    }
    self.completer = completer;
    return self;
}

- (void)propertyPrapare
{
    agreenLogin = NO;
    protraitLeftProvision = NO;
    protraitRightProvision = NO;

    orientation = Device_Is_Landscape;
    
    rate = 0.8f; // 校对比值
    curWidth = winWidth;
    curHeight = winHeight;
    oriBgImgWidth = bgOriginWidth;
    oriBgImgHeight = bgOriginHeight;

    CGFloat realWidthHeightRate = curWidth/curHeight;

    originBgWidthOfHeight = oriBgImgHeight/oriBgImgWidth;//1070/1130.0f; // 原图宽高比
    
    if (realWidthHeightRate >= originBgWidthOfHeight) {//若真机宽高比大于原图，则以高度为基准重新计算宽度
        curHeight = curWidth * originBgWidthOfHeight;
    } else { //若真机宽高比小于原图，则以宽度为基准重新计算高度
        curWidth = curHeight / originBgWidthOfHeight;
    }
    onCalWidth = rate * curWidth;
    onCalHeight = rate * curHeight;
    if (device_is_iPhoneX) {
        onCalHeight = rate * curHeight * rate;
        onCalWidth = onCalHeight / originBgWidthOfHeight ;
    }
}


-(void)provisionsView{
    
    //test
//    NSString *requestStr = [NSString stringWithFormat:@"https://static-download2.gamesword.com/sdkConfig/%@/v1.1/sdkConfig.json",@"twsstios"];
    NSString *requestStr = [NSString stringWithFormat:@"https://static-download2.gamesword.com/sdkConfig/%@/v1.1/sdkConfig.json",SDKConReaderGetString(SDK_GAME_CODE)];
    NSURLRequest *reuqest = [NSURLRequest requestWithURL:[NSURL URLWithString:requestStr]];
    [GamaRequestor requestByNSURLRequest:reuqest
                       ComplitionHandler:^(NSURLResponse *response, NSDictionary *resultJsonDic, NSError *jsonParseErr, NSString *resultStr, NSData *resultRawData, NSError *error) {
        if (!error && !jsonParseErr)
       {
           NSArray *tempArray = [NSArray arrayWithObject:resultJsonDic];
           if ([tempArray isKindOfClass:[NSArray class]]) {
               NSDictionary *dic = tempArray[0][0];
               NSString *urlStr= [NSString stringWithFormat:@"%@",dic[@"url"]];
               NSNumber *isOpen = dic[@"isOpen"];
               if (urlStr.length>0 && [isOpen  isEqual: @1]) {
                   provisionWebView = [[WKWebView alloc] init];
                   [provisionWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:urlStr]]];
                   [provisionWebView.scrollView setBounces:YES];
                   [provisionWebView.scrollView setScrollEnabled:YES];
                   [provisionWebView setUserInteractionEnabled:YES];
                   [provisionWebView setTag:GAMA_ANNOUNCEMET_BG_TAG];
                   [self addSubview:provisionWebView];
                   [provisionWebView mas_makeConstraints:^(MASConstraintMaker *make) {
                       make.center.equalTo(self);
                       make.width.equalTo(@(onCalWidth));
                       make.height.equalTo(@(orientation ? onCalHeight : onCalHeight*1.3));
                   }];
                   
                   //btn_annoucement_close
                   CGFloat btnWidth = orientation ? onCalWidth *0.07 :onCalWidth*0.1;
                   UIButton *closeBtn = [GamaUtils initBtnWithNormalImage:@"btn_annoucement_close" highlightedImage:nil tag:GAMA_ANNOUNCEMET_BTN_TAG selector:@selector(existAnnouncement) target:self];
//                   [closeBtn setImage:GetPfImage(@"btn_annoucement_close") forState:0];
                   [self addSubview:closeBtn];
                   [closeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
                       make.centerX.equalTo(provisionWebView.mas_right);
                       make.centerY.equalTo(provisionWebView.mas_top);
                       make.width.equalTo(@(btnWidth));
                       make.height.equalTo(@(btnWidth));
                   }];
               }else{
                   self.completer();
               }
           }
       }else{
           self.completer();
       }
    }];
}

- (void)existAnnouncement{
    self.completer();
    [self removeFromSuperview];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
