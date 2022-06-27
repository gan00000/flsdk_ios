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
@property (nonatomic, copy) NSString *roleId;
@property (nonatomic, copy) XSProductStatusBlock statusBlcok;

@end

@implementation MWApplePayManager

+ (instancetype)shareManager
{
    static dispatch_once_t onceToken;
    static MWApplePayManager *manager = nil;
    dispatch_once(&onceToken, ^{
        manager = [[MWApplePayManager alloc]init];
    });
    return manager;
}

/** 检测客户端与服务器漏单情况处理*/
+ (void)checkOrderStatus
{
    NSDictionary *orderInfo = [MWApplePayManager getReceiptData];
    if (orderInfo != nil) {
        
        NSString *orderId = orderInfo[@"orderId"];
        NSString *receipt = orderInfo[@"receipt"];
        
        [[MWApplePayManager shareManager] verifyPurchaseForServiceWithOrderId:orderId receipt:receipt];
    }
}

#pragma mark -- 结束上次未完成的交易
-(void)removeAllUncompleteTransactionsBeforeNewPurchase{
    
    NSArray* transactions = [SKPaymentQueue defaultQueue].transactions;
    
    if (transactions.count >= 1) {
        
        for (SKPaymentTransaction* transaction in transactions) {
            if (transaction.transactionState == SKPaymentTransactionStatePurchased ||transaction.transactionState == SKPaymentTransactionStateRestored) {
                [[SKPaymentQueue defaultQueue]finishTransaction:transaction];
            }
        }
        
    }else{
        NSLog(@"没有历史未消耗订单");
    }
}


-(void)startPayWithProductId:(NSString *)productId cpOrderId:(NSString *)cpOrderId extra:(NSString *)extra gameInfo:(GameUserModel*)gameUserModel accountModel:(AccountModel*) accountModel payStatusBlock:(PayStatusBlock)payStatusBlock
{
    
    [SDKRequest createOrderWithproductId:productId cpOrderId:cpOrderId extra:extra gameInfo:gameUserModel accountModel:accountModel otherParamsDic:nil successBlock:^(id responseData) {
        
        CreateOrderResp *cor = (CreateOrderResp *)responseData;
        self.orderId = cor.orderId;
        self.roleId = gameUserModel.roleID;
        
        [self payWithOrderId:self.orderId productId:productId statusBlock:^(BOOL isStatus) {
            
        }];
    } errorBlock:^(BJError *error) {
        [AlertUtil showAlertWithMessage:error.message];
    }];
    
}


/** 检测权限 添加支付监测 开始支付流程*/
- (void)payWithOrderId:(NSString *)orderId
                        productId:(NSString *)productId
                      statusBlock:(XSProductStatusBlock)statusBlock

{
    
    if (orderId == nil || productId == nil) {
        [AlertUtil showAlertWithMessage:@"error:orderId/productId empty"];
        return;
    }
    
//    if ([[XZDeviceManager didRoot] isEqualToString:@"didRoot"]) {//写自己的越狱判断方法
//        [AAProgressManager showFinishWithStatus:@"越狱手机不支持内购"];
//        return;
//    }
    
    if([SKPaymentQueue canMakePayments]){
        
        [self removeAllUncompleteTransactionsBeforeNewPurchase];
        
        [[SKPaymentQueue defaultQueue] addTransactionObserver:self];

        self.orderId = orderId;
        self.statusBlcok = statusBlock;
        [self requestProductData:productId];
        
    }else{
        [AlertUtil showAlertWithMessage:(@"請打開應用內購功能")];
    }
}

/** 去Apple IAP Service 根据商品ID请求商品信息*/
- (void)requestProductData:(NSString *)productId{
    
//    [AAProgressManager showWithStatus:@"正在请求..."];
    NSArray *product = [[NSArray alloc] initWithObjects:productId,nil];
    
    NSSet *nsset = [NSSet setWithArray:product];
    SKProductsRequest *request = [[SKProductsRequest alloc] initWithProductIdentifiers:nsset];
    request.delegate = self;
    [request start];
}

- (void)requestPament:(SKProduct *)p {
    
    SKMutablePayment *payment = [SKMutablePayment paymentWithProduct:p];
    payment.quantity = (NSInteger)p.price;//购买次数=价钱
    if (payment.quantity == 0) {
        payment.quantity = 1;
    }
    //設置用戶信息
    payment.applicationUsername = self.orderId;//[NSString stringWithFormat:@"%@",[[AAUserManager shareManager] getUID]];
    [[SKPaymentQueue defaultQueue] addPayment:payment];
}

#pragma mark -- SKProductsRequestDelegate

//收到产品返回信息  子線程
- (void)productsRequest:(SKProductsRequest *)request didReceiveResponse:(SKProductsResponse *)response{
    
    dispatch_async(dispatch_get_main_queue(), ^{
        
        NSArray *product = response.products;
        if([product count] == 0){
            [AlertUtil showAlertWithMessage:(@"無法獲取商品信息，請重新嘗試購買")];
            return;
        }
        
        NSLog(@"产品付费数量:%ld",product.count);
        
        SKProduct *p = product.firstObject;
        
        [self requestPament:p];

    });
    
}

//请求失败
- (void)request:(SKRequest *)request didFailWithError:(NSError *)error{
    NSLog(@"------------------错误didFailWithError-----------------:%@", error);
    dispatch_async(dispatch_get_main_queue(), ^{
        
        if (self.statusBlcok) {
            self.statusBlcok(NO);
        }
        [AlertUtil showAlertWithMessage:(@"从Apple获取商品信息失败")];

    });
}

- (void)requestDidFinish:(SKRequest *)request{
    NSLog(@"------------反馈信息结束requestDidFinish-----------------%@",request);
}

#pragma mark -- 监听AppStore支付状态
- (void)paymentQueue:(SKPaymentQueue *)queue updatedTransactions:(NSArray *)transaction{
    
    NSLog(@"监听AppStore支付状态");
    dispatch_async(dispatch_get_main_queue(), ^{
        
        for(SKPaymentTransaction *tran in transaction){
            switch (tran.transactionState) {
                case SKPaymentTransactionStatePurchased:
                {
                    // 发送到苹果服务器验证凭证
                    [self verifyPurchaseWithPaymentTransaction];
                    [[SKPaymentQueue defaultQueue] finishTransaction:tran];
                }
                    break;
                case SKPaymentTransactionStatePurchasing:
                    NSLog(@"商品添加进列表");
                    break;
                case SKPaymentTransactionStateRestored:
                {
                    [AlertUtil showAlertWithMessage:(@"已经购买过商品")];
                    [[SKPaymentQueue defaultQueue] finishTransaction:tran];
                }
                    break;
                case SKPaymentTransactionStateFailed:
                {
                    if (self.statusBlcok) {
                        self.statusBlcok(NO);
                    }
                    NSLog(@"交易失败");

                    [[SKPaymentQueue defaultQueue] finishTransaction:tran];
                }
                    break;
                case SKPaymentTransactionStateDeferred:
                {
                    [AlertUtil showAlertWithMessage:(@"最终状态未确定")];
                }
                    break;
                default:
                    [[SKPaymentQueue defaultQueue] finishTransaction:tran];
                    break;
            }
        }
    });
    
}

#pragma mark -- 验证
/**验证购买，避免越狱软件模拟苹果请求达到非法购买问题*/
-(void)verifyPurchaseWithPaymentTransaction{
    
    //从沙盒中获取交易凭证并且拼接成请求体数据
    NSURL *receiptUrl = [[NSBundle mainBundle] appStoreReceiptURL];
    NSData *receiptData = [NSData dataWithContentsOfURL:receiptUrl];
    NSString *receiptString = [receiptData base64EncodedStringWithOptions:NSDataBase64EncodingEndLineWithLineFeed];
    [self saveReceiptData:@{@"receipt":receiptString,
                            @"orderId":self.orderId}];
    
  
    [self verifyPurchaseForServiceWithOrderId:self.orderId
                                      receipt:receiptString];
}

- (void)verifyPurchaseForServiceWithOrderId:(NSString *)orderId
                                    receipt:(NSString *)receiptString
{
    if (orderId == nil && receiptString == nil) {
        if (self.statusBlcok) {
            self.statusBlcok(NO);
        }
//        [AAProgressManager showFinishWithStatus:@"订单号/凭证无效"];
        return;
    }
    
    [self removeTransaction];
//
//    [AAProgressManager showWithStatus:@"正在验证服务器..."];
//    
//    WS(weakSelf);
//    [[APIManager sharedInstance] verifyPurchaseWithOrderID:orderId
//                                                    params:@{@"ceceipt-data":receiptString}
//                                                   success:^(id response)
//     {
//         dispatch_async(dispatch_get_main_queue(), ^{
//             [AAProgressManager dismiss];
//             [AAProgressManager showFinishWithStatus:L(@"交易完成")];
//             [weakSelf removeLocReceiptData];
//             if (weakSelf.statusBlcok) {
//                 weakSelf.statusBlcok(YES);
//             }
//         });
//         
//     } failure:^(NSError *error) {
//         dispatch_async(dispatch_get_main_queue(), ^{
//             
//             [CommonFunction showError:error];
//             [weakSelf verifyPurchaseFail];
//         });
//     }];
}

- (void)verifyPurchaseFail
{
//    WS(weakSelf);
//    UIAlertView *altert =[UIAlertView alertViewWithTitle:@"服务器验证失败"
//                                                 message:@"账单在验证服务器过程中出现错误，\n请检查网络环境是否可以再次验证\n如果取消可在网络环境良好的情况下重新启动行者可再次继续验证支付"
//                                       cancelButtonTitle:L(@"取消")
//                                       otherButtonTitles:@[L(@"再次验证")]
//                                               onDismiss:^(NSInteger buttonIndex)
//                          {
//                              dispatch_async(dispatch_get_main_queue(), ^
//                                             {
//                                                 [XSApplePayManager checkOrderStatus];
//                                             });           ;
//
//                          } onCancel:^{
//                              dispatch_async(dispatch_get_main_queue(), ^{
//
//                                  if (weakSelf.statusBlcok) {
//                                      weakSelf.statusBlcok(NO);
//                                  }
//                                  [PromptInfo showWithText:@"可在网络环境良好的情况下重新启动行者可再次继续验证支付"];
//
//                              });
//                          }];
//    [altert show];
}

//交易结束
- (void)completeTransaction:(SKPaymentTransaction *)transaction
{
    [[SKPaymentQueue defaultQueue] finishTransaction:transaction];
}

- (void)removeTransaction
{
    [[SKPaymentQueue defaultQueue] removeTransactionObserver:self];
}

#pragma mark -- 本地保存一次支付凭证
static NSString *const kSaveReceiptData = @"kSaveReceiptData";

- (void)saveReceiptData:(NSDictionary *)receiptData
{
    [[NSUserDefaults standardUserDefaults] setValue:receiptData forKey:kSaveReceiptData];
    [[NSUserDefaults standardUserDefaults]synchronize];
}

+ (NSDictionary *)getReceiptData
{
    return [[NSUserDefaults standardUserDefaults] valueForKey:kSaveReceiptData];
}

- (void)removeLocReceiptData
{
    [[NSUserDefaults standardUserDefaults] removeObjectForKey:kSaveReceiptData];
    [[NSUserDefaults standardUserDefaults] synchronize];
}


@end
