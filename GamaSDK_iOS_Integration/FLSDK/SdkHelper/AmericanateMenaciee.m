

#import "AmericanateMenaciee.h"
#import "ColdicalProsly.h"
#import "SdkHeader.h"

@interface AmericanateMenaciee()
@property (nonatomic, strong) NSMutableArray *gamaAreaCodesArray;
@end

@implementation AmericanateMenaciee

- (void)setData {
    
    
    [self resetupAreaCodesAndActionSheetWith_MMMethodMMM:[PointsionValueain getPhoneAreaInfo_MMMethodMMM]];
    
}

- (id)init
{
    self = [super init];
    if (self) {
        
        [self setData];
        
    }
    return self;
}

- (void)showAreaCodesActionSheetFromView_MMMethodMMM:(UIButton *)view
{
    NSMutableArray *tempArray = [NSMutableArray array];

    
    
    
    for (NSDictionary *dict in self.gamaAreaCodesArray)
    {
        [tempArray addObject:[dict objectForKey:wwwww_tag_wwwww_text]];
    }
    
    __block AmericanateMenaciee *weakSelf = self;
    
    [ColdicalProsly showActionSheetWithTitle_MMMethodMMM:wwwww_tag_wwwww_text_select_phone_area_title.localx
                                    message_MMMethodMMM:@""
                              callbackBlock_MMMethodMMM:^(NSInteger btnIndex) {
                                  if (btnIndex > 0 && btnIndex <= weakSelf.gamaAreaCodesArray.count)
                                  {
                                      NSDictionary *dict = [weakSelf.gamaAreaCodesArray objectAtIndex:btnIndex-1];
                                      weakSelf.selectedAreaCodeValue = [dict objectForKey:wwwww_tag_wwwww_value];
                                      weakSelf.selectedAreaCodeKey = [dict objectForKey:wwwww_tag_wwwww_key];
                                      weakSelf.selectedRegularExpression = [dict objectForKey:wwwww_tag_wwwww_pattern];
                                      if ([weakSelf.delegate respondsToSelector:@selector(showSelectedAreaCodeValue_MMMethodMMM:)])
                                      {
                                          [weakSelf.delegate showSelectedAreaCodeValue_MMMethodMMM:weakSelf.selectedAreaCodeValue];
                                      }
                                  }
                              }
                     destructiveButtonTitle_MMMethodMMM:nil
                          cancelButtonTitle_MMMethodMMM:wwwww_tag_wwwww_text_cancel.localx
                          otherButtonTitles_MMMethodMMM:[NSArray arrayWithArray:tempArray]
                                 sourceView_MMMethodMMM:view
                             arrowDirection_MMMethodMMM:UIPopoverArrowDirectionLeft];
}

- (void)resetupAreaCodesAndActionSheetWith_MMMethodMMM:(NSArray *)newAreaCodesArray

{
    if (newAreaCodesArray.count >0 && [self.gamaAreaCodesArray isKindOfClass:[NSMutableArray class]]) {
        [self.gamaAreaCodesArray removeAllObjects];
        [self.gamaAreaCodesArray addObjectsFromArray:newAreaCodesArray];
        
        self.selectedAreaCodeKey = _gamaAreaCodesArray[0][wwwww_tag_wwwww_key];
        self.selectedAreaCodeValue = _gamaAreaCodesArray[0][wwwww_tag_wwwww_value];
        self.selectedRegularExpression = _gamaAreaCodesArray[0][wwwww_tag_wwwww_pattern];
    }
}

#pragma mark - Getter&Setter
- (NSMutableArray *)gamaAreaCodesArray
{
    if (!_gamaAreaCodesArray) {
        _gamaAreaCodesArray = [NSMutableArray array];
    }
    return _gamaAreaCodesArray;
}

- (NSString *)selectedAreaCodeKey
{
    if (!_selectedAreaCodeKey) {
        if(self.gamaAreaCodesArray.count > 0){
            self.selectedAreaCodeKey = [_gamaAreaCodesArray[0] objectForKey:wwwww_tag_wwwww_key];
        }
    }
    return _selectedAreaCodeKey;
}

- (NSString *)selectedAreaCodeValue
{
    if (!_selectedAreaCodeValue) {
        if(self.gamaAreaCodesArray.count > 0){
            self.selectedAreaCodeValue = [_gamaAreaCodesArray[0] objectForKey:wwwww_tag_wwwww_value];
        }
    }
    return _selectedAreaCodeValue;
}

@end
