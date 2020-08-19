//
//  EditModeController.m
//  EfunPlistEncrypt
//
//  Created by czf on 27/4/15.
//  Copyright (c) 2015 Efun. All rights reserved.
//

#import "EditModeController.h"

#import "PackagerWindowController.h"

#import "DragableView.h"

NSString *kEditModeEndNotification = @"EditModeEndNotification";

@interface EditModeController ()
@property (weak) IBOutlet DragableView *oldPlistDragView;
@property (weak) IBOutlet DragableView *oldProductDragView;

@property (weak) IBOutlet NSTableView *gameInfoTableView;
@property (weak) IBOutlet NSTableView *adInfoTableView;
@property (weak) IBOutlet NSTableView *productInfoTableView;

@property (strong,atomic) EditModeTableViewCellData *gameInfoCellData;
@property (strong,atomic) EditModeTableViewCellData *adInfoCellData;
@property (strong,atomic) EditModeTableViewCellData *productInfoCellData;

@property (strong,atomic) EditModeTableViewCellData *addtionalCellData;

@property (strong,atomic) NSString *curTableViewGameCode;

@property (atomic)BOOL isUseExisitingConfig;
@end

@implementation EditModeController
@synthesize isUseExisitingConfig;

- (void)setupWithEditModeIsLoadOldGameCodeConfig:(BOOL) isOldGameCodeConfig
                                     andGameCode:(NSString *)gameCode
{
    // must init First
    self.gameInfoCellData = [[EditModeTableViewCellData alloc] initEditModeTableViewWithDic:[InfoData loadInfoListWithTypeName:kGameInfoTypeName andCurGameCode:gameCode]
                                                                                     andArr:[InfoData loadInfoListConfigArrWithTypeName:kGameInfoTypeName]];
    self.adInfoCellData = [[EditModeTableViewCellData alloc] initEditModeTableViewWithDic:[InfoData loadInfoListWithTypeName:kADInfoTypeName andCurGameCode:gameCode]
                                                                                   andArr:[InfoData loadInfoListConfigArrWithTypeName:kADInfoTypeName]];
    self.productInfoCellData = [[EditModeTableViewCellData alloc] initEditModeTableViewWithDic:@{} andArr:@[]];
    
    self.addtionalCellData = [[EditModeTableViewCellData alloc] initEditModeTableViewWithDic:[InfoData loadInfoListWithTypeName:kAddtionalInfo andCurGameCode:gameCode]
                                                                                      andArr:[InfoData loadInfoListConfigArrWithTypeName:kAddtionalInfo]];
    // must init First
    
    self.isUseExisitingConfig = isOldGameCodeConfig;
    
    if (self.isUseExisitingConfig) {
        [self _useExisitingConfigWithGameCode:gameCode];
    }
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
    
    [self _setupDragHandler];
}

#pragma mark -delegate
- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView
{
    if (tableView == _gameInfoTableView)
    {
        return _gameInfoCellData.count;
    }
    else if (tableView == _adInfoTableView)
    {
        return _adInfoCellData.count + _addtionalCellData.count;
    }
    else if (tableView == _productInfoTableView)
    {
        return _productInfoCellData.count;
    }
    
    NSAssert(NO, @"!? what View is it !?");
    return 0;
}

- (NSView *)tableView:(NSTableView *)tableView viewForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row
{
    NSTableCellView *tmpCellView = nil;
    
    NSString *curIdentifier = tableColumn.identifier;
    
    tmpCellView = [tableView makeViewWithIdentifier:curIdentifier owner:self];
    
    NSString *tmpResulStr = nil;
    if ([curIdentifier isEqualToString:@"tableView_Left"])
    {
        if (tableView == _gameInfoTableView) {
            tmpResulStr = [_gameInfoCellData keyAtIndex:row];
        } else if (tableView == _adInfoTableView) {
            NSUInteger tmpAdLength = _adInfoCellData.count;
            tmpResulStr =  (row < tmpAdLength) ? [_adInfoCellData keyAtIndex:row] : [_addtionalCellData keyAtIndex:row - tmpAdLength];
        } else if (tableView == _productInfoTableView) {
            tmpResulStr = [_productInfoCellData keyAtIndex:row];
        }
    }
    else if ([curIdentifier isEqualToString:@"tableView_Right"])
    {
        if (tableView == _gameInfoTableView) {
            tmpResulStr = [_gameInfoCellData objectAtIndex:row];
        } else if (tableView == _adInfoTableView) {
            NSUInteger tmpAdLength = _adInfoCellData.count;
            tmpResulStr =  (row < tmpAdLength) ? [_adInfoCellData objectAtIndex:row] : [_addtionalCellData objectAtIndex:row - tmpAdLength];
        } else if (tableView == _productInfoTableView) {
            tmpResulStr = [_productInfoCellData objectAtIndex:row];
        }
    }
    
    BOOL isChangeColor = NO;
    
    if (tableView != _productInfoTableView) {
        if (row % 2 != 0) {
            isChangeColor = YES;
        } else {
            isChangeColor = NO;
        }
    } else {
        if ((row / kProductInfoNum) % 2 != 0) {
            isChangeColor = YES;
        } else {
            isChangeColor = NO;
        }
    }
    
    if (row >= _adInfoCellData.count && tableView == _adInfoTableView) {
        if (isChangeColor) {
            tmpCellView.textField.backgroundColor = [NSColor colorWithCalibratedRed:100.0f/255.0f green:214.0f/255.0f blue:219.0f/255.0f alpha:1.0f];
        } else {
            tmpCellView.textField.backgroundColor = [NSColor colorWithCalibratedRed:180.0f/255.0f green:144.0f/255.0f blue:239.0f/255.0f alpha:1.0f];
        }
    } else {
        if (isChangeColor) {
            tmpCellView.textField.backgroundColor = [NSColor colorWithCalibratedRed:200.0f/255.0f green:224.0f/255.0f blue:229.0f/255.0f alpha:1.0f];
        } else {
            tmpCellView.textField.backgroundColor = [NSColor whiteColor];
        }
    }
    
    tmpResulStr = [tmpResulStr stringByReplacingOccurrencesOfString:@"_`_" withString:@" "];
    
    tmpCellView.textField.stringValue = tmpResulStr;
    
    NSAssert(tmpCellView != nil, @"WTF!? A NO Identifier TableColumn?!");
    return tmpCellView;
}

- (void)controlTextDidChange:(NSNotification *)obj
{
    NSControl *tmpControl = obj.object;
    NSText *tmpFielEditor = obj.userInfo[@"NSFieldEditor"];
    [self control:tmpControl textShouldEndEditing:tmpFielEditor];
}

- (BOOL)control:(NSControl *)control textShouldEndEditing:(NSText *)fieldEditor
{
    NSTextField *tmpTf = (NSTextField *)control;
    
    NSString *tmpTextStr = fieldEditor.string.copy;//if not copy, sometimes it will become empty when saving..
    
    //Triming
    tmpTextStr = [tmpTextStr stringByTrimmingCharactersInSet:
                  [NSCharacterSet whitespaceCharacterSet]];
    
    tmpTextStr = [tmpTextStr stringByReplacingOccurrencesOfString:@" " withString:@"_`_"];
    tmpTextStr = [tmpTextStr stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    
    if (![tmpTextStr isEqualToString:@""]) {
        tmpTf.backgroundColor = [NSColor magentaColor];
    }
    
    NSTableView *curTableView = (NSTableView*)tmpTf.superview.superview.superview;
    
    for (int i = 0; i < [curTableView numberOfRows]; i++) {
        NSTableCellView *tmpCV = [curTableView viewAtColumn:1 row:i makeIfNecessary:NO];    // 1 => right
        
        if ([tmpCV textField] == tmpTf) {
            NSInteger curRow = i;
            
            EditModeTableViewCellData *tmpData = nil;
            if (curTableView == _gameInfoTableView) {
                tmpData = _gameInfoCellData;
            } else if (curTableView == _adInfoTableView) {  // for the addtion length
                NSUInteger tmpAdLength = _adInfoCellData.count;
                tmpData = (curRow < tmpAdLength) ? _adInfoCellData : _addtionalCellData;
                curRow = (curRow < tmpAdLength) ? curRow : curRow - tmpAdLength;
            } else if (curTableView == _productInfoTableView) {
                tmpData = _productInfoCellData;
            }
            
            [tmpData setValue:tmpTextStr AtIndex:curRow];
            break;
        }
    }
    
    return YES;
}

#pragma mark -IBAction Button
- (IBAction)onPressed_Cancle:(id)sender {
    [CoreHelper_Internal showAlertWithMessageText:@"Are you sure want to COLOSE Edit Mode?\nAll Unsaved Data will be lost!"
                                  andFirstBtnText:@"Cancle"
                                 andSecondBtnText:@"COLOSE Edit Mode"
                               andFirstBtnHandler:nil
                              andSecondBtnHandler:^{
                                  [self _closeEditMode];
                              }];
}

- (IBAction)onPressedSave:(id)sender {
    self.curTableViewGameCode = [_gameInfoCellData objectForKey:@"gameShortName"];
    
    BOOL isCanSave = YES;
    
    //Check Game
    NSUInteger tmpGameInfoLength = _gameInfoCellData.count;
    for (int i = 0; i < tmpGameInfoLength; ++i) {
        if ([[_gameInfoCellData objectAtIndex:i] isEqualToString:@""]) {
            [CoreHelper_Internal showAlertWithMessageText:[NSString stringWithFormat:@"GameInfo MUST BE FINISHED EDITING before Saving!\n Key:%@", [_gameInfoCellData keyAtIndex:i]]];
            isCanSave = NO;
            break;
        }
    }
    
    //Check Product
    NSUInteger tmpProductInfoLength = _productInfoCellData.count;
    for (int i = 0; i < tmpProductInfoLength; ++i) {
        
        if (![[_productInfoCellData keyAtIndex:i] isContainString:@"productIdentifier"]) {//only check the productIdentifier;
            continue;
        }
        
        if ([[_productInfoCellData objectAtIndex:i] isEqualToString:@""]) {
            [CoreHelper_Internal showAlertWithMessageText:[NSString stringWithFormat:@"ProductInfo MUST BE FINISHED EDITING before Saving!\n Key:%@", [_productInfoCellData keyAtIndex:i]]];
            isCanSave = NO;
            break;
        }
    }
//    if (tmpProductInfoLength == 0) {
//        [CoreHelper_Internal showAlertWithMessageText:@"ProductInfo Must Not be Null"];
//        isCanSave = NO;
//    }
    
    if (!isCanSave) {
        return;
    }
    
    [CoreHelper_Internal showAlertWithMessageText:@"Are you sure want to SAVE!"
                                  andFirstBtnText:@"Cancle"
                                 andSecondBtnText:@"SAVE"
                               andFirstBtnHandler:nil
                              andSecondBtnHandler:^{
                                  
                                  [PackagerWindowController presentProcessingViewControllerForm:self
                                                                           andProcessingHandler:^{
                                  
                                                                               BOOL isSaveSuccess = [InfoData saveConfigToFileWithGameCode:self.curTableViewGameCode
                                                                                                                           andGameInfoData:_gameInfoCellData
                                                                                                                             andAdInfoData:_adInfoCellData
                                                                                                                          andAddtionalData:_addtionalCellData
                                                                                                                        andProductInfoData:_productInfoCellData];
                                                                               if (isSaveSuccess) {
                                                                                   
                                                                                   [InfoData commitConfigFileToSvnWithFinishHandler:^{
                                                                                       [PackagerWindowController closeProcessViewControllerIfExist];
                                                                                       
                                                                                       [CoreHelper_Internal showAlertWithMessageText:@"Save File Successfully!!"];
                                                                                       
                                                                                       [PackagerWindowController presentViewContorllerForm:self
                                                                                                                 toViewControllerClassName:[ResourcesConfigViewController className]
                                                                                                                      andConfigDestination:^(NSViewController *desVC) {
                                                                                                                          ResourcesConfigViewController *tmpVC = (ResourcesConfigViewController *)desVC;
                                                                                                                          [tmpVC setupWithGameCode:_curTableViewGameCode];
                                                                                                                      }];
                                                                                   }];
                                                                               } else {
                                                                                   [CoreHelper_Internal showAlertWithMessageText:@"Save File Error!!"];
                                                                               }
                                                                           }];
                                  
                              }];
}

- (IBAction)onPressedAddProduct:(id)sender
{
    [CoreHelper_Internal showInputAlertWithMessageText:@"Please Input the Product Index your want to ADD\n(Start form 0)"
                                       andFirstBtnText:@"Confirm"
                                      andSecondBtnText:@"Cancle"
                                    andFirstBtnHandler:^(NSString * retStr) {
                                        
                                        [self _addProductWithProductIndex:retStr.integerValue];
                                        
                                        [self.productInfoTableView reloadData];
                                    }
                                   andSecondBtnHandler:nil];
}

- (IBAction)onPressedRemoveProduct:(id)sender
{
    [CoreHelper_Internal showInputAlertWithMessageText:@"Please Input the Product Index your want to DELETE\n(Start form 0)"
                                       andFirstBtnText:@"Confirm"
                                      andSecondBtnText:@"Cancle"
                                    andFirstBtnHandler:^(NSString * retStr) {
                                        
                                        [self _removeProductWithProductIndex:retStr.integerValue];
                                        
                                        [_productInfoTableView reloadData];
                                    }
                                   andSecondBtnHandler:nil];
}

#pragma  mark -Internal Func
- (void)_closeEditMode
{
    //must post first
    [[NSNotificationCenter defaultCenter] postNotificationName:kEditModeEndNotification object:nil];
    
    [self dismissViewController:self];
}

- (void)_setupDragHandler
{
    //Drag steup
    [_oldPlistDragView setupInvoke:^(NSString *fileName) {
        [self _loadOldPlistDicAndReloadDataWithPath:fileName];
    }];
    
    [_oldProductDragView setupInvoke:^(NSString *fileName) {
        [self _loadOldProductStringsAndReloadDataWithPath:fileName];
    }];
}

- (void)_useExisitingConfigWithGameCode:(NSString *)gameCode
{
    NSDictionary *oldConfigDic = [InfoData loadGameConfigWithGameCode:gameCode];
    [self _setCurValWithOldPlistDic:oldConfigDic];
}

- (void)_loadOldPlistDicAndReloadDataWithPath:(NSString *)path
{
    NSDictionary *tmpDic = [InfoData loadOldPlistWithPath:path];
    
    [self _setCurValWithOldPlistDic:tmpDic];
    
    [self.gameInfoTableView reloadData];
    [self.adInfoTableView reloadData];
}

- (void)_loadOldProductStringsAndReloadDataWithPath:(NSString *)path
{
    NSDictionary *tmpDic = [InfoData loadOldProductsStringWithPath:path];
    
    [self _setCurValWithOldProductStringsDic:tmpDic];
    
    [self.productInfoTableView reloadData];
}

- (void)_setCurValWithOldPlistDic:(NSDictionary *)oldPlistDic
{
    NSUInteger tmpGameInfoLegth = _gameInfoCellData.count;
    for (int i = 0; i < tmpGameInfoLegth; ++i) {
        NSString *tmpKey = [_gameInfoCellData keyAtIndex:i];
        NSString *tmpValue = [oldPlistDic objectForKey:tmpKey];
        if (tmpValue && ![tmpValue isEqualToString:@""]) {
            [_gameInfoCellData setValue:tmpValue forKey:tmpKey];
        }
    }
    
    NSUInteger tmpAdInfoLength = _adInfoCellData.count;
    for (int i = 0; i < tmpAdInfoLength; ++i) {
        NSString *tmpKey = [_adInfoCellData keyAtIndex:i];
        NSString *tmpValue = [oldPlistDic objectForKey:tmpKey];
        if (tmpValue && ![tmpValue isEqualToString:@""]) {
            [_adInfoCellData setValue:tmpValue forKey:tmpKey];
        }
    }
    
    NSUInteger tmpAddtinalInfoLength = _addtionalCellData.count;
    for (int i = 0; i < tmpAddtinalInfoLength; ++i) {
        NSString *tmpKey = [_addtionalCellData keyAtIndex:i];
        NSString *tmpValue = [oldPlistDic objectForKey:tmpKey];
        if (tmpValue && ![tmpValue isEqualToString:@""]) {
            [_addtionalCellData setValue:tmpValue forKey:tmpKey];
        }
    }
    
    [self _setCurValWithOldProductStringsDic:oldPlistDic];
}

- (void)_setCurValWithOldProductStringsDic:(NSDictionary *)oldProductStringsDic
{
    EditModeTableViewCellData *retData = [[EditModeTableViewCellData alloc] initEditModeTableViewWithDic:@{} andArr:@[]];
    
    NSArray * sortedKeys = [[oldProductStringsDic allKeys] sortedArrayUsingSelector: @selector(caseInsensitiveCompare:)];
    
    for (NSString *tmpKey in sortedKeys) {
        if ([tmpKey isContainString:@"good"]) {
            [retData addObjectAtTheEndWithObject:[oldProductStringsDic objectForKey:tmpKey] forKey:tmpKey];
        }
    }
    
    if (retData.count > 0) {
        self.productInfoCellData = retData;
    }
}

- (void)_addProductWithProductIndex:(NSUInteger)index
{
    NSUInteger tmpProductIndex = index;
    
    NSString *productGameCurrencyCount = [NSString stringWithFormat:@"good%lu_GameCurrencyCount",(unsigned long)tmpProductIndex];
    NSString *productLocalizedTitle = [NSString stringWithFormat:@"good%lu_localizedTitle",(unsigned long)tmpProductIndex];
    NSString *productPrice = [NSString stringWithFormat:@"good%lu_price",(unsigned long)tmpProductIndex];
    NSString *productProductID = [NSString stringWithFormat:@"good%lu_productIdentifier",(unsigned long)tmpProductIndex];
    
    if ([_productInfoCellData objectForKey:productProductID]) {
        [CoreHelper_Internal showAlertWithMessageText:@"Invalid Index!!\nAlready Exisit Index."];
        return;
    }
    
    NSString *tmpStr = @"";//[NSString stringWithFormat:@"%lu",(unsigned long)tmpProductIndex];
    [self.productInfoCellData addObjectAtTheEndWithObject:tmpStr forKey:productGameCurrencyCount];
    [self.productInfoCellData addObjectAtTheEndWithObject:tmpStr forKey:productLocalizedTitle];
    [self.productInfoCellData addObjectAtTheEndWithObject:tmpStr forKey:productPrice];
    [self.productInfoCellData addObjectAtTheEndWithObject:tmpStr forKey:productProductID];
}

- (void)_removeProductWithProductIndex:(NSUInteger)index
{
    NSUInteger tmpIndex = index;
    
    NSString *productProductID = [NSString stringWithFormat:@"good%lu_productIdentifier",(unsigned long)tmpIndex];
    
    if (![_productInfoCellData objectForKey:productProductID]
        || _productInfoCellData.count == 0) {
        [CoreHelper_Internal showAlertWithMessageText:@"Invalid Index!!\nIndex not Exisit."];
        return;
    }
    
    NSUInteger tmpDeleteIndex = [_productInfoCellData indexOfKey:productProductID] / kProductInfoNum * kProductInfoNum;
    for (int i = 0; i < kProductInfoNum; ++i) {
        [_productInfoCellData removeObjectAtIndex:tmpDeleteIndex];
    }
}
@end
