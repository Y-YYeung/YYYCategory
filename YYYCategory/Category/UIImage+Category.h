//
//  UIImage+Category.h
//  YYYCategory
//
//  Created by Mon on 10/23/15.
//  Copyright © 2015 Mon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Category)

/**
 *  获取不被系统渲染的图片
 *
 *  @param imageName 图片名称
 *
 *  @return 没有被系统渲染的图片
 */
+ (instancetype)originImage:(NSString *)imageName;

@end
