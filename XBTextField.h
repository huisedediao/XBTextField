//
//  XBTextField.h
//  drawTest
//
//  Created by chuango on 16/11/1.
//  Copyright © 2016年 chuango. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XBTextField : UITextField

/** 占位文字的颜色，默认灰色透明度0.6 */
@property (nonatomic,strong) UIColor *placeholderColor;
/** 占位文字的字体，默认系统14号 */
@property (nonatomic,strong) UIFont *placeholderFont;
/** 占位文字的起始位置，默认5 */
@property (nonatomic,assign) CGFloat placeholderLeft;
@end
