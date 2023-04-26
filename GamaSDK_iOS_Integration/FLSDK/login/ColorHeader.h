//
//  ColorHeader.h
//  MW_SDK
//
//  Created by Gan Yuanrong on 2022/8/1.
//  Copyright © 2022 Gama. All rights reserved.
//

#ifndef ColorHeader_h
#define ColorHeader_h

#ifdef SDK_V2

#define BaseColor  wwwww_tag_wwwww__CC_FF892E
#define C_BUTTON_START  wwwww_tag_wwwww__CC_4CADFE
#define C_BUTTON_END  wwwww_tag_wwwww__CC_02EDFC

#elif SDK_V3

#define BaseColor  wwwww_tag_wwwww__CC_4CADFE
#define C_BUTTON_START  wwwww_tag_wwwww__CC_4CADFE
#define C_BUTTON_END  wwwww_tag_wwwww__CC_02EDFC

#elif SDK_V4

#define BaseColor  wwwww_tag_wwwww__CC_03CAFC
#define C_BUTTON_START  wwwww_tag_wwwww__CC_90FD9E
#define C_BUTTON_END  wwwww_tag_wwwww__CC_00C9FE

#elif SDK_V5

#define BaseColor  wwwww_tag_wwwww__CC_FC676F
#define C_BUTTON_START  wwwww_tag_wwwww__CC_FC676F
#define C_BUTTON_END  wwwww_tag_wwwww__CC_FF9944

#elif SDK_VN

#define BaseColor  @"#FE621D"
#define C_BUTTON_START  @"#F9D223"
#define C_BUTTON_END  @"#FE504F"
#define C_TEXT_NORMAL    @"#656565"
#define C_TEXT_NORMAL_2   @"#414141"
#define C_TEXT_HINT    @"#C0C0C0"

#elif SDK_V6

#define BaseColor  wwwww_tag_wwwww__CC_FC676F
#define C_BUTTON_START  wwwww_tag_wwwww__CC_FC676F
#define C_BUTTON_END  wwwww_tag_wwwww__CC_FF9944

#else

#define BaseColor  wwwww_tag_wwwww__CC_FF892E

#endif

#endif /* ColorHeader_h */
