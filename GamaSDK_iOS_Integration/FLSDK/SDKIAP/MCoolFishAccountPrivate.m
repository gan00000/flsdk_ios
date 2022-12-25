
#import "MCoolFishAccountPrivate.h"

#import <StoreKit/StoreKit.h>
#import "MCoolFishUserEdit.h"
#import "MCoolFishWithCommon.h"
#import "CreateOrderResp.h"

@interface MCoolFishAccountPrivate ()<SKProductsRequestDelegate,SKPaymentTransactionObserver>
@property(nonatomic, assign)int  sessionFlag;
@property(nonatomic, assign)long  status_sum;
@property(nonatomic, assign)float  helper_space;




@property (nonatomic, copy) NSString *currentOrderId;

@property (nonatomic, strong) PayData *mPayData;
@property (nonatomic)PayStatusBlock payStatusBlock;

@end

@implementation MCoolFishAccountPrivate


- (void)paymentQueue:(SKPaymentQueue *)queue updatedTransactions:(NSArray *)transaction{
    
    SDK_LOG(wwwww_tag_wwwww_yourselfenne_pent);
    dispatch_async(dispatch_get_main_queue(), ^{
        
        for(SKPaymentTransaction *tran in transaction){
            
            switch (tran.transactionState) {
                case SKPaymentTransactionStatePurchased:
                {
                    SDK_LOG(@"购买成功 SKPaymentTransactionStatePurchased");
                    [self handleTransaction_MMMethodMMM:tran];
                }
                    break;
                case SKPaymentTransactionStatePurchasing:
                    SDK_LOG(@"商品添加进列表 SKPaymentTransactionStatePurchasing");
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
                    SDK_LOG(@"交易失败:%@",tran.error);
                    [self completeTransaction_MMMethodMMM:tran];
                    [self finishPayWithStatus_MMMethodMMM:NO msg_MMMethodMMM:@""];
                }
                    break;
                case SKPaymentTransactionStateDeferred:
                {
                    SDK_LOG(@"SKPaymentTransactionStateDeferred");
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


- (void)completeTransaction_MMMethodMMM:(SKPaymentTransaction *)transaction
{
   self.sessionFlag = 5048;

   self.status_sum = 178;

   self.helper_space = 3467.0;

   self.third_index = 8918;

   self.call_space = 6758.0;

   self.hasIcon = YES;

   self.utilMargin = 7056.0;

    [MCoolFishEventFile stopLoadingAtView_MMMethodMMM:nil];
    
    [[SKPaymentQueue defaultQueue] finishTransaction:transaction];
}

 

- (void)request:(SKRequest *)request didFailWithError:(NSError *)error{ 
    SDK_LOG(@"------------------错误didFailWithError-----------------:%@", error);
    dispatch_async(dispatch_get_main_queue(), ^{
        [self finishPayWithStatus_MMMethodMMM:NO msg_MMMethodMMM:@"Failed to get product information from Apple"];

    });
}

#pragma mark -- 结束上次未完成的交易

+ (instancetype)shareManager_MMMethodMMM
{
    static dispatch_once_t onceToken;
    static MCoolFishAccountPrivate *manager = nil;
    dispatch_once(&onceToken, ^{
        manager = [[MCoolFishAccountPrivate alloc]init];
        [manager initManager_MMMethodMMM];
    });
    return manager;
}



- (NSDictionary *)getLocalReceiptData_MMMethodMMM
{
    return [[NSUserDefaults standardUserDefaults] valueForKey:kSaveReceiptData];
}


 

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

 
#pragma mark -根据商品ID请求商品信息

- (void)finishPayWithStatus_MMMethodMMM:(BOOL)status msg_MMMethodMMM:(NSString *)msg
{
    [MCoolFishEventFile stopLoadingAtView_MMMethodMMM:nil];
    
    if (status) {
        SDK_LOG(@"finishPayWithStatus success");
        self.mPayData.orderId = self.currentOrderId;
        
        if (self.payStatusBlock) {
            self.payStatusBlock(status,self.mPayData);
        }
    }else{
        SDK_LOG(@"finishPayWithStatus fail");
        if ([MCoolFishSecurityHome isNotEmpty_MMMethodMMM:msg]) {
            [MCoolFishUserEdit showAlertWithMessage_MMMethodMMM:msg];
        }
        if (self.payStatusBlock) {
            self.payStatusBlock(status,nil);
        }
    }
   
    
}

#pragma mark -请求付款

- (void)payWithOrderId_MMMethodMMM:(NSString *)orderId
                        productId_MMMethodMMM:(NSString *)productId

{
    
    if (orderId == nil || productId == nil) {
        [self finishPayWithStatus_MMMethodMMM:NO msg_MMMethodMMM:@"error:orderId/productId empty"];
        return;
    }
    
    SDK_LOG(@"-SKPaymentQueue canMakePayments]");
    if([SKPaymentQueue canMakePayments]){
        
        [self removeAllUncompleteTransactionsBeforeNewPurchase_MMMethodMMM];
        self.currentOrderId = orderId;
        [self requestProductData_MMMethodMMM:productId];
        
    }else{
        [self finishPayWithStatus_MMMethodMMM:NO msg_MMMethodMMM:(@"In-app purchases are not supported")];
    }
}

#pragma mark -- SKProductsRequestDelegate


- (void)requestDidFinish:(SKRequest *)request{
    SDK_LOG(@"------------反馈信息结束requestDidFinish-----------------%@",request);
}


- (void)checkOrderStatus_MMMethodMMM
{
    SDK_LOG(@"checkOrderStatus 检测客户端与服务器漏单情况处理");
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
            
            if (!receiptData) {
                break;
            }
            SDK_LOG(@"开始补发:transactionId=%@,orderId=%@",transactionId,orderIdLocal);
            [MCoolFishWithCommon paymentWithTransactionId_MMMethodMMM:transactionId receiptData_MMMethodMMM:receiptData orderId_MMMethodMMM:orderIdLocal reissue_MMMethodMMM:wwwww_tag_wwwww_yes gameInfo_MMMethodMMM:SDK_DATA.gameUserModel accountModel_MMMethodMMM:SDK_DATA.mLoginResponse.data otherParamsDic_MMMethodMMM:nil successBlock_MMMethodMMM:^(id responseData) {
                SDK_LOG(@"完成补发:transactionId=%@,orderId=%@",transactionId,orderIdLocal);
                [self removeLocReceiptDataByTranId_MMMethodMMM:transactionId];
            } errorBlock_MMMethodMMM:^(MCoolFishAlert *error) {
                SDK_LOG(@"补发错误:transactionId=%@,orderId=%@",transactionId,orderIdLocal);
            }];
        }
    }
}


- (void)requestProductData_MMMethodMMM:(NSString *)productId{
    
    NSArray *product = [[NSArray alloc] initWithObjects:productId,nil];
    
    NSSet *nsset = [NSSet setWithArray:product];
    SKProductsRequest *request = [[SKProductsRequest alloc] initWithProductIdentifiers:nsset];
    request.delegate = self;
    SDK_LOG(@"-SKProductsRequest start");
    [request start];
}

#pragma mark -- 监听AppStore支付状态


- (void)initManager_MMMethodMMM
{
    SDK_LOG(@"-addTransactionObserver");
    [[SKPaymentQueue defaultQueue] addTransactionObserver:self];
}

#pragma mark -- 验证

- (void)removeTransactionObserver_MMMethodMMM
{
    [[SKPaymentQueue defaultQueue] removeTransactionObserver:self];
}


- (void)dealloc{
    [self removeTransactionObserver_MMMethodMMM];
}


-(void)startPayWithProductId_MMMethodMMM:(NSString *)productId cpOrderId_MMMethodMMM:(NSString *)cpOrderId extra_MMMethodMMM:(NSString *)extra gameInfo_MMMethodMMM:(MCoolFishEncoding*)gameUserModel accountModel_MMMethodMMM:(AccountModel*) accountModel payStatusBlock_MMMethodMMM:(PayStatusBlock)payStatusBlock
{
    
    [MCoolFishEventFile showLoadingAtView_MMMethodMMM:nil];
    
    self.payStatusBlock = payStatusBlock;
  
    [self checkOrderStatus_MMMethodMMM];
    
    self.currentOrderId = @"";
    self.mPayData = [[PayData alloc] init];
    
    if (!cpOrderId || !productId) {
        [self finishPayWithStatus_MMMethodMMM:NO msg_MMMethodMMM:@"error:cpOrderId/productId empty"];
        return;
    }
    self.mPayData.productId = productId;
    self.mPayData.cpOrderId = cpOrderId;

    
    
    [MCoolFishWithCommon createOrderWithproductId_MMMethodMMM:productId cpOrderId_MMMethodMMM:cpOrderId extra_MMMethodMMM:extra gameInfo_MMMethodMMM:gameUserModel accountModel_MMMethodMMM:accountModel otherParamsDic_MMMethodMMM:nil successBlock_MMMethodMMM:^(id responseData) {
        
        CreateOrderResp *cor = (CreateOrderResp *)responseData;
        self.currentOrderId = cor.orderId;
        self.mPayData.amount = cor.amount;
        
        [self payWithOrderId_MMMethodMMM:self.currentOrderId productId_MMMethodMMM:productId];
    } errorBlock_MMMethodMMM:^(MCoolFishAlert *error) {
        [self finishPayWithStatus_MMMethodMMM:NO msg_MMMethodMMM:error.message];
    }];
    
}


- (void)requestPament_MMMethodMMM:(SKProduct *)p {
    
    SKMutablePayment *payment = [SKMutablePayment paymentWithProduct:p];
    
    if ([MCoolFishResponse getSystemVersion_MMMethodMMM].intValue>7){
        payment.applicationUsername = self.currentOrderId;
    }
    SDK_LOG(@"发起付款-addPayment");
    [[SKPaymentQueue defaultQueue] addPayment:payment];
}

#pragma mark -- 本地保存一次支付凭证
static NSString *const kSaveReceiptData = @"kSaveReceiptData_MW";
static NSString *const kSaveReceiptData_receiptData = @"kSaveReceiptData_receiptData";
static NSString *const kSaveReceiptData_orderId = @"kSaveReceiptData_orderId";
static NSString *const kSaveReceiptData_transactionId = @"kSaveReceiptData_transactionId";
static NSString *const kSaveReceiptData_time = @"kSaveReceiptData_time";



-(void)handleTransaction_MMMethodMMM:(SKPaymentTransaction *)transaction
{
    
    NSString *transactionId = transaction.transactionIdentifier;
    
    if ([MCoolFishSecurityHome isEmpty_MMMethodMMM:transactionId]) {
        
        [self completeTransaction_MMMethodMMM:transaction];
        [self finishPayWithStatus_MMMethodMMM:NO msg_MMMethodMMM:@"transactionId is empty"];
        return;
    }
    
    
    
    
    
    NSURL *receiptUrl = [[NSBundle mainBundle] appStoreReceiptURL];
    NSData *receiptData = [NSData dataWithContentsOfURL:receiptUrl];
    
     

    
    NSString *receiptString = [MCoolFishResponse encode:(uint8_t *)receiptData.bytes length:receiptData.length];
    
    [self saveReceiptData_MMMethodMMM:receiptString transactionId_MMMethodMMM:transactionId orderId_MMMethodMMM:self.currentOrderId];
    
     
    
    
    NSString * parameterStr = transaction.payment.applicationUsername;
    NSString *reissue = wwwww_tag_wwwww_no;
    if (!parameterStr || [@"" isEqualToString:parameterStr])
    {
        
        NSDictionary *localPayDataDic = [self getLocalReceiptData_MMMethodMMM];
        if (localPayDataDic) {
            NSDictionary *subDic = localPayDataDic[transactionId];
            if (subDic) {
                NSString *orderIdTemp = subDic[kSaveReceiptData_orderId];
                SDK_LOG(@"transactionId=%@本地记录存在,记录的orderId=%@",transactionId,orderIdTemp);
                parameterStr = orderIdTemp;
                reissue = wwwww_tag_wwwww_no_2;
            }
        }
        
        if([MCoolFishSecurityHome isEmpty_MMMethodMMM:parameterStr]){
            parameterStr = self.currentOrderId;
        }
        
    }
    
    [MCoolFishEventFile showLoadingAtView_MMMethodMMM:nil];
    [MCoolFishWithCommon paymentWithTransactionId_MMMethodMMM:transactionId receiptData_MMMethodMMM:receiptString orderId_MMMethodMMM:parameterStr reissue_MMMethodMMM:reissue gameInfo_MMMethodMMM:SDK_DATA.gameUserModel accountModel_MMMethodMMM:SDK_DATA.mLoginResponse.data otherParamsDic_MMMethodMMM:nil successBlock_MMMethodMMM:^(id responseData) {
        [self completeTransaction_MMMethodMMM:transaction];
        [self removeLocReceiptDataByTranId_MMMethodMMM:transactionId];
        self.mPayData.transactionId = transactionId;
        [self finishPayWithStatus_MMMethodMMM:YES msg_MMMethodMMM:@""];
        
    } errorBlock_MMMethodMMM:^(MCoolFishAlert *error) {
        [self completeTransaction_MMMethodMMM:transaction];
        [self finishPayWithStatus_MMMethodMMM:NO msg_MMMethodMMM:error.message];
    }];
    
}


-(void)removeAllUncompleteTransactionsBeforeNewPurchase_MMMethodMMM{
    
    NSArray* transactions = [SKPaymentQueue defaultQueue].transactions;
    
    if (transactions.count >= 1) {
        SDK_LOG(wwwww_tag_wwwww_radio_tenyesator);
        for (SKPaymentTransaction* transaction in transactions) {
            if (transaction.transactionState == SKPaymentTransactionStatePurchased ||transaction.transactionState == SKPaymentTransactionStateRestored) {
                [[SKPaymentQueue defaultQueue]finishTransaction:transaction];
            }
        }
        
    }else{
        SDK_LOG(wwwww_tag_wwwww_gasad_archi);
    }
}


- (void)productsRequest:(SKProductsRequest *)request didReceiveResponse:(SKProductsResponse *)response{ 
    
    dispatch_async(dispatch_get_main_queue(), ^{
        
        NSArray *product = response.products;
        if([product count] == 0){
            [self finishPayWithStatus_MMMethodMMM:NO msg_MMMethodMMM:(@"Unable to fetch product, please try again")];
            return;
        }
        
        SDK_LOG(@"产品付费数量:%ld",product.count);
        
        SKProduct *p = product.firstObject;
        
        [self requestPament_MMMethodMMM:p];

    });
    
}


@end
