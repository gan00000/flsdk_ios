

#import "OculfierSpargkinTextFiled.h"
#import "LeukastBetweenate.h"
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@implementation OculfierSpargkinTextFiled
{
    
}

- (instancetype)initWithTextColor_MMMethodMMM:(UIColor *)textColor fontOfSize_MMMethodMMM:(CGFloat)size placeholder_MMMethodMMM:(NSString*)placeholder placeColor_MMMethodMMM:(UIColor *)placeColor
{
    self = [super init];
    if (self) {
        
        
        self.inputTextField_MMMPRO = [[UITextField alloc] init];
        
        self.inputTextField_MMMPRO.textColor = textColor;
        self.inputTextField_MMMPRO.font = [UIFont systemFontOfSize:size];
        
        NSAttributedString *attrStr = [[NSAttributedString alloc] initWithString:placeholder
                                                                      attributes:@{
            NSFontAttributeName:[UIFont systemFontOfSize:size],
            NSForegroundColorAttributeName: placeColor}];
        
        self.inputTextField_MMMPRO.attributedPlaceholder = attrStr;
        
        
        if (SDK_DATA.mUITextFieldDelegate_MMMPRO) {
            self.inputTextField_MMMPRO.delegate = SDK_DATA.mUITextFieldDelegate_MMMPRO;
        }
        
        [self.inputTextField_MMMPRO addTarget:self action:@selector(textChanged_MMMethodMMM:) forControlEvents:(UIControlEventEditingChanged)];
        
        [self addSubview:self.inputTextField_MMMPRO];
        [self.inputTextField_MMMPRO mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.bottom.mas_equalTo(self);
            make.leading.mas_equalTo(self).mas_offset(VW(12));
            make.trailing.mas_equalTo(self).mas_offset(-VW(12));
        }];
        
    }
    return self;
}


- (void)textChanged_MMMethodMMM:(UITextField *)sender
{
    SDK_LOG(wwwww_tag_wwwww_managerster_ratherage,sender.text);
    
    if (sender.text && [sender.text containsString:@" "]) {
        NSString *tempStr = [sender.text stringByReplacingOccurrencesOfString:@" " withString:@""];
        self.inputTextField_MMMPRO.text = tempStr;
    }
    
    
}
@end
