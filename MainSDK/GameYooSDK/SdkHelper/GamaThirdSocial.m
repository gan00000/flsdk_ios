////
////  GamaThirdSocial.m
////  GamaSDK_iOS
////
////  Created by dongbin on 2018/12/4.
////  Copyright © 2018年 starpy. All rights reserved.
////
//
//#import "GamaThirdSocial.h"
//#import "GamaSDK+Social.h"
//
//@interface GamaThirdSocial() <UIDocumentInteractionControllerDelegate>
//@property (copy, atomic) SocialShareKitSuccess impSuccess;
//@property (copy, atomic) SocialShareKitError impError;
//@property (strong, nonatomic) UIDocumentInteractionController *documentInteractionController;
//@end
//
//@implementation GamaThirdSocial
//
//+ (void)social_shareByWhatsAppWithParam:(NSDictionary *)param
//                                success:(void (^)(NSDictionary *))success
//                                failure:(void (^)(NSError *))failure
//
//{
//    GamaThirdSocial *gamaThirdSocial = [[GamaThirdSocial alloc] init];
//    
//    gamaThirdSocial.impSuccess = success;
//    gamaThirdSocial.impError = failure;
//    
//    UIImage *iconImage = nil;
//    if ([[param objectForKey:GAMA_PRM_SOCIAL_SHARE_LOCAL_IMAGE] isKindOfClass:[UIImage class]]) {
//        iconImage = [param objectForKey:GAMA_PRM_SOCIAL_SHARE_LOCAL_IMAGE];
//    }else if([[param objectForKey:GAMA_PRM_SOCIAL_SHARE_LOCAL_IMAGE] isKindOfClass:[NSString class]]) {
//        iconImage = [UIImage imageNamed:[param objectForKey:GAMA_PRM_SOCIAL_SHARE_LOCAL_IMAGE]];
//    }
//    
//    NSString *text = param[GAMA_PRM_SOCIAL_SHARE_MSG];
//    
//    if(iconImage){
//        if ([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"whatsapp://app"]]) {
//            NSString *filePath = [NSHomeDirectory() stringByAppendingPathComponent:@"Documents/whatsAppTmp.wai"];
//            [UIImageJPEGRepresentation(iconImage, 1.0) writeToFile:filePath atomically:YES];
//            gamaThirdSocial.documentInteractionController = [UIDocumentInteractionController interactionControllerWithURL:[NSURL fileURLWithPath:filePath]];
//            gamaThirdSocial.documentInteractionController.UTI = @"net.whatsapp.image";
//            gamaThirdSocial.documentInteractionController.delegate = gamaThirdSocial;
//            BOOL result = [gamaThirdSocial.documentInteractionController presentOpenInMenuFromRect:CGRectZero inView:appTopViewController.view animated:YES];
//            if(result){
//                return;
//            } else {
//                failure(nil);
//            }
//        }
//    }else if(text.length > 0) {
//        NSString *urlWhats = [NSString stringWithFormat:@"whatsapp://send?text=%@",text];
//        NSURL *whatsAppUrl = [NSURL URLWithString:[urlWhats stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
//        if([[UIApplication sharedApplication] canOpenURL:whatsAppUrl]){
//            BOOL result = [[UIApplication sharedApplication] openURL:whatsAppUrl];
//            if (result) {
//                success(@{@"message":@"content share succeed"});
//            } else {
//                failure(nil);
//            }
//        }else {
//            failure(nil);
//        }
//    }else {
//        failure(nil);
//        
//    }
//}
//
//+ (void)social_shareByLineWithParam:(NSDictionary *)param
//                            success:(void (^)(NSDictionary *))success
//                            failure:(void (^)(NSError *))failure
//
//{
//    UIImage *iconImage = nil;
//    if ([[param objectForKey:GAMA_PRM_SOCIAL_SHARE_LOCAL_IMAGE] isKindOfClass:[UIImage class]]) {
//        iconImage = [param objectForKey:GAMA_PRM_SOCIAL_SHARE_LOCAL_IMAGE];
//    }else if([[param objectForKey:GAMA_PRM_SOCIAL_SHARE_LOCAL_IMAGE] isKindOfClass:[NSString class]]) {
//        iconImage = [UIImage imageNamed:[param objectForKey:GAMA_PRM_SOCIAL_SHARE_LOCAL_IMAGE]];
//    }
//    NSString *shareContentText = param[GAMA_PRM_SOCIAL_SHARE_MSG];
//    
//    if (iconImage) {
//        GamaThirdSocial *gamaThirdSocial = [[GamaThirdSocial alloc] init];
//        [gamaThirdSocial postShareByPastingWithPasteboardName:@"jp.naver.linecamera.pasteboard" image:[UIImage imageNamed:@""] imageName:@"public" imageType:@"png" URL:@"line://msg/image" appStoreLink:@"https:itunes.apple.com/app/line/id443904275" success:success failure:failure];
//
//    }else if(shareContentText.length > 0){
//        NSString *lineUrl = [NSString stringWithFormat:@"line://msg/text/%@",[shareContentText stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
//        BOOL result = [[UIApplication sharedApplication] openURL:[NSURL URLWithString:lineUrl]];
//        if (result) {
//            success(@{@"message":@"Scheme share succeed"});
//        } else {
//            failure(nil);
//        }
//    }
//}
//
//- (void)postShareByPastingWithPasteboardName:(NSString *)pasteboardName
//                                       image:(UIImage *)image
//                                   imageName:(NSString *)imageName
//                                   imageType:(NSString *)imageType
//                                         URL:(NSString *)URLString
//                                appStoreLink:(NSString *)storeLinkString
//                                     success:(void (^)(NSDictionary *))success
//                                     failure:(void (^)(NSError *))failure
//{
//    
//    UIPasteboard *pasteboard = nil;
//    if (NSFoundationVersionNumber > NSFoundationVersionNumber_iOS_6_1) {
//        pasteboard = [UIPasteboard generalPasteboard];
//    }
//    else {
//        pasteboard = [UIPasteboard pasteboardWithName:pasteboardName create:YES];
//    }
//    [pasteboard setData:UIImageJPEGRepresentation(image, 0.8) forPasteboardType:[NSString stringWithFormat:@"%@.%@",imageName,imageType]];
//    BOOL result = [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@/%@",URLString ,pasteboard.name]]];
//    if (result) { //成功
//        success(@{@"message":@"pasteboard share succeed"});
//    }else{ //失败
//        failure(nil);
//    }
//}
//
//#pragma mark UIDocumentInteractionControllerDelegate
//-(UIViewController *)documentInteractionControllerViewControllerForPreview:(UIDocumentInteractionController *)controller
//{
//    UIViewController *presentViewController = [UIApplication sharedApplication].keyWindow.rootViewController;
//    while (1) {
//        if (!presentViewController.presentedViewController) {
//            return presentViewController;
//        }else{
//            presentViewController = presentViewController.presentedViewController;
//        }
//    }
//    return [UIApplication sharedApplication].keyWindow.rootViewController;
//}
//-(void)documentInteractionController:(UIDocumentInteractionController *)controller
//          didEndSendingToApplication:(NSString *)application
//{
//    dispatch_async(dispatch_get_main_queue(), ^{
//        self.impSuccess(@{@"message":@"document share succeed"});
//    });
//    //分享成功？
//}
//
//
//@end
