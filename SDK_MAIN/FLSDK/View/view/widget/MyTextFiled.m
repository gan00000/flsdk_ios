//
//  SDKTextFiledView.m
//  R2DSDK
//
//  Created by ganyuanrong on 2020/7/9.
//  Copyright © 2020 ganyuanrong. All rights reserved.
//

#import "MyTextFiled.h"
#import "UIUtil.h"
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@implementation MyTextFiled
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


////监听输入框文字变化  手动设置UITextField.text=nil或者@""或者wwwww_tag_wwwww_lubricite_nearaceous都不会触发这个通知，在输入框输入/删除文字、剪切/粘贴输入框文字、输入中文拼音、
///点击自带的clearButton清空文字时会触发（点击输入键盘上方的待选文字时会触发两次）
- (void)textChanged_MMMethodMMM:(UITextField *)sender
{
    SDK_LOG(@"MyTextFiled textChanged=>%@",sender.text);
    
    if (sender.text && [sender.text containsString:@" "]) {
        NSString *tempStr = [sender.text stringByReplacingOccurrencesOfString:@" " withString:@""];//不允许输入空格
        self.inputTextField_MMMPRO.text = tempStr;
    }
    
//    if (self.inputTextFieldChange) {
//        self.inputTextFieldChange(self.inputUITextField.text,0,nil);
//    }
    
}
@end
