//
//  XBTextField.m
//  drawTest
//
//  Created by chuango on 16/11/1.
//  Copyright © 2016年 chuango. All rights reserved.
//

#import "XBTextField.h"

//根据传入的文字、宽度和字体计算出合适的size (CGSize)
#define getAdjustSizeWith_text_width_font(text,width,font) ({[text boundingRectWithSize:CGSizeMake(width, CGFLOAT_MAX) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName :font} context:NULL].size;})

@implementation XBTextField

-(instancetype)initWithFrame:(CGRect)frame
{
    if (self=[super initWithFrame:frame])
    {
        [self initParams];
    }
    return self;
}

-(instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (self=[super initWithCoder:aDecoder])
    {
        [self initParams];
    }
    return self;
}

-(void)initParams
{
    self.placeholderLeft=5;
    self.placeholderColor=[[UIColor grayColor] colorWithAlphaComponent:0.6];
    self.placeholderFont=[UIFont systemFontOfSize:14];
}

- (void)drawPlaceholderInRect:(CGRect)rect
{
    if (self.placeholder)
    {
        CGRect resultRect;
        resultRect.size=getAdjustSizeWith_text_width_font(self.placeholder, rect.size.width-self.placeholderLeft-5, self.placeholderFont);
        resultRect.origin=CGPointMake(5, (rect.size.height-resultRect.size.height)*0.5);
        [self.placeholder drawInRect:resultRect withAttributes:@{NSForegroundColorAttributeName:self.placeholderColor,NSFontAttributeName:self.placeholderFont}];
    }
}
-(void)setPlaceholderFont:(UIFont *)placeholderFont
{
    _placeholderFont=placeholderFont;
    [self setNeedsDisplay];
}
-(void)setPlaceholderColor:(UIColor *)placeholderColor
{
    _placeholderColor=placeholderColor;
    [self setNeedsDisplay];
}
-(void)setPlaceholder:(NSString *)placeholder
{
    [super setPlaceholder:placeholder];
    [self setNeedsDisplay];
}

@end
