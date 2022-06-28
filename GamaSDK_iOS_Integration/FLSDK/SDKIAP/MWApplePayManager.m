//
//  MWApplePayManager.m
//  FLSDK
//
//  Created by Gan Yuanrong on 2022/6/27.
//  Copyright © 2022 Gama. All rights reserved.
//

#import "MWApplePayManager.h"

#import <StoreKit/StoreKit.h>
#import "AlertUtil.h"
#import "SDKRequest.h"
#import "CreateOrderResp.h"

@interface MWApplePayManager ()<SKProductsRequestDelegate,SKPaymentTransactionObserver>

@property (nonatomic, copy) NSString *orderId;
//@property (nonatomic, copy) NSString *roleId;
@property (nonatomic)PayStatusBlock payStatusBlock;

@end

@implementation MWApplePayManager

+ (instancetype)shareManager
{
    static dispatch_once_t onceToken;
    static MWApplePayManager *manager = nil;
    dispatch_once(&onceToken, ^{
        manager = [[MWApplePayManager alloc]init];
        [manager initManager];
    });
    return manager;
}

- (void)dealloc{
    [self removeTransactionObserver];
}

- (void)initManager
{
    SDK_LOG(@"-addTransactionObserver");
    [[SKPaymentQueue defaultQueue] addTransactionObserver:self];
}

/** 检测客户端与服务器漏单情况处理*/
- (void)checkOrderStatus
{
    SDK_LOG(@"checkOrderStatus 检测客户端与服务器漏单情况处理");
    NSDictionary *orderInfoDic = [self getLocalReceiptData];
    if (orderInfoDic != nil) {
        
        for (id keyObj in orderInfoDic) {
            
            NSDictionary *subOrderDic = [orderInfoDic objectForKey:keyObj];
            if (!subOrderDic) {
                break;
            }
            NSString *orderId = subOrderDic[kSaveReceiptData_orderId];
            NSString *receiptData = subOrderDic[kSaveReceiptData_receiptData];
            NSString *transactionId = subOrderDic[kSaveReceiptData_transactionId];
            
            if (!receiptData) {
                break;
            }
            SDK_LOG(@"开始补发:transactionId=%@,orderId=%@",transactionId,orderId);
            [SDKRequest paymentWithTransactionId:transactionId receiptData:receiptData orderId:orderId gameInfo:SDK_DATA.gameUserModel accountModel:SDK_DATA.mLoginResponse.data otherParamsDic:nil successBlock:^(id responseData) {
                SDK_LOG(@"完成补发:transactionId=%@,orderId=%@",transactionId,orderId);
                [self removeLocReceiptDataByTranId:transactionId];
            } errorBlock:^(BJError *error) {
                SDK_LOG(@"补发错误:transactionId=%@,orderId=%@",transactionId,orderId);
            }];
        }
    }
}

#pragma mark -- 结束上次未完成的交易
-(void)removeAllUncompleteTransactionsBeforeNewPurchase{
    
    NSArray* transactions = [SKPaymentQueue defaultQueue].transactions;
    
    if (transactions.count >= 1) {
        SDK_LOG(@"结束所有apple未消耗订单");
        for (SKPaymentTransaction* transaction in transactions) {
            if (transaction.transactionState == SKPaymentTransactionStatePurchased ||transaction.transactionState == SKPaymentTransactionStateRestored) {//此处是否做个补发好一点...
                [[SKPaymentQueue defaultQueue]finishTransaction:transaction];
            }
        }
        
    }else{
        SDK_LOG(@"apple没有历史未消耗订单");
    }
}


-(void)startPayWithProductId:(NSString *)productId cpOrderId:(NSString *)cpOrderId extra:(NSString *)extra gameInfo:(GameUserModel*)gameUserModel accountModel:(AccountModel*) accountModel payStatusBlock:(PayStatusBlock)payStatusBlock
{
    self.payStatusBlock = payStatusBlock;
    [self checkOrderStatus];//检查本地订单状态
    
    self.orderId = @"";
    if (!cpOrderId || !productId) {
        [self finishPayWithStatus:NO msg:@"error:cpOrderId/productId empty"];
        return;
    }
    
    [SdkUtil showLoadingAtView:nil];
    [SDKRequest createOrderWithproductId:productId cpOrderId:cpOrderId extra:extra gameInfo:gameUserModel accountModel:accountModel otherParamsDic:nil successBlock:^(id responseData) {
        
        CreateOrderResp *cor = (CreateOrderResp *)responseData;
        self.orderId = cor.orderId;
//        self.roleId = gameUserModel.roleID;
        
        [self payWithOrderId:self.orderId productId:productId];
    } errorBlock:^(BJError *error) {
        [self finishPayWithStatus:NO msg:error.message];
    }];
    
}


/** 检测权限 添加支付监测 开始支付流程*/
- (void)payWithOrderId:(NSString *)orderId
                        productId:(NSString *)productId

{
    
    if (orderId == nil || productId == nil) {
        [self finishPayWithStatus:NO msg:@"error:orderId/productId empty"];
        return;
    }
    
//    if ([[XZDeviceManager didRoot] isEqualToString:@"didRoot"]) {//写自己的越狱判断方法
//        [AAProgressManager showFinishWithStatus:@"越狱手机不支持内购"];
//        return;
//    }
    SDK_LOG(@"-SKPaymentQueue canMakePayments]");
    if([SKPaymentQueue canMakePayments]){
        
        [self removeAllUncompleteTransactionsBeforeNewPurchase];
        self.orderId = orderId;
        [self requestProductData:productId];
        
    }else{
        [self finishPayWithStatus:NO msg:(@"請打開應用內購功能")];
    }
}

/** 去Apple IAP Service 根据商品ID请求商品信息*/
#pragma mark -根据商品ID请求商品信息
- (void)requestProductData:(NSString *)productId{
    
    NSArray *product = [[NSArray alloc] initWithObjects:productId,nil];
    
    NSSet *nsset = [NSSet setWithArray:product];
    SKProductsRequest *request = [[SKProductsRequest alloc] initWithProductIdentifiers:nsset];
    request.delegate = self;
    SDK_LOG(@"-SKProductsRequest start");
    [request start];
}

#pragma mark -请求付款
- (void)requestPament:(SKProduct *)p {
    
    SKMutablePayment *payment = [SKMutablePayment paymentWithProduct:p];
//    payment.quantity = (NSInteger)p.price;//购买次数=价钱
//    if (payment.quantity == 0) {
//        payment.quantity = 1;
//    }
    //設置用戶信息
    if ([SUtil getSystemVersion].intValue>7){
        payment.applicationUsername = self.orderId;//[NSString stringWithFormat:@"%@",[[AAUserManager shareManager] getUID]];
    }
    SDK_LOG(@"发起付款-addPayment");
    [[SKPaymentQueue defaultQueue] addPayment:payment];
}

#pragma mark -- SKProductsRequestDelegate

//收到产品返回信息  子線程
- (void)productsRequest:(SKProductsRequest *)request didReceiveResponse:(SKProductsResponse *)response{
    
    dispatch_async(dispatch_get_main_queue(), ^{
        
        NSArray *product = response.products;
        if([product count] == 0){
            [self finishPayWithStatus:NO msg:(@"無法獲取商品信息，請重新嘗試購買")];
            return;
        }
        
        SDK_LOG(@"产品付费数量:%ld",product.count);
        
        SKProduct *p = product.firstObject;
        
        [self requestPament:p];

    });
    
}

//请求失败
- (void)request:(SKRequest *)request didFailWithError:(NSError *)error{
    SDK_LOG(@"------------------错误didFailWithError-----------------:%@", error);
    dispatch_async(dispatch_get_main_queue(), ^{
        [self finishPayWithStatus:NO msg:(@"从Apple获取商品信息失败")];

    });
}

- (void)requestDidFinish:(SKRequest *)request{
    SDK_LOG(@"------------反馈信息结束requestDidFinish-----------------%@",request);
//    [SdkUtil stopLoadingAtView:nil];
}

#pragma mark -- 监听AppStore支付状态

- (void)paymentQueue:(SKPaymentQueue *)queue updatedTransactions:(NSArray *)transaction{
    
    SDK_LOG(@"监听AppStore支付状态");
    dispatch_async(dispatch_get_main_queue(), ^{
        
        for(SKPaymentTransaction *tran in transaction){
            //如果上一笔未调用finishTransaction，发起付款会直接回调到这里
            switch (tran.transactionState) {
                case SKPaymentTransactionStatePurchased:
                {
                    [self handleTransaction:tran];
//                    [[SKPaymentQueue defaultQueue] finishTransaction:tran];
                }
                    break;
                case SKPaymentTransactionStatePurchasing:
                    SDK_LOG(@"商品添加进列表 SKPaymentTransactionStatePurchasing");
                    break;
                case SKPaymentTransactionStateRestored:
                {
                    SDK_LOG(@"已经购买过商品");
                    [self completeTransaction:tran];
                    [self finishPayWithStatus:NO msg:@""];
                }
                    break;
                case SKPaymentTransactionStateFailed:
                {
                    SDK_LOG(@"交易失败:%@",tran.error);
                    [self completeTransaction:tran];
                    [self finishPayWithStatus:NO msg:@""];
                }
                    break;
                case SKPaymentTransactionStateDeferred:
                {
//                    [self completeTransaction:tran];
//                    [self finishPayWithStatus:NO msg:(@"最终状态未确定")];
                }
                    break;
                default:
                    [self completeTransaction:tran];
                    [self finishPayWithStatus:NO msg:@""];
                    break;
            }
        }
    });
    
}

#pragma mark -- 验证
-(void)handleTransaction:(SKPaymentTransaction *)transaction
{
    
    NSString *transactionId = transaction.transactionIdentifier;
    
    if ([StringUtil isEmpty:transactionId]) {
        
        [self completeTransaction:transaction];
        [self finishPayWithStatus:NO msg:@"transactionId is empty"];
        return;
    }
    
    //从沙盒中获取交易凭证并且拼接成请求体数据
    //验证字符串,如果是8.0以上的系统，通过新的方式获取到receiptData
    
    //未完成的情况下transactionId相同  receiptData每次会变
    NSURL *receiptUrl = [[NSBundle mainBundle] appStoreReceiptURL];
    NSData *receiptData = [NSData dataWithContentsOfURL:receiptUrl];
//    NSString *receiptString = [receiptData base64EncodedStringWithOptions:NSDataBase64EncodingEndLineWithLineFeed];
    
    NSString *receiptString = [SUtil encode:(uint8_t *)receiptData.bytes length:receiptData.length];
    
    [self saveReceiptData:receiptString transactionId:transactionId orderId:self.orderId];
    
    /*通过判断iOS版本号确定通过哪个方式获取payment中订单信息*/
    NSString * parameterStr = transaction.payment.applicationUsername;
    
    if (!parameterStr)
    {
        parameterStr = @"";
    }
    [SdkUtil showLoadingAtView:nil];
    [SDKRequest paymentWithTransactionId:transactionId receiptData:receiptString orderId:parameterStr gameInfo:SDK_DATA.gameUserModel accountModel:SDK_DATA.mLoginResponse.data otherParamsDic:nil successBlock:^(id responseData) {
        [self completeTransaction:transaction];// 结束订单
        [self removeLocReceiptDataByTranId:transactionId];
        [self finishPayWithStatus:YES msg:@""];
        
    } errorBlock:^(BJError *error) {
        [self completeTransaction:transaction];
        [self finishPayWithStatus:NO msg:error.message];
    }];
    
}

//失败处理
- (void)finishPayWithStatus:(BOOL)status msg:(NSString *)msg
{
    [SdkUtil stopLoadingAtView:nil];
    
    if (status) {
        SDK_LOG(@"finishPayWithStatus success");
        PayData *mPayData = [[PayData alloc] init];
        if (self.payStatusBlock) {
            self.payStatusBlock(status,nil);
        }
    }else{
        SDK_LOG(@"finishPayWithStatus fail");
        if ([StringUtil isNotEmpty:msg]) {
            [AlertUtil showAlertWithMessage:msg];
        }
        if (self.payStatusBlock) {
            self.payStatusBlock(status,nil);
        }
    }
   
    
}

//交易结束
- (void)completeTransaction:(SKPaymentTransaction *)transaction
{
    [SdkUtil stopLoadingAtView:nil];
    //需要完成才能下次购买
    [[SKPaymentQueue defaultQueue] finishTransaction:transaction];
}

- (void)removeTransactionObserver
{
    [[SKPaymentQueue defaultQueue] removeTransactionObserver:self];
}

#pragma mark -- 本地保存一次支付凭证
static NSString *const kSaveReceiptData = @"kSaveReceiptData_MW";
static NSString *const kSaveReceiptData_receiptData = @"kSaveReceiptData_receiptData";
static NSString *const kSaveReceiptData_orderId = @"kSaveReceiptData_orderId";
static NSString *const kSaveReceiptData_transactionId = @"kSaveReceiptData_transactionId";
static NSString *const kSaveReceiptData_time = @"kSaveReceiptData_time";

- (void)saveReceiptData:(NSString *)receiptData transactionId:(NSString *)transactionId orderId:(NSString *)orderId
{
    NSDictionary *localPayDataDic = [self getLocalReceiptData];
    if (localPayDataDic) {
        NSDictionary *subDic = localPayDataDic[transactionId];
        if (subDic) {
            return;
        }
    }
    
    NSDictionary *currentPayDicDes = @{kSaveReceiptData_receiptData:receiptData, kSaveReceiptData_orderId:orderId,kSaveReceiptData_transactionId:transactionId};
    NSMutableDictionary *payDatas = [[NSMutableDictionary alloc] initWithDictionary: localPayDataDic];
    [payDatas addEntriesFromDictionary:@{transactionId:currentPayDicDes}];
    
    
    [[NSUserDefaults standardUserDefaults] setValue:payDatas forKey:kSaveReceiptData];
    [[NSUserDefaults standardUserDefaults]synchronize];
}

- (NSDictionary *)getLocalReceiptData
{
    return [[NSUserDefaults standardUserDefaults] valueForKey:kSaveReceiptData];
}

- (void)removeLocReceiptDataByTranId:(NSString *)transactionId
{
    
    NSDictionary *localPayDataDic = [self getLocalReceiptData];
    if (localPayDataDic) {
        NSDictionary *subDic = localPayDataDic[transactionId];
        if (subDic) {
            NSMutableDictionary *payDatas = [[NSMutableDictionary alloc] initWithDictionary: localPayDataDic];
            [payDatas removeObjectForKey:transactionId];
            
            [[NSUserDefaults standardUserDefaults] setValue:payDatas forKey:kSaveReceiptData];
            [[NSUserDefaults standardUserDefaults]synchronize];
        }
    }
    
   
}


@end
