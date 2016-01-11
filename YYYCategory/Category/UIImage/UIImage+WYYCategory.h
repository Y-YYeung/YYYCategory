//
//  UIImage+Category.h
//  YYYCategory
//
//  Created by Mon on 10/23/15.
//  Copyright © 2015 Mon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (WYYCategory)

/**
 *  获取不被系统渲染的图片
 *
 *  @param imageName 图片名称
 *
 *  @return 没有被系统渲染的图片
 */
+ (instancetype)originImage:(NSString *)imageName;

/**
 *  返回拉伸显示的图片
 *
 *  @param imageName 图片名称
 *
 *  @return 处理后的图片
 */
+ (instancetype)imageWithStretchableName:(NSString *)imageName;

@end
