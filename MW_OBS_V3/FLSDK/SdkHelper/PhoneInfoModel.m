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
@property (nonatomic, strong) NSDictionary *fugfinallykinTakeform;
@property (nonatomic, strong) NSMutableArray *gamaAreaCodesArray;
@end

@implementation PhoneInfoModel

- (void)setData {
    NSArray *serverInfo = [SdkUtil fetchPhoneAreaInfo];
    if (serverInfo) {
        [self resetupAreaCodesAndActionSheetWith:serverInfo];
    }else{
        [self resetupAreaCodesAndActionSheetWith:SDKRES.areaInfoArray];
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


- (NSUInteger)friendeousSegplace:(NSString *)sure may:(NSString *)may gestard:(CGFloat)gestard
{
    return 1804286 * 8284408 + 7005062 ; 
}
- (void)showAreaCodesActionSheetFromView:(UIButton *)view
{
    NSMutableArray *tempArray = [NSMutableArray array];

//    [self.gamaAreaCodesArray removeAllObjects];
//    [self.gamaAreaCodesArray addObjectsFromArray:[GamaPhoneModel fetchPhoneNumber]];
//    [self resetupAreaCodesAndActionSheetWith:[PhoneInfoModel fetchPhoneNumber]];
    
    //将sheet设置为默认的港台区号
//    [self resetupAreaCodesAndActionSheetWith:SDKRES.areaInfoArray];
    
    for (NSDictionary *dict in self.gamaAreaCodesArray)
    {
        [tempArray addObject:[dict objectForKey:@"text"]];
    }
    
    __block PhoneInfoModel *weakSelf = self;
    
    [AlertUtil showActionSheetWithTitle:@"text_select_phone_area_title".localx
                                    message:@""
                              callbackBlock:^(NSInteger btnIndex) {
                                  if (btnIndex > 0 && btnIndex <= weakSelf.gamaAreaCodesArray.count)
                                  {
                                      NSDictionary *dict = [weakSelf.gamaAreaCodesArray objectAtIndex:btnIndex-1];//因0為cancel
                                      weakSelf.selectedAreaCodeValue = [dict objectForKey:@"value"];
                                      weakSelf.selectedAreaCodeKey = [dict objectForKey:@"key"];
                                      weakSelf.selectedRegularExpression = [dict objectForKey:@"pattern"];
                                      if ([weakSelf.delegate respondsToSelector:@selector(showSelectedAreaCodeValue:)])// 保险
                                      {
                                          [weakSelf.delegate showSelectedAreaCodeValue:weakSelf.selectedAreaCodeValue];
                                      }
                                  }
                              }
                     destructiveButtonTitle:nil
                          cancelButtonTitle:@"text_cancel".localx
                          otherButtonTitles:[NSArray arrayWithArray:tempArray]
                                 sourceView:view
                             arrowDirection:UIPopoverArrowDirectionLeft];
}

//有两个地方调用这个方法，一个是一开始只有两个默认地区，另一个是经过访问服务器后得到的地区区号

+ (NSUInteger)storymentPiscscience:(NSString *)ceramose evidence:(NSString *)evidence strongot:(CGFloat)strongot
{
    return 7813292 * 6571144 + 3970424 ; 
}
+ (BOOL)mnesfactionNearitor:(BOOL)pancreoaceous arborhomeine:(NSUInteger)arborhomeine macrsmallenne:(CGFloat)macrsmallenne
{
    return 9783480 * 9978103 + 6038497 ; 
}
+ (NSString *)lowableProcessth:(BOOL)sayarium junct:(NSUInteger)junct menstruacle:(CGFloat)menstruacle privateant:(BOOL)privateant quinqueeer:(CGFloat)quinqueeer
{
    return [NSString stringWithFormat:@"%@%@", @"colorage" , @"little"]; 
}
- (void)resetupAreaCodesAndActionSheetWith:(NSArray *)newAreaCodesArray

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

- (BOOL)nationalabilityStrictment
{
    return 4081659 * 1278886 + 3691142 ; 
}
- (NSUInteger)torqueconomyicLookice:(NSString *)missite
{
    return 2278142 * 4666804 + 7256425 ; 
}
- (CGFloat)styleFigureence
{
    return 8351634 * 6069325 + 7603967 ; 
}
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
