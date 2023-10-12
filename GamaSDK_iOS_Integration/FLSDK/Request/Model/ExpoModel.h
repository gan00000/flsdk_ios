//
//  ExpoModel.h
//  MW_SDK
//
//  Created by Gan Yuanrong on 2023/10/12.
//  Copyright © 2023 Gama. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ExpoModel : NSObject

@property (nonatomic, copy) NSString *menuSelectImgUrl;
@property (nonatomic, copy) NSString *menuUnSelectImgUrl;
@property (nonatomic, copy) NSString *titleImgUrl;
@property (nonatomic, copy) NSString *backImgUrl;
@property (nonatomic, copy) NSString *closeImgUrl;
@property (nonatomic, copy) NSString *contentImgUrl;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *contentUrl;

@property (nonatomic, assign) BOOL isContentLoad;

@property (nonatomic, assign) BOOL isClick;

@end

NS_ASSUME_NONNULL_END
