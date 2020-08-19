

#import "GamaIapData.h"

#import "GamaIapFunction.h"
#import "GamaIapInfo.h"
//#import "GamaIapData.h"
#import "GamaIapServerAccess.h"
#import "GamaIapRecodeAndLog.h"
#import "GamaIapAlertView.h"
#import "GamaIapTransactionRecorder.h"
#import "GamaIapMemoryAndLocalDataAdmin.h"
// --
#import "GamaFunction.h"
#import "GamaURLConnect.h"
#import "GamaAlertView.h"
#import "GamaCentreInfo.h"
#import "GamaSecurity.h"
#import "GamaRequestor.h"
#import "GamaSecurityFunction.h"

@implementation GamaIapData
@synthesize uiAlertpurchasingView,uiAlertpurchsingController;

//游戏内部直接传递过来的参数
@synthesize userID;
@synthesize playerID;
@synthesize serverCode;
@synthesize productID;
@synthesize remarkStr;
@synthesize roleLevel;
@synthesize roleName;

//访问服务器获取的参数orderID
@synthesize orderId;

//购买成功以后获取的交易信息
@synthesize transactionID;
@synthesize transactionReciptData;

//一些状态，计数器的属性
@synthesize ISPURCHASING;
@synthesize ISREPURCHASE;
@synthesize POST_TIME;
@synthesize APPLE_PAY_FAIL_CODE;

@synthesize currencyCode;
@synthesize currentLocalPrice;
//@synthesize iapProductArr;

#pragma mark -

//移除掉对AppStore支付的监听
-(void)dealloc
{
    /*清除已有的记录数据*/
    [self clearMemoryData];
    /*移除苹果监听*/
    [[SKPaymentQueue defaultQueue] removeTransactionObserver:[GamaIapData defaultData]];
    //******
    [super dealloc];
}

//初始化所有参数
-(id)init
{
    self=[super init];
    if (self) {
        //******
        self.userID                = nil;
        self.playerID              = nil;
        self.serverCode            = nil;
        self.productID             = nil;
        self.remarkStr             = nil;
        self.roleLevel             = nil;
        self.roleName              = nil;
        //******
        self.orderId           = nil;
        //******
        self.transactionID         = nil;
        self.transactionReciptData = nil;
        //******
        self.ISPURCHASING          = NO;
        self.ISREPURCHASE          = NO;
        self.WHETHER_USE_REQUESTDATA=NO;
        self.POST_TIME             = 0; //初始化post次数为0
        
        self.currencyCode      = GAMA_CURRENCY_CODE_DEFAULT_VALUE;
        self.currentLocalPrice = GAMA_CURRENCY_CODE_DEFAULT_VALUE;
//        self.iapProductArr         = nil;
    }
    return self;
}
//获取到单例
+(GamaIapData *)defaultData
{
    static GamaIapData * iapDataCenter;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken,^{
        iapDataCenter = [[GamaIapData alloc]init];
        [[SKPaymentQueue defaultQueue] addTransactionObserver:iapDataCenter];
    });
    return iapDataCenter;
}

#pragma mark -
#pragma mark 清除所有参数
#pragma mark -

-(void)clearMemoryData
{
    //******
    self.userID                = nil;
    self.playerID              = nil;
    self.serverCode            = nil;
    self.productID             = nil;
    self.remarkStr             = nil;
    self.roleLevel             = nil;
    self.roleName              = nil;
    //******
    self.orderId           = nil;
    //******
    self.transactionID         = nil;
    self.transactionReciptData = nil;
    
    self.currencyCode       = GAMA_CURRENCY_CODE_DEFAULT_VALUE;
    self.currentLocalPrice  = GAMA_CURRENCY_CODE_DEFAULT_VALUE;
}

#pragma mark -
#pragma mark 獲取蘋果商品结果
#pragma mark -

// 向苹果获取商品信息
// Custom method
+ (void)validateProductIdentifiers:(NSArray *)productIdentifiers
{
    SKProductsRequest *productsRequest = [[[SKProductsRequest alloc]
                                          initWithProductIdentifiers:[NSSet setWithArray:productIdentifiers]] autorelease];
    productsRequest.delegate = [GamaIapData defaultData];
    [productsRequest start];
}

// 拿到商品相关信息
// SKProductsRequestDelegate protocol method
- (void)productsRequest:(SKProductsRequest *)request
     didReceiveResponse:(SKProductsResponse *)response
{
    //product Call
    if (response.products.count >= 1) {
        NSLocale * tmpLocalProduct = response.products[0].priceLocale;
        NSDecimalNumber *tmpProductPrice = response.products[0].price;
        
        NSNumberFormatter *numberFormatter = [[[NSNumberFormatter alloc] init] autorelease];
        [numberFormatter setFormatterBehavior:NSNumberFormatterBehavior10_4];
        [numberFormatter setNumberStyle:NSNumberFormatterDecimalStyle];         //we only want the number
        [numberFormatter setLocale:tmpLocalProduct];
        NSString *formattedPriceDecimalNumber = [numberFormatter stringFromNumber:tmpProductPrice];
        
        NSString *tmpCurrencyCode = [tmpLocalProduct objectForKey:NSLocaleCurrencyCode];
        [GamaIapMemoryAndLocalDataAdmin paySuccessUpdateLocalDataWithCurrencyCode:tmpCurrencyCode andLocalPrice:formattedPriceDecimalNumber];
    }
}

#pragma mark -
#pragma mark 监视AppStore支付结果
#pragma mark -

-(void)paymentQueue:(SKPaymentQueue *)queue updatedTransactions:(NSArray *)transactions
{
    
    [GAMA_IAP_LOG paymentQueue_updatedTransactionsCalled];
    for (SKPaymentTransaction *transaction in transactions)
    {
        [GAMA_IAP_LOG theTransaction:transaction.transactionIdentifier andState:transaction.transactionState payingState:[GamaIapData defaultData].ISPURCHASING date:transaction.transactionDate];
        switch (transaction.transactionState)
        {
            case SKPaymentTransactionStatePurchased:
            {
                NSArray *tmpArr = [NSArray arrayWithObject:transaction.payment.productIdentifier];
                [GamaIapData validateProductIdentifiers:tmpArr];
                
                [self dismissPurchasingView];
                //如果ispurchasing==no说明是正在进行补单。
                if ([GamaIapData defaultData].ISPURCHASING==NO)
                {
                    //如果是在补单过程中，苹果第二次自发的交易，什么也不做
                    if (ISREPURCHASE)
                    {
                        [self _recordExecptionOrder:transaction];
//                        return;
                    }
                    ISREPURCHASE=YES;
                    GAMA_IAP_LOG(@"******************************")
                    GAMA_IAP_LOG(@"paymentQueue start re_purchase,begin read data to memory from local(SKPaymentTransactionStatePurchased)")
                    GAMA_IAP_LOG(@"******************************")
                    //查看本地有没有上次的信息纪录，如果有上次的纪录，初始化成员变量返回YES，如果没有，返回NO
                    BOOL DOES_HAVE_LOCAL_DATA = [GamaIapFunction setDataFromLocal];
                    //如果有记录，并且初始化过数据了，开始下一步服务器验证
                    if (DOES_HAVE_LOCAL_DATA)
                    {
                        ISPURCHASING=YES;

                        [GamaIapFunction completeTransaction:transaction];
                    }
                    //如果没有，结束交易，清除数据（此方法可能是多余的,但是执行一次没有坏处）
                    else
                    {
                        [self _recordExecptionOrder:transaction];
                        
                        [GamaIapFunction completeTransaction:transaction];
                    }
                }
                //如果是用户点击购买的情况。
                else
                {
                    //如果是在补单过程中，苹果第二次自发的交易，什么也不做
                    if (ISREPURCHASE)
                    {
                        [self _recordExecptionOrder:transaction];
                    }
                    [GamaIapFunction completeTransaction:transaction];
                }
            };break;
                
            case SKPaymentTransactionStateFailed:{
                [self dismissPurchasingView];
                [GamaIapFunction failedTransaction:transaction];//自定义方法
            };break;
                
            case SKPaymentTransactionStatePurchasing:
            {
                [self showPurchasingView];
                //广播交易中消息
                [[NSNotificationCenter defaultCenter]postNotificationName:GAMA_PHCHASE_PUCHASING_IN
                                                                   object:nil
                                                                 userInfo:nil];
                GAMA_IAP_LOG(@"one is purchasing (SKPaymentTransactionStatePurchasing)")
            };break;
                
            default:
                [[SKPaymentQueue defaultQueue] finishTransaction:transaction];//保险
                break;
        }
    }
}

- (void)_recordExecptionOrder:(SKPaymentTransaction *)tmpTransaction
{
    NSData * receiptData=nil;
   
    NSURL *receiptUrl = [[NSBundle mainBundle] appStoreReceiptURL];
    receiptData = [NSData dataWithContentsOfURL:receiptUrl];
    
    [GAMA_IAP_LOG recodeExceptionOrderWithTransactionID:tmpTransaction.transactionIdentifier
                                     andTransactionData:receiptData];
}

- (void)showPurchasingView
{
    if ([GamaFunction getSystemVersion].floatValue >= 8.0) {
        if (self.uiAlertpurchsingController) {
            return;
        }
    } else {
        if (self.uiAlertpurchasingView) {
            return;
        }
    }
    
    NSString *tmpMes = SDKConReaderGetLocalizedString(@"_PAYING_");

    if ([GamaFunction getSystemVersion].floatValue >= 8.0) {
        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"" message:tmpMes preferredStyle:UIAlertControllerStyleAlert];
        
        [[GamaFunction getCurrentViewController] presentViewController:alertController animated:YES completion:nil];
        self.uiAlertpurchsingController = alertController;
    } else {
        UIAlertView *tempView = [[[UIAlertView alloc] initWithTitle:@"" message:tmpMes delegate:nil cancelButtonTitle:nil otherButtonTitles:nil, nil] autorelease];
        UIActivityIndicatorView *spinner = [[[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge] autorelease];
        spinner.center = CGPointMake(139.5f, 75.5f);
        [tempView addSubview:spinner];
        dispatch_async(dispatch_get_main_queue(), ^{
            [spinner startAnimating];
            [tempView show];
        });
        self.uiAlertpurchasingView = tempView;
    }
}

- (void)dismissPurchasingView
{
    if ([GamaFunction getSystemVersion].floatValue >= 8.0) {
        if (self.uiAlertpurchsingController) {
            [self.uiAlertpurchsingController dismissViewControllerAnimated:YES completion:nil];
            self.uiAlertpurchsingController = nil;
        }
    } else {
        if (self.uiAlertpurchasingView) {
            [self.uiAlertpurchasingView dismissWithClickedButtonIndex:0 animated:YES];
            self.uiAlertpurchasingView = nil;
        }
    }
}

@end
