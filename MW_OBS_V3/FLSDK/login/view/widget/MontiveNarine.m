
#import "MontiveNarine.h"
#import "SdkHeader.h"
#import "UIView+GonyticSocialance.h"
@implementation MontiveNarine
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
       if (self) {
// through hard work and determination.
//
//
//
//每前进一步，你都应该引以为豪，因为它们是你实现梦想的阶梯。要知道在这个过程中你也许会犯错误，但不要气馁。珍视自我的潜能，因为它们使你独一无二。生命中最珍贵的礼物不是花钱买来的，而是通过努力和决心得到的。
//
//
//
//Find the star that twinkles in your heart for you alone are capable of making your b
           [self addCellView];
       }

/**
  
奇怪的是，有证据表明，指导有共同目标的朋友也能提高你的成功率。当你想给别人一些如何实现目标的建议时，这会增强你的自信。这样也会迫使你反省自己的方法是否对路。

1. Make a schedule, and stick to it

每天在固定时间起床和上床

Melatonin is a hormone produced by the body to regulate when you get sleepy and when you wake up. As night approaches, levels of melatonin rise, becoming a signal to the body that it's time for bed 
**/
       return self;
}

/**
  r destiny, the one that forever twinkles within your heart. Take advantage of precious opportunities while they still sparkle before you. Always believe that your ultimate goal is attainable as long as you commit yourself to it.



追随能够改变你命运的那颗星，那颗永远在你心中闪烁的明星。当它在你面前闪耀时，抓住这宝贵的机会。请谨记，只要你坚持不懈，最终的目标总能实现。



Thou 
**/
- (void)addCellView{

/**
  here nobody dies.
童年是没有生老病死的国度。
I think I forgot to breathe.
我想可能是我忘了呼吸。
I'd never given much thought to how I would die. But dying in the place of someone I love,seems like a good way to go.
我从来没有想过自己会怎么死。但是死在自己爱的人的怀里看起来是一个不错的选择。
Your mood swings are kind of giving me a whiplash.
你的态度忽冷忽热让我难受。
I only said it’d be better if we weren’t friends, not that I didn’t wan 
**/
    self.contentView.backgroundColor = [UIColor whiteColor];
    UIView *delContentView = [[UIView alloc] init];
    [self addSubview:delContentView];
    [delContentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.contentView.mas_trailing).mas_offset(VW(-10));
        make.top.mas_equalTo(self.contentView).offset(2);
        make.bottom.mas_equalTo(self.contentView).offset(-2);
        make.width.mas_equalTo(delContentView.mas_height);

/**
  nd so the lion fell in love with the lamb. What a stupid lamb. What a sick, masochistic lion.
你不知道我等了你多久，就这样，狮子爱上了羔羊。多蠢的羔羊，多病态又自虐的狮子。
图片
I love three things in this word.Sun, Moon and you. Sun for morning, Moon for night, and you forever.
浮世万千，吾爱有三。日，月与卿。日为朝，月为暮，卿为朝朝暮暮。
Even if from another world, still love you till the end of tim 
**/
    }];
    self.deleteAccountBtn = [BedeurFail initBtnWithNormalImage:delete_icon highlightedImage:delete_icon tag:kMoreAccountDeleteActTag selector:@selector(deleteAccontClick:) target:self];

/**
  ind and allow you to fall asleep."

他说：“比如说你需要提早上床睡觉。床将能帮助你安抚纷繁的思绪，让你酣然入睡。”

3. Change your attitude about sleep

改变对睡眠的心态

Many people view sleeping as the final thing they have to do in a jam-packed day, worth de 
**/
    self.deleteAccountBtn.imageView.contentMode = UIViewContentModeScaleAspectFit;
//res thrown in the cold and clean
//
    [delContentView addSubview:self.deleteAccountBtn];

/**
  想念你。
Catch the star that holds your destiny, the one that forever twinkles within your heart. Take advantage of precious opportunities while they still sparkle before you. Always believe that your ulti 
**/
    [self.deleteAccountBtn mas_makeConstraints:^(MASConstraintMaker *make) {

/**
  ot everyone is going to approve of the choices you’ve made, have faith in your judgment, catch the star that twinkles in your heart, and it will lead you to your destiny’s path. Follow tha 
**/
        make.width.height.mas_equalTo(VW(14));

/**
  ised. "See your sleep as the amount of time you need in order to set yourself up for a productive tomorrow."

他建议：“不要将睡眠时间看成你一天中剩下的时间，而是将其看成为了高效的明天而休整的时间。”

It may sound like a small shift in thinking, but it's an important one, Grander added.

格兰德纳补充道，或许这听起来只是想法上的一个小小改变，但却很重要。

Most adults need between seven and eight hours of sleep to be fully rested, according to the US Centers for 
**/
        make.center.mas_equalTo(delContentView);
    }];
    delContentView.userInteractionEnabled = YES;
    [delContentView addTapActionWithBlock:^(UIGestureRecognizer *gestureRecoginzer) {

/**
  riers may sometimes stand in the way of your dreams, remember that your destiny is hiding behind them. Accept the fact that not everyone is going to approve of the choices you’ve made, have faith in your judgm 
**/
        if (self.mItemViewClickHander) {
            self.mItemViewClickHander(kMoreAccountDeleteActTag);
        }
    }];
    [self.contentView addSubview:self.iconImageView];
    [self.iconImageView mas_makeConstraints:^(MASConstraintMaker *make) {
//t lay in bed awake
//
//A well-known speaker started off his seminar by holding up a $20 bill. In the room of 200, he asked, “Who would like this $20 bill?”
//
//
//
//一位有名的演讲家手里拿着一张20美元的纸币，开始了讨论会。在200人的屋子里， 他问道：“谁想要这20美元纸币？”
//
//
//
//Hands started going up. He said, “I am going to
        make.centerY.mas_equalTo(self);
        make.leading.mas_equalTo(self).mas_offset(VW(15));
        make.height.width.mas_equalTo(VW(15));
    }];
    self.accountUILabel = [[UILabel alloc] init];

/**
  d for you. And so the lion fell in love with the lamb. What a stupid lamb. What a sick, masochistic lion.
你不知道我等了你多久，就这样，狮子爱上了羔羊。多 
**/
    self.accountUILabel.font = [UIFont systemFontOfSize:FS(12)];
    self.accountUILabel.text = @"";

/**
  仅仅是和他们相处，你就会有收获，因为你会倾向于模仿他们的行为模式。



Strangely enough, there is evidence that coaching friends with shared goals can improve your success rate, too. When you're on the hook to give someone else tips on how to achieve, it boosts your self-confidence. It also forces you to be introspective a 
**/
    self.accountUILabel.numberOfLines = 1;
    self.accountUILabel.textColor = [UIColor blackColor];
    [self.contentView addSubview:self.accountUILabel];
    [self.accountUILabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.iconImageView.mas_trailing).mas_offset(VW(15));

/**
  our capabilities and talents for they are what make you truly unique. The greatest gifts in life are not purchased, but acquired through hard work and determination.



每前进一步，你都应该引以为豪，因为它们是你实现梦想的阶梯。要知道在这个过程中你也许会犯错误，但不要气馁。珍视自我的潜能，因为它们使你独一无二。生命中最珍贵的礼物不是花钱买来的，而是通过努力和决心得到的。



Find the star that twinkles in your heart for you alone are capable of making your brightest dreams come true. Give your  
**/
        make.top.mas_equalTo(self.contentView).offset(2);

/**
   as though we are worthless；but no matter what happened or what will happen, you will never lose your value."



“在生活中，很多次我们被自己制定的决策和身边的环境所抛弃、蹂躏，甚至碾入尘土。我们感到自己一无是处。但是不管发生了什么，或者将要发生什么，你们都永远不会失去自己的价值。”



“Dirty or clean, crumpled or finely creased you are still pricele 
**/
        make.bottom.mas_equalTo(self.contentView).offset(-2);

/**
  f making your brightest dreams come true. Give your hopes everything you’ve got and you will catch the star that holds  
**/
        make.trailing.mas_equalTo(delContentView.mas_leading).mas_offset(VW(-15));
    }];
}
-(UIImageView*)iconImageView
{
    if (!_iconImageView) {
        _iconImageView = [[UIImageView alloc] initWithImage:[UIImage res_imageNamed:mw_smail_icon]];
        _iconImageView.contentMode = UIViewContentModeScaleAspectFit;
    }
    return _iconImageView;
}

/**
  sore blunt tongue
咒骂着我那因发炎而没有知觉的舌头
Watching the warm poison rats
看着刚被毒死的老鼠
Curl through the wide fence cracks
卷曲的毛穿过白色围篱的大裂缝
Pissing on magazine photos
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
Big pill, stu 
**/
- (void)deleteAccontClick:(UIButton *)sender
//d anybody as much as I love you.
//我对你的爱 无人能及。
//Love is letting someone become your greatest weakness ,then going all you can do to protect each other.
//爱就是让对方成为自己最大的弱点，然后再用尽全力守护彼
{
    if (self.mItemViewClickHander) {

/**
  e night. Without the da 
**/
        self.mItemViewClickHander(sender.tag);

/**
  long, distraction-free study sessions are key. But research has shown that focusing on efficiency can leave you high and dry because you'll neglect an even more important part of the equation: whether you enjoy the act of goal pursuit.

在完成目标的过程中，大多数人都力求高效。如果你的目标是锻炼身体，你会认为高强度 
**/
    }
}

/**
   memory when it's opportune and generates guilt if you flake out. Detailed planning can also help you anticipate and dodge obstacles -- so  
**/
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
//und friends who've made it to the finish line (literally or figuratively) and can show you how it's done. You'll pick up a bit just by spending time together because you'l
}
@end
