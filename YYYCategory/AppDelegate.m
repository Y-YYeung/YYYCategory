//
//  AppDelegate.m
//  YYYCategory
//
//  Created by Mon on 10/23/15.
//  Copyright © 2015 Mon. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "MyNavigationController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.rootViewController = [self testScrollView];
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (UIViewController *)testNavigationBar{
    
    ViewController *ctrl = [[ViewController alloc] init];
    ctrl.view.backgroundColor = [UIColor yellowColor];
    ctrl.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"HAH" style:UIBarButtonItemStylePlain target:nil action:nil];
    
    UINavigationController *nc = [[UINavigationController alloc] initWithRootViewController:ctrl];
//    nc.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"HAH" style:UIBarButtonItemStylePlain target:nil action:nil];
    [nc.navigationBar.subviews enumerateObjectsUsingBlock:^(__kindof UIView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
//        if ([obj isKindOfClass:NSClassFromString(@"UINavigationItemView")]) {
//            obj.alpha = 0.0;
//        }
        obj.alpha = 0.0;
    }];
    
    return nc;
}

- (UIViewController *)testScrollView{
    ViewController *ctrl = [[ViewController alloc] init];
    ctrl.view.backgroundColor = [UIColor whiteColor];
    
    return ctrl;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
