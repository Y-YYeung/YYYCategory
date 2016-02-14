//
//  UIScrollView+ScrollDirection.h
//  YYYCategory
//
//  Created by Mon on 2/4/16.
//  Copyright © 2016 Mon. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum : NSUInteger {
    ScrollDirectionNone,
    ScrollDirectionUp,
    ScrollDirectionDown,
} ScrollDirection;

@interface UIScrollView (ScrollDirection)

/**
 *  @author Mon
 *
 *  @brief detect which direction the scroll view is scrolling
 *         only for vertical direction now
 *
 *  @return direction the scroll view is scrolling
 */
- (ScrollDirection)scrollDirection;

@end
