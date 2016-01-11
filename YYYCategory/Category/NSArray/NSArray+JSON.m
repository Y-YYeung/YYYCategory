//
//  NSArray+JSON.m
//  V2ZH
//
//  Created by Mon on 1/5/16.
//  Copyright © 2016 Mon. All rights reserved.
//

#import "NSArray+JSON.h"

@implementation NSArray (JSON)

- (NSData *)JSONData
{
    if([NSJSONSerialization isValidJSONObject:self])
    {
        return [NSJSONSerialization dataWithJSONObject:self options:NSJSONWritingPrettyPrinted error:nil];
    }
    else
    {
        NSAssert(nil, @"NSArray -> JSON error occurs");
        return nil;
    }
}

- (NSString *)JSONString
{
    return [[NSString alloc] initWithData:[self JSONData] encoding:NSUTF8StringEncoding];
}

@end
