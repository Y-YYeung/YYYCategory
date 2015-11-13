//
//  NSString+Category.h
//  YYYCategory
//
//  Created by Mon on 10/23/15.
//  Copyright © 2015 Mon. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (WYYCategory)

/**
 *  去除字符串首位的空格
 *
 *  @return 去除首位空格的字符串
 */
- (instancetype)trimWhiteSpaceCharacterBothEnds;

/**
 *  去除整个字符串中的空格，限于空格的情况
 *
 *  @return 去除空格的字符串
 */
- (instancetype)trimWhiteSpaceCharacterEntire;


/**
 *  判断是否为空字符串
 *
 *  @return 是否为空的 BOOL 值
 */
- (BOOL)isBlankString;

/**
 *  判断是否为空字符串
 *
 *  @return 是否为空的 BOOL 值
 */
+ (BOOL)isBlankString:(NSString *)aString;

@end
