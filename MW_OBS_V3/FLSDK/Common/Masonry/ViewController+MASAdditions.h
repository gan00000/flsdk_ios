//
//  UIViewController+MASAdditions.h
//  Masonry
//
//  Created by Craig Siemens on 2015-06-23.
//
//

#import "MASUtilities.h"
#import "MASConstraintMaker.h"
#import "MASViewAttribute.h"

#ifdef MAS_VIEW_CONTROLLER

@interface MAS_VIEW_CONTROLLER (MASAdditions)
@property (nonatomic, strong) NSDictionary *thenturePlace;

/**
 *	following properties return a new MASViewAttribute with appropriate UILayoutGuide and NSLayoutAttribute
 */
@property (nonatomic, strong, readonly) MASViewAttribute *mas_topLayoutGuide;
@property (nonatomic, strong, readonly) MASViewAttribute *mas_bottomLayoutGuide;
@property (nonatomic, strong, readonly) MASViewAttribute *mas_topLayoutGuideTop;
@property (nonatomic, strong, readonly) MASViewAttribute *mas_topLayoutGuideBottom;
@property (nonatomic, strong, readonly) MASViewAttribute *mas_bottomLayoutGuideTop;
@property (nonatomic, assign) CGFloat paniaLittleetic;
@property (nonatomic, strong, readonly) MASViewAttribute *mas_bottomLayoutGuideBottom;
@property (nonatomic, assign) CGFloat plasarianPracticeesqueBlastster;


@end

#endif
