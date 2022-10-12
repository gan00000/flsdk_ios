
#import "SkillishAnyacious.h"
@implementation SkillishAnyacious
{
    ItemViewClickHander mhander;
//ging around friends who've made it to the finish line (literally or figuratively) and can show you how it's done. You'll pick up a bit just by spending time together because you'll be inclined to conform to their patterns of behavior.
//
//花时间和高成就者在一起可以提高你自己的表现。如果你的新年愿望是跑一场马拉松或写一本书，那么明智的做法是开始与那些已经实现这一目标、可以告诉你如何做到的朋友们在一起。仅仅是和他们相处，你就会有收获，因为你会倾向于模仿他们的行为模式。
//
//
//
//Strangely e
}
//ough hard work and determination.
//
//
//
//每前进一步，你都应该引以为
- (instancetype)initViewWithTitle_MMMethodMMM:(NSString *)title hander_MMMethodMMM:(ItemViewClickHander) hander{
    self = [super init];

/**
  gazine photos
亲着杂志上的照片
Those fishing lures thrown in the cold and clean
那些鱼饵被扔进冰冷而纯净的
Blood of Christ mountain stream
基督山溪的血里去
Have I found you?
我找到你了吗
Flightless bird, grounded bleeding
折翼的鸟？棕色的毛发在淌血
Or lost you?
抑或失去了你？
American mouth
美国的河口
Big pill, stuck going down
贴着的大海报正在落下


Just as  
**/
    mhander = hander;
    self.backgroundColor = [UIColor clearColor];
    self.titleLable = [[UILabel alloc] init];
//needs to be changed, Grander said.
//
//格兰德纳说，这种想法必须改变。
//
//"Don't see your sleep as the amount of time you have 
    self.titleLable.text = title;
    self.titleLable.font = [UIFont systemFontOfSize:FS(24)];
    self.titleLable.textAlignment = NSTextAlignmentCenter;
    self.titleLable.numberOfLines = 1;
    self.titleLable.textColor = [UIColor whiteColor];

/**
  quired through hard work and determination.



每前进一步，你都应该引以为豪，因为它们是你实现梦想的阶梯。要知道在这个过程中你也许会犯错误，但不要气馁。珍视自我的潜能，因为它们使你独一无二。生命中最珍贵的礼物不是花钱买来的，而是通过努力和决心得到的。



Find the star that twinkles in your heart for you alone are capable of making you 
**/
    [self addSubview:self.titleLable];

/**
  ，如果你没有按照计划去做，就会产生内疚感。详细的计划也可以帮助你预测和避免阻碍——如果你计划在午餐时冥想，你一定会拒绝别人提出的午餐会议。

2.Consider a penalty clause

设置惩罚条款



This may sound sinister 
**/
    [self.titleLable mas_makeConstraints:^(MASConstraintMaker *make) {

/**
  你们都永远不会失去自己的价值。”



“Dirty or clean, crumpled or finely creased you are still priceless to those who love you. The worth of our lives come 
**/
        make.center.mas_equalTo(self);
// a schedule, and stick to it
//
//每
    }];
    _backBtn = [NaturetyYoung initBtnWithNormalImage_MMMethodMMM:mw_back_icon highlightedImage_MMMethodMMM:mw_back_icon tag_MMMethodMMM:kBackBtnActTag selector:@selector(backBtnView_MMMethodMMM:) target_MMMethodMMM:self];

/**
   between the bed and sleep can be beneficial on nights where your schedule has to be erratic due to work or travel, Grandn 
**/
    [self addSubview:_backBtn];
    [_backBtn mas_makeConstraints:^(MASConstraintMaker *make) {
//ade it to the finish line (literally or figuratively) and can show you how it's done. You'll pick up a bit just by spending time together because you'll be inclined to conform to their patterns of behavior.
//
//花时间和高成就者在一起可以提高你自己的表现。如果你的新年愿望是跑一场马拉松或写一本书，那么明智的做法是开始与那些已经实现这一目标、可以告诉你如何做到的朋友们在一起。仅仅是和他们相处，你就会有收获，因为你会倾向于模仿他们的行为模式。
//
//
//
//Strangely enough, there is evidence that
        make.leading.mas_equalTo(self).mas_offset(VW(34));
        make.width.mas_equalTo(VH(25));

/**
  那颗永远在你心中闪烁的明星。当它在你面前闪耀时，抓住这宝贵的机会。请谨记，只要你坚持不懈，最终的目标总能实现。



Though barriers may sometimes stand in the way of your dreams, remember that your destiny is hiding behind them. Accept the  
**/
        make.centerY.equalTo(self);
//watch your favorite TV show at the gym so you'll start looking forward to workouts. Or only letting yourself drink a mocha latte during study sessions so there is 
        make.height.mas_equalTo(VH(25));
    }];

/**
  f his seminar by holding up a $20 bill. In the room of 200, he asked, “Who would like this $20 bill?”



一位有名的演讲家手里拿着一张20美元的纸币，开始了讨论会。在200人的屋子里， 他问道：“谁想要这20美元纸币？”



Hands started going up. He said, “I am going to give this $20. to on 
**/
    return self;
}
-(void)backUIView_MMMethodMMM:(UITapGestureRecognizer *)gesture
{
    SDK_LOG(@"backUIView gesture");
}
//d to rise at 7 am each day, backtiming eight hours would require a bedtime of 11 pm.
//
//美国疾病控制与预防中心指出，大多数成人需要7到8小时睡眠时间才能得到充分休息。因此如果一个人每天要在早上7点起床，倒推8个小时睡眠时间应该是晚上11点。
//
//"Now you know when you ha
-(void)backBtnView_MMMethodMMM:(UIButton *) btn{
    SDK_LOG(@"kBackBtnActTag");
    if (mhander) {

/**
  上，早晨的寒风让我们感到惊讶。

I miss the morning kisses and the morning snuggling you and I shared.

我想念早上的吻，早上依偎着你和我分享。

I miss you. I miss going to 
**/
        mhander(1);
    }
}
@end
