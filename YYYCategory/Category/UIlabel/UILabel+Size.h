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
 *  @author Mon
 *
 *  @brief resize label height to fit the content with the font
 *
 *  @param maxHeight the max height
 */
- (void)resizeLabelHeightToFitContentWithMaximumHeight:(CGFloat)maxHeight;

/**
 *  @author Mon
 *
 *  @brief calculate the size of a label that has a string with specific font based on a specific height, and add additional margin horizontally
 *
 *  @param maxHeight the maximum value of height
 *  @param aString   the string to display on the label
 *  @param font      the font of the string displayed on the label
 *  @param margin    a margin add to both size of the label(left and right), this value just represent one of the side margin
 *
 *  @return a size constraints to the size of the content of the label and the margin
 */
+ (CGSize)labelSizeConstraintToTextWithMaximumHeight:(CGFloat)maxHeight
                                              string:(NSString *)aString
                                                font:(UIFont *)font
                                    horizontalMargin:(CGFloat)margin;

/**
 *  @author Mon
 *
 *  @brief resize label width to fit the content with the font
 *
 *  @param maxWidth the max width
 */
- (void)resizeLabelWidthToFitTextWithMaximumWidth:(CGFloat)maxWidth;

/**
 *  @author Mon
 *
 *  @brief calculate the size of a label that has a string with specific font based on a specific width, and add additional margin horizontally
 *
 *  @param maxWidth the maximum value of width
 *  @param aString  the string to display on the label
 *  @param font     the font of the string displayed on the label
 *  @param margin   a margin add to both size of the label(top and bottom), this value just represent one of the side margin
 *
 *  @return a size constraints to the size of the content of the label and the margin
 */
+ (CGSize)labelSizeConstraintToContentWithMaximumWidth:(CGFloat)maxWidth
                                                string:(NSString *)aString
                                                  font:(UIFont *)font
                                        verticalMargin:(CGFloat)margin;

@end
