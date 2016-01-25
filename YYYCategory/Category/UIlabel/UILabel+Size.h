//
//  UILabel+Category.h
//  YYYCategory
//
//  Created by Mon on 11/13/15.
//  Copyright © 2015 Mon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (Size)

/**
 *  重新设置 label 高度来适应文本
 */
- (void)resizeLabelHeightToFitText;

/**
 *  重新设置 label 宽度和高度来适应文本
 *
 *  @param maxWidth label 的最大宽度
 */
- (void)resizeLabelWidthToFitTextWithMaximumWidth:(CGFloat)maxWidth;

@end
