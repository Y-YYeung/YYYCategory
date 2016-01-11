//
//  NSString+Category.m
//  YYYCategory
//
//  Created by Mon on 10/23/15.
//  Copyright © 2015 Mon. All rights reserved.
//

#import "NSString+WYYCategory.h"

@implementation NSString (WYYCategory)

- (instancetype)trimWhiteSpaceCharacterBothEnds{
    
    return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
}

- (instancetype)trimWhiteSpaceCharacterEntire{
    
    return [self stringByReplacingOccurrencesOfString:@" " withString:@""];
}

- (BOOL)isBlankString{
    
    //情况 1
    if (self == nil || self == NULL) {
        return YES;
    }
    
    //情况 2
    if ([self isKindOfClass:[NSNull class]]) {
        return YES;
    }
    
    //情况 3
    if ([self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]].length == 0) {
        return YES;
    }
    
    return NO;
}

+ (BOOL)isBlankString:(NSString *)aString{
    
    if (aString == nil || aString == NULL) {
        return YES;
    }
    
    if ([aString isKindOfClass:[NSNull class]]) {
        return YES;
    }
    
    if ([aString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]].length == 0) {
        return YES;
    }
    
    return NO;
}

@end
