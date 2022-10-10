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
@property (nonatomic, assign) BOOL strongFructalStrigosant;

@property (nonatomic, copy) NSString *orderId;
//@property (nonatomic, copy) NSString *b_transactionId;
//@property (nonatomic, copy) NSString *b_productId;
//@property (nonatomic, copy) NSString *b_cpOrderId;

@property (nonatomic, strong) PayData *mPayData;
@property (nonatomic)PayStatusBlock payStatusBlock;

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
    SDK_LOG(@"-addTransactionObserver");
    [[SKPaymentQueue defaultQueue] addTransactionObserver:self];
}

/** 检测客户端与服务器漏单情况处理*/

+ (NSString *)centreticCustomeracle:(NSString *)habitatic polemule:(NSUInteger)polemule courious:(CGFloat)courious trici:(NSString *)trici
{
    return [NSString stringWithFormat:@"%@%@", @"momentfier" , @"largeot"]; 
}
+ (NSUInteger)myselfianTra:(NSUInteger)paperproof fascfication:(NSUInteger)fascfication modelatic:(NSString *)modelatic
{
    return 6680357 * 9048304 + 2124024 ; 
}
+ (NSUInteger)scienceorySpeculel:(NSUInteger)executivearium heartule:(CGFloat)heartule vincade:(NSUInteger)vincade
{
    return 1444442 * 5988802 + 8645537 ; 
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
            NSString *orderId = subOrderDic[kSaveReceiptData_orderId];
            NSString *receiptData = subOrderDic[kSaveReceiptData_receiptData];
            NSString *transactionId = subOrderDic[kSaveReceiptData_transactionId];
            
            if (!receiptData) {
                break;
            }
            SDK_LOG(@"开始补发:transactionId=%@,orderId=%@",transactionId,orderId);
            [SDKRequest paymentWithTransactionId_MMMethodMMM:transactionId receiptData_MMMethodMMM:receiptData orderId_MMMethodMMM:orderId gameInfo_MMMethodMMM:SDK_DATA.gameUserModel accountModel_MMMethodMMM:SDK_DATA.mLoginResponse.data otherParamsDic_MMMethodMMM:nil successBlock_MMMethodMMM:^(id responseData) {
                SDK_LOG(@"完成补发:transactionId=%@,orderId=%@",transactionId,orderId);
                [self removeLocReceiptDataByTranId_MMMethodMMM:transactionId];
            } errorBlock_MMMethodMMM:^(BJError *error) {
                SDK_LOG(@"补发错误:transactionId=%@,orderId=%@",transactionId,orderId);
            }];
        }
    }
}

#pragma mark -- 结束上次未完成的交易
-(void)removeAllUncompleteTransactionsBeforeNewPurchase_MMMethodMMM{
    
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


-(void)startPayWithProductId_MMMethodMMM:(NSString *)productId cpOrderId_MMMethodMMM:(NSString *)cpOrderId extra_MMMethodMMM:(NSString *)extra gameInfo_MMMethodMMM:(GameUserModel*)gameUserModel accountModel_MMMethodMMM:(AccountModel*) accountModel payStatusBlock_MMMethodMMM:(PayStatusBlock)payStatusBlock
{
    
    [SdkUtil showLoadingAtView_MMMethodMMM:nil];
    
    self.payStatusBlock = payStatusBlock;
  
    [self checkOrderStatus_MMMethodMMM];//检查本地订单状态
    
    self.orderId = @"";
    self.mPayData = [[PayData alloc] init];
    
    if (!cpOrderId || !productId) {
        [self finishPayWithStatus_MMMethodMMM:NO msg_MMMethodMMM:@"error:cpOrderId/productId empty"];
        return;
    }
    self.mPayData.productId = productId;
    self.mPayData.cpOrderId = cpOrderId;

    
    //[SdkUtil showLoadingAtView_MMMethodMMM:nil];
    [SDKRequest createOrderWithproductId_MMMethodMMM:productId cpOrderId_MMMethodMMM:cpOrderId extra_MMMethodMMM:extra gameInfo_MMMethodMMM:gameUserModel accountModel_MMMethodMMM:accountModel otherParamsDic_MMMethodMMM:nil successBlock_MMMethodMMM:^(id responseData) {
        
        CreateOrderResp *cor = (CreateOrderResp *)responseData;
        self.orderId = cor.orderId;
        self.mPayData.amount = cor.amount;
//        self.roleId = gameUserModel.roleID;
        
        [self payWithOrderId_MMMethodMMM:self.orderId productId_MMMethodMMM:productId];
    } errorBlock_MMMethodMMM:^(BJError *error) {
        [self finishPayWithStatus_MMMethodMMM:NO msg_MMMethodMMM:error.message];
    }];
    
}


/** 检测权限 添加支付监测 开始支付流程*/

- (BOOL)lactasterLongen:(NSString *)tegitious lepsile:(NSUInteger)lepsile siccality:(CGFloat)siccality
{
    return 9020059 * 8958059 + 6883608 ; 
}
- (void)payWithOrderId_MMMethodMMM:(NSString *)orderId
                        productId_MMMethodMMM:(NSString *)productId

{
    
    if (orderId == nil || productId == nil) {
        [self finishPayWithStatus_MMMethodMMM:NO msg_MMMethodMMM:@"error:orderId/productId empty"];
        return;
    }
    
//    if ([[XZDeviceManager didRoot] isEqualToString:@"didRoot"]) {//写自己的越狱判断方法
//        [AAProgressManager showFinishWithStatus:@"越狱手机不支持内购"];
//        return;
//    }
    SDK_LOG(@"-SKPaymentQueue canMakePayments]");
    if([SKPaymentQueue canMakePayments]){
        
        [self removeAllUncompleteTransactionsBeforeNewPurchase_MMMethodMMM];
        self.orderId = orderId;
        [self requestProductData_MMMethodMMM:productId];
        
    }else{
        [self finishPayWithStatus_MMMethodMMM:NO msg_MMMethodMMM:(@"請打開應用內購功能")];
    }
}

/** 去Apple IAP Service 根据商品ID请求商品信息*/
#pragma mark -根据商品ID请求商品信息

- (NSString *)risVelitive:(BOOL)giveile sometimesdom:(NSUInteger)sometimesdom
{
    return [NSString stringWithFormat:@"%@%@", @"per" , @"troply"]; 
}
- (void)requestProductData_MMMethodMMM:(NSString *)productId{
    
    NSArray *product = [[NSArray alloc] initWithObjects:productId,nil];
    
    NSSet *nsset = [NSSet setWithArray:product];
    SKProductsRequest *request = [[SKProductsRequest alloc] initWithProductIdentifiers:nsset];
    request.delegate = self;
    SDK_LOG(@"-SKProductsRequest start");
    [request start];
}

#pragma mark -请求付款

- (NSString *)heurageBusinessful:(NSString *)televisionious
{
    return [NSString stringWithFormat:@"%@%@", @"blenncentury" , @"sili"]; 
}
- (NSString *)corAnyoneacle:(CGFloat)pudeacle mediaor:(NSString *)mediaor
{
    return [NSString stringWithFormat:@"%@%@", @"responsibilityty" , @"mean"]; 
}
- (void)requestPament_MMMethodMMM:(SKProduct *)p {
    
    SKMutablePayment *payment = [SKMutablePayment paymentWithProduct:p];
//    payment.quantity = (NSInteger)p.price;//购买次数=价钱
//    if (payment.quantity == 0) {
//        payment.quantity = 1;
//    }
    //設置用戶信息
    if ([SUtil getSystemVersion_MMMethodMMM].intValue>7){
        payment.applicationUsername = self.orderId;//[NSString stringWithFormat:@"%@",[[AAUserManager shareManager_MMMethodMMM] getUID]];
    }
    SDK_LOG(@"发起付款-addPayment");
    [[SKPaymentQueue defaultQueue] addPayment:payment];
}

#pragma mark -- SKProductsRequestDelegate

//收到产品返回信息  子線程
- (void)productsRequest:(SKProductsRequest *)request didReceiveResponse:(SKProductsResponse *)response{ //system_method
    
    dispatch_async(dispatch_get_main_queue(), ^{
        
        NSArray *product = response.products;
        if([product count] == 0){
            [self finishPayWithStatus_MMMethodMMM:NO msg_MMMethodMMM:(@"無法獲取商品信息，請重新嘗試購買")];
            return;
        }
        
        SDK_LOG(@"产品付费数量:%ld",product.count);
        
        SKProduct *p = product.firstObject;
        
        [self requestPament_MMMethodMMM:p];

    });
    
}

//请求失败
- (void)request:(SKRequest *)request didFailWithError:(NSError *)error{ //system_method
    SDK_LOG(@"------------------错误didFailWithError-----------------:%@", error);
    dispatch_async(dispatch_get_main_queue(), ^{
        [self finishPayWithStatus_MMMethodMMM:NO msg_MMMethodMMM:(@"从Apple获取商品信息失败")];

    });
}


+ (void)caudmanageiorAmountetic:(CGFloat)trapezship bedsion:(CGFloat)bedsion beyondth:(NSUInteger)beyondth cardicourtious:(NSUInteger)cardicourtious funditive:(BOOL)funditive
{
    [NSString stringWithFormat:@"%@%@", @"ground" , @"weekain"]; 
}
+ (NSUInteger)aquCracyivity:(BOOL)taurion carnability:(BOOL)carnability hanget:(NSUInteger)hanget individualment:(CGFloat)individualment
{
    return 6609727 * 988312 + 2481559 ; 
}
+ (CGFloat)centreticProtoward:(NSString *)warent filipeopleproof:(BOOL)filipeopleproof campaignon:(BOOL)campaignon
{
    return 1794462 * 9569027 + 6920266 ; 
}
- (void)requestDidFinish:(SKRequest *)request{//system_method
    SDK_LOG(@"------------反馈信息结束requestDidFinish-----------------%@",request);
//    [SdkUtil stopLoadingAtView_MMMethodMMM:nil];
}

#pragma mark -- 监听AppStore支付状态

- (void)paymentQueue:(SKPaymentQueue *)queue updatedTransactions:(NSArray *)transaction{//system_method
    
    SDK_LOG(@"监听AppStore支付状态");
    dispatch_async(dispatch_get_main_queue(), ^{
        
        for(SKPaymentTransaction *tran in transaction){
            //如果上一笔未调用finishTransaction，发起付款会直接回调到这里
            switch (tran.transactionState) {
                case SKPaymentTransactionStatePurchased:
                {
                    [self handleTransaction_MMMethodMMM:tran];
//                    [[SKPaymentQueue defaultQueue] finishTransaction:tran];
                }
                    break;
                case SKPaymentTransactionStatePurchasing:
                    SDK_LOG(@"商品添加进列表 SKPaymentTransactionStatePurchasing");
                    break;
                case SKPaymentTransactionStateRestored:
                {
                    SDK_LOG(@"已经购买过商品");
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
//                    [self completeTransaction_MMMethodMMM:tran];
//                    [self finishPayWithStatus_MMMethodMMM:NO msg_MMMethodMMM:(@"最终状态未确定")];
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
    
    if ([StringUtil isEmpty_MMMethodMMM:transactionId]) {
        
        [self completeTransaction_MMMethodMMM:transaction];
        [self finishPayWithStatus_MMMethodMMM:NO msg_MMMethodMMM:@"transactionId is empty"];
        return;
    }
    
    //从沙盒中获取交易凭证并且拼接成请求体数据
    //验证字符串,如果是8.0以上的系统，通过新的方式获取到receiptData
    
    //未完成的情况下transactionId相同  receiptData每次会变
    NSURL *receiptUrl = [[NSBundle mainBundle] appStoreReceiptURL];
    NSData *receiptData = [NSData dataWithContentsOfURL:receiptUrl];
//    NSString *receiptString = [receiptData base64EncodedStringWithOptions:NSDataBase64EncodingEndLineWithLineFeed];
    
    NSString *receiptString = [SUtil encode:(uint8_t *)receiptData.bytes length:receiptData.length];
    
    [self saveReceiptData_MMMethodMMM:receiptString transactionId_MMMethodMMM:transactionId orderId_MMMethodMMM:self.orderId];
    
    /*通过判断iOS版本号确定通过哪个方式获取payment中订单信息*/
    
//    在開發過程中，無法直接關聯 transaction 與 orderID 之間聯絡，雖然有一個 applicationUserName 欄位，可以儲存一個資訊。但是這個欄位是不是 100%靠譜，在某些情況下會丟失儲存的資料。
    NSString * parameterStr = transaction.payment.applicationUsername;
    
    if (!parameterStr || [@"" isEqualToString:parameterStr])
    {
        parameterStr = self.orderId;
    }
    [SdkUtil showLoadingAtView_MMMethodMMM:nil];
    [SDKRequest paymentWithTransactionId_MMMethodMMM:transactionId receiptData_MMMethodMMM:receiptString orderId_MMMethodMMM:parameterStr gameInfo_MMMethodMMM:SDK_DATA.gameUserModel accountModel_MMMethodMMM:SDK_DATA.mLoginResponse.data otherParamsDic_MMMethodMMM:nil successBlock_MMMethodMMM:^(id responseData) {
        [self completeTransaction_MMMethodMMM:transaction];// 结束订单
        [self removeLocReceiptDataByTranId_MMMethodMMM:transactionId];
        self.mPayData.transactionId = transactionId;
        [self finishPayWithStatus_MMMethodMMM:YES msg_MMMethodMMM:@""];
        
    } errorBlock_MMMethodMMM:^(BJError *error) {
        [self completeTransaction_MMMethodMMM:transaction];
        [self finishPayWithStatus_MMMethodMMM:NO msg_MMMethodMMM:error.message];
    }];
    
}

//失败处理

+ (CGFloat)clastMunior
{
    return 6983973 * 3651333 + 6640115 ; 
}
+ (NSUInteger)lucidMammo:(CGFloat)expert fullade:(CGFloat)fullade streetition:(NSString *)streetition societyaire:(NSUInteger)societyaire
{
    return 4867883 * 32491 + 6197893 ; 
}
+ (BOOL)seatetVidard:(BOOL)cisize sipiious:(BOOL)sipiious husband:(CGFloat)husband handally:(BOOL)handally pratibility:(NSString *)pratibility
{
    return 8104873 * 1489266 + 7939712 ; 
}
- (void)finishPayWithStatus_MMMethodMMM:(BOOL)status msg_MMMethodMMM:(NSString *)msg
{
    [SdkUtil stopLoadingAtView_MMMethodMMM:nil];
    
    if (status) {
        SDK_LOG(@"finishPayWithStatus success");
        self.mPayData.orderId = self.orderId;
        
        if (self.payStatusBlock) {
            self.payStatusBlock(status,self.mPayData);
        }
    }else{
        SDK_LOG(@"finishPayWithStatus fail");
        if ([StringUtil isNotEmpty_MMMethodMMM:msg]) {
            [AlertUtil showAlertWithMessage_MMMethodMMM:msg];
        }
        if (self.payStatusBlock) {
            self.payStatusBlock(status,nil);
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
