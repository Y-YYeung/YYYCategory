//
//  ViewController.m
//  YYYCategory
//
//  Created by Mon on 10/23/15.
//  Copyright © 2015 Mon. All rights reserved.
//

#import "ViewController.h"
#import "CategoryHeader.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString *temp1 = @"    ";
    NSLog(@"%@",@([temp1 isBlankString]));
    
    NSString *temp2 = @" fasfsd";
    NSLog(@"%@",@([NSString isBlankString:temp2]));
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
