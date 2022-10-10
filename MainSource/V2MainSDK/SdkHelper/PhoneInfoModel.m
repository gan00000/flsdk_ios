//
//  GamaPhoneModel.m
//  GamaModule
//
//  Created by wind on 2019/11/14.
//  Copyright © 2019年 james. All rights reserved.
//

#import "PhoneInfoModel.h"
#import "AlertUtil.h"
#import "SdkHeader.h"

@interface PhoneInfoModel()
@property (nonatomic, strong) NSMutableArray *gamaAreaCodesArray;
@end

@implementation PhoneInfoModel

- (void)setData {
    NSArray *serverInfo = [SdkUtil fetchPhoneAreaInfo_MMMethodMMM];
    if (serverInfo) {
        [self resetupAreaCodesAndActionSheetWith_MMMethodMMM:serverInfo];
    }else{
        [self resetupAreaCodesAndActionSheetWith_MMMethodMMM:SDKRES.areaInfoArray];
    }
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

//    [self.gamaAreaCodesArray removeAllObjects];
//    [self.gamaAreaCodesArray addObjectsFromArray:[GamaPhoneModel fetchPhoneNumber]];
//    [self resetupAreaCodesAndActionSheetWith_MMMethodMMM:[PhoneInfoModel fetchPhoneNumber]];
    
    //将sheet设置为默认的港台区号
//    [self resetupAreaCodesAndActionSheetWith_MMMethodMMM:SDKRES.areaInfoArray];
    
    for (NSDictionary *dict in self.gamaAreaCodesArray)
    {
        [tempArray addObject:[dict objectForKey:@"text"]];
    }
    
    __block PhoneInfoModel *weakSelf = self;
    
    [AlertUtil showActionSheetWithTitle_MMMethodMMM:@"text_select_phone_area_title".localx
                                    message_MMMethodMMM:@""
                              callbackBlock_MMMethodMMM:^(NSInteger btnIndex) {
                                  if (btnIndex > 0 && btnIndex <= weakSelf.gamaAreaCodesArray.count)
                                  {
                                      NSDictionary *dict = [weakSelf.gamaAreaCodesArray objectAtIndex:btnIndex-1];//因0為cancel
                                      weakSelf.selectedAreaCodeValue = [dict objectForKey:@"value"];
                                      weakSelf.selectedAreaCodeKey = [dict objectForKey:@"key"];
                                      weakSelf.selectedRegularExpression = [dict objectForKey:@"pattern"];
                                      if ([weakSelf.delegate respondsToSelector:@selector(showSelectedAreaCodeValue_MMMethodMMM:)])// 保险
                                      {
                                          [weakSelf.delegate showSelectedAreaCodeValue_MMMethodMMM:weakSelf.selectedAreaCodeValue];
                                      }
                                  }
                              }
                     destructiveButtonTitle_MMMethodMMM:nil
                          cancelButtonTitle_MMMethodMMM:@"text_cancel".localx
                          otherButtonTitles_MMMethodMMM:[NSArray arrayWithArray:tempArray]
                                 sourceView_MMMethodMMM:view
                             arrowDirection_MMMethodMMM:UIPopoverArrowDirectionLeft];
}

//有两个地方调用这个方法，一个是一开始只有两个默认地区，另一个是经过访问服务器后得到的地区区号
- (void)resetupAreaCodesAndActionSheetWith_MMMethodMMM:(NSArray *)newAreaCodesArray

{
    if (newAreaCodesArray.count >0 && [self.gamaAreaCodesArray isKindOfClass:[NSMutableArray class]]) {
        [self.gamaAreaCodesArray removeAllObjects];
        [self.gamaAreaCodesArray addObjectsFromArray:newAreaCodesArray];
        
        self.selectedAreaCodeKey = _gamaAreaCodesArray[0][@"key"];
        self.selectedAreaCodeValue = _gamaAreaCodesArray[0][@"value"];
        self.selectedRegularExpression = _gamaAreaCodesArray[0][@"pattern"];
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
        if(self.gamaAreaCodesArray.count > 0) self.selectedAreaCodeKey = [_gamaAreaCodesArray[0] objectForKey:@"key"];
    }
    return _selectedAreaCodeKey;
}

- (NSString *)selectedAreaCodeValue
{
    if (!_selectedAreaCodeValue) {
        if(self.gamaAreaCodesArray.count > 0) self.selectedAreaCodeValue = [_gamaAreaCodesArray[0] objectForKey:@"value"];
    }
    return _selectedAreaCodeValue;
}

@end
