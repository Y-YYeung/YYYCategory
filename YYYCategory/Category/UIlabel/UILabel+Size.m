//
//  UILabel+Category.m
//  YYYCategory
//
//  Created by Mon on 11/13/15.
//  Copyright © 2015 Mon. All rights reserved.
//

#import "UILabel+Size.h"

@implementation UILabel (Size)

- (void)resizeLabelHeightToFitTextWithMaximumHeight:(CGFloat)maxHeight{
    
    self.numberOfLines = 0;
    self.lineBreakMode = NSLineBreakByWordWrapping;
    CGSize size = CGSizeMake(0, maxHeight);
    
    NSDictionary *attributes = @{NSFontAttributeName:self.font};
    
    CGSize realSize = [self.text boundingRectWithSize:size
                                              options:NSStringDrawingTruncatesLastVisibleLine | NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading
                                           attributes:attributes context:nil].size;
    
    self.frame = CGRectMake(CGRectGetMinX(self.frame), CGRectGetMinY(self.frame), realSize.width, realSize.height);
}

+ (CGSize)labelSizeConstraintToTextWithMaximumHeight:(CGFloat)maxHeight string:(NSString *)aString font:(UIFont *)font horizontalMargin:(CGFloat)margin{
    CGSize size = CGSizeMake(0, maxHeight);
    NSDictionary *attributes = @{NSFontAttributeName:font};
    
    CGSize realSize = [aString boundingRectWithSize:size
                                              options:NSStringDrawingTruncatesLastVisibleLine | NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading
                                           attributes:attributes context:nil].size;
    
    realSize = CGSizeMake(realSize.width + 2 * margin, realSize.height);
    return realSize;
}

- (void)resizeLabelWidthToFitTextWithMaximumWidth:(CGFloat)maxWidth{
    
    self.numberOfLines = 0;
    self.lineBreakMode = NSLineBreakByWordWrapping;
    CGSize size = CGSizeMake(maxWidth, 0);
    
    NSDictionary *attributes = @{NSFontAttributeName:self.font};
    
    CGSize realSize = [self.text boundingRectWithSize:size
                                              options:NSStringDrawingTruncatesLastVisibleLine | NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading
                                           attributes:attributes context:nil].size;
    
    self.frame = CGRectMake(CGRectGetMinX(self.frame), CGRectGetMinY(self.frame), realSize.width, realSize.height);
}

+ (CGSize)labelSizeConstraintToContentWithMaximumWidth:(CGFloat)maxWidth string:(NSString *)aString font:(UIFont *)font verticalMargin:(CGFloat)margin{
    CGSize size = CGSizeMake(maxWidth, 0);
    NSDictionary *attributes = @{NSFontAttributeName:font};
    
    CGSize realSize = [aString boundingRectWithSize:size
                                            options:NSStringDrawingTruncatesLastVisibleLine | NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading
                                         attributes:attributes context:nil].size;
    
    realSize = CGSizeMake(realSize.width, realSize.height + 2 * margin);
    return realSize;
}

@end
