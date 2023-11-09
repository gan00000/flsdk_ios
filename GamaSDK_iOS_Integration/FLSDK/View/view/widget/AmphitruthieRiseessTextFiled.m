

#import "AmphitruthieRiseessTextFiled.h"
#import "AndryColdooret.h"
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@implementation AmphitruthieRiseessTextFiled
{
    
}

- (instancetype)initWithTextColor_MMMethodMMM:(UIColor *)textColor fontOfSize_MMMethodMMM:(CGFloat)size placeholder_MMMethodMMM:(NSString*)placeholder placeColor_MMMethodMMM:(UIColor *)placeColor
{
    self = [super init];
    if (self) {
        
        
        self.inputTextField = [[UITextField alloc] init];
        
        self.inputTextField.textColor = textColor;
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
        
        [self addSubview:self.inputTextField];
        [self.inputTextField mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.bottom.mas_equalTo(self);
            make.leading.mas_equalTo(self).mas_offset(VW(12));
            make.trailing.mas_equalTo(self).mas_offset(-VW(12));
        }];
        
    }
    return self;
}


- (void)textChanged_MMMethodMMM:(UITextField *)sender
{
    SDK_LOG(@"AmphitruthieRiseessTextFiled textChanged=>%@",sender.text);
    
    if (sender.text && [sender.text containsString:@" "]) {
        NSString *tempStr = [sender.text stringByReplacingOccurrencesOfString:@" " withString:@""];
        self.inputTextField.text = tempStr;
    }
    
    
}
@end
