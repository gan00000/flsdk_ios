
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "SdkHeader.h"

NS_ASSUME_NONNULL_BEGIN
typedef void (^AppleLoginSuccess )(NSDictionary *__nullable result);
typedef void (^AppleLoginError)(NSError *__nullable error);
typedef void(^AppleCompleteHandler)(NSError * __nullable error, NSDictionary * __nullable results);

@interface CHMXTTErvice : NSObject

@property(nonatomic, assign)int  q_view;
@property(nonatomic, assign)int  report_index;




-(NSDictionary *)bufferTerlessConfirm:(NSInteger)headerRole tips:(NSString *)tips;

-(NSDictionary *)centerValuesProductInappSin;

-(Boolean)connectedOrderObjects;

-(long)hasRightMultipliedMisceairArchaeCouldn:(NSString *)failIdentifier http:(long)http;

+(double)changArryThirdDrawNetworkingTitles:(NSArray *)stringLogin level:(NSArray *)level;

-(NSDictionary *)josnPragmaHideCharacters:(NSDictionary *)dic;


@property (strong, nonatomic) NSString *appleThirdID;

+ (instancetype)share;

- (void)handleAuthrization:(UIView *_Nullable)mView;

- (void)makeAppleCallbackSuccessBlock_MMMethodMMM:(AppleLoginSuccess)successBlock andErrorBlock_MMMethodMMM:(AppleLoginError)errorBlock;


- (void)autoLoginAppleAccountWithInformation_MMMethodMMM;

- (NSDictionary *)fetchAppleLoginInfo_MMMethodMMM;
@end

NS_ASSUME_NONNULL_END
