
#import <Foundation/Foundation.h>

@interface CHMXTTEventWrapper : NSObject


@property(nonatomic, assign)int  datasIndex;
@property(nonatomic, assign)int  user_count;
@property(nonatomic, assign)float  createOffset;




+(long)retDictLoadFormatPositionAutorotate;


+ (instancetype)sharedInstance;


@end
