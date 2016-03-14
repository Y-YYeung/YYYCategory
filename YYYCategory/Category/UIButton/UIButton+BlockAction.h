//
//  UIButton+BlockAction.h
//  YYYCategory
//
//  Created by Mon on 3/14/16.
//  Copyright © 2016 Mon. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^ActionBlock)();
typedef void(^ActionBlockWithSender)(id sender);

@interface UIButton (BlockAction)

@property (nonatomic, copy) ActionBlock actionBlock;
@property (nonatomic, copy) ActionBlockWithSender actionBlockWithSender;

/**
 *  @author Mon
 *
 *  @brief Add action to button with a block, but pay attention to retain cycle
 *
 *  @param event  Touch event to trigger the action
 *  @param action Action should perform when touch event occurs
 */
- (void)handleControlEvent:(UIControlEvents)event block:(ActionBlock)action;

/**
 *  @author Mon
 *
 *  @brief Add action to button with a block, along with the sender(self, button), but pay attention to retain cycle
 *
 *  @param event Touch event to trigger the action
 *  @param senderAction Action should perform when touch event occurs
 */
- (void)handleControlEvent:(UIControlEvents)event senderblock:(ActionBlockWithSender)senderAction;

@end
