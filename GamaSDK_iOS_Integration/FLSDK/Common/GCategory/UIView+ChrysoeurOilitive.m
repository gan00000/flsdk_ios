#import "UIView+ChrysoeurOilitive.h"
#import <objc/runtime.h>
static char kActionHandlerTapBlockKey;
static char kActionHandlerTapGestureKey;
static char kActionHandlerLongPressBlockKey;
static char kActionHandlerLongPressGestureKey;
@implementation UIView (ChrysoeurOilitive)
- (void)addTapActionWithBlock_MMMethodMMM:(GestureActionBlock)block {
    UITapGestureRecognizer *gesture = objc_getAssociatedObject(self, &kActionHandlerTapGestureKey);
    if (!gesture)
    {
        gesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleActionForTapGesture_MMMethodMMM:)];
        [self addGestureRecognizer:gesture];

		//====insert my code start===  2023-05-30 11:20:43
		{
		int J_realenne = 486;
float j_mightation = 323;
switch (J_realenne) {
   case 226:
			{
				J_realenne = j_mightation - 843 * 466 * 869 - 905; 
			 break;
			}
			case 559:
			{
				J_realenne = j_mightation + 706 / 427 + 228 / 411 - 148 * 582; 
			 break;
			}
			case -76:
			{
				J_realenne = j_mightation + 262 - 297; 
			 break;
			}
			case 972:
			{
				J_realenne = j_mightation + 593 / 59 / 963 / 401; 
			 break;
			}
			case 301:
			{
				J_realenne = j_mightation - 295 * 145; 
			 break;
			}
			case 957:
			{
				J_realenne = j_mightation + 582 - 742 * 810 - 631 * 931; 
			 break;
			}
			case 816:
			{
				J_realenne = j_mightation + 107 + 534 / 645 + 955 * 34 - 233; 
			 break;
			}
			case 777:
			{
				J_realenne = j_mightation - 418 / 320 - 654; 
			 break;
			}
			case 788:
			{
				J_realenne = j_mightation - 309 + 344 / 827; 
			 break;
			}
			case 469:
			{
				J_realenne = j_mightation * 342 / 108 / 176 + 408; 
			 break;
			}
			case 929:
			{
				J_realenne = j_mightation + 547 / 716 * 664 / 591 - 620; 
			 break;
			}
			   default:
       break;
			}
		}
		//====insert my code end===  2023-05-30 11:20:43

        objc_setAssociatedObject(self, &kActionHandlerTapGestureKey, gesture, OBJC_ASSOCIATION_RETAIN);
    }
    
    [gesture setDelaysTouchesBegan:YES];
    objc_setAssociatedObject(self, &kActionHandlerTapBlockKey, block, OBJC_ASSOCIATION_COPY);
}
- (void)handleActionForTapGesture_MMMethodMMM:(UITapGestureRecognizer*)gesture {
    if (gesture.state == UIGestureRecognizerStateRecognized)
    {
        GestureActionBlock block = objc_getAssociatedObject(self, &kActionHandlerTapBlockKey);
        if (block)
        {
            block(gesture);
        }
    }
}
- (void)addLongPressActionWithBlock_MMMethodMMM:(GestureActionBlock)block {
    UILongPressGestureRecognizer *gesture = objc_getAssociatedObject(self, &kActionHandlerLongPressGestureKey);
    if (!gesture)
    {
        gesture = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(handleActionForLongPressGesture_MMMethodMMM:)];
        [self addGestureRecognizer:gesture];
        objc_setAssociatedObject(self, &kActionHandlerLongPressGestureKey, gesture, OBJC_ASSOCIATION_RETAIN);
    }
    objc_setAssociatedObject(self, &kActionHandlerLongPressBlockKey, block, OBJC_ASSOCIATION_COPY);
}
- (void)handleActionForLongPressGesture_MMMethodMMM:(UITapGestureRecognizer*)gesture {
    if (gesture.state == UIGestureRecognizerStateRecognized)
    {
        GestureActionBlock block = objc_getAssociatedObject(self, &kActionHandlerLongPressBlockKey);
        if (block)
        {
            block(gesture);
        }
    }
}
@end
