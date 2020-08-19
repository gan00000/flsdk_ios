//
//  GamaPhoneModel.m
//  GamaModule
//
//  Created by wind on 2019/11/14.
//  Copyright © 2019年 james. All rights reserved.
//

#import "GamaPhoneModel.h"
#import "GamaAlertView.h"
#import "GamaRequestor.h"

#define GAMESWORD_PHONE_AREA_CODE  @"gameswordphoneAreaCode"

@interface GamaPhoneModel()
@property (nonatomic, strong) NSMutableArray *gamaAreaCodesArray;
@end

@implementation GamaPhoneModel
- (id)init
{
    self = [super init];
    if (self) {
        
        NSDictionary *twDic = [NSDictionary dictionaryWithObjectsAndKeys:
                               @"tw",@"key",
                               @"886",@"value",
                               @"台灣 +886",@"text",
                               @"^0{0,1}[6,7,9](?:\\d{7}|\\d{8}|\\d{10})$",@"pattern",
                               nil];
        NSDictionary *hkDic = [NSDictionary dictionaryWithObjectsAndKeys:
                               @"hk",@"key",
                               @"852",@"value",
                               @"香港 +852",@"text",
                               @"^0{0,1}[1,5,6,9](?:\\d{7}|\\d{8}|\\d{12})$",@"pattern",
                               nil];
        
        //将sheet设置为默认的港台区号
        [self resetupAreaCodesAndActionSheetWith:@[twDic,hkDic]];
        
    }
    return self;
}

- (void)gamaShowAreaCodesActionSheetFromView:(UIButton *)view
{
    NSMutableArray *tempArray = [NSMutableArray array];

//    [self.gamaAreaCodesArray removeAllObjects];
//    [self.gamaAreaCodesArray addObjectsFromArray:[GamaPhoneModel fetchPhoneNumber]];
    [self resetupAreaCodesAndActionSheetWith:[GamaPhoneModel fetchPhoneNumber]];
    for (NSDictionary *dict in self.gamaAreaCodesArray)
    {
        [tempArray addObject:[dict objectForKey:@"text"]];
    }
    
    __block GamaPhoneModel *weakSelf = self;
    
    [GamaAlertView showActionSheetWithTitle:@"請選擇移動電話的區號"
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
                          cancelButtonTitle:@"取消"
                          otherButtonTitles:[NSArray arrayWithArray:tempArray]
                                 sourceView:view
                             arrowDirection:UIPopoverArrowDirectionLeft];
}

- (void)resetupAreaCodesAndActionSheetWith:(NSArray *)newAreaCodesArray//有两个地方调用这个方法，一个是一开始只有两个默认地区，另一个是经过访问服务器后得到的地区区号
{
    if (newAreaCodesArray.count >0 && [self.gamaAreaCodesArray isKindOfClass:[NSMutableArray class]]) {
        [self.gamaAreaCodesArray removeAllObjects];
        [self.gamaAreaCodesArray addObjectsFromArray:newAreaCodesArray];
        
        self.selectedAreaCodeKey = _gamaAreaCodesArray[0][@"key"];
        self.selectedAreaCodeValue = _gamaAreaCodesArray[0][@"value"];
        self.selectedRegularExpression = _gamaAreaCodesArray[0][@"pattern"];
    }
}

//访问服务器获得地区号码
+ (void)requestPhoneNumberAreaCodes
{
    NSString *phoneNumberAreaUrl = [NSString stringWithFormat:@"https://static-download2.flyfungame.com/baseconfig/v1/areacodes.json"];
    [GamaRequestor requestByNSURLRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:phoneNumberAreaUrl]]
                       ComplitionHandler:^(NSURLResponse *response, NSDictionary *resultJsonDic, NSError *jsonParseErr, NSString *resultStr, NSData *resultRawData, NSError *error) {
        if (!error &&resultJsonDic.count > 0) {
            NSArray *tempArray = [NSArray arrayWithObject:resultJsonDic];
            if ([tempArray isKindOfClass:[NSArray class]] && [tempArray count] >0) {
    //            [self resetupAreaCodesAndActionSheetWith:tempArray[0]];
                [self savePhoneNumber:tempArray[0]]; //Attempting to load the view of a view controller while it is deallocating is not allowed and may result in undefined behavior (<UIAlertController: 0x7fb5a286b390>)问题在actionsheet那里
                return ;
            }
        }
    }];
}

+ (void)savePhoneNumber:(NSArray *)numberAry
{
    [[NSUserDefaults standardUserDefaults] setObject:numberAry forKey:GAMESWORD_PHONE_AREA_CODE];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

+ (NSArray *)fetchPhoneNumber
{
    NSArray *tempAry = [[NSUserDefaults standardUserDefaults] objectForKey:GAMESWORD_PHONE_AREA_CODE];
    return tempAry;
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
