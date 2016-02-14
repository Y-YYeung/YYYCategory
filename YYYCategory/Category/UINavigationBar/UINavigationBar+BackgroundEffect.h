//
//  UINavigationBar+BackgroundEffect.h
//  YYYCategory
//
//  Created by Mon on 2/5/16.
//  Copyright © 2016 Mon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UINavigationBar (BackgroundEffect)

/**
 *  @author Mon
 *
 *  @brief set backgroundColor of navigation bar and determine to hide the separator at the bottom of the bar or not.
 *  And remember to invoke this method in or after the period of viewWillAppear:
 *
 *  @param backgroundColor the color set to the background of navigation bar
 *  @param hideSeparator   the flag to determine if hide the separator or not
 */
- (void)doSetBackgroundColor:(UIColor *)backgroundColor hideSeparator:(BOOL)hideSeparator;

/**
 *  @author Mon
 *
 *  @brief set alpha of the view in navigation bar
 *
 *  @param alpha alpha of the view
 */
- (void)setNavigationBarAlpha:(CGFloat)alpha;

@end
