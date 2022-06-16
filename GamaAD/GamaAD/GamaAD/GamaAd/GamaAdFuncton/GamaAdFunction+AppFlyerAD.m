

#import "GamaAdFunction.h"
#import "GamaAlertView.h"
#import "GamaAdInfo.h"

@implementation GamaAdFunction (AppFlyerAD)

+ (void)appFlayerTrackWith:(ADTrackType)trackType
{
    [self appFlayerTrackWith:trackType userDefineEvent:@""];
}

+ (void)appFlayerTrackWith:(ADTrackType)trackType userDefineEvent:(NSString *)userDefineEventString
{
    NSString *appFlyerDevKey = SDKConReaderGetString(GAMA_AD_APPSFLYER_DEV_KEY);
    NSString *appFlyerAppId = SDKConReaderGetString(GAMA_AD_APPSFLYER_APP_ID);
    NSString *appFlyerCurrencyCode = SDKConReaderGetString(GAMA_AD_APPSFLYER_CURRENT_CODE);
    GamaParameterType parameterType = [self isEmptyStrings:appFlyerDevKey,appFlyerAppId,appFlyerCurrencyCode, [NSNull null]];
    Class GamaAppsFlyerTracker = NSClassFromString(@"AppsFlyerTracker");
    if (parameterType == GamaParameterTypeComplete && GamaAppsFlyerTracker == nil) {
        //[GamaAlertView showAlertWithMessage:@"Please import AppFlyer Library."];
        NSLog(@"Please import AppFlyer Library.");
    } else if (parameterType == GamaParameterTypeBroken) {
        [AlertUtil showAlertWithMessage:@"The config is not complete, Please check it."];
    } else if (parameterType == GamaParameterTypeComplete && GamaAppsFlyerTracker != nil) {
        id gamaShareTracker = [GamaAppsFlyerTracker sharedTracker];
        switch (trackType) {
            case ADTrackTypeInit: // AppFlyer配置初始化
                [gamaShareTracker setAppsFlyerDevKey:appFlyerDevKey];
                [gamaShareTracker setAppleAppID:appFlyerAppId];
                [gamaShareTracker setCustomerUserID:[GamaFunction getGamaUUID]];
                [gamaShareTracker setCurrencyCode:appFlyerCurrencyCode];
                break;
            case ADTrackTypeLanch: // 跟踪BecomeActive事件
                [gamaShareTracker trackAppLaunch];
                break;
            case ADTrackTypeFinishGuide: // 跟踪过新手引导事件
                [gamaShareTracker trackEvent:@"finish_guide" withValue:@""];
                break;
            case ADTrackTypeRegister: // 跟踪注册事件
                [gamaShareTracker trackEvent:@"registration" withValue:@""];
                break;
            case ADTrackTypeNextDayLogin: // 跟踪玩家从安装首次启动游戏时的次日登录事件
                [gamaShareTracker trackEvent:@"next_day_login" withValue:@""];
                break;
            case ADTrackTypeUserDefine:
                [gamaShareTracker trackEvent:userDefineEventString withValue:@""];
                break;
            default:
                break;
        }
    }
}

+ (void)appFlayerTrackWithEventName:(NSString *)eventName eventValues:(NSDictionary *)values{
    NSString *appFlyerDevKey = SDKConReaderGetString(GAMA_AD_APPSFLYER_DEV_KEY);
    NSString *appFlyerAppId = SDKConReaderGetString(GAMA_AD_APPSFLYER_APP_ID);
    NSString *appFlyerCurrencyCode = SDKConReaderGetString(GAMA_AD_APPSFLYER_CURRENT_CODE);
    GamaParameterType parameterType = [self isEmptyStrings:appFlyerDevKey,appFlyerAppId,appFlyerCurrencyCode, [NSNull null]];
    Class GamaAppsFlyerTracker = NSClassFromString(@"AppsFlyerTracker");
    if (parameterType == GamaParameterTypeComplete && GamaAppsFlyerTracker == nil) {
//        [GamaAlertView showAlertWithMessage:@"Please import AppFlyer Library."];
        NSLog(@"Please import AppFlyer Library.");
    } else if (parameterType == GamaParameterTypeBroken) {
        [AlertUtil showAlertWithMessage:@"The config is not complete, Please check it."];
    } else if (parameterType == GamaParameterTypeComplete && GamaAppsFlyerTracker != nil) {
        id gamaShareTracker = [GamaAppsFlyerTracker sharedTracker];
        [gamaShareTracker trackEvent:eventName withValues:values];
    }
}
@end
