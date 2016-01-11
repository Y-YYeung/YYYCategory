//
//  UIImage+Category.m
//  YYYCategory
//
//  Created by Mon on 10/23/15.
//  Copyright © 2015 Mon. All rights reserved.
//

#import "UIImage+WYYCategory.h"

@implementation UIImage (WYYCategory)

+ (instancetype)originImage:(NSString *)imageName{
    
    UIImage *image = [UIImage imageNamed:imageName];
    
    return [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}

+ (instancetype)imageWithStretchableName:(NSString *)imageName
{
    UIImage *image = [UIImage imageNamed:imageName];
//    return [image stretchableImageWithLeftCapWidth:image.size.width * 0.5 topCapHeight:image.size.height * 0.5];
    
    return [image resizableImageWithCapInsets:UIEdgeInsetsMake(image.size.height / 2, image.size.width / 2, image.size.height / 2, image.size.width / 2)];
}

@end
