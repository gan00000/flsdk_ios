//
//  TermsView.h
//  GamaSDK_iOS
//
//  Created by ganyuanrong on 2020/8/1.
//  Copyright © 2020 Gama. All rights reserved.
//

#import "SDKBaseView.h"

NS_ASSUME_NONNULL_BEGIN

@interface TermsView : SDKBaseView
- (instancetype)initWithCompleter_MMMethodMMM:(void (^)(void))completer;

+ (BOOL)openProvision_MMMethodMMM;
+(BOOL)isAgreenProvision_MMMethodMMM;
+ (void)saveAgreenProvisionState_MMMethodMMM:(BOOL)agreen;
@end

NS_ASSUME_NONNULL_END
