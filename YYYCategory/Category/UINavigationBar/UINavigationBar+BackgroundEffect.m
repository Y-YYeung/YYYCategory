//
//  UINavigationBar+BackgroundEffect.m
//  YYYCategory
//
//  Created by Mon on 2/5/16.
//  Copyright © 2016 Mon. All rights reserved.
//

#import "UINavigationBar+BackgroundEffect.h"
#import <objc/runtime.h>

@implementation UINavigationBar (BackgroundEffect)

- (void)setOverlay:(UIView *)overlay{
    objc_setAssociatedObject(self, @selector(overlay), overlay, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (UIView *)overlay{
    return objc_getAssociatedObject(self, @selector(overlay));
}

- (void)doSetBackgroundColor:(UIColor *)backgroundColor hideSeparator:(BOOL)hideSeparator{
    if (!self.overlay) {
        [self setBackgroundImage:[[UIImage alloc] init] forBarMetrics:UIBarMetricsDefault];
        self.overlay = [[UIView alloc] initWithFrame:CGRectMake(0, -20, CGRectGetWidth([UIScreen mainScreen].bounds), CGRectGetHeight(self.bounds) + 20)];
        self.overlay.userInteractionEnabled = NO;
        self.overlay.autoresizingMask = UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight;
        [self insertSubview:self.overlay atIndex:0];
    }
    
    self.overlay.backgroundColor = backgroundColor;
    
    if (hideSeparator) {
        self.shadowImage = [[UIImage alloc] init];
    }
}

- (void)setNavigationBarAlpha:(CGFloat)alpha{
    [[self valueForKey:@"_leftViews"] enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if ([obj isKindOfClass:[UIView class]]) {
            ((UIView *)obj).alpha = alpha;
        }
    }];
    
    [[self valueForKey:@"_rightViews"] enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if ([obj isKindOfClass:[UIView class]]) {
            ((UIView *)obj).alpha = alpha;
        }
    }];
    
    UIView *titleView = [self valueForKey:@"_titleView"];
    titleView.alpha = alpha;
    
    [self.subviews enumerateObjectsUsingBlock:^(__kindof UIView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if ([obj isKindOfClass:NSClassFromString(@"UINavigationItemView")]) {
            obj.alpha = alpha;
            *stop = YES;
        }
    }];
}

@end
