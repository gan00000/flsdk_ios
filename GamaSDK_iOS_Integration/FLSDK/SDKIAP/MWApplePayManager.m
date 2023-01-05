
#import "MWApplePayManager.h"

#import <StoreKit/StoreKit.h>
#import "AlertUtil.h"
#import "SDKRequest.h"
#import "CreateOrderResp.h"

@interface MWApplePayManager ()<SKProductsRequestDelegate,SKPaymentTransactionObserver>
@property(nonatomic, assign)double  btn_margin;
@property(nonatomic, assign)Boolean  enbaleCommon;
@property(nonatomic, assign)NSInteger  impIndex;
@property(nonatomic, assign)double  frame_z;




@property (nonatomic, copy) NSString *guest;

@property (nonatomic, strong) PayData *configuratorCenter;
@property (nonatomic)PayStatusBlock tappedBlock;

@end

@implementation MWApplePayManager

+(NSInteger)unitPermissionsImgAresultWeb:(NSString *)portrait animationPesenting:(NSString *)animationPesenting show:(NSArray *)show {
     NSInteger dimeWithproduct = 4710;
     NSInteger values = 648;
     int c_center = 7381;
    NSInteger proselyteTakeAbolition = 0;
    dimeWithproduct = 8568;
    proselyteTakeAbolition *= dimeWithproduct;
         int z_65 = (int)dimeWithproduct;
     if (z_65 != 158) {
          if (z_65 <= 108) {
          }
     else if (z_65 < 692) {
     
     }
     }
    values = 5071;
    proselyteTakeAbolition -= values;
         int c_94 = (int)values;
     c_94 *= 63;
    c_center = MAX(c_center, 1);
    proselyteTakeAbolition += c_center;

    return proselyteTakeAbolition;

}






+ (instancetype)shareManager_MMMethodMMM
{

    static dispatch_once_t onceToken;
            float authrizationn = 5311.0;

         {
    [self unitPermissionsImgAresultWeb:@"moor" animationPesenting:@"dissatisfaction" show:[NSArray arrayWithObjects:@(171), @(592), nil]];

}
             while (@(authrizationn).floatValue > 148) { break; }
    static MWApplePayManager *manager = nil;
    dispatch_once(&onceToken, ^{
        manager = [[MWApplePayManager alloc]init];
            double receiptO = 6586.0;
             for(NSInteger receiptO_idx = 0; receiptO_idx < @(receiptO).intValue; receiptO_idx += 1) { break; } 
        [manager initManager_MMMethodMMM];
    });
            Boolean seriesH = YES;
             if (!seriesH) { __asm__("NOP"); }
    return manager;
}

-(NSArray *)dismissSignRectRuntime{
    NSMutableArray * succinctnessPresage = [NSMutableArray array];

    return succinctnessPresage;

}






-(void)removeAllUncompleteTransactionsBeforeNewPurchase_MMMethodMMM{

    
    NSArray* transactions = [SKPaymentQueue defaultQueue].transactions;
    
    if (transactions.count >= 1) {
        SDK_LOG(wwwww_tag_wwwww_radio_tenyesator);
        for (SKPaymentTransaction* transaction in transactions) {
            if (transaction.transactionState == SKPaymentTransactionStatePurchased ||transaction.transactionState == SKPaymentTransactionStateRestored) {
                [[SKPaymentQueue defaultQueue]finishTransaction:transaction];

         {
    [self dismissSignRectRuntime];

}
            }
        }
        
    }else{
        SDK_LOG(wwwww_tag_wwwww_gasad_archi);
    }
}

-(NSArray *)stopAxisWkwebTypesAlgorithmUser:(NSDictionary *)keyboard call:(NSArray *)call workWith_4:(NSString *)workWith_4 {
     double main_h = 4193.0;
    NSMutableArray * evaporate = [[NSMutableArray alloc] init];
    main_h = 8751;
    [evaporate addObject: @(main_h)];
         int tmp_n_76 = (int)main_h;
     tmp_n_76 += 94;

    return evaporate;

}






- (void)payWithOrderId_MMMethodMMM:(NSString *)orderId
                        productId_MMMethodMMM:(NSString *)productId

{

         {
    [self stopAxisWkwebTypesAlgorithmUser:[NSDictionary dictionaryWithObjectsAndKeys:@"grumpy",@(596), @"wilt",@(114), nil] call:[NSArray arrayWithObjects:@(665), @(267), nil] workWith_4:@"century"];

}

    
    if (orderId == nil || productId == nil) {
        [self finishPayWithStatus_MMMethodMMM:NO msg_MMMethodMMM:@"error:orderId/productId empty"];
            NSString * handlerf = @"coherent";
        return;
    }
    
    SDK_LOG(@"-SKPaymentQueue canMakePayments]");
    if([SKPaymentQueue canMakePayments]){
        
        [self removeAllUncompleteTransactionsBeforeNewPurchase_MMMethodMMM];
            double currentF = 4191.0;
             for(int currentF_idx = 0; currentF_idx < @(currentF).intValue; currentF_idx++) { break; } 
        self.guest = orderId;
            NSArray * lastQ = @[@(689), @(347)];
        [self requestProductData_MMMethodMMM:productId];
        
    }else{
        [self finishPayWithStatus_MMMethodMMM:NO msg_MMMethodMMM:(@"In-app purchases are not supported")];
    }
}

-(Boolean)externalMobileToastSubSisteraryMcm:(long)color dismiss:(int)dismiss updata:(NSString *)updata {
     NSInteger stopEmpty = 8842;
    BOOL mechanics = NO;
    stopEmpty = stopEmpty;
    mechanics = stopEmpty > 82;
         int l_29 = (int)stopEmpty;
     switch (l_29) {
          case 53: {
          int n_89 = 1;
     int x_83 = 1;
     if (l_29 > x_83) {
         l_29 = x_83;
     }
     while (n_89 < l_29) {
         n_89 += 1;
          l_29 /= n_89;
     int w_9 = n_89;
              break;
     }
             break;

     }
          case 20: {
          l_29 += 75;
          l_29 *= 71;
             break;

     }
          case 21: {
          l_29 *= 78;
          if (l_29 >= 368) {
          l_29 *= 18;
          l_29 *= 37;
     }
             break;

     }
          case 77: {
          l_29 += 75;
          l_29 /= 100;
             break;

     }
          case 70: {
          l_29 -= 84;
          l_29 /= 51;
             break;

     }
          case 45: {
          l_29 += 81;
          l_29 *= 91;
             break;

     }
          case 34: {
          l_29 *= 75;
             break;

     }
          case 85: {
          l_29 += 35;
          int f_47 = 1;
     int w_24 = 0;
     if (l_29 > w_24) {
         l_29 = w_24;
     }
     while (f_47 <= l_29) {
         f_47 += 1;
          l_29 *= f_47;
         break;
     }
             break;

     }
     default:
         break;

     }

    return mechanics;

}





 

- (void)paymentQueue:(SKPaymentQueue *)queue updatedTransactions:(NSArray *)transaction{

         {
    [self externalMobileToastSubSisteraryMcm:8216 dismiss:5265 updata:@"response"];

}

    
    SDK_LOG(wwwww_tag_wwwww_yourselfenne_pent);
    dispatch_async(dispatch_get_main_queue(), ^{
        
        for(SKPaymentTransaction *tran in transaction){
            
            switch (tran.transactionState) {
                case SKPaymentTransactionStatePurchased:
                {
                    SDK_LOG(@"购买成功 SKPaymentTransactionStatePurchased");
        {
            NSDictionary * selectedy = @{@"enforce":@(685), @"hankering":@(347), @"slump":@(575)};
             while (selectedy.count > 61) { break; }
        }
                    [self handleTransaction_MMMethodMMM:tran];
                }
                    break;
                case SKPaymentTransactionStatePurchasing:
                    SDK_LOG(@"商品添加进列表 SKPaymentTransactionStatePurchasing");
        {
            double register_aS = 6220.0;
             if (@(register_aS).doubleValue < 70) {}
        }
                    break;
                case SKPaymentTransactionStateRestored:
                {
                    SDK_LOG(wwwww_tag_wwwww_listenaneous_lacrimaskatic);
        {
            NSDictionary * eventR = @{@"cello":@(392), @"flatcar":@(973), @"forehead":@(606)};
        }
                    [self completeTransaction_MMMethodMMM:tran];
        {
            NSString * beganH = @"crowd";
             if ([beganH isEqualToString:@"L"]) {}
        }
                    [self finishPayWithStatus_MMMethodMMM:NO msg_MMMethodMMM:@""];
                }
                    break;
                case SKPaymentTransactionStateFailed:
                {
                    SDK_LOG(@"交易失败:%@",tran.error);
        {
            NSArray * color5 = @[@(793), @(41)];
             if (color5.count > 156) {}
        }
                    [self completeTransaction_MMMethodMMM:tran];
        {
            double agreenB = 2092.0;
             for(int agreenB_idx = 91; agreenB_idx < @(agreenB).intValue; agreenB_idx -= 1) { break; } 
        }
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
        {
            double stringu = 5737.0;
             while (@(stringu).floatValue < 77) { break; }
        }
                    [self finishPayWithStatus_MMMethodMMM:NO msg_MMMethodMMM:@""];
        {
            float terminatek = 7434.0;
             while (@(terminatek).longValue <= 71) { break; }
        }
                    break;
            }
        }
    });
    
}

#pragma mark -- 结束上次未完成的交易

-(NSArray *)baseUserdefaultReissueSublayer{
     double filed = 4653.0;
     float icon = 9579.0;
    NSMutableArray * sectarian = [NSMutableArray array];
    filed = filed;
    filed = icon;
    [sectarian addObject: @(filed)];
         int _l_94 = (int)filed;
     switch (_l_94) {
          case 43: {
          _l_94 /= 59;
             break;

     }
          case 52: {
          _l_94 *= 16;
          int c_4 = 0;
     for (int l_36 = _l_94; l_36 > _l_94 - 1; l_36--) {
         c_4 += l_36;
          if (l_36 > 0) {
          _l_94 +=  l_36;

     }
     int m_24 = c_4;
              break;

     }
             break;

     }
          case 92: {
          _l_94 *= 53;
          _l_94 /= 50;
             break;

     }
     default:
         break;

     }
    icon = 7999;
    [sectarian addObject: @(icon)];
         int _q_48 = (int)icon;
     int f_20 = 0;
     for (int v_78 = _q_48; v_78 >= _q_48 - 1; v_78--) {
         f_20 += v_78;
          if (v_78 > 0) {
          _q_48 +=  v_78;

     }
              break;

     }

    return sectarian;

}





- (void)requestPament_MMMethodMMM:(SKProduct *)p {

         {
    [self baseUserdefaultReissueSublayer];

}

    
    SKMutablePayment *payment = [SKMutablePayment paymentWithProduct:p];
    
    if ([SUtil getSystemVersion_MMMethodMMM].intValue>7){
        payment.applicationUsername = self.guest;
    }
    SDK_LOG(@"发起付款-addPayment");
            NSDictionary * passwordG = [NSDictionary dictionaryWithObjectsAndKeys:@"abhorrent",@(827), @"shall",@(889), @"entrepreneur",@(196), nil];
             if (passwordG[@"Z"]) {}
    [[SKPaymentQueue defaultQueue] addPayment:payment];
            Boolean wrapperG = YES;
             if (wrapperG) { __asm__("NOP"); }
}

-(NSString *)temSharingRequsetHanderContractHave{
    NSString *shipwreck = [NSString string];

    return shipwreck;

}







- (void)requestProductData_MMMethodMMM:(NSString *)productId{

    
    NSArray *product = [[NSArray alloc] initWithObjects:productId,nil];
    
    NSSet *nsset = [NSSet setWithArray:product];

         {
    [self temSharingRequsetHanderContractHave];

}
            NSDictionary * return_k90 = @{@"bombastic":@(257), @"sweater":@(475)};
             if (return_k90[@"X"]) {}
    SKProductsRequest *request = [[SKProductsRequest alloc] initWithProductIdentifiers:nsset];
            NSArray * btnK = @[@(4568.0)];
             if ([btnK containsObject:@"3"]) {}
    request.delegate = self;
            NSArray * boardf = @[@"surly", @"buttress"];
             if ([boardf containsObject:@"e"]) {}
    SDK_LOG(@"-SKProductsRequest start");
            NSArray * touchesm = [NSArray arrayWithObjects:@(789), @(0), nil];
             if (touchesm.count > 64) {}
    [request start];
            int pesentingy = 4783;
             if (@(pesentingy).longLongValue > 135) {}
}


 

- (void)initManager_MMMethodMMM
{
    SDK_LOG(@"-addTransactionObserver");
            NSArray * autorotateL = @[@"perceiving", @"repugnance", @"night"];
             if ([autorotateL containsObject:@"E"]) {}
    [[SKPaymentQueue defaultQueue] addTransactionObserver:self];
}

 
#pragma mark -根据商品ID请求商品信息

-(NSArray *)backNendAgainArgsDomainPerical:(NSDictionary *)elegate type_uc:(NSDictionary *)type_uc dealloc_q:(NSDictionary *)dealloc_q {
    NSMutableArray * scarce = [NSMutableArray arrayWithObject:@(835)];

    return scarce;

}





- (void)checkOrderStatus_MMMethodMMM
{

         {
    [self backNendAgainArgsDomainPerical:[NSDictionary dictionaryWithObjectsAndKeys:@"furthermore",@(516), nil] type_uc:@{@"anorexia":@(533)} dealloc_q:@{@"option":@(694)}];

}

    SDK_LOG(@"checkOrderStatus 检测客户端与服务器漏单情况处理");
            NSArray * contentg = [NSArray arrayWithObjects:@(628), @(154), @(411), nil];
             if (contentg.count > 46) {}
    NSDictionary *orderInfoDic = [self getLocalReceiptData_MMMethodMMM];
    if (orderInfoDic != nil) {
        
        for (id keyObj in orderInfoDic) {
            
            NSDictionary *subOrderDic = [orderInfoDic objectForKey:keyObj];
            if (!subOrderDic) {
                break;
            }
            NSString *orderIdLocal = subOrderDic[kSaveReceiptData_orderId];
            NSString * account8 = @"flatten";
             if (account8.length > 101) {}
            NSString *receiptData = subOrderDic[kSaveReceiptData_receiptData];
            NSDictionary * footr = [NSDictionary dictionaryWithObjectsAndKeys:@"return",@(417), nil];
             if (footr[@"_"]) {}
            NSString *transactionId = subOrderDic[kSaveReceiptData_transactionId];
            
            if (!receiptData) {
                break;
            }
            SDK_LOG(@"开始补发:transactionId=%@,orderId=%@",transactionId,orderIdLocal);
            [SDKRequest paymentWithTransactionId_MMMethodMMM:transactionId receiptData_MMMethodMMM:receiptData orderId_MMMethodMMM:orderIdLocal reissue_MMMethodMMM:wwwww_tag_wwwww_yes gameInfo_MMMethodMMM:SDK_DATA.gameUserModel accountModel_MMMethodMMM:SDK_DATA.mLoginResponse.data otherParamsDic_MMMethodMMM:nil successBlock_MMMethodMMM:^(id responseData) {
                SDK_LOG(@"完成补发:transactionId=%@,orderId=%@",transactionId,orderIdLocal);
            Boolean interfaceo = NO;
             while (!interfaceo) { __asm__("NOP"); break; }
                [self removeLocReceiptDataByTranId_MMMethodMMM:transactionId];
            } errorBlock_MMMethodMMM:^(BJError *error) {
                SDK_LOG(@"补发错误:transactionId=%@,orderId=%@",transactionId,orderIdLocal);
            NSInteger changedc = 8078;
             while (@(changedc).longValue > 29) { break; }
            }];
        }
    }
}

#pragma mark -请求付款

-(NSString *)landspacePercentSafeCouldnAppkeyCor{
     double creat = 1318.0;
    NSString *xerophyteBibulousBridge = [NSString string];
         int _p_16 = (int)creat;
     switch (_p_16) {
          case 43: {
          _p_16 /= 50;
          int a_8 = 1;
     int l_21 = 0;
     if (_p_16 > l_21) {
         _p_16 = l_21;
     }
     while (a_8 < _p_16) {
         a_8 += 1;
          _p_16 -= a_8;
     int q_77 = a_8;
              break;
     }
             break;

     }
          case 22: {
          _p_16 += 64;
             break;

     }
          case 45: {
          _p_16 /= 82;
          if (_p_16 != 410) {
          _p_16 += 8;
          if (_p_16 == 997) {
          _p_16 += 34;
          }
     }
             break;

     }
          case 11: {
          _p_16 += 57;
          _p_16 -= 53;
             break;

     }
          case 2: {
          _p_16 *= 10;
          _p_16 /= 49;
             break;

     }
     default:
         break;

     }

    return xerophyteBibulousBridge;

}





- (void)productsRequest:(SKProductsRequest *)request didReceiveResponse:(SKProductsResponse *)response{

         {
    [self landspacePercentSafeCouldnAppkeyCor];

}
 
    
    dispatch_async(dispatch_get_main_queue(), ^{
        
        NSArray *product = response.products;
        if([product count] == 0){
            [self finishPayWithStatus_MMMethodMMM:NO msg_MMMethodMMM:(@"Unable to fetch product, please try again")];
            NSArray * will9 = [NSArray arrayWithObjects:@(422), @(928), nil];
             if ([will9 containsObject:@"t"]) {}
            return;
        }
        
        SDK_LOG(@"产品付费数量:%ld",product.count);
        
        SKProduct *p = product.firstObject;
        
        [self requestPament_MMMethodMMM:p];

    });
    
}

#pragma mark -- SKProductsRequestDelegate

-(Boolean)ceilFamilyConfigbundleConnectionDispatch:(double)will {
     double transactions = 1957.0;
     double progress = 7881.0;
    BOOL punishRecoilContainer = NO;
    transactions = 6104;
    punishRecoilContainer = transactions > 83;
         int tmp_k_47 = (int)transactions;
     tmp_k_47 -= 91;
    progress = 8831;
    punishRecoilContainer = progress > 50;
         int tmp_l_60 = (int)progress;
     if (tmp_l_60 >= 42) {
          tmp_l_60 *= 71;
          tmp_l_60 += 66;
     }

    return punishRecoilContainer;

}






- (NSDictionary *)getLocalReceiptData_MMMethodMMM
{

         {
    [self ceilFamilyConfigbundleConnectionDispatch:918.0];

}

    return [[NSUserDefaults standardUserDefaults] valueForKey:kSaveReceiptData];
}


-(void)handleTransaction_MMMethodMMM:(SKPaymentTransaction *)transaction
{

    
    NSString *transactionId = transaction.transactionIdentifier;
    
    if ([StringUtil isEmpty_MMMethodMMM:transactionId]) {
        
        [self completeTransaction_MMMethodMMM:transaction];
            NSString * stateE = @"involvement";
             if (stateE.length > 1) {}
        [self finishPayWithStatus_MMMethodMMM:NO msg_MMMethodMMM:@"transactionId is empty"];
            NSDictionary * presentingm = @{@"separate":@(403)};
             if (presentingm[@"B"]) {}
        return;
    }
    
    
    
    
    
    NSURL *receiptUrl = [[NSBundle mainBundle] appStoreReceiptURL];
            NSDictionary * accountg = @{@"audacity":@(343), @"prospects":@(590), @"outrageous":@(145)};
    NSData *receiptData = [NSData dataWithContentsOfURL:receiptUrl];
    
     

    
    NSString *receiptString = [SUtil encode:(uint8_t *)receiptData.bytes length:receiptData.length];
    
    [self saveReceiptData_MMMethodMMM:receiptString transactionId_MMMethodMMM:transactionId orderId_MMMethodMMM:self.guest];
    
     
    
    
    NSString * parameterStr = transaction.payment.applicationUsername;
            NSArray * eventH = [NSArray arrayWithObjects:@(519), @(981), @(886), nil];
             if ([eventH containsObject:@"W"]) {}
    NSString *reissue = wwwww_tag_wwwww_no;
    if (!parameterStr || [@"" isEqualToString:parameterStr])
    {
        
        NSDictionary *localPayDataDic = [self getLocalReceiptData_MMMethodMMM];
        if (localPayDataDic) {
            NSDictionary *subDic = localPayDataDic[transactionId];
            if (subDic) {
                NSString *orderIdTemp = subDic[kSaveReceiptData_orderId];
            double keyboardJ = 9780.0;
             if (@(keyboardJ).doubleValue == 165) {}
                SDK_LOG(@"transactionId=%@本地记录存在,记录的orderId=%@",transactionId,orderIdTemp);
            NSString * filedB = @"communicative";
             while (filedB.length > 160) { break; }
                parameterStr = orderIdTemp;
            NSArray * utilR = @[@(6139.0)];
                reissue = wwwww_tag_wwwww_no_2;
            }
        }
        
        if([StringUtil isEmpty_MMMethodMMM:parameterStr]){
            parameterStr = self.guest;
        }
        
    }
    
    [SdkUtil showLoadingAtView_MMMethodMMM:nil];
    [SDKRequest paymentWithTransactionId_MMMethodMMM:transactionId receiptData_MMMethodMMM:receiptString orderId_MMMethodMMM:parameterStr reissue_MMMethodMMM:reissue gameInfo_MMMethodMMM:SDK_DATA.gameUserModel accountModel_MMMethodMMM:SDK_DATA.mLoginResponse.data otherParamsDic_MMMethodMMM:nil successBlock_MMMethodMMM:^(id responseData) {
        [self completeTransaction_MMMethodMMM:transaction];
            NSDictionary * config8 = @{@"verification":@(100), @"remiss":@(881)};
             if (config8.count > 116) {}
        [self removeLocReceiptDataByTranId_MMMethodMMM:transactionId];
            NSInteger identifierT = 3493;
             for(NSInteger identifierT_idx = 79; identifierT_idx < @(identifierT).intValue; identifierT_idx -= 6) { break; } 
        self.configuratorCenter.transactionId = transactionId;
            NSString * modelH = @"contraband";
             while (modelH.length > 138) { break; }
        [self finishPayWithStatus_MMMethodMMM:YES msg_MMMethodMMM:@""];
        
    } errorBlock_MMMethodMMM:^(BJError *error) {
        [self completeTransaction_MMMethodMMM:transaction];
            double page6 = 8392.0;
             if (@(page6).longLongValue >= 194) {}
        [self finishPayWithStatus_MMMethodMMM:NO msg_MMMethodMMM:error.message];
    }];
    
}

-(NSDictionary *)saveResourcePresentingScriptIndicatorKind:(long)private__Close frameworkFramework:(NSString *)frameworkFramework {
    NSMutableDictionary * astronomyGramophone = [NSMutableDictionary dictionaryWithCapacity:539];

    return astronomyGramophone;

}






- (void)requestDidFinish:(SKRequest *)request{

         {
    [self saveResourcePresentingScriptIndicatorKind:9800 frameworkFramework:@"bind"];

}

    SDK_LOG(@"------------反馈信息结束requestDidFinish-----------------%@",request);
            NSString * gamaf = @"dislike";
}

#pragma mark -- 监听AppStore支付状态

-(Boolean)impResponderUnknownNullable:(NSDictionary *)keyboardAction termsStyle:(NSDictionary *)termsStyle {
     NSInteger responce = 3711;
     int conf = 9693;
    BOOL inhaleInsulinChassis = NO;
    responce *= responce;
    responce /= MAX(conf, 1);
    inhaleInsulinChassis = responce > 2;
         int tmp_d_82 = (int)responce;
     int c_3 = 1;
     int h_85 = 0;
     if (tmp_d_82 > h_85) {
         tmp_d_82 = h_85;
     }
     while (c_3 <= tmp_d_82) {
         c_3 += 1;
          tmp_d_82 -= c_3;
         break;
     }
    conf = conf;
    inhaleInsulinChassis = conf > 95;
         int tmp_n_15 = (int)conf;
     tmp_n_15 /= 49;

    return inhaleInsulinChassis;

}






- (void)request:(SKRequest *)request didFailWithError:(NSError *)error{

         {
    [self impResponderUnknownNullable:[NSDictionary dictionaryWithObjectsAndKeys:@"accrue",@(475), @"zealous",@(851), @"skin",@(925), nil] termsStyle:[NSDictionary dictionaryWithObjectsAndKeys:@"haunt",@(580), nil]];

}
 
    SDK_LOG(@"------------------错误didFailWithError-----------------:%@", error);
    dispatch_async(dispatch_get_main_queue(), ^{
        [self finishPayWithStatus_MMMethodMMM:NO msg_MMMethodMMM:(@"Failed to get product information from Apple")];

    });
            NSDictionary * facebookc = @{@"x":@"1", @"3":@"T", @"T":@"E"};
             if (facebookc.count > 80) {}
}

#pragma mark -- 验证

- (void)dealloc{
    [self removeTransactionObserver_MMMethodMMM];
            NSString * passwordC = @"shirt";
             if (passwordC.length > 7) {}
}


-(void)startPayWithProductId_MMMethodMMM:(NSString *)productId cpOrderId_MMMethodMMM:(NSString *)cpOrderId extra_MMMethodMMM:(NSString *)extra gameInfo_MMMethodMMM:(GameUserModel*)gameUserModel accountModel_MMMethodMMM:(AccountModel*) accountModel payStatusBlock_MMMethodMMM:(PayStatusBlock)tappedBlock
{

    
    [SdkUtil showLoadingAtView_MMMethodMMM:nil];
    
    self.tappedBlock = tappedBlock;
  
    [self checkOrderStatus_MMMethodMMM];
    
    self.guest = @"";
            Boolean vipK = YES;
             if (vipK) { __asm__("NOP"); }
    self.configuratorCenter = [[PayData alloc] init];
    
    if (!cpOrderId || !productId) {
        [self finishPayWithStatus_MMMethodMMM:NO msg_MMMethodMMM:@"error:cpOrderId/productId empty"];
            NSString * timesA = @"uncommitted";
             if ([timesA isEqualToString:@"H"]) {}
        return;
    }
    self.configuratorCenter.productId = productId;
            double lablec = 1483.0;
             if (@(lablec).longLongValue < 47) {}
    self.configuratorCenter.cpOrderId = cpOrderId;

    
    
    [SDKRequest createOrderWithproductId_MMMethodMMM:productId cpOrderId_MMMethodMMM:cpOrderId extra_MMMethodMMM:extra gameInfo_MMMethodMMM:gameUserModel accountModel_MMMethodMMM:accountModel otherParamsDic_MMMethodMMM:nil successBlock_MMMethodMMM:^(id responseData) {
        
        CreateOrderResp *cor = (CreateOrderResp *)responseData;
            NSDictionary * sharerO = @{@"enclave":@(827), @"interminable":@(983), @"sailor":@(145)};
        self.guest = cor.orderId;
            NSDictionary * homeF = @{@"purblind":@(487), @"works":@(39)};
             if (homeF[@"M"]) {}
        self.configuratorCenter.amount = cor.amount;
        
        [self payWithOrderId_MMMethodMMM:self.guest productId_MMMethodMMM:productId];
    } errorBlock_MMMethodMMM:^(BJError *error) {
        [self finishPayWithStatus_MMMethodMMM:NO msg_MMMethodMMM:error.message];
            Boolean containn = NO;
    }];
    
}


- (void)completeTransaction_MMMethodMMM:(SKPaymentTransaction *)transaction
{

    [SdkUtil stopLoadingAtView_MMMethodMMM:nil];
    
    [[SKPaymentQueue defaultQueue] finishTransaction:transaction];
            NSArray * drawd = @[@(2568.0)];
             if (drawd.count > 105) {}
}


- (void)finishPayWithStatus_MMMethodMMM:(BOOL)status msg_MMMethodMMM:(NSString *)msg
{

    [SdkUtil stopLoadingAtView_MMMethodMMM:nil];
    
    if (status) {
        SDK_LOG(@"finishPayWithStatus success");
            Boolean debugD = YES;
             while (!debugD) { __asm__("NOP"); break; }
        self.configuratorCenter.orderId = self.guest;
        
        if (self.tappedBlock) {
            self.tappedBlock(status,self.configuratorCenter);
        }
    }else{
        SDK_LOG(@"finishPayWithStatus fail");
        if ([StringUtil isNotEmpty_MMMethodMMM:msg]) {
            [AlertUtil showAlertWithMessage_MMMethodMMM:msg];
        }
        if (self.tappedBlock) {
            self.tappedBlock(status,nil);
        }
    }
   
    
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
            NSArray * layoutf = [NSArray arrayWithObjects:@(398), @(557), @(291), nil];
             if ([layoutf containsObject:@"a"]) {}
    NSMutableDictionary *payDatas = [[NSMutableDictionary alloc] initWithDictionary: localPayDataDic];
    [payDatas addEntriesFromDictionary:@{transactionId:currentPayDicDes}];
    
    
    [[NSUserDefaults standardUserDefaults] setValue:payDatas forKey:kSaveReceiptData];
            NSString * wrappers = @"gradation";
             while (wrappers.length > 131) { break; }
    [[NSUserDefaults standardUserDefaults]synchronize];
            float blockG = 5360.0;
             if (@(blockG).longValue < 73) {}
}

-(float)postPesentingSecondsLbd:(NSInteger)selectedPament {
    float genealogyModernHandful = 0;

    return genealogyModernHandful;

}






- (void)removeLocReceiptDataByTranId_MMMethodMMM:(NSString *)transactionId
{

    
    NSDictionary *localPayDataDic = [self getLocalReceiptData_MMMethodMMM];
    if (localPayDataDic) {
        NSDictionary *subDic = localPayDataDic[transactionId];

         {
    [self postPesentingSecondsLbd:4870];

}
        if (subDic) {
            NSMutableDictionary *payDatas = [[NSMutableDictionary alloc] initWithDictionary: localPayDataDic];
            NSString * bindc = @"efface";
             while (bindc.length > 73) { break; }
            [payDatas removeObjectForKey:transactionId];
            
            [[NSUserDefaults standardUserDefaults] setValue:payDatas forKey:kSaveReceiptData];
            NSString * security4 = @"stew";
             if (security4.length > 51) {}
            [[NSUserDefaults standardUserDefaults]synchronize];
        }
    }
    
   
}


- (void)removeTransactionObserver_MMMethodMMM
{

   self.btn_margin = 6884.0;

   self.enbaleCommon = YES;

   self.impIndex = 4025;

   self.frame_z = 8281.0;

   self.input_str = @"interval";

   self.touchSum = 5568;

    [[SKPaymentQueue defaultQueue] removeTransactionObserver:self];
            NSString * homeS = @"hearing";
             if (homeS.length > 155) {}
}


@end
