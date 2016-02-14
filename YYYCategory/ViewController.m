//
//  ViewController.m
//  YYYCategory
//
//  Created by Mon on 10/23/15.
//  Copyright © 2015 Mon. All rights reserved.
//

#import "ViewController.h"
#import "UILabel+Size.h"
#import "UIView+Frame.h"
#import "UIScrollView+ScrollDirection.h"
#import "UINavigationBar+BackgroundEffect.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UILabel *label      = [[UILabel alloc] initWithFrame:CGRectMake(10, 100, 0, 0)];
    label.font          = [UIFont systemFontOfSize:17.f weight:8.f];
    label.text          = @"God help me";
    label.numberOfLines = 1;
    label.size = [UILabel labelSizeConstraintToTextWithMaximumHeight:40.f string:label.text font:label.font horizontalMargin:10.f];
    label.textAlignment = NSTextAlignmentCenter;
    label.backgroundColor    = [UIColor orangeColor];
    label.layer.cornerRadius = 10.f;
    label.clipsToBounds = YES;
    
    [self.view addSubview:label];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
