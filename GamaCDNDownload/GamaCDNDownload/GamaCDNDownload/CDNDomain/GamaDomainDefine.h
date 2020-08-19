//

#ifndef Gama_Login_TCSample_GamaDomainDefine_h
#define Gama_Login_TCSample_GamaDomainDefine_h

//------------------------------------下载域名的CDN-------------------------------------
NSString * GAMA_FIRSTCDN ;
NSString * GAMA_SECONDCDN ;
//------------------------------------下载域名的CDN-------------------------------------

#define GAMALog(message) if(SDKConReader.ISPRINT){NSLog(@"_cdn:%@",message);}

#endif
