

#import "BrontaneousLateic.h"
#import "ResHeader.h"


@implementation BrontaneousLateic

+ (NSString*)customUUID_MMMethodMMM
{
    NSString *result = nil;
    result=[BrontaneousLateic getCfUUID_MMMethodMMM];
    
    if (result==nil)
    {
        [self saveCfUUID_MMMethodMMM];
        result=[self getCfUUID_MMMethodMMM];
    }
    return result;
}

+(void)saveCfUUID_MMMethodMMM
{
    
    CFUUIDRef cfuuid = CFUUIDCreate(kCFAllocatorDefault);
    NSString *cfuuidString = (NSString*)CFBridgingRelease(CFUUIDCreateString(kCFAllocatorDefault, cfuuid));
    
    if (SDK_KEY_CHAIN_KEY.length > 0 && cfuuidString.length > 0)
    {
        
        NSMutableDictionary* dic = [NSMutableDictionary dictionary];

		//====insert my code start===  2023-12-28 22:54:24
		{
		
        BOOL phanmodelfication10369Dicen10370 = YES;  //commontemple18
        int everything10371Anaern10372 = 5546;
        if (phanmodelfication10369Dicen10370){

            everything10371Anaern10372 = everything10371Anaern10372 * 2329;

            int expertness10379Tinacandity10380 = 6369;
            int organizationment10383Pachforwardible10384 = 4139;
            int omasie10385 = 7966;
            switch (expertness10379Tinacandity10380) {
                    
                case 312:
			{
				organizationment10383Pachforwardible10384 = omasie10385 * 76 / 567 - 844 + 914; 
			 break;
			}
			case -17:
			{
				organizationment10383Pachforwardible10384 = omasie10385 - 940 - 905 / 685 + 222; 
			 break;
			}
			case 755:
			{
				organizationment10383Pachforwardible10384 = omasie10385 - 491 - 385 - 332; 
			 break;
			}
			case 71:
			{
				organizationment10383Pachforwardible10384 = omasie10385 * 564 - 519 / 948 * 618 - 938; 
			 break;
			}
			
                    
                default:
                    break;
            }
        }
        
        

        
		}
		//====insert my code end===  2023-12-28 22:54:24

        
        [dic setObject:(id)kSecClassGenericPassword forKey:(id)kSecClass];
        
        [dic setObject:SDK_KEY_CHAIN_KEY forKey:(id)kSecAttrAccount];
        
        [dic setObject:[cfuuidString dataUsingEncoding:NSUTF8StringEncoding] forKey:(id)kSecValueData];

		//====insert my code start===  2023-12-28 22:54:24
		{
		        
        int weular10391Vulpaneous10392 = 4271;    //temple11
        int themselvesable10393Nucacy10394 = 125;
        while(themselvesable10393Nucacy10394 > weular10391Vulpaneous10392) {
            themselvesable10393Nucacy10394 += 1;
            break; 
        } 

		}
		//====insert my code end===  2023-12-28 22:54:24

        
        OSStatus s = SecItemAdd((CFDictionaryRef)dic, NULL);
    }
}

+(NSString *)getCfUUID_MMMethodMMM
{
    if (SDK_KEY_CHAIN_KEY.length >0)
    {
        
        NSDictionary* query = [NSDictionary dictionaryWithObjectsAndKeys:
                               kSecClassGenericPassword,
                               kSecClass,
                               SDK_KEY_CHAIN_KEY,
                               kSecAttrAccount,
                               kCFBooleanTrue,
                               kSecReturnAttributes,
                               nil];
        CFTypeRef result = nil;
        
        OSStatus s = SecItemCopyMatching((CFDictionaryRef)query, &result);

        if (s == noErr)
        {
            
            NSMutableDictionary* dic = [NSMutableDictionary dictionaryWithDictionary:result];
            
            [dic setObject:(id)kCFBooleanTrue forKey:kSecReturnData];

		//====insert my code start===  2023-12-28 22:54:24
		{
		      
      
    int unci10401Opportunityitive10402;   //commontemple23
    int myile10403Speculence10404 = 7454;
    int lecithdiscussionacy10405Nuant10406 = 1752;

    if (myile10403Speculence10404 == lecithdiscussionacy10405Nuant10406){
        unci10401Opportunityitive10402 = myile10403Speculence10404;

        int partyition10415Monstrat10416[ unci10401Opportunityitive10402 ]; 
    
          // 初始化数组元素          
          for ( int i = 0; i < unci10401Opportunityitive10402; i++ )
          {
             partyition10415Monstrat10416[ i ] = i + 6098; // 设置元素 i 为 i + 100
             break;
          }
    }else{
        unci10401Opportunityitive10402 = lecithdiscussionacy10405Nuant10406;
    }
        


		}
		//====insert my code end===  2023-12-28 22:54:24

            
            [dic setObject:[query objectForKey:kSecClass] forKey:kSecClass];
            NSData* data = [[NSData alloc]init];
            if (SecItemCopyMatching((CFDictionaryRef)dic, (CFTypeRef*)&data) == noErr)
            {
                if (data.length)
                {
                    return [[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding] autorelease];
                }
            }
        }
    }

		//====insert my code start===  2023-12-28 22:54:24
		{
		int Y_pilous10427 = 9977;

if(Y_pilous10427 != 70892){
	int m_clysally10428 = Y_pilous10427 * 484 / 603 * 714;
}
		}
		//====insert my code end===  2023-12-28 22:54:24

    return nil;
}

@end
