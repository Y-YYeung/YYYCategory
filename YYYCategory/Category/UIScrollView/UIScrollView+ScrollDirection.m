//
//  UIScrollView+ScrollDirection.m
//  YYYCategory
//
//  Created by Mon on 2/4/16.
//  Copyright © 2016 Mon. All rights reserved.
//

#import "UIScrollView+ScrollDirection.h"
#import <objc/runtime.h>

@implementation UIScrollView (ScrollDirection)

@dynamic lastContentOffsetY;

- (void)setLastContentOffsetY:(CGFloat)lastContentOffsetY{
    objc_setAssociatedObject(self, @selector(lastContentOffsetY), @(lastContentOffsetY), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (CGFloat)lastContentOffsetY{
    
    NSNumber *y = objc_getAssociatedObject(self, @selector(lastContentOffsetY));
    
    return [y floatValue];
}

- (ScrollDirection)scrollDirection{
    ScrollDirection direction;
    
    {
        if (self.contentOffset.y - self.lastContentOffsetY > 0) {
            direction = ScrollDirectionUp;
        } else if (self.contentOffset.y - self.lastContentOffsetY < 0) {
            direction = ScrollDirectionDown;
        } else {
            direction = ScrollDirectionNone;
        }
        
        self.lastContentOffsetY = self.contentOffset.y;
    }
    
    return direction;
}

@end
