//
//  ResourcesConfigViewController.m
//  EfunPlistEncrypt
//
//  Created by czf on 20/5/15.
//  Copyright (c) 2015年 Efun. All rights reserved.
//

#import "ResourcesConfigViewController.h"

#import "PackagerWindowController.h"

@interface ResourcesConfigViewController ()
@property (weak) IBOutlet NSComboBox *areaComboBox;
@property (weak) IBOutlet NSComboBox *resourcesComboBox;

@property (weak) IBOutlet NSImageView *resourcePreviewImageView;

@property (strong, atomic) NSArray *curAreaArr;
@property (strong, atomic) NSArray *curResourcesArr;

@property (strong, atomic) NSString *currentGameCode;
@end

@implementation ResourcesConfigViewController

- (void)viewDidLoad
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(didResEditorClose) name:kResEditorCloseNotification object:nil];
    
    _resourcesComboBox.delegate = self;
    
    self.curAreaArr = [InfoData loadInfoListWithTypeName:kRegionInfo andCurGameCode:self.currentGameCode].allKeys;
    self.curResourcesArr = [InfoData loadAlreadyConfigedResArr];
    
    [self _reloadViewController];
}

- (void)didResEditorClose
{
    [self _reloadViewController];
}

- (void)setupWithGameCode:(NSString *)gameCode
{
    self.currentGameCode = gameCode;
}

#pragma mark - Delegate
- (void)comboBoxSelectionDidChange:(NSNotification *)notification
{
    NSComboBox *tmpComBox = notification.object;
    NSString *curResName = @"";
    if (tmpComBox == _resourcesComboBox) {
        curResName = [self _returnCurSelectedRes];
    }
    
    if (!curResName) {
        return;
    }
    
    NSDictionary *tmpConfigDic = [InfoData loadResourceConfigWithResType:curResName];
    
    NSString *tmpImgPath = nil;
    if (tmpConfigDic.count > 0) {
        tmpImgPath = [NSString stringWithFormat:@"%@/%@/%@", kLocalTempSvnFileResourcesPath, curResName, tmpConfigDic[@"resourcePreviewImgName"]];
    }
    
    NSImage *tmpImage = [[NSImage alloc] initWithContentsOfFile:tmpImgPath];
    _resourcePreviewImageView.image = tmpImage;
}

- (NSInteger)numberOfItemsInComboBox:(NSComboBox *)aComboBox
{
    NSInteger retInt = 0;
    if (aComboBox == _areaComboBox) {
        retInt = _curAreaArr.count;
    } else if (aComboBox == _resourcesComboBox) {
        retInt = _curResourcesArr.count;
    }
    
    return retInt;
}

- (id)comboBox:(NSComboBox *)aComboBox objectValueForItemAtIndex:(NSInteger)index
{
    if (index < 0) {
        return nil;
    }
    
    NSString *retStr = nil;
    
    if (aComboBox == _areaComboBox) {
        retStr = _curAreaArr[index];
    } else if (aComboBox == _resourcesComboBox) {
        retStr = _curResourcesArr[index];
    }
    
    return retStr;
}

#pragma mark -IBAction
- (IBAction)onSaveConfigPressed:(id)sender {
    [self _saveConfigIsCloseControllerWithComplitedHandle:nil];
}

- (void)_saveConfigIsCloseControllerWithComplitedHandle:(void (^)()) handler
{
    NSString *curArea = [self _returnCurSelectedArea];
    NSString *curResName = [self _returnCurSelectedRes];
    
    if (!curArea
        || [curArea isEqualToString:@""])
    {
        [CoreHelper_Internal showAlertWithMessageText:@"Please select the Area."];
        return;
    }
    else if (!curResName
             || [curResName isEqualToString:@""])
    {
        [CoreHelper_Internal showAlertWithMessageText:@"Please select the Resources"];
        return;
    }
    
    [InfoData saveAreaConfigWithArea:curArea andResourceName:curResName andGameCode:self.currentGameCode];
    
    [PackagerWindowController presentProcessingViewControllerForm:self
                                             andProcessingHandler:^{
                                                 [InfoData commitConfigFileToSvnWithFinishHandler:^{
                                                     [PackagerWindowController closeProcessViewControllerIfExist];
                                                     
                                                     [CoreHelper_Internal showAlertWithMessageText:@"Save Done!"];
//                                                     [self _closeCurrentViewContorller];
                                                     
                                                     if (handler) {
                                                         handler();
                                                     }
                                                 }];
                                             }];
}

- (IBAction)OnStartPackaging:(id)sender
{   
    [self _saveConfigIsCloseControllerWithComplitedHandle:^{
        NSString *curSelectedGameCode = self.currentGameCode;
        
        [PackagerWindowController presentProcessingViewControllerForm:self
                                                 andProcessingHandler:^{
                                                     if (![PackagerManager startPackagingWithGameCode:curSelectedGameCode]) {
                                                         [PackagerWindowController closeProcessViewControllerIfExist];
                                                         
                                                         [PackagerWindowController presentViewContorllerForm:self
                                                                                   toViewControllerClassName:[ResourcesConfigViewController className]
                                                                                        andConfigDestination:^(NSViewController *desVC) {
                                                                                            ResourcesConfigViewController *tmpVC = (ResourcesConfigViewController*)desVC;
                                                                                            [tmpVC setupWithGameCode:curSelectedGameCode];
                                                                                        }];
                                                     }
                                                 }];
    }];
}

- (IBAction)onCanclePressed:(id)sender
{
    [self _closeCurrentViewContorller];
}

- (IBAction)onResEditorPressed:(id)sender
{
    [PackagerWindowController presentViewContorllerForm:self
                              toViewControllerClassName:[ResourcesEditorViewController className]
                                   andConfigDestination:^(NSViewController *desVC) {
                                       ResourcesEditorViewController *tmpVC = (ResourcesEditorViewController *)desVC;
                                       
                                       [tmpVC setupWithCurrentResName:[self _returnCurSelectedRes]];
                                   }];
}

#pragma mark -Internal
- (void)_closeCurrentViewContorller
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    [self dismissController:self];
}

- (void)_reloadViewController
{
    self.curAreaArr = [InfoData loadInfoListWithTypeName:kRegionInfo andCurGameCode:self.currentGameCode].allKeys;
    self.curResourcesArr = [InfoData loadAlreadyConfigedResArr];
    
    [_areaComboBox deselectItemAtIndex:[_areaComboBox indexOfSelectedItem]];
    [_resourcesComboBox deselectItemAtIndex:[_resourcesComboBox indexOfSelectedItem]];
    [_areaComboBox reloadData];
    [_resourcesComboBox reloadData];
    
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5f * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        NSDictionary *tmpGameConfigDic = [InfoData loadGameConfigWithGameCode:self.currentGameCode];
        NSString *tmpCurResName = tmpGameConfigDic[@"gameCodeResName"];
        if (tmpCurResName && ![tmpCurResName isEqualToString:@""]) {
            NSDictionary *tmpConfigDic = [InfoData loadResourceConfigWithResType:tmpCurResName];
            if (tmpConfigDic.count > 0) {
                
                NSString *curArea = tmpGameConfigDic[@"gameCodeArea"];
                if (curArea && ![curArea isEqualToString:@""]) {
                    [_areaComboBox selectItemAtIndex:[_curAreaArr indexOfObject:curArea]];
                }
                
                NSString *curResName = tmpConfigDic[@"resourceName"];
                [_resourcesComboBox selectItemAtIndex:[_curResourcesArr indexOfObject:curResName]];
                
                NSString *tmpImgPath = [NSString stringWithFormat:@"%@/%@/%@", kLocalTempSvnFileResourcesPath, curResName, tmpConfigDic[@"resourcePreviewImgName"]];
                
                NSImage *tmpImage = [[NSImage alloc] initWithContentsOfFile:tmpImgPath];
                _resourcePreviewImageView.image = tmpImage;
            }
        }
    });
    
}

- (NSString *)_returnCurSelectedRes
{
    NSInteger tmpCurSelectedIndex = [_resourcesComboBox indexOfSelectedItem];
    if (tmpCurSelectedIndex < 0) {
        return nil;
    }
    
    NSString *resultStr = _curResourcesArr[tmpCurSelectedIndex];
    return resultStr;
}

- (NSString *)_returnCurSelectedArea
{
    NSInteger tmpCurSelectedIndex = [_areaComboBox indexOfSelectedItem];
    if (tmpCurSelectedIndex < 0) {
        return nil;
    }
    
    NSString *resultStr = _curAreaArr[tmpCurSelectedIndex];
    return resultStr;
}
@end
