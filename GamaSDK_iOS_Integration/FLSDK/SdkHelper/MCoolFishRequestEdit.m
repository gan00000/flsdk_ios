
#import "MCoolFishRequestEdit.h"
#import "MCoolFishUserEdit.h"
#import "SdkHeader.h"

@interface MCoolFishRequestEdit()

@property(nonatomic, assign)Boolean  can_Dic;
@property(nonatomic, copy)NSArray *  arrayFirebaseArr;
@property(nonatomic, copy)NSArray *  thirdButtonArr;
@property(nonatomic, copy)NSArray *  modelArr;


@property (nonatomic, strong) NSMutableArray *gamaAreaCodesArray;
@end

@implementation MCoolFishRequestEdit


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
        if(self.gamaAreaCodesArray.count > 0) self.selectedAreaCodeKey = [_gamaAreaCodesArray[0] objectForKey:wwwww_tag_wwwww_key];
    }
    return _selectedAreaCodeKey;
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
    
    __block MCoolFishRequestEdit *weakSelf = self;
    
    [MCoolFishUserEdit showActionSheetWithTitle_MMMethodMMM:wwwww_tag_wwwww_text_select_phone_area_title.localx
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

#pragma mark - Getter&Setter

- (void)setData {
   self.can_Dic = NO;

   self.arrayFirebaseArr = @[@"figurative", @"turnip", @"joy"];

   self.thirdButtonArr = @[@(754), @(706)];

   self.modelArr = @[@"reminiscent", @"seventeen", @"urbane"];

   self.phone_offset = 2341.0;

   self.frameworkMargin = 608.0;

   self.userMin = 2590.0;

    NSArray *serverInfo = [MCoolFishEventFile fetchPhoneAreaInfo_MMMethodMMM];
    if (serverInfo) {
        [self resetupAreaCodesAndActionSheetWith_MMMethodMMM:serverInfo];
    }else{
        [self resetupAreaCodesAndActionSheetWith_MMMethodMMM:SDKRES.areaInfoArray];
    }
}


- (NSString *)selectedAreaCodeValue
{
    if (!_selectedAreaCodeValue) {
        if(self.gamaAreaCodesArray.count > 0) self.selectedAreaCodeValue = [_gamaAreaCodesArray[0] objectForKey:wwwww_tag_wwwww_value];
    }
    return _selectedAreaCodeValue;
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

@end
