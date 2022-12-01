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

#define BaseColor  @"#FF892E"
#define C_BUTTON_START  @"#4CADFE"
#define C_BUTTON_END  @"#02EDFC"

#elif SDK_V3

#define BaseColor  @"#4CADFE"
#define C_BUTTON_START  @"#4CADFE"
#define C_BUTTON_END  @"#02EDFC"

#elif SDK_V4

#define BaseColor  @"#03CAFC"
#define C_BUTTON_START  @"#90FD9E"
#define C_BUTTON_END  @"#00C9FE"

#else

#define BaseColor  @"#FF892E"

#endif

#endif /* ColorHeader_h */
