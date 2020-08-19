//
//  StartViewController.m
//  EfunPlistEncrypt
//
//  Created by czf on 28/4/15.
//  Copyright (c) 2015 Efun. All rights reserved.
//

#import "StartViewController.h"

#import "PackagerWindowController.h"

extern NSString *kEditModeEndNotification;

@interface StartViewController ()
@property (weak) IBOutlet NSComboBox *areaSelectComboBox;
@property (weak) IBOutlet NSComboBox *gameCodeComboBox;
@property (weak) IBOutlet NSComboBox *addKeyTypeSelectorComboBox;

@property (weak) IBOutlet NSTextField *nAddConfigKey;
@property (weak) IBOutlet NSTextField *nAddConfigValue;

@property (strong,atomic) NSArray *curGameCodeArr;
@property (strong,atomic) NSArray *curAddableKeyArr;

@property (strong,atomic) NSArray *curAreaArr;
@property (strong,atomic) NSMutableArray *curSelectableGameCodeArr;
@end


@implementation StartViewController

- (void)viewWillAppear
{
    [self performSegueWithIdentifier:@"svnLogViewControllerSegue" sender:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(reloadStartViewData) name:kEditModeEndNotification object:nil];
    
    
    [self _synchronizeFormSVN];
}

#pragma mark -IBAction

- (IBAction)onPressedCloseWindows:(id)sender {
    [self dismissController:self];
}

- (IBAction)onPressedStart:(id)sender {
    NSUInteger curSelectedIndex = [_gameCodeComboBox indexOfSelectedItem];
    
    if (curSelectedIndex > _curSelectableGameCodeArr.count) {
        [CoreHelper_Internal showAlertWithMessageText:@"Please select the GameCode\nA GameCode MUST SELECT FIRST!"];
        return;
    }
    
    NSString *curSelectedGameCode = _curSelectableGameCodeArr[curSelectedIndex];
    [PackagerWindowController presentViewContorllerForm:self
                              toViewControllerClassName:[ResourcesConfigViewController className]
                                   andConfigDestination:^(NSViewController *desVC) {
                                       [(ResourcesConfigViewController*)desVC setupWithGameCode:curSelectedGameCode];
                                   }];
}

- (IBAction)onNewGCEditPressed:(id)sender
{
    [PackagerWindowController presentViewContorllerForm:self
                              toViewControllerClassName:[EditModeController className]
                                   andConfigDestination:^(NSViewController *desVC) {
                                       EditModeController *tmpVC = (EditModeController *)desVC;
                                       [tmpVC setupWithEditModeIsLoadOldGameCodeConfig:NO
                                                                           andGameCode:[self _returnCurSelectedGameCode]];
                                   }];
}

- (IBAction)onOldGCEditPressed:(id)sender
{
    if (![self _checkCurrentSelectGameCodeIsOK]) {
        return;
    }
    
    [PackagerWindowController presentViewContorllerForm:self
                              toViewControllerClassName:[EditModeController className]
                                   andConfigDestination:^(NSViewController *desVC) {
                                       EditModeController *tmpVC = (EditModeController *)desVC;
                                       [tmpVC setupWithEditModeIsLoadOldGameCodeConfig:YES
                                                                           andGameCode:[self _returnCurSelectedGameCode]];
                                   }];
}

- (IBAction)onPressedAddNewKV:(id)sender {
    
//    NSString *tmp = ((NSButtonCell*)[_addKVMatrix selectedCell]).title;
    NSString *selectedInfoType = [self _returnCurSelectedAddKVType];
    
    if ([selectedInfoType isEqualToString:@""] || !selectedInfoType) {
        [CoreHelper_Internal showAlertWithMessageText:@"Please Select the Info you want to Insert!"];
        return;
    }
    
    NSString *tmpAddKey = self.nAddConfigKey.stringValue;
    NSString *tmpValue = self.nAddConfigValue.stringValue;
    
    [CoreHelper_Internal showAlertWithMessageText:@"Are you sure Add These Key Value To All Config?\nIt will only add to the GameConfigFile.txt & InfoList.txt"
                                  andFirstBtnText:@"Confirm"
                                 andSecondBtnText:@"Cancle"
                               andFirstBtnHandler:^{
                                   [InfoData addNewKeyValueToAllGameConfigWith:tmpAddKey
                                                                      andValue:tmpValue
                                                                 andAsInfoType:selectedInfoType];
                               }
                              andSecondBtnHandler:nil];
}

- (IBAction)onResetPressed:(id)sender {
    [CoreHelper_Internal showAlertWithMessageText:@"Reset Local Svn Files ?\nWhen your file got Confilt, Maybe you should try this"
                                  andFirstBtnText:@"Cancle"
                                 andSecondBtnText:@"Confirm"
                               andFirstBtnHandler:nil
                              andSecondBtnHandler:^{
                                  [InfoData cleanupSvnFileWithFinishHandler:^{                                      
                                      [self _synchronizeFormSVN];
                                  }];
                              }];
}

- (IBAction)onOpenEFUNCoreInfo:(id)sender {
    [[NSWorkspace sharedWorkspace] openFile:[NSString stringWithFormat:@"%@/%@", kLocalTempSvnGameConfigFilesPath, kEFUNCoreInfo] withApplication:@"Xcode" andDeactivate:NO];
}
- (IBAction)onOpenInfoLIst:(id)sender {
    [[NSWorkspace sharedWorkspace] openFile:[NSString stringWithFormat:@"%@/%@", kLocalTempSvnGameConfigFilesPath, kInfoListTxtName] withApplication:@"Xcode" andDeactivate:NO];
}

#pragma mark -delegate
- (NSInteger)numberOfItemsInComboBox:(NSComboBox *)aComboBox
{
    if (aComboBox == _gameCodeComboBox)
    {
        return _curSelectableGameCodeArr.count;
    }
    else if (aComboBox == _areaSelectComboBox)
    {
        return _curAreaArr.count;
    }
    else if (aComboBox == _addKeyTypeSelectorComboBox)
    {
        return _curAddableKeyArr.count;
    }
    return 0;
}

- (id)comboBox:(NSComboBox *)aComboBox objectValueForItemAtIndex:(NSInteger)index
{
    if (index < 0) {
        return nil;
    }
    
    if (aComboBox == _gameCodeComboBox)
    {
        NSString *curGameCode = _curSelectableGameCodeArr[index];
        NSString *tmpOtherName = [[InfoData loadGameConfigWithGameCode:curGameCode] objectForKey:@"otherName"];
        NSString *resultStr = [NSString stringWithFormat:@"%@-%@", curGameCode, tmpOtherName];
        return resultStr;
    }
    else if (aComboBox == _areaSelectComboBox)
    {
        return _curAreaArr[index];
    }
    else if (aComboBox == _addKeyTypeSelectorComboBox)
    {
        return _curAddableKeyArr[index];
    }
    
    return nil;
}

- (void)comboBoxSelectionDidChange:(NSNotification *)notification
{
    NSString *curSelectArea = [self _returnCurSelectedArea];
    
    [_curSelectableGameCodeArr removeAllObjects];
    
    for (NSString* tmpGameCode in _curGameCodeArr) {
        if ([[InfoData loadGameConfigWithGameCode:tmpGameCode][@"gameCodeArea"] isEqualToString:curSelectArea]) {
            
            [_curSelectableGameCodeArr addObject:tmpGameCode];
        }
    }
    
    //disSelect item
    [self.gameCodeComboBox deselectItemAtIndex:[_gameCodeComboBox indexOfSelectedItem]];
    [self.gameCodeComboBox reloadData];
}

- (void)reloadStartViewData
{
    self.curAddableKeyArr = [InfoData loadAlreadyConfigedResArr];
    self.curGameCodeArr = [InfoData loadAlreadyConfingedGameCodeArr];
    self.curAddableKeyArr = [InfoData loadAlreadyConfigedInfoList];
    
    self.curSelectableGameCodeArr = [NSMutableArray arrayWithCapacity:64];
    self.curAreaArr = [InfoData loadInfoListWithTypeName:kRegionInfo andCurGameCode:nil].allKeys;
    
    [self.gameCodeComboBox deselectItemAtIndex:[_gameCodeComboBox indexOfSelectedItem]];
    [self.gameCodeComboBox reloadData];
    
    [self.areaSelectComboBox deselectItemAtIndex:[_areaSelectComboBox indexOfSelectedItem]];
    [self.areaSelectComboBox reloadData];
    
    [self.addKeyTypeSelectorComboBox deselectItemAtIndex:[_addKeyTypeSelectorComboBox indexOfSelectedItem]];
    [self.addKeyTypeSelectorComboBox reloadData];
    
    self.areaSelectComboBox.delegate = self;
}

#pragma mark -internal
- (void)_synchronizeFormSVN
{
    [PackagerWindowController presentProcessingViewControllerForm:self
                                             andProcessingHandler:^{
                                                 [InfoData synchronizeSvnFileWithFinishHandler:^{
                                                     [PackagerWindowController closeProcessViewControllerIfExist];
                                                     
                                                     [self reloadStartViewData];
                                                 }];
                                             }];
}

- (BOOL)_checkCurrentSelectGameCodeIsOK
{
    NSString *tmpCurSelectedGC = [self _returnCurSelectedGameCode];
    NSString *tmpCurSelectedArea = [self _returnCurSelectedArea];
    if (!tmpCurSelectedGC || [tmpCurSelectedGC isEqualToString:@""]) {
        [CoreHelper_Internal showAlertWithMessageText:@"Please Select the GAMECODE First!!"];
        return NO;
    }
    else if (!tmpCurSelectedArea || [tmpCurSelectedArea isEqualToString:@""])
    {
        [CoreHelper_Internal showAlertWithMessageText:@"Please Select the AREA First!!"];
        return NO;
    }
    else {
        return YES;
    }
}

- (NSString *)_returnCurSelectedGameCode
{
    NSInteger tmpCurSelectedIndex = [_gameCodeComboBox indexOfSelectedItem];
    if (tmpCurSelectedIndex < 0) {
        return nil;
    }
    
    NSString *resultStr = _curSelectableGameCodeArr[tmpCurSelectedIndex];
    return resultStr;
}

- (NSString *)_returnCurSelectedArea
{
    NSInteger tmpCurSelectedIndex = [_areaSelectComboBox indexOfSelectedItem];
    if (tmpCurSelectedIndex < 0) {
        return nil;
    }
    
    NSString *resultStr = _curAreaArr[tmpCurSelectedIndex];
    return resultStr;
}

- (NSString *)_returnCurSelectedAddKVType
{
    NSInteger tmpCurSelectedIndex = [_addKeyTypeSelectorComboBox indexOfSelectedItem];
    if (tmpCurSelectedIndex < 0) {
        return nil;
    }
    
    NSString *resultStr = _curAddableKeyArr[tmpCurSelectedIndex];
    return resultStr;
}

@end
