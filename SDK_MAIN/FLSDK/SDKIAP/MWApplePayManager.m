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

@property (nonatomic, copy) NSString *currentOrderId_MMMPRO;
//@property (nonatomic, copy) NSString *b_transactionId;
//@property (nonatomic, copy) NSString *b_productId;
//@property (nonatomic, copy) NSString *b_cpOrderId;

@property (nonatomic, strong) PayData *mPayData_MMMPRO;
@property (nonatomic)PayStatusBlock payStatusBlock_MMMPRO;

@end

@implementation MWApplePayManager

+ (instancetype)shareManager_MMMethodMMM
{
    static dispatch_once_t onceToken;
    static MWApplePayManager *manager = nil;
    dispatch_once(&onceToken, ^{
        manager = [[MWApplePayManager alloc]init];
        [manager initManager_MMMethodMMM];
    });
    return manager;
}

- (void)dealloc{
    [self removeTransactionObserver_MMMethodMMM];
}

- (void)initManager_MMMethodMMM
{
    SDK_LOG(wwwww_tag_wwwww__addTransactionObserver);
    [[SKPaymentQueue defaultQueue] addTransactionObserver:self];
}

/** 检测客户端与服务器漏单情况处理*/
- (void)checkOrderStatus_MMMethodMMM
{
    SDK_LOG(wwwww_tag_wwwww_detailally_bitance);
    NSDictionary *orderInfoDic = [self getLocalReceiptData_MMMethodMMM];
    if (orderInfoDic != nil) {
        
        for (id keyObj in orderInfoDic) {
            
            NSDictionary *subOrderDic = [orderInfoDic objectForKey:keyObj];
            if (!subOrderDic) {
                break;
            }
            NSString *orderIdLocal = subOrderDic[kSaveReceiptData_orderId];
            NSString *receiptData = subOrderDic[kSaveReceiptData_receiptData];
            NSString *transactionId = subOrderDic[kSaveReceiptData_transactionId];
            
            if (!receiptData || [StringUtil isEmpty_MMMethodMMM:orderIdLocal] || [StringUtil isEmpty_MMMethodMMM:transactionId]) {
                break;
            }
            SDK_LOG(wwwww_tag_wwwww_cauliator_whileenne,transactionId,orderIdLocal);
            [SDKRequest paymentWithTransactionId_MMMethodMMM:transactionId receiptData_MMMethodMMM:receiptData orderId_MMMethodMMM:orderIdLocal reissue_MMMethodMMM:wwwww_tag_wwwww_yes gameInfo_MMMethodMMM:SDK_DATA.gameUserModel_MMMPRO accountModel_MMMethodMMM:SDK_DATA.mLoginResponse_MMMPRO.data otherParamsDic_MMMethodMMM:nil successBlock_MMMethodMMM:^(id responseData) {
                SDK_LOG(wwwww_tag_wwwww_priviibility_ris,transactionId,orderIdLocal);
                [self removeLocReceiptDataByTranId_MMMethodMMM:transactionId];
                
                CreateOrderResp *cor = (CreateOrderResp *)responseData;
                
                if(cor){//判断cor(data)不为nil才上报
                    
                    PayData *xxPayData = [[PayData alloc] init];
                    xxPayData.orderId = cor.orderId;
                    xxPayData.timestamp = cor.timestamp;
                    xxPayData.amount = cor.amount;
                    xxPayData.productId = cor.productId;
                    xxPayData.transactionId = transactionId;
                    
                    [AdLogger logEventPurchaseValues_MMMethodMMM:xxPayData type_MMMethodMMM:(AdType_All)];
                }
                
                
            } errorBlock_MMMethodMMM:^(BJError *error) {
                SDK_LOG(wwwww_tag_wwwww_radfier_fringitude,transactionId,orderIdLocal);
            }];
        }
    }
}

#pragma mark -- 结束上次未完成的交易
-(void)removeAllUncompleteTransactionsBeforeNewPurchase_MMMethodMMM{
    
    NSArray* transactions = [SKPaymentQueue defaultQueue].transactions;
    
    if (transactions.count >= 1) {
        SDK_LOG(wwwww_tag_wwwww_vet_individualery, transactions.count);
        SDK_LOG(wwwww_tag_wwwww_radio_tenyesator);
        for (SKPaymentTransaction* transaction in transactions) {
            if (transaction.transactionState == SKPaymentTransactionStatePurchased ||transaction.transactionState == SKPaymentTransactionStateRestored) {//此处是否做个补发好一点...
                
//                NSString *transactionId = transaction.transactionIdentifier;
//
//                NSURL *receiptUrl = [[NSBundle mainBundle] appStoreReceiptURL];
//                NSData *receiptData = [NSData dataWithContentsOfURL:receiptUrl];
//                NSString *receiptString = [SUtil encode:(uint8_t *)receiptData.bytes length:receiptData.length];
//
//                NSString *applicationUsername = transaction.payment.applicationUsername;//此处applicationUsername会为nil
                
                [[SKPaymentQueue defaultQueue] finishTransaction:transaction];
            }
        }
        
    }else{
        SDK_LOG(wwwww_tag_wwwww_gasad_archi);
    }
}


-(void)startPayWithProductId_MMMethodMMM:(NSString *)productId cpOrderId_MMMethodMMM:(NSString *)cpOrderId extra_MMMethodMMM:(NSString *)extra gameInfo_MMMethodMMM:(GameUserModel*)gameUserModel accountModel_MMMethodMMM:(AccountModel*) accountModel payStatusBlock_MMMethodMMM:(PayStatusBlock)payStatusBlock
{
    
    [SdkUtil showLoadingAtView_MMMethodMMM:nil];
    
    self.payStatusBlock_MMMPRO = payStatusBlock;
  
    [self checkOrderStatus_MMMethodMMM];//检查本地订单状态
    
    self.currentOrderId_MMMPRO = @"";
    self.mPayData_MMMPRO = [[PayData alloc] init];
    
    if (!cpOrderId || !productId) {
        [self finishPayWithStatus_MMMethodMMM:NO msg_MMMethodMMM:wwwww_tag_wwwww_error_cpOrderId_productId_empty];
        return;
    }
    self.mPayData_MMMPRO.productId = productId;
    self.mPayData_MMMPRO.cpOrderId = cpOrderId;

    
    //[SdkUtil showLoadingAtView_MMMethodMMM:nil];
    [SDKRequest createOrderWithproductId_MMMethodMMM:productId cpOrderId_MMMethodMMM:cpOrderId extra_MMMethodMMM:extra gameInfo_MMMethodMMM:gameUserModel accountModel_MMMethodMMM:accountModel otherParamsDic_MMMethodMMM:nil successBlock_MMMethodMMM:^(id responseData) {
        
        CreateOrderResp *cor = (CreateOrderResp *)responseData;
        self.currentOrderId_MMMPRO = cor.orderId;
        self.mPayData_MMMPRO.amount = cor.amount;
//        self.roleId = gameUserModel.roleID;
        
        [self payWithOrderId_MMMethodMMM:self.currentOrderId_MMMPRO productId_MMMethodMMM:productId];
    } errorBlock_MMMethodMMM:^(BJError *error) {
        [self finishPayWithStatus_MMMethodMMM:NO msg_MMMethodMMM:error.message];
    }];
    
}


/** 检测权限 添加支付监测 开始支付流程*/
- (void)payWithOrderId_MMMethodMMM:(NSString *)orderId
                        productId_MMMethodMMM:(NSString *)productId

{
    
    if (orderId == nil || productId == nil) {
        [self finishPayWithStatus_MMMethodMMM:NO msg_MMMethodMMM:wwwww_tag_wwwww_error_orderId_productId_empty];
        return;
    }
    
//    if ([[XZDeviceManager didRoot] isEqualToString:wwwww_tag_wwwww_didRoot]) {//写自己的越狱判断方法
//        [AAProgressManager showFinishWithStatus:wwwww_tag_wwwww_marketly_umbrern];
//        return;
//    }
    SDK_LOG(wwwww_tag_wwwww_offertion_brachyible);
    if([SKPaymentQueue canMakePayments]){
        
        [self removeAllUncompleteTransactionsBeforeNewPurchase_MMMethodMMM];
        self.currentOrderId_MMMPRO = orderId;
        [self requestProductData_MMMethodMMM:productId];
        
    }else{
        [self finishPayWithStatus_MMMethodMMM:NO msg_MMMethodMMM:(wwwww_tag_wwwww_In_app_purchases_are_not_supported)];
    }
}

/** 去Apple IAP Service 根据商品ID请求商品信息*/
#pragma mark -根据商品ID请求商品信息
- (void)requestProductData_MMMethodMMM:(NSString *)productId{
    
    NSArray *product = [[NSArray alloc] initWithObjects:productId,nil];
    
    NSSet *nsset = [NSSet setWithArray:product];
    SKProductsRequest *request = [[SKProductsRequest alloc] initWithProductIdentifiers:nsset];
    request.delegate = self;
    SDK_LOG(wwwww_tag_wwwww__SKProductsRequest_start);
    [request start];
}

#pragma mark -请求付款
- (void)requestPament_MMMethodMMM:(SKProduct *)p {
    
    SKMutablePayment *payment = [SKMutablePayment paymentWithProduct:p];
//    payment.quantity = (NSInteger)p.price;//购买次数=价钱
//    if (payment.quantity == 0) {
//        payment.quantity = 1;
//    }
    //設置用戶信息
    if ([SUtil getSystemVersion_MMMethodMMM].intValue>7){
        payment.applicationUsername = self.currentOrderId_MMMPRO;//[NSString stringWithFormat:@"%@",[[AAUserManager shareManager_MMMethodMMM] getUID]];
    }
    SDK_LOG(wwwww_tag_wwwww_solization_stataneous);
    [[SKPaymentQueue defaultQueue] addPayment:payment];
}

#pragma mark -- SKProductsRequestDelegate

//收到产品返回信息  子線程
- (void)productsRequest:(SKProductsRequest *)request didReceiveResponse:(SKProductsResponse *)response{ //system_method
    
    dispatch_async(dispatch_get_main_queue(), ^{
        
        NSArray *product = response.products;
        if([product count] == 0){
            [self finishPayWithStatus_MMMethodMMM:NO msg_MMMethodMMM:(wwwww_tag_wwwww_bromine_gentet)];//無法獲取商品信息，請重新嘗試購買
            return;
        }
        
        SDK_LOG(wwwww_tag_wwwww_create_cune,product.count);
        
        SKProduct *p = product.firstObject;
        
        [self requestPament_MMMethodMMM:p];

    });
    
}

//请求失败
- (void)request:(SKRequest *)request didFailWithError:(NSError *)error{ //system_method
    SDK_LOG(wwwww_tag_wwwww_pulverless_scindot, error);
    dispatch_async(dispatch_get_main_queue(), ^{
        [self finishPayWithStatus_MMMethodMMM:NO msg_MMMethodMMM:(wwwww_tag_wwwww_Failed_to_get_product_information_from_Apple)];

    });
}

- (void)requestDidFinish:(SKRequest *)request{//system_method
    SDK_LOG(wwwww_tag_wwwww_pastate_emewise,request);
//    [SdkUtil stopLoadingAtView_MMMethodMMM:nil];
}

#pragma mark -- 监听AppStore支付状态

- (void)paymentQueue:(SKPaymentQueue *)queue updatedTransactions:(NSArray *)transaction{//system_method
    
    SDK_LOG(wwwww_tag_wwwww_yourselfenne_pent);
    dispatch_async(dispatch_get_main_queue(), ^{
        
        for(SKPaymentTransaction *tran in transaction){
            //如果上一笔未调用finishTransaction，发起付款会直接回调到这里
            switch (tran.transactionState) {
                case SKPaymentTransactionStatePurchased://没有消耗的话，相同的productId会被直接返回
                {
                    SDK_LOG(wwwww_tag_wwwww_modelibility_husbandature);
                    [self handleTransaction_MMMethodMMM:tran];
//                    [[SKPaymentQueue defaultQueue] finishTransaction:tran];
                }
                    break;
                case SKPaymentTransactionStatePurchasing:
                    SDK_LOG(wwwww_tag_wwwww_velleade_deltlet);
                    break;
                case SKPaymentTransactionStateRestored:
                {
                    SDK_LOG(wwwww_tag_wwwww_listenaneous_lacrimaskatic);
                    [self completeTransaction_MMMethodMMM:tran];
                    [self finishPayWithStatus_MMMethodMMM:NO msg_MMMethodMMM:@""];
                }
                    break;
                case SKPaymentTransactionStateFailed:
                {
                    SDK_LOG(wwwww_tag_wwwww_flucenter_bewithoutarian,tran.error);
                    [self completeTransaction_MMMethodMMM:tran];
                    [self finishPayWithStatus_MMMethodMMM:NO msg_MMMethodMMM:@""];
                }
                    break;
                case SKPaymentTransactionStateDeferred:
                {
                    SDK_LOG(wwwww_tag_wwwww_SKPaymentTransactionStateDeferred);
//                    [self completeTransaction_MMMethodMMM:tran];
//                    [self finishPayWithStatus_MMMethodMMM:NO msg_MMMethodMMM:(wwwww_tag_wwwww_court_hundredlet)];
                }
                    break;
                default:
                    [self completeTransaction_MMMethodMMM:tran];
                    [self finishPayWithStatus_MMMethodMMM:NO msg_MMMethodMMM:@""];
                    break;
            }
        }
    });
    
}

#pragma mark -- 验证
-(void)handleTransaction_MMMethodMMM:(SKPaymentTransaction *)transaction
{
    
    NSString *transactionId = transaction.transactionIdentifier;
    //获取product_id
    NSString *product_id = transaction.payment.productIdentifier;
    
    if ([StringUtil isEmpty_MMMethodMMM:transactionId]) {
        
        [self completeTransaction_MMMethodMMM:transaction];
        [self finishPayWithStatus_MMMethodMMM:NO msg_MMMethodMMM:wwwww_tag_wwwww_transactionId_is_empty];
        return;
    }
    
    //从沙盒中获取交易凭证并且拼接成请求体数据
    //验证字符串,如果是8.0以上的系统，通过新的方式获取到receiptData
    
    //未完成的情况下transactionId相同  receiptData每次会变
    NSURL *receiptUrl = [[NSBundle mainBundle] appStoreReceiptURL];
    NSData *receiptData = [NSData dataWithContentsOfURL:receiptUrl];
//    NSString *receiptString = [receiptData base64EncodedStringWithOptions:NSDataBase64EncodingEndLineWithLineFeed];
    
    /**
     {
         "receipt": {
             "receipt_type": "ProductionSandbox",
             "adam_id": 0,  //沙盒为0，线上是appId ,需要验证
             "app_item_id": 0,
             "bundle_id": "com.mplay.wlzhs",  //需要验证
             "application_version": "1",
             "download_id": 0,
             "version_external_identifier": 0,
             "receipt_creation_date": "2022-12-06 04:20:04 Etc/GMT",
             "receipt_creation_date_ms": "1670300404000",
             "receipt_creation_date_pst": "2022-12-05 20:20:04 America/Los_Angeles",
             "request_date": "2022-12-06 04:23:06 Etc/GMT",
             "request_date_ms": "1670300586758",
             "request_date_pst": "2022-12-05 20:23:06 America/Los_Angeles",
             "original_purchase_date": "2013-08-01 07:00:00 Etc/GMT",
             "original_purchase_date_ms": "1375340400000",
             "original_purchase_date_pst": "2013-08-01 00:00:00 America/Los_Angeles",
             "original_application_version": "1.0",
             "in_app": [
                 {
                     "quantity": "1",
                     "product_id": "com.mplay.wlzhs.tqlb2", //需要验证
                     "transaction_id": "2000000219999864",
                     "original_transaction_id": "2000000219999864",
                     "purchase_date": "2022-12-06 03:59:03 Etc/GMT",
                     "purchase_date_ms": "1670299143000",
                     "purchase_date_pst": "2022-12-05 19:59:03 America/Los_Angeles",
                     "original_purchase_date": "2022-12-06 03:59:03 Etc/GMT",
                     "original_purchase_date_ms": "1670299143000",
                     "original_purchase_date_pst": "2022-12-05 19:59:03 America/Los_Angeles",
                     "is_trial_period": "false",
                     "in_app_ownership_type": "PURCHASED"
                 }
             ]
         },
         "environment": "Sandbox",
         "status": 0
     }
     */

    //每次获取都会改变，但in_app信息不会变，需要验证
    NSString *receiptString = [SUtil encode:(uint8_t *)receiptData.bytes length:receiptData.length];
    
    /*通过判断iOS版本号确定通过哪个方式获取payment中订单信息*/
    
//    在開發過程中，無法直接關聯 transaction 與 orderID 之間聯絡，雖然有一個 applicationUserName 欄位，可以儲存一個資訊。但是這個欄位是不是 100%靠譜，在某些情況下會丟失儲存的資料。
    //没有消耗的话，相同的productId会被直接返回，此时applicationUsername为空值
    NSString * parameterStr = transaction.payment.applicationUsername;
    NSString *reissue = wwwww_tag_wwwww_no;
    NSString *transferOrderId = parameterStr;
    NSString *localRecord = wwwww_tag_wwwww_0000;
    
    if (!parameterStr || [@"" isEqualToString:parameterStr])//applicationUsername为空值，一般是apple丢单情况
    {
        transferOrderId = @"";
        //此时去找历史订单，找到transactionId相同的记录，把orderId赋值
        NSDictionary *localPayDataDic = [self getLocalReceiptData_MMMethodMMM];
        if (localPayDataDic) {
            NSDictionary *subDic = localPayDataDic[transactionId];
            if (subDic) {
                NSString *orderIdTemp = subDic[kSaveReceiptData_orderId];
//                NSString *receiptData = subDic[kSaveReceiptData_receiptData];
//                NSString *transactionId = subDic[kSaveReceiptData_transactionId];
                SDK_LOG(wwwww_tag_wwwww_bankivity_not,transactionId,orderIdTemp);
                parameterStr = orderIdTemp;
                reissue = wwwww_tag_wwwww_no_2;
                localRecord = wwwww_tag_wwwww_1000;
            }else{
                //applicationUsername无值(一般是购买掉单情况)且本地无记录，即本地没有接收到apple的反馈
                reissue = wwwww_tag_wwwww_no_3;
                localRecord = wwwww_tag_wwwww_1001;
            }
        }else{
            //applicationUsername无值(一般是购买掉单情况)且本地无记录，即本地没有接收到apple的反馈
            reissue = wwwww_tag_wwwww_no_3;
            localRecord = wwwww_tag_wwwww_1001;
        }
        
        
        //如果此处仍为空值，把当前生成的订单赋值（该笔订单可能为不是对应该笔成功的充值的）
        if([StringUtil isEmpty_MMMethodMMM:parameterStr]){
            parameterStr = self.currentOrderId_MMMPRO;
        }
        
    }
    //记录保存
    [self saveReceiptData_MMMethodMMM:receiptString transactionId_MMMethodMMM:transactionId orderId_MMMethodMMM:parameterStr];
    
    NSDictionary *otherParamsDic = @{
        wwwww_tag_wwwww_currentOrderId       :  self.currentOrderId_MMMPRO ? : @"",
        wwwww_tag_wwwww_transferOrderId      :  transferOrderId ? : @"",
        wwwww_tag_wwwww_isOnPaying            :   @"true",
        wwwww_tag_wwwww_payEnv            :   localRecord,
    };
    
    [SdkUtil showLoadingAtView_MMMethodMMM:nil];
    [SDKRequest paymentWithTransactionId_MMMethodMMM:transactionId receiptData_MMMethodMMM:receiptString orderId_MMMethodMMM:parameterStr reissue_MMMethodMMM:reissue gameInfo_MMMethodMMM:SDK_DATA.gameUserModel_MMMPRO accountModel_MMMethodMMM:SDK_DATA.mLoginResponse_MMMPRO.data otherParamsDic_MMMethodMMM:otherParamsDic successBlock_MMMethodMMM:^(id responseData) {
        
        CreateOrderResp *cor = (CreateOrderResp *)responseData;
        self.mPayData_MMMPRO.timestamp = cor.timestamp;
        self.mPayData_MMMPRO.orderId = cor.orderId;
        
        [self completeTransaction_MMMethodMMM:transaction];// 结束订单
        [self removeLocReceiptDataByTranId_MMMethodMMM:transactionId];
        self.mPayData_MMMPRO.transactionId = transactionId;
        [self finishPayWithStatus_MMMethodMMM:YES msg_MMMethodMMM:@""];
        
    } errorBlock_MMMethodMMM:^(BJError *error) {
        [self completeTransaction_MMMethodMMM:transaction];
        [self finishPayWithStatus_MMMethodMMM:NO msg_MMMethodMMM:error.message];
    }];
    
}

//失败处理
- (void)finishPayWithStatus_MMMethodMMM:(BOOL)status msg_MMMethodMMM:(NSString *)msg
{
    [SdkUtil stopLoadingAtView_MMMethodMMM:nil];
    
    if (status) {
        SDK_LOG(wwwww_tag_wwwww_finishPayWithStatus_success);
//        self.mPayData.orderId = self.currentOrderId;
        
        if (self.payStatusBlock_MMMPRO) {
            self.payStatusBlock_MMMPRO(status,self.mPayData_MMMPRO);
        }
    }else{
        SDK_LOG(wwwww_tag_wwwww_finishPayWithStatus_fail);
        if ([StringUtil isNotEmpty_MMMethodMMM:msg]) {
            [AlertUtil showAlertWithMessage_MMMethodMMM:msg];
        }
        if (self.payStatusBlock_MMMPRO) {
            self.payStatusBlock_MMMPRO(status,nil);
        }
    }
   
    
}

//交易结束
- (void)completeTransaction_MMMethodMMM:(SKPaymentTransaction *)transaction
{
    [SdkUtil stopLoadingAtView_MMMethodMMM:nil];
    //需要完成才能下次购买
    [[SKPaymentQueue defaultQueue] finishTransaction:transaction];
}

- (void)removeTransactionObserver_MMMethodMMM
{
    [[SKPaymentQueue defaultQueue] removeTransactionObserver:self];
}

#pragma mark -- 本地保存一次支付凭证
static NSString *const kSaveReceiptData = @"kSaveReceiptData_MW";
static NSString *const kSaveReceiptData_receiptData = @"kSaveReceiptData_receiptData";
static NSString *const kSaveReceiptData_orderId = @"kSaveReceiptData_orderId";
static NSString *const kSaveReceiptData_transactionId = @"kSaveReceiptData_transactionId";
static NSString *const kSaveReceiptData_time = @"kSaveReceiptData_time";

- (void)saveReceiptData_MMMethodMMM:(NSString *)receiptData transactionId_MMMethodMMM:(NSString *)transactionId orderId_MMMethodMMM:(NSString *)orderId
{
    NSDictionary *localPayDataDic = [self getLocalReceiptData_MMMethodMMM];
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

- (NSDictionary *)getLocalReceiptData_MMMethodMMM
{
    return [[NSUserDefaults standardUserDefaults] valueForKey:kSaveReceiptData];
}

- (void)removeLocReceiptDataByTranId_MMMethodMMM:(NSString *)transactionId
{
    
    NSDictionary *localPayDataDic = [self getLocalReceiptData_MMMethodMMM];
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
