

#import "GamaIapAlertView.h"


@implementation GamaIapAlertView

+(UIAlertView *)showAlertWithMessage:(NSString *)Amessage
                       andCompletion:(GamaAlertViewHandler)handler
                             andType:(GamaIapAlertViewType)type
{
    //处理提示内容
    NSString * message=nil;
    switch (type)
    {
        case GAMA_IAP_NoNet:            message=SDKConReaderGetString(GAMA_IAP_TEXT_NO_NET); break;//網絡不給力，請檢查網絡！
        case GAMA_IAP_NoMakePayments:   message=SDKConReaderGetString(GAMA_IAP_TEXT_NO_MAKE_PAYMENTS); break;//PaymentQuene不支持購買支付!
        case GAMA_IAP_OneIsBuying:      message=SDKConReaderGetString(GAMA_IAP_TEXT_ONE_IS_PAYING); break;//有一筆交易正在進行中
        case GAMA_IAP_Parameter_nil:    message=SDKConReaderGetString(GAMA_IAP_TEXT_PARAMETER_NIL); break;//购买异常，请重新尝试
        case GAMA_IAP_UserCancelToBuy:  message=SDKConReaderGetString(GAMA_IAP_TEXT_USER_CANCEL_PAY); break;//您取消了購買！\nE_code:%@
        case GAMA_IAP_AppStorePayFail:
            message=[NSString stringWithFormat:SDKConReaderGetString(GAMA_IAP_TEXT_PAY_FAIL),Amessage]; break;//AppStore支付失敗！\nE_code:%@
        case GAMA_IAP_BuySuccess:
            message=[NSString stringWithFormat:SDKConReaderGetString(GAMA_IAP_TEXT_BUY_SUCCESS),Amessage]; break;//購買成功，遊戲幣已經發送:\n交易訂單號：%@\n祝您遊戲愉快！
        case GAMA_IAP_BuyFail:
            message=[NSString stringWithFormat:SDKConReaderGetString(GAMA_IAP_TEXT_BUY_FAIL),Amessage]; break;//購買失敗:\n訂單號：%@\n請截屏後聯繫客服。\n屏幕截圖將視為補單唯一憑證！
        case GAMA_IAP_HaveSendGameGold:
            message=[NSString stringWithFormat:SDKConReaderGetString(GAMA_IAP_TEXT_HAVE_SEND_STONE),Amessage]; break;//交易訂單號：%@\n遊戲幣已經發送過，請注意查收！
        case GAMA_IAP_PostNoNet:
            message=[NSString stringWithFormat:SDKConReaderGetString(GAMA_IAP_TEXT_POST_CHECK_NO_NET),Amessage]; break;//訂單號:%@ \n由於網路不穩定，暫時無法獲取符石。建議在良好的網路環境下，點擊“確認”重新獲取符石；或嘗試重新登入遊戲查看。
        case GAMA_IAP_BuyError:
            message=[NSString stringWithFormat:SDKConReaderGetString(GAMA_IAP_TEXT_BUY_ERROR),Amessage]; break;//交易訂單號：%@\n验证error！請截屏後聯繫我們客服。\n屏幕截圖將視為補單唯一憑證！
        case GAMA_IAP_BuyServerInMaintain:
            message=[NSString stringWithFormat:SDKConReaderGetString(GAMA_IAP_TEXT_SERVER_IN_MAINTAIN),Amessage]; break;//服務器維護中！\n請過一段時間進行購買，感謝您的支持。\nE_code：%@
        default:break;
    }
    //弹出提示窗口
    if (handler==nil)
    {
        return [GamaAlertView showAlertWithMessage:message];
    }
    else
    {
        return [GamaAlertView showAlertWithMessage:message
                                        completion:handler
                                   andButtonTitles:SDKConReaderGetString(GAMA_TITLE_ALERT_SURE_BTN_TITLE), nil];
    }
    return nil;
}

@end
