//
//  ViewController.m
//  YYYCategory
//
//  Created by Mon on 10/23/15.
//  Copyright © 2015 Mon. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+BlockAction.h"


@interface ViewController ()

@property (nonatomic, strong) NSMutableArray *btns;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *normalButton1 = [UIButton buttonWithType:UIButtonTypeSystem];
    normalButton1.frame = CGRectMake(100, 100, 200.f, 40.f);
    [normalButton1 setTitle:@"Normal one" forState:UIControlStateNormal];
    [normalButton1 addTarget:self action:@selector(action1) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:normalButton1];
    
    UIButton *normalButton2 = [UIButton buttonWithType:UIButtonTypeSystem];
    normalButton2.frame = CGRectMake(CGRectGetMinX(normalButton1.frame), CGRectGetMaxY(normalButton1.frame) + 10.f, 200.f, 40.f);
    [normalButton2 setTitle:@"Normal one 2" forState:UIControlStateNormal];
    [normalButton2 addTarget:self action:@selector(action1:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:normalButton2];
    
    _btns = [NSMutableArray arrayWithCapacity:2];
    
    UIButton *blockButton1 = [UIButton buttonWithType:UIButtonTypeSystem];
    blockButton1.frame = CGRectMake(100.f, CGRectGetMaxY(normalButton2.frame) + 50.f, 200.f, 40.f);
    [blockButton1 handleControlEvent:UIControlEventTouchUpInside block:^{
        NSLog(@"block button");
    }];
    [blockButton1 setTitle:@"block button 1" forState:UIControlStateNormal];
    [self.view addSubview:blockButton1];
    
    UIButton *blockButton2 = [UIButton buttonWithType:UIButtonTypeSystem];
    blockButton2.frame = CGRectMake(100.f, CGRectGetMaxY(blockButton1.frame) + 10.f, 200.f, 40.f);
    [blockButton2 handleControlEvent:UIControlEventTouchUpInside senderblock:^(id sender) {
        NSLog(@"block button: %@", sender);
    }];
    [blockButton2 setTitle:@"block button 1" forState:UIControlStateNormal];
    [self.view addSubview:blockButton2];
    
    [_btns addObject:blockButton1];
    [_btns addObject:blockButton2];
    
    UIButton *btnRemove = [UIButton buttonWithType:UIButtonTypeSystem];
    btnRemove.frame = CGRectMake(100.f, CGRectGetMaxY(blockButton2.frame) + 10.f, 200.f, 200.f);
    [btnRemove setTitle:@"Remove" forState:UIControlStateNormal];
    [btnRemove addTarget:self action:@selector(actionRemove) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnRemove];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)action1{
    NSLog(@"normal one");
}

- (void)action1:(id)sender{
    NSLog(@"Retain count is %ld", CFGetRetainCount((__bridge CFTypeRef)sender));
    NSLog(@"normal one: %@", sender);
}

- (void)actionRemove{
    UIButton *btn = self.btns[0];
    NSLog(@"Retain count is %ld", CFGetRetainCount((__bridge CFTypeRef)btn));
    [btn removeFromSuperview];
    [self.btns removeObjectAtIndex:0];
}


@end
