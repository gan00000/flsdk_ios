//
//  ResourcesEditorViewController.m
//  EfunPlistEncrypt
//
//  Created by czf on 20/5/15.
//  Copyright (c) 2015年 Efun. All rights reserved.
//

#import "ResourcesEditorViewController.h"

#import "PackagerWindowController.h"

@interface ResourcesEditorViewController ()
@property (weak) IBOutlet NSTextField *resourceNameTextField;

@property (weak) IBOutlet NSImageView *resourcePreviewImageView;
@property (weak) IBOutlet NSTextField *currentResDictoryLable;

@property (strong, atomic) NSString *previewImgName;
@property (strong, atomic) NSString *resPath;

@property (strong, atomic) NSString *currentResName;
@end

@implementation ResourcesEditorViewController

- (void)setupWithCurrentResName:(NSString *)curResName
{
    self.currentResName = curResName;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
    
    [self _loadResInfoAndReload];
}

#pragma mark - IBAciton
- (IBAction)onChoosePreviewImage:(id)sender {
    NSString *imgPath = [CoreHelper_Internal openPanelToSelectPathIsCanChooseFile:YES
                                                        andIsCanChooseDirectories:NO
                                                      andIsAllowsMutipleSelection:NO];
    
    [self _setPriviewImgWithImgPath:imgPath];
}
- (IBAction)onChooseResourcesFile:(id)sender {
    NSString *tmpResPath = [CoreHelper_Internal openPanelToSelectPathIsCanChooseFile:NO
                                                        andIsCanChooseDirectories:YES
                                                      andIsAllowsMutipleSelection:NO];
    self.resPath = tmpResPath;
    self.currentResDictoryLable.stringValue = [NSString stringWithFormat:@"floder:%@", tmpResPath.lastPathComponent];
}

- (IBAction)onCanclePressed:(id)sender {
    [self _closeCurrentController];
}

- (IBAction)onSaveAndCommitToSVN:(id)sender {
    
    NSString *tmpResourcesName = _resourceNameTextField.stringValue;
    if (!tmpResourcesName || [tmpResourcesName isEqualToString:@""]) {
        [CoreHelper_Internal showAlertWithMessageText:@"Resource Name must be filled!"];
        return;
    }
    else if (!self.resourcePreviewImageView.image)
    {
        [CoreHelper_Internal showAlertWithMessageText:@"A preview image must set!"];
        return;
    }
    else if (!self.resPath || [self.resPath isEqualToString:@""])
    {
        [CoreHelper_Internal showAlertWithMessageText:@"A Resources Path must set!"];
        return;
    }
        
    tmpResourcesName = [tmpResourcesName stringByReplacingOccurrencesOfString:@" " withString:@"_"];
    
    [InfoData saveResourceConfigWithResouceName:tmpResourcesName
                                  andPreviewImg:_resourcePreviewImageView.image
                              andPreviewImgName:self.previewImgName
                                     andResPath:self.resPath];
    
     [PackagerWindowController presentProcessingViewControllerForm:self
                                              andProcessingHandler:^{
                                                  
                                                  [SvnTask addFileWithLocalPath:[NSString stringWithFormat:@"%@/%@", kLocalTempSvnFileResourcesPath, tmpResourcesName]
                                                                    TaskHandler:^{
                                                                        [InfoData commitConfigFileToSvnWithFinishHandler:^{
                                                                            [PackagerWindowController closeProcessViewControllerIfExist];
                                                                            
                                                                            [CoreHelper_Internal showAlertWithMessageText:@"Save Done!"];
                                                                            
                                                                            [self _closeCurrentController];
                                                                        }];
                                                                    }];
                                              }];
     }

#pragma mark -Internal
- (void)_closeCurrentController
{
    [[NSNotificationCenter defaultCenter] postNotificationName:kResEditorCloseNotification object:nil];
    [self dismissController:self];
}

- (void)_loadResInfoAndReload
{
    NSDictionary *resInfoDic = [InfoData loadResourceConfigWithResType:self.currentResName];
    
    if (resInfoDic.count >0) {
        NSString *tmpResName = [resInfoDic objectForKey:@"resourceName"];
        self.resourceNameTextField.stringValue = tmpResName;
        
        NSString *tmpResPathLastCom = [resInfoDic objectForKey:@"resourceFloderName"];
        self.currentResDictoryLable.stringValue = [NSString stringWithFormat:@"floder:%@", tmpResPathLastCom.lastPathComponent];
        
        NSString *tmpImgPath = [NSString stringWithFormat:@"%@/%@/%@", kLocalTempSvnFileResourcesPath, tmpResName, resInfoDic[@"resourcePreviewImgName"]];
        
        [self _setPriviewImgWithImgPath:tmpImgPath];
    }
}

- (void)_setPriviewImgWithImgPath:(NSString *)imgPath
{
    NSImage *tmpImage = [[NSImage alloc] initWithContentsOfFile:imgPath];
    _resourcePreviewImageView.image = tmpImage;
    
    self.previewImgName = imgPath.lastPathComponent;
}
@end
