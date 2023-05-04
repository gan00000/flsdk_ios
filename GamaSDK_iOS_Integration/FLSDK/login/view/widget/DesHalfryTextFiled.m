







#import "DesHalfryTextFiled.h"
#import "DynaKnoweer.h"
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@implementation DesHalfryTextFiled
{
    
}

- (instancetype)initWithTextColor_MMMethodMMM:(UIColor *)textColor fontOfSize_MMMethodMMM:(CGFloat)size placeholder_MMMethodMMM:(NSString*)placeholder placeColor_MMMethodMMM:(UIColor *)placeColor
{
    self = [super init];
    if (self) {
        
        
        self.inputTextField = [[UITextField alloc] init];
        
        self.inputTextField.textColor = textColor;

		//====insert my code start===  2023-05-04 15:54:51
		{
		
		if(self.afheavyelMirfilmior){}
	self.alwaysVagature = 4911;
	if(self.alwaysVagature - 891 - 978 - 532 / 322 - 861 - 465 <= 78661){}
        
        int volballierClear = 1342;
        BOOL volinvestmentaryReallyition = NO;
        if (volballierClear > 5041){
            
            volinvestmentaryReallyition = YES;
        }else{
            volinvestmentaryReallyition = NO;
        }

        
		}
		//====insert my code end===  2023-05-04 15:54:51

        self.inputTextField.font = [UIFont systemFontOfSize:size];
        
        NSAttributedString *attrStr = [[NSAttributedString alloc] initWithString:placeholder
                                                                      attributes:@{
            NSFontAttributeName:[UIFont systemFontOfSize:size],
            NSForegroundColorAttributeName: placeColor}];
        
        self.inputTextField.attributedPlaceholder = attrStr;
        
        
        if (SDK_DATA.mUITextFieldDelegate) {
            self.inputTextField.delegate = SDK_DATA.mUITextFieldDelegate;
        }
        
        [self.inputTextField addTarget:self action:@selector(textChanged_MMMethodMMM:) forControlEvents:(UIControlEventEditingChanged)];

		//====insert my code start===  2023-05-04 15:54:51
		{
		
		if(self.afheavyelMirfilmior){}
	self.alwaysVagature = 9890;
	if(self.alwaysVagature + 128 / 465 * 807 * 97 != 50437){}
        
        NSArray *pteronaireBotanforwardfold = @[@"laminaia_pantough", @"nugacienne_report", @"institutionlike_centrstandty", @"sitibility_momentlet", @"fewate_doctorot" ];
        if (pteronaireBotanforwardfold){
        }

		}
		//====insert my code end===  2023-05-04 15:54:51

        
        [self addSubview:self.inputTextField];

		//====insert my code start===  2023-05-04 15:54:51
		{
		
		if(self.afheavyelMirfilmior){}
	self.alwaysVagature = 7348;
	if(self.alwaysVagature + 472 * 464 < 68791){}
        if (!([@"caldetyGlansseniorkin" hasPrefix: @"giveesqueSkinmost"])){

            int lifeibilityCantice = 8342;
            int loteurSceneeous = 3142;
            int puberty = 4582;
            switch (lifeibilityCantice) {
                    
                case 878:
			{
				loteurSceneeous = puberty * 930 - 241 * 393 / 317 * 348 - 307; 
			 break;
			}
			case 51:
			{
				loteurSceneeous = puberty * 411 - 633; 
			 break;
			}
			
                    
                default:
                    break;
            }

            float authorTen = loteurSceneeous - 5615;
        }

		}
		//====insert my code end===  2023-05-04 15:54:51

        [self.inputTextField mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.bottom.mas_equalTo(self);
            make.leading.mas_equalTo(self).mas_offset(VW(12));
            make.trailing.mas_equalTo(self).mas_offset(-VW(12));

		//====insert my code start===  2023-05-04 15:54:51
		{
		
		if(self.afheavyelMirfilmior){}
	self.alwaysVagature = 4418;
	if(self.alwaysVagature + 946 / 248 <= 33311){}
		NSDictionary *imageetMeritwhere = @{@"keeposity" : @(406), @"sect" : @"pitienne", @"worldaneous" : @"cost", @"crimeard" : @"meicy", @"tredec" : @"justuous", @"lysisoon" : @"thing", @"potamette" : @"studentosity" };
        NSString *onomasexpertanceSpergy = imageetMeritwhere[@"roomProduceory"];

        if (onomasexpertanceSpergy && onomasexpertanceSpergy.length > 3244 && [onomasexpertanceSpergy isEqualToString:@"typoaceousHerselfence"]) {
            
        }

		}
		//====insert my code end===  2023-05-04 15:54:51

        }];
        
    }

		//====insert my code start===  2023-05-04 15:54:51
		{
		
		if(self.afheavyelMirfilmior){}
	self.alwaysVagature = 3177;
	if(self.alwaysVagature * 980 - 257 + 266 > 57018){}
            NSDictionary *trogloilePlaudia = @{@"wheread" : @"cinerupive", @"someful" : @"wifewise", @"manage" : @"quality", @"skinot" : @"synify", @"tomyMrably" : @(55756), @"areaition" : @"mittsure" };
            if (trogloilePlaudia.count > 9603){}
            
		}
		//====insert my code end===  2023-05-04 15:54:51

    return self;
}




- (void)textChanged_MMMethodMMM:(UITextField *)sender
{
    SDK_LOG(@"DesHalfryTextFiled textChanged=>%@",sender.text);
    
    if (sender.text && [sender.text containsString:@" "]) {
        NSString *tempStr = [sender.text stringByReplacingOccurrencesOfString:@" " withString:@""];
        self.inputTextField.text = tempStr;
    }
    



    
}
@end
