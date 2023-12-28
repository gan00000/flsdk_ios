

#import "PhoneInfoModel.h"
#import "AlertUtil.h"
#import "SdkHeader.h"

@interface PhoneInfoModel()
@property (nonatomic, strong) NSMutableArray *areaCodesArray_MMMPRO;
@end

@implementation PhoneInfoModel

- (void)setData {
    
    
    [self resetupAreaCodesAndActionSheetWith_MMMethodMMM:[SdkUtil getPhoneAreaInfo_MMMethodMMM]];
    
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

    
    
    
    for (NSDictionary *dict in self.areaCodesArray_MMMPRO)
    {
        [tempArray addObject:[dict objectForKey:wwwww_tag_wwwww_text]];
    }
    
    __block PhoneInfoModel *weakSelf = self;
    
    [AlertUtil showActionSheetWithTitle_MMMethodMMM:wwwww_tag_wwwww_text_select_phone_area_title.localx
                                    message_MMMethodMMM:@""
                              callbackBlock_MMMethodMMM:^(NSInteger btnIndex) {
                                  if (btnIndex > 0 && btnIndex <= weakSelf.areaCodesArray_MMMPRO.count)
                                  {
                                      NSDictionary *dict = [weakSelf.areaCodesArray_MMMPRO objectAtIndex:btnIndex-1];
                                      weakSelf.selectedAreaCodeValue_MMMPRO = [dict objectForKey:wwwww_tag_wwwww_value];
                                      weakSelf.selectedAreaCodeKey_MMMPRO = [dict objectForKey:wwwww_tag_wwwww_key];
                                      weakSelf.selectedRegularExpression_MMMPRO = [dict objectForKey:wwwww_tag_wwwww_pattern];
                                      if ([weakSelf.phoneDelegate_MMMPRO respondsToSelector:@selector(showSelectedAreaCodeValue_MMMethodMMM:)])
                                      {
                                          [weakSelf.phoneDelegate_MMMPRO showSelectedAreaCodeValue_MMMethodMMM:weakSelf.selectedAreaCodeValue_MMMPRO];
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
    if (newAreaCodesArray.count >0 && [self.areaCodesArray_MMMPRO isKindOfClass:[NSMutableArray class]]) {
        [self.areaCodesArray_MMMPRO removeAllObjects];
        [self.areaCodesArray_MMMPRO addObjectsFromArray:newAreaCodesArray];
        
        self.selectedAreaCodeKey_MMMPRO = _areaCodesArray_MMMPRO[0][wwwww_tag_wwwww_key];
        self.selectedAreaCodeValue_MMMPRO = _areaCodesArray_MMMPRO[0][wwwww_tag_wwwww_value];
        self.selectedRegularExpression_MMMPRO = _areaCodesArray_MMMPRO[0][wwwww_tag_wwwww_pattern];
    }
}

#pragma mark - Getter&Setter
- (NSMutableArray *)areaCodesArray_MMMPRO
{
    if (!_areaCodesArray_MMMPRO) {
        _areaCodesArray_MMMPRO = [NSMutableArray array];
    }
    return _areaCodesArray_MMMPRO;
}

- (NSString *)selectedAreaCodeKey_MMMPRO
{
    if (!_selectedAreaCodeKey_MMMPRO) {
        if(self.areaCodesArray_MMMPRO.count > 0){
            self.selectedAreaCodeKey_MMMPRO = [_areaCodesArray_MMMPRO[0] objectForKey:wwwww_tag_wwwww_key];
        }
    }
    return _selectedAreaCodeKey_MMMPRO;
}

- (NSString *)selectedAreaCodeValue_MMMPRO
{
    if (!_selectedAreaCodeValue_MMMPRO) {
        if(self.areaCodesArray_MMMPRO.count > 0){
            self.selectedAreaCodeValue_MMMPRO = [_areaCodesArray_MMMPRO[0] objectForKey:wwwww_tag_wwwww_value];
        }
    }
    return _selectedAreaCodeValue_MMMPRO;
}

@end
