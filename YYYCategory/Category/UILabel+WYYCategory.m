//
//  UILabel+Category.m
//  YYYCategory
//
//  Created by Mon on 11/13/15.
//  Copyright © 2015 Mon. All rights reserved.
//

#import "UILabel+WYYCategory.h"

@implementation UILabel (WYYCategory)

/**
 *  重新设置 label 高度来适应文本
 */
- (void)resizeLabelHeightToFitText{
    
    // 设置自动行数
    self.numberOfLines = 0;
    
    // 设置换行模式
    self.lineBreakMode = NSLineBreakByWordWrapping;
    
    // 以宽度为标准，创建一个高度超级大的 size
    CGSize size = CGSizeMake(self.frame.size.width, 0);
    
    // 计算 label 实际大小，算上字体
    NSDictionary *attributes = @{NSFontAttributeName:self.font};
    
    CGSize realSize = [self.text boundingRectWithSize:size
                                              options:NSStringDrawingTruncatesLastVisibleLine | NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading
                                           attributes:attributes context:nil].size;
    
    // 设置大小
    self.frame = CGRectMake(CGRectGetMinX(self.frame), CGRectGetMinY(self.frame), realSize.width, realSize.height);
}

/**
 *  重新设置 label 宽度和高度来适应文本
 *
 *  @param maxWidth label 的最大宽度
 */
- (void)resizeLabelWidthToFitTextWithMaximumWidth:(CGFloat)maxWidth{
    
    // 设置自动行数
    self.numberOfLines = 0;
    
    // 设置换行模式
    self.lineBreakMode = NSLineBreakByWordWrapping;
    
    // 以宽度为标准，创建一个高度超级大的 size
    CGSize size = CGSizeMake(maxWidth, 0);
    
    // 计算 label 实际大小，算上字体
    NSDictionary *attributes = @{NSFontAttributeName:self.font};
    
    CGSize realSize = [self.text boundingRectWithSize:size
                                              options:NSStringDrawingTruncatesLastVisibleLine | NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading
                                           attributes:attributes context:nil].size;
    
    // 设置大小
    self.frame = CGRectMake(CGRectGetMinX(self.frame), CGRectGetMinY(self.frame), realSize.width, realSize.height);
}

@end
