/*
 内购的相关提示
 */

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "GamaIapFunction.h"
#import "GamaIapInfo.h"
#import "GamaIapData.h"
#import "GamaIapServerAccess.h"
#import "GamaIapRecodeAndLog.h"
#import "GamaIapAlertView.h"
#import "GamaIapTransactionRecorder.h"
#import "GamaIapMemoryAndLocalDataAdmin.h"
#import "GamaFunction.h"
#import "GamaURLConnect.h"
#import "GamaAlertView.h"
#import "GamaCentreInfo.h"
#import "GamaSecurity.h"
#import "GamaRequestor.h"
#import "GamaSecurityFunction.h"

/*
 枚举，罗列出所以可能的提示情况
 */
typedef  enum{
    GAMA_IAP_NoNet = 0,             //絡不給力，請檢查網絡！
    GAMA_IAP_NoMakePayments,        //當前環境不適合購買！
    GAMA_IAP_OneIsBuying,           //有一筆交易正在進行中！
    GAMA_IAP_NoThisGood,            //商品不存在！
    GAMA_IAP_UserCancelToBuy,       //您取消了購買！
    GAMA_IAP_AppStorePayFail,       //AppStore支付失敗！
    GAMA_IAP_BuySuccess,            //購買成功，遊戲幣已經發送:\n交易訂單號：%@\n祝您遊戲愉快！
    GAMA_IAP_BuyFail,               //購買失敗:\n訂單號：%@\n請截屏後聯繫客服。
    GAMA_IAP_HaveSendGameGold,      //交易訂單號：%@\n遊戲幣已經發送，請注意查收！
    GAMA_IAP_PostNoNet,             //交易訂單號：%@\n向服務器發送驗證失敗！
    GAMA_IAP_BuyError,              //验证错误。
    GAMA_IAP_BuyServerInMaintain,   //服务器再维修中
    GAMA_IAP_Parameter_nil          //检查厂商传递过来有空值
}GamaIapAlertViewType;

@interface GamaIapAlertView : NSObject

/*
 弹出提示alertView: 
    alertType:  提示类型
    Amessage:   需要transactionID的参数提示,传过来transactionID，不必要时候，传nil
    delegate:   必要时候指定代理,不需要是nil
 */
+(UIAlertView *)showAlertWithMessage:(NSString *)message
                       andCompletion:(GamaAlertViewHandler)handler
                             andType:(GamaIapAlertViewType)type;

@end
