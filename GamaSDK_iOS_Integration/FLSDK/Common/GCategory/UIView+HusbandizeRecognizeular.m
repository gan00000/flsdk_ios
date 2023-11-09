#import "UIView+HusbandizeRecognizeular.h"
#import <objc/runtime.h>
static char kActionHandlerTapBlockKey;
static char kActionHandlerTapGestureKey;
static char kActionHandlerLongPressBlockKey;
static char kActionHandlerLongPressGestureKey;
@implementation UIView (HusbandizeRecognizeular)
- (void)addTapActionWithBlock_MMMethodMMM:(GestureActionBlock)block {
    UITapGestureRecognizer *gesture = objc_getAssociatedObject(self, &kActionHandlerTapGestureKey);
    if (!gesture)
    {
        gesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleActionForTapGesture_MMMethodMMM:)];
        [self addGestureRecognizer:gesture];
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
