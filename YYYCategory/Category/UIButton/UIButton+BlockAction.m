//
//  UIButton+BlockAction.m
//  YYYCategory
//
//  Created by Mon on 3/14/16.
//  Copyright © 2016 Mon. All rights reserved.
//

#import <objc/runtime.h>
#import "UIButton+BlockAction.h"


@implementation UIButton (BlockAction)

@dynamic actionBlock;
@dynamic actionBlockWithSender;

- (void)setActionBlock:(ActionBlock)actionBlock{
    objc_setAssociatedObject(self, @selector(actionBlock), actionBlock, OBJC_ASSOCIATION_COPY);
}

- (ActionBlock)actionBlock{
    return objc_getAssociatedObject(self, @selector(actionBlock));
}

- (void)setActionBlockWithSender:(ActionBlockWithSender)actionBlockWithSender{
    objc_setAssociatedObject(self, @selector(actionBlockWithSender), actionBlockWithSender, OBJC_ASSOCIATION_COPY);
}

- (ActionBlockWithSender)actionBlockWithSender{
    return objc_getAssociatedObject(self, @selector(actionBlockWithSender));
}

- (void)handleControlEvent:(UIControlEvents)event block:(ActionBlock)action{
    self.actionBlock = action;
    [self addTarget:self action:@selector(action) forControlEvents:event];
}

- (void)handleControlEvent:(UIControlEvents)event senderblock:(ActionBlockWithSender)senderAction{
    self.actionBlockWithSender = senderAction;
    [self addTarget:self action:@selector(actionWithSender) forControlEvents:event];
}

- (void)action{
    self.actionBlock();
}

- (void)actionWithSender{
    self.actionBlockWithSender(self);
}

@end
