//
//  GAMACommonHeader.h
//

#ifndef _GamaCommonHeader_h
#define _GamaCommonHeader_h

#import <Availability.h>

#ifndef __IPHONE_5_0
#warning "This project uses features only available in iOS SDK 5.0 and later."
#endif

#ifdef __OBJC__
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#endif

#define GAMA_MAP_APIKEY                                 @"googleMapApiKey"

//存放资源文件Bundle名称
#define GAMA_GAME_IS_INITIALIZE_AD              @"gameIsInitializeAd"
    //是否初始化广告


// // //
/*提示得文字描述*/
#define GAMA_IAP_TEXT_NO_NET                            @"textIapNoNet"                           //提示语："服务器没有反应"
#define GAMA_IAP_TEXT_NO_MAKE_PAYMENTS                  @"textIapNoMakePayments"                  //提示语："PaymentQueue不支持購買支付！"
#define GAMA_IAP_TEXT_ONE_IS_PAYING                     @"textIapOneIsPaying"                     //提示语："有一筆交易正在進行中"
#define GAMA_IAP_TEXT_NO_THIS_ITEM                      @"textIapNoThisItem"                      //提示语："商品不存在！"
#define GAMA_IAP_TEXT_PARAMETER_NIL                     @"textIapParameterNil"                    //提示语："购买參數异常，请重新尝试!"
#define GAMA_IAP_TEXT_USER_CANCEL_PAY                   @"textIapUserCancelToPay"                 //提示语："您取消了購買！"
#define GAMA_IAP_TEXT_PAY_FAIL                          @"textIapAppStorePayFail"                 //提示语："AppStore支付失敗！\nE_code:%@"
#define GAMA_IAP_TEXT_BUY_SUCCESS                       @"textIapBuySuccess"                      //提示语："購買成功，遊戲幣已經發送:\n交易訂單號：%@\n祝您遊戲愉快！"
#define GAMA_IAP_TEXT_BUY_FAIL                          @"textIapBuyFail"                         //提示语："購買失敗:\n訂單號：%@\n請截屏後聯繫客服。\n屏幕截圖將視為補單唯一憑證！"
#define GAMA_IAP_TEXT_HAVE_SEND_STONE                   @"textIapHaveSendGameStone"               //提示语："交易訂單號：%@\n商品已經發送過，請注意查收！"
#define GAMA_IAP_TEXT_POST_CHECK_NO_NET                 @"textIapPostCheckNoNet"                  //提示语："訂單號:%@ \n由於網路不穩定，暫時無法獲取符石。建議在良好的網路環境下，點擊“確認”重新獲取符石；或嘗試重新登入遊戲查看。"
#define GAMA_IAP_TEXT_BUY_ERROR                         @"textIapBuyError"                        //提示语："交易訂單號：%@\n验证error！請截屏後聯繫我們客服。\n屏幕截圖將視為補單唯一憑證！"
#define GAMA_IAP_TEXT_SERVER_IN_MAINTAIN                @"textIapServerInMaintain"                //提示语："服務器維護中！\n請過一段時間進行購買，感謝您的支持。\nE_code：%@"


//#define GAMESWORD_EVENT_8MIN                @"flyfun_8min"
//#define GAMESWORD_EVENT_10MIN               @"flyfun_10min"
//#define GAMESWORD_EVENT_20MIN               @"flyfun_20min"
//#define GAMESWORD_EVENT_30MIN               @"flyfun_30min"
//#define GAMESWORD_EVENT_1RETENTION          @"gamesword_1retention"
//#define GAMESWORD_EVENT_3RETENTION          @"gamesword_3retention"
//#define GAMESWORD_EVENT_7RETENTION          @"gamesword_7retention"
//#define GAMESWORD_EVENT_15RETENTION         @"gamesword_15retention"
//#define GAMESWORD_EVENT_30RETENTION         @"gamesword_30retention"
//#define GAMESWORD_EVENT_IN_APP_PURCHASES    @"in_app_purchases"

#endif
