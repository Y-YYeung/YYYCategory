//
//  UIColor+Category.h
//  YYYCategory
//
//  Created by Mon on 10/23/15.
//  Copyright © 2015 Mon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (WYYCategory)

/**
 *  根据传入的十六进制字符串转换成相应的颜色
 *
 *  @param hexStringToConvert 代表颜色的十六进制字符串
 *
 *  @return 转换后的颜色
 */
+ (instancetype)colorWithHexString:(NSString *)hexStringToConvert;

@end
