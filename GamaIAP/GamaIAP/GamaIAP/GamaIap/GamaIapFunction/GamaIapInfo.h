

#import "GamaCentreInfo.h"

//系统全打印
#define GAMA_IAP_LOG(flag) if(SDKConReader.ISPRINT){NSLog(@"FL_SDK_iap_log:%@",flag);}
#define GAMA_NIL                          @"GAMA_NIL_FLAG"                                      //Gama定义的空填充字符串
#define GAMA_ONE_PURCHASE_INFO_KEY        @"GAMA_ONE_PURCHASE_INFO_KEY"                         //一笔购买的本地保存KEY
#define GAMA_ONE_PURCHASE_PROCESS_LOG_KEY @"GAMA_ONE_PURCHASE_PROCESS_LOG_KEY"                  //购买的过程日志KEY
#define GAMA_THE_DIFFIENTE_GAMA_ORDER_IDS_KEY @"bfwCL9Dc739gK7OFdFEwyDdZLkuZWwP+3OJJvPhgiXPIjyZSIKRFBqhArdeMCOPA"

#define GAMA_IAP_URLSCHEME_MARK           @"_IAP_CALL_BACK_URLSCHEME_"
#define GAMA_IAP_URLSCHEME_POST_ALL       @"postAllHistory"

/*购买成功或者失败的广播名字*/
#define GAMA_PHCHASE_SUCCESS_IN @"GAMAPHCHASESUCCESSFUL" //购买商品成功
#define GAMA_PHCHASE_FAIL_IN    @"GAMAPHCHASEFAIL"       //购买商品失败
#define GAMA_PHCHASE_PUCHASING_IN  @"GAMAPHCHASING"          //购买商品中

#define GAMA_CURRENCY_CODE_DEFAULT_VALUE @"0"


/*当前交易的状态*/
#define GAMA_PARCHASE_WAIT_SP_SERVER_ORDERID             @"GAMA_PARCHASE_WAIT_SP_SERVER_ORDERID"             //等待SP服务器返回orderid状态
#define GAMA_PARCHASE_GET_SP_ORDERID_WAIT_PAY_RESULT     @"GAMA_PARCHASE_GET_SP_ORDERID_WAIT_PAY_RESULT"     //獲取SP orderid成功，等待支付結果
#define GAMA_PARCHASE_APPLE_PAY_SUCCESS_WAIT_POST_RESOURT  @"APPLE_PAY_SUCCESS_WAIT_POST_RESOURT"                //苹果支付成功，开始给Gama服务器验证
#define GAMA_PARCHASE_APPLE_PAY_FAIL_WAIT_TELL_SP_SERVER @"GAMA_PARCHASE_APPLE_PAY_FAIL_WAIT_TELL_SP_SERVER" //苹果服务器支付失败，等待告知服务器结果

