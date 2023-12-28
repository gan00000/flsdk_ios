

#import "OleotRule.h"

#import <StoreKit/StoreKit.h>
#import "FearicalVoracwise.h"
#import "AnxiariumVehwindature.h"
#import "FindChelonit.h"

@interface OleotRule ()<SKProductsRequestDelegate,SKPaymentTransactionObserver>

@property (nonatomic, copy) NSString *currentOrderId_MMMPRO;

@property (nonatomic, strong) PayData *mPayData_MMMPRO;
@property (nonatomic)PayStatusBlock payStatusBlock_MMMPRO;

@end

@implementation OleotRule

+ (instancetype)shareManager_MMMethodMMM
{
    static dispatch_once_t onceToken;
    static OleotRule *manager = nil;
    dispatch_once(&onceToken, ^{
        manager = [[OleotRule alloc]init];
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
            
            if (!receiptData || [VentlongonDifficult isEmpty_MMMethodMMM:orderIdLocal] || [VentlongonDifficult isEmpty_MMMethodMMM:transactionId]) {
                break;
            }
            SDK_LOG(wwwww_tag_wwwww_cauliator_whileenne,transactionId,orderIdLocal);
            [AnxiariumVehwindature paymentWithTransactionId_MMMethodMMM:transactionId receiptData_MMMethodMMM:receiptData orderId_MMMethodMMM:orderIdLocal reissue_MMMethodMMM:wwwww_tag_wwwww_yes gameInfo_MMMethodMMM:SDK_DATA.gameUserModel_MMMPRO accountModel_MMMethodMMM:SDK_DATA.mLoginResponse_MMMPRO.data otherParamsDic_MMMethodMMM:nil successBlock_MMMethodMMM:^(id responseData) {
                SDK_LOG(wwwww_tag_wwwww_priviibility_ris,transactionId,orderIdLocal);
                [self removeLocReceiptDataByTranId_MMMethodMMM:transactionId];
                
                FindChelonit *cor = (FindChelonit *)responseData;
                
                if(cor){
                    
                    PayData *xxPayData = [[PayData alloc] init];
                    xxPayData.orderId = cor.orderId;
                    xxPayData.timestamp = cor.timestamp;
                    xxPayData.amount = cor.amount;
                    xxPayData.productId = cor.productId;
                    xxPayData.transactionId = transactionId;
                    
                    [SacerdomUnderstandfic logEventPurchaseValues_MMMethodMMM:xxPayData type_MMMethodMMM:(AdType_All)];
                }
                
                
            } errorBlock_MMMethodMMM:^(AlleloitySex *error) {
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
            if (transaction.transactionState == SKPaymentTransactionStatePurchased ||transaction.transactionState == SKPaymentTransactionStateRestored) {
                
                
                [[SKPaymentQueue defaultQueue] finishTransaction:transaction];
            }
        }
        
    }else{
        SDK_LOG(wwwww_tag_wwwww_gasad_archi);
    }
}


-(void)startPayWithProductId_MMMethodMMM:(NSString *)productId cpOrderId_MMMethodMMM:(NSString *)cpOrderId extra_MMMethodMMM:(NSString *)extra gameInfo_MMMethodMMM:(BehaviorenneMediacle*)gameUserModel accountModel_MMMethodMMM:(TvadeRhigant*) accountModel payStatusBlock_MMMethodMMM:(PayStatusBlock)payStatusBlock
{
    
    [StinityAsterature showLoadingAtView_MMMethodMMM:nil];
    
    self.payStatusBlock_MMMPRO = payStatusBlock;
  
    [self checkOrderStatus_MMMethodMMM];
    
    self.currentOrderId_MMMPRO = @"";
    self.mPayData_MMMPRO = [[PayData alloc] init];
    
    if (!cpOrderId || !productId) {
        [self finishPayWithStatus_MMMethodMMM:NO msg_MMMethodMMM:wwwww_tag_wwwww_error_cpOrderId_productId_empty];
        return;
    }
    self.mPayData_MMMPRO.productId = productId;
    self.mPayData_MMMPRO.cpOrderId = cpOrderId;

    
    
    [AnxiariumVehwindature createOrderWithproductId_MMMethodMMM:productId cpOrderId_MMMethodMMM:cpOrderId extra_MMMethodMMM:extra gameInfo_MMMethodMMM:gameUserModel accountModel_MMMethodMMM:accountModel otherParamsDic_MMMethodMMM:nil successBlock_MMMethodMMM:^(id responseData) {
        
        FindChelonit *cor = (FindChelonit *)responseData;
        self.currentOrderId_MMMPRO = cor.orderId;
        self.mPayData_MMMPRO.amount = cor.amount;
        
        [self payWithOrderId_MMMethodMMM:self.currentOrderId_MMMPRO productId_MMMethodMMM:productId];
    } errorBlock_MMMethodMMM:^(AlleloitySex *error) {
        [self finishPayWithStatus_MMMethodMMM:NO msg_MMMethodMMM:error.message];
    }];
    
}



- (void)payWithOrderId_MMMethodMMM:(NSString *)orderId
                        productId_MMMethodMMM:(NSString *)productId

{
    
    if (orderId == nil || productId == nil) {
        [self finishPayWithStatus_MMMethodMMM:NO msg_MMMethodMMM:wwwww_tag_wwwww_error_orderId_productId_empty];
        return;
    }
    
    SDK_LOG(wwwww_tag_wwwww_offertion_brachyible);
    if([SKPaymentQueue canMakePayments]){
        
        [self removeAllUncompleteTransactionsBeforeNewPurchase_MMMethodMMM];
        self.currentOrderId_MMMPRO = orderId;
        [self requestProductData_MMMethodMMM:productId];
        
    }else{
        [self finishPayWithStatus_MMMethodMMM:NO msg_MMMethodMMM:(wwwww_tag_wwwww_In_app_purchases_are_not_supported)];
    }
}


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
    
    if ([CollectionDoloroant getSystemVersion_MMMethodMMM].intValue>7){
        payment.applicationUsername = self.currentOrderId_MMMPRO;
    }
    SDK_LOG(wwwww_tag_wwwww_solization_stataneous);
    [[SKPaymentQueue defaultQueue] addPayment:payment];
}

#pragma mark -- SKProductsRequestDelegate

- (void)productsRequest:(SKProductsRequest *)request didReceiveResponse:(SKProductsResponse *)response{ 
    
    dispatch_async(dispatch_get_main_queue(), ^{
        
        NSArray *product = response.products;
        if([product count] == 0){
            [self finishPayWithStatus_MMMethodMMM:NO msg_MMMethodMMM:(wwwww_tag_wwwww_bromine_gentet)];
            return;
        }
        
        SDK_LOG(wwwww_tag_wwwww_create_cune,product.count);
        
        SKProduct *p = product.firstObject;
        
        [self requestPament_MMMethodMMM:p];

    });
    
}

- (void)request:(SKRequest *)request didFailWithError:(NSError *)error{ 
    SDK_LOG(wwwww_tag_wwwww_pulverless_scindot, error);
    dispatch_async(dispatch_get_main_queue(), ^{
        [self finishPayWithStatus_MMMethodMMM:NO msg_MMMethodMMM:(wwwww_tag_wwwww_Failed_to_get_product_information_from_Apple)];

    });
}

- (void)requestDidFinish:(SKRequest *)request{
    SDK_LOG(wwwww_tag_wwwww_pastate_emewise,request);
}

#pragma mark -- 监听AppStore支付状态

- (void)paymentQueue:(SKPaymentQueue *)queue updatedTransactions:(NSArray *)transaction{
    
    SDK_LOG(wwwww_tag_wwwww_yourselfenne_pent);
    dispatch_async(dispatch_get_main_queue(), ^{
        
        for(SKPaymentTransaction *tran in transaction){
            
            switch (tran.transactionState) {
                case SKPaymentTransactionStatePurchased://没有消耗的话，相同的productId会被直接返回
                {
                    SDK_LOG(wwwww_tag_wwwww_modelibility_husbandature);
                    [self handleTransaction_MMMethodMMM:tran];
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
    
    NSString *product_id = transaction.payment.productIdentifier;
    
    if ([VentlongonDifficult isEmpty_MMMethodMMM:transactionId]) {
        
        [self completeTransaction_MMMethodMMM:transaction];
        [self finishPayWithStatus_MMMethodMMM:NO msg_MMMethodMMM:wwwww_tag_wwwww_transactionId_is_empty];
        return;
    }
    
    
    
    
    
    NSURL *receiptUrl = [[NSBundle mainBundle] appStoreReceiptURL];
    NSData *receiptData = [NSData dataWithContentsOfURL:receiptUrl];
    
    

    
    NSString *receiptString = [CollectionDoloroant encode:(uint8_t *)receiptData.bytes length:receiptData.length];
    
    
    
    
    NSString * parameterStr = transaction.payment.applicationUsername;
    NSString *reissue = wwwww_tag_wwwww_no;
    NSString *transferOrderId = parameterStr;
    NSString *localRecord = wwwww_tag_wwwww_0000;
    
    if (!parameterStr || [@"" isEqualToString:parameterStr])
    {
        transferOrderId = @"";
        
        NSDictionary *localPayDataDic = [self getLocalReceiptData_MMMethodMMM];
        if (localPayDataDic) {
            NSDictionary *subDic = localPayDataDic[transactionId];
            if (subDic) {
                NSString *orderIdTemp = subDic[kSaveReceiptData_orderId];
                SDK_LOG(wwwww_tag_wwwww_bankivity_not,transactionId,orderIdTemp);
                parameterStr = orderIdTemp;
                reissue = wwwww_tag_wwwww_no_2;
                localRecord = wwwww_tag_wwwww_1000;
            }else{
                
                reissue = wwwww_tag_wwwww_no_3;
                localRecord = wwwww_tag_wwwww_1001;
            }
        }else{
            
            reissue = wwwww_tag_wwwww_no_3;
            localRecord = wwwww_tag_wwwww_1001;
        }
        
        
        
        if([VentlongonDifficult isEmpty_MMMethodMMM:parameterStr]){
            parameterStr = self.currentOrderId_MMMPRO;
        }
        
    }
    
    [self saveReceiptData_MMMethodMMM:receiptString transactionId_MMMethodMMM:transactionId orderId_MMMethodMMM:parameterStr];
    
    NSDictionary *otherParamsDic = @{
        wwwww_tag_wwwww_currentOrderId       :  self.currentOrderId_MMMPRO ? : @"",
        wwwww_tag_wwwww_transferOrderId      :  transferOrderId ? : @"",
        wwwww_tag_wwwww_isOnPaying            :   @"true",
        wwwww_tag_wwwww_payEnv            :   localRecord,
    };
    
    [StinityAsterature showLoadingAtView_MMMethodMMM:nil];
    [AnxiariumVehwindature paymentWithTransactionId_MMMethodMMM:transactionId receiptData_MMMethodMMM:receiptString orderId_MMMethodMMM:parameterStr reissue_MMMethodMMM:reissue gameInfo_MMMethodMMM:SDK_DATA.gameUserModel_MMMPRO accountModel_MMMethodMMM:SDK_DATA.mLoginResponse_MMMPRO.data otherParamsDic_MMMethodMMM:otherParamsDic successBlock_MMMethodMMM:^(id responseData) {
        
        FindChelonit *cor = (FindChelonit *)responseData;
        self.mPayData_MMMPRO.timestamp = cor.timestamp;
        self.mPayData_MMMPRO.orderId = cor.orderId;
        
        [self completeTransaction_MMMethodMMM:transaction];
        [self removeLocReceiptDataByTranId_MMMethodMMM:transactionId];
        self.mPayData_MMMPRO.transactionId = transactionId;
        [self finishPayWithStatus_MMMethodMMM:YES msg_MMMethodMMM:@""];
        
    } errorBlock_MMMethodMMM:^(AlleloitySex *error) {
        [self completeTransaction_MMMethodMMM:transaction];
        [self finishPayWithStatus_MMMethodMMM:NO msg_MMMethodMMM:error.message];
    }];
    
}

- (void)finishPayWithStatus_MMMethodMMM:(BOOL)status msg_MMMethodMMM:(NSString *)msg
{
    [StinityAsterature stopLoadingAtView_MMMethodMMM:nil];
    
    if (status) {
        SDK_LOG(wwwww_tag_wwwww_finishPayWithStatus_success);
        
        if (self.payStatusBlock_MMMPRO) {
            self.payStatusBlock_MMMPRO(status,self.mPayData_MMMPRO);
        }
    }else{
        SDK_LOG(wwwww_tag_wwwww_finishPayWithStatus_fail);
        if ([VentlongonDifficult isNotEmpty_MMMethodMMM:msg]) {
            [FearicalVoracwise showAlertWithMessage_MMMethodMMM:msg];
        }
        if (self.payStatusBlock_MMMPRO) {
            self.payStatusBlock_MMMPRO(status,nil);
        }
    }
   
    
}

- (void)completeTransaction_MMMethodMMM:(SKPaymentTransaction *)transaction
{
    [StinityAsterature stopLoadingAtView_MMMethodMMM:nil];
    
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
