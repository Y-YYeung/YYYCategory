//
//  ViewController.m
//  YYYCategory
//
//  Created by Mon on 10/23/15.
//  Copyright © 2015 Mon. All rights reserved.
//

#import "ViewController.h"
#import "UILabel+Size.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(10, 100, 100, 35)];
    
    label.text = @"WYYWYYWYYWYYWYYWYYWYYWYYWYYWYYWYYWYYWYYWYYWYY挖哈哈哈哈哈哈哈哈哈哈哈哈";
    label.backgroundColor = [UIColor orangeColor];
    [label resizeLabelHeightToFitText];
    
    [self.view addSubview:label];
    
    UILabel *label2 = [[UILabel alloc] initWithFrame:CGRectMake(10, 300, 100, 35)];
    label2.text = @"WYYWYYWYYWYYWYYWYYWYYWYYWYYWYYWYYWYYWYYWYYWYY挖哈哈哈哈哈哈哈哈哈哈哈哈";
    label2.backgroundColor = [UIColor grayColor];
    [label2 resizeLabelWidthToFitTextWithMaximumWidth:[UIScreen mainScreen].bounds.size.width - 20];
    
    [self.view addSubview:label2];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
