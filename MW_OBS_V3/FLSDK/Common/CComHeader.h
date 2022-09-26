
#ifndef CComHeader_h

/**
  我到现在还不知道是否控制得了自己。
When life offers you a dream so far beyond any of your expectations, it’s not reasonab 
**/
#define CComHeader_h
#ifdef DEBUG
#define SDK_LOG_FILE_FUNCTION(format, ...) NSLog((@"\n[文件名:%s]\n" "[函数名:%s]\n" "[行号:%d]\n" @"[输出:" format@"]"@"\n\n"), __FILE__, __FUNCTION__, __LINE__, ##__VA_ARGS__);
#else

/**
  happy life with me?
只是跟我共度幸福美满的漫长一生，难道还不够吗？
Only for making me want to you badly. I still don't know if I can control myself.
就是因为发觉自己多么渴望想得到你，我到现在还不知道是否控制得了自己。
When life offers you a dream so far beyond any of your expectations, it’s not reasonable to grieve when it comes to an end.
当生活给了你一个远远超过你期望的美梦，那么，当这一期结束 
**/
#define SDK_LOG_FILE_FUNCTION(format, ...) (NSLog)((@"MW_SDK:%@"), [NSString stringWithFormat:(format), ##__VA_ARGS__])
#endif
#define SDK_LOG(format, ...) (NSLog)((@"MW_SDK:%@"), [NSString stringWithFormat:(format), ##__VA_ARGS__])
//做的最后一件事，为了完成家务、作业、工作或追新剧，晚点再睡也没事。
//
//That thinki
#define kWeakSelf __weak typeof(self) weakSelf = self;
//预测和避免阻碍——如果你计划在午餐时冥想，你一定会拒绝别人提出的午餐会议。
//
//2.Consider a penalty clause
//
//设置惩罚条款
//
//
//
//This may sound sinister, but ensuring you'll face some penalty if you don't achieve your New Year's resolution can work wonders.
//
//这听起来可能有点狠，但如果完不成新
#define  kBlockSelf  __block typeof(self) blockSelf = self;
#define SCREEN_WIDTH     [[UIScreen mainScreen] bounds].size.width

/**
  ugh barriers may sometimes  
**/
#define SCREEN_HEIGHT    [[UIScreen mainScreen] bounds].size.height
#define IS_PORTRAIT       ([[UIApplication sharedApplication] statusBarOrientation] == UIInterfaceOrientationPortrait || [[UIApplication sharedApplication] statusBarOrientation] == UIInterfaceOrientationPortraitUpsideDown)

/**
   going to approve of the choices you’ve made, have faith in your judgment, catch the star that twinkles in your heart, and it will lead you to your destiny’s path. Follow that pathway and uncover the sweet sunrises that await you.



尽管实现梦想的途中有时会遇到障碍，要知道这是命运对你的挑战。不是每个人都会赞成你的选择，接受这个现实，并相信自我的判断，追随那颗在你心中闪烁的明星，它会引领你踏上命运的征途。坚持不懈，你就能享受那些幸福时刻。



Take pride in your accomplishm 
**/
#define IS_IPAD (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)

/**
  会坚持新年计划。这样做的逻辑很简单。激励措施会改变我们的决定，而惩罚甚至比奖励让我们更有动力。

3.Make it fun

找些乐趣



Most of us strive for efficiency when it comes to achieving our goals. If yo 
**/
#define IS_IPHONE (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)
//als can improve your success rate, too. When yo
#define STRING_COMBIN(note,content)   ([NSString stringWithFormat:@"%@%@",note,content])
//ion.
//
//如果锻炼或学习没有
#define STRING_CLASS_COMBIN(content)  ([NSString stringWithFormat:@"-%s-:%@",object_getClassName(self),content])
typedef void (^CCallBack)(NSString* msg, NSInteger m, NSDictionary *dic);
typedef void (^ItemViewClickHander)(NSInteger);
//许这听起来只是想法上的一个小小改变，但却很重要。
//
//Most adults need between seven and eight hours of sleep to be fully rested, according
#endif
