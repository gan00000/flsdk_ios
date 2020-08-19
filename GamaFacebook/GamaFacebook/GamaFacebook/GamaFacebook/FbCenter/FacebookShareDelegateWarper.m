//


#import "FacebookShareDelegateWarper.h"
#import "FacebookInviteImp.h"
//#import "SPSocialFunction.h"
#import "GamaCentreInfo.h"
//#import <FBSDKCoreKit/FBSDKGraphRequest.h>
#import <FBSDKShareKit/FBSDKShareKit.h>


@interface FacebookShareDelegateWarper ()<FBSDKGameRequestDialogDelegate,FBSDKSharingDelegate>

@property (copy, atomic) FBShareKitSuccess impSuccess;
@property (copy, atomic) FBShareKitError impError;
@property (copy, atomic) FBShareKitCancle impCancle;

@end

@implementation FacebookShareDelegateWarper

- (void)dealloc
{
    !_impSuccess ? : [_impSuccess release];
    !_impError ? : [_impError release];
    !_impCancle ? : [_impCancle release];
    _impSuccess = nil;
    _impError = nil;
    _impCancle = nil;
    
    [super dealloc];
}

- (void)_selfDestruct
{
    [self release];
}

+ (instancetype)makeFacebookSharingDelegateResolverAndCallbackSuccessBlock:(FBShareKitSuccess) successBlock
                                                             andErrorBlock:(FBShareKitError) errorBlock
                                                            andCancleBlock:(FBShareKitCancle)cancleBlock
{
    FacebookShareDelegateWarper * tmp = [[FacebookShareDelegateWarper alloc] init];
    
    tmp.impSuccess = successBlock;
    tmp.impError = errorBlock;
    tmp.impCancle = cancleBlock;
    
    return tmp;
}

#pragma mark - gameRequest delegate

- (void)gameRequestDialog:(id)gameRequestDialog didCompleteWithResults:(NSDictionary *)results
{
    dispatch_async(dispatch_get_main_queue(), ^{
        self.impSuccess(results);
    });
    
    [self _selfDestruct];
}

- (void)gameRequestDialog:(id)gameRequestDialog didFailWithError:(NSError *)error
{
    dispatch_async(dispatch_get_main_queue(), ^{
        self.impError(error);
    });
    
    [self _selfDestruct];
}

- (void)gameRequestDialogDidCancel:(id)gameRequestDialog
{
    dispatch_async(dispatch_get_main_queue(), ^{
        self.impCancle();
    });
    
    [self _selfDestruct];
}


#pragma mark - sharing delegate
- (void)sharer:(id<FBSDKSharing>)sharer didCompleteWithResults:(NSDictionary<NSString *,id> *)results{
    dispatch_async(dispatch_get_main_queue(), ^{
        self.impSuccess(results);
    });
    
    [self _selfDestruct];

}

-(void)sharer:(id<FBSDKSharing>)sharer didFailWithError:(NSError *)error{
    if ([sharer isKindOfClass:[FBSDKShareDialog class]]) {
        FBSDKShareDialog *shareDia = (FBSDKShareDialog *)sharer;
        if((error == nil || error.code == 202) && shareDia.mode == FBSDKShareDialogModeNative){//如果是原生app不存在，则设置成浏览器再次分享
            shareDia.mode = FBSDKShareDialogModeBrowser;
            [shareDia show];
            return;
        }else {
            dispatch_async(dispatch_get_main_queue(), ^{
                self.impError(error);
            });
            [self _selfDestruct];
            return;
        }
    }
    dispatch_async(dispatch_get_main_queue(), ^{
        self.impError(error);
    });
    [self _selfDestruct];

}

-(void)sharerDidCancel:(id<FBSDKSharing>)sharer{
    dispatch_async(dispatch_get_main_queue(), ^{
        self.impCancle();
    });
    
    [self _selfDestruct];
}

//- (void)sharer:(id)sharer didCompleteWithResults:(NSDictionary *)results
//{
//    dispatch_async(dispatch_get_main_queue(), ^{
//        self.impSuccess(results);
//    });
//
//    [self _selfDestruct];
//}
//- (void)sharer:(id)sharer didFailWithError:(NSError *)error
//{
//    if ([sharer isKindOfClass:[FBSDKShareDialog class]]) {
//        FBSDKShareDialog *shareDia = (FBSDKShareDialog *)sharer;
//        if((error == nil || error.code == 202) && shareDia.mode == FBSDKShareDialogModeNative){//如果是原生app不存在，则设置成浏览器再次分享
//            shareDia.mode = FBSDKShareDialogModeBrowser;
//            [shareDia show];
//            return;
//        }else {
//            dispatch_async(dispatch_get_main_queue(), ^{
//                self.impError(error);
//            });
//            [self _selfDestruct];
//            return;
//        }
//    }
//    dispatch_async(dispatch_get_main_queue(), ^{
//        self.impError(error);
//    });
//    [self _selfDestruct];
//
//}
//- (void)sharerDidCancel:(id)sharer
//{
//    dispatch_async(dispatch_get_main_queue(), ^{
//        self.impCancle();
//    });
//
//    [self _selfDestruct];
//}

@end
