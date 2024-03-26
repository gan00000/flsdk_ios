//
//  TermsView.h
//  GamaSDK_iOS
//
//  Created by ganyuanrong on 2020/8/1.
//  Copyright © 2020 Gama. All rights reserved.
//

#import "SDKBaseView.h"

NS_ASSUME_NONNULL_BEGIN

@interface TermsViewV2 : SDKBaseView
- (instancetype)initWithCompleter_MMMethodMMM:(void (^)(void))completer;

+ (BOOL)openProvision_MMMethodMMM;
+(BOOL)isAgreenProvision_MMMethodMMM;
+(BOOL)isShowTerm_MMMethodMMM;

+ (void)saveAgreenProvisionState_MMMethodMMM:(BOOL)agreen;
@property (copy,nonatomic) CCallBack mCCallBack;
@end

NS_ASSUME_NONNULL_END
