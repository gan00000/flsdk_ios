//
//  HelloPlatformConstant.h
//  GamaSDK_iOS
//
//  Created by sunn on 2017/8/7.
//  Copyright © 2017年 starpy. All rights reserved.
//

#ifndef HelloPlatformConstant_h
#define HelloPlatformConstant_h

#import "GamaPlatformDataModel.h"
#import "GamaPlatformRequestor.h"
#import "SecondPartContentView.h"
#import "GamaPFBindRewardView.h"
#import "GamaPFAccountManagerView.h"
#import "GamaLabel.h"

#define GetPfImage(imageName)     [UIImage gama_imageNamed:imageName inBundle:nil inFolder:@"pfImages"]

// btn tags
#define backBtnTag              54000
#define closeBtnTag             54001
#define packUpBtnTag            54002
#define rollOutBtnTag           54003
#define rightFloatBtnTag        54004
#define rewardGetBtnTag         54005

#define sendVertifyBtnTag               54006
#define comfirmBindBtnTag               54007
#define pickBtnTag                      54008
#define pickViewCancelBtnTag            54009
#define pickViewComfirmBtnTag           54010

#define deleteMsgBtnTag                 54011

#define BindReward_Req_ReceiveBindPhoneGiftBtn_Tag  54012

#define floatPaidCloseBtnTag             54013

// other tags
#define topbarTag                   54100
#define itemImageTag                54101
#define topbarTitleLabelTag         54102
#define secondContentViewTag        54103

#define kSecondDirWebViewTag        54104

#define constant_labelSize          10.0f

// string constant
#define CELL_ID                             @"item_cell_id"

// note
#define NOTI_TOPBAR_BACK                    @"NOTI_TOPBAR_BACK"
#define NOTI_GET_SERIAL_CODE_SUCCESS        @"NOTI_GET_SERIAL_CODE_SUCCESS"

#define strBindConfirm                      SDKConReaderGetLocalizedString(@"BTN_TITLE_PHONE_BIND_COMFIRM")
#define strChangePwd                        SDKConReaderGetLocalizedString(@"BTN_TITLE_RESET_PASSWORD")
#define strGuestBind                        SDKConReaderGetLocalizedString(@"BTN_TITLE_GUEST_ACCOUNT_BIND")
#define strFacebookBind                     SDKConReaderGetLocalizedString(@"BTN_TITLE_FB_ACCOUNT_BIND")
#define strGameCenterBind                   SDKConReaderGetLocalizedString(@"BTN_TITLE_GAMECENTER_ACCOUNT_BIND")
#define strFetchVertifyCode                 SDKConReaderGetLocalizedString(@"BTN_TITLE_FETCH_VERTIFYCODE")
#define strPlaceHolderPhoneNum              SDKConReaderGetLocalizedString(@"TXT_PH_PHONE_NUMBER")
#define strPlaceHolderVertifyCode           SDKConReaderGetLocalizedString(@"TXT_PH_VERTIFYCODE")


#define kTextColor      @"#e68f33"
#define kBtnBgColor     @"#ef2d2d"
#define kBtnBgAlpha     0.7f


// bg
#define pltf_bg                                 (@"pltf_bg.png")
#define pltf_item_bg                            (@"pltf_item_bg.png")
#define pltf_small_place_holder_bg              (@"placeholder_small.png")
#define pltf_big_place_holder_bg                (@"placeholder_big.png")
#define pltf_bg_email_unread                    (@"pltf_bg_email_unread.png")
#define pltf_bg_email_read                      (@"pltf_bg_email_read.png")

// btn
#define pltf_btn_back                           (@"pltf_back.png")
#define pltf_btn_close                          (@"pltf_close.png")

#define pltf_btn_pcak_up_float                  (@"pltf_items_close.png") // 收起
#define pltf_btn_roll_out_float                 (@"pltf_items_open.png") // 推出
#define pltf_btn_right_float                    (@"pltf_right_float_num.png") // 序列号

#define kPFItem_News        (@"information")
#define kPFItem_Bind        (@"bindGiftBag")
#define kPFItem_Account     (@"account")
#define kPFItem_Store       (@"storedValue")
#define kPFItem_MailBox     (@"letterBox")
#define kPFItem_GiftCenter  (@"giftBagCentre")

#endif /* HelloPlatformConstant_h */
