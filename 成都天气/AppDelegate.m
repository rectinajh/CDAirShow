//
//  AppDelegate.m
//  成都天气
//
//  Created by rimi on 15/6/28.
//  Copyright (c) 2015年 rectinajh. All rights reserved.
//

#import "AppDelegate.h"
#import "InitialViewController.h"

#import "HomeViewController.h"
#import "AirMapViewController.h"
#import "ScenicViewController.h"
#import "SettingViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    //UITabBarController *tabBarController = [[UITabBarController alloc]init];
    //tabBarController.viewControllers =@[naviFirst,naviSecond,naviThird,naviFouth];
    
    
    HomeViewController *home = [[HomeViewController alloc]init];
    AirMapViewController *air = [[AirMapViewController alloc]init];
    ScenicViewController *scenic = [[ScenicViewController alloc]init];
    SettingViewController *setting = [[SettingViewController alloc]init];
    
    UINavigationController *naviFirst = [[UINavigationController alloc]initWithRootViewController:home];
    naviFirst.navigationBar.barTintColor = [UIColor colorWithRed:0.302 green:0.628 blue:0.212 alpha:1.000];
    UIBarButtonItem *addItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"add_green"] style:UIBarButtonItemStyleBordered target:self action:@selector(gotoAddSitesViewController)];
    naviFirst.navigationItem.leftBarButtonItem = addItem;
    
    UINavigationController *naviSecond =[[UINavigationController alloc]initWithRootViewController:air];
    naviSecond.navigationBar.barTintColor = [UIColor colorWithRed:0.302 green:0.628 blue:0.212 alpha:1.000];
    
    UINavigationController *naviThird =[[UINavigationController alloc]initWithRootViewController:scenic];
    naviThird.navigationBar.barTintColor = [UIColor colorWithRed:0.302 green:0.628 blue:0.212 alpha:1.000];
    
    UINavigationController *naviFouth =[[UINavigationController alloc]initWithRootViewController:setting];
    naviFouth.navigationBar.barTintColor = [UIColor colorWithRed:0.302 green:0.628 blue:0.212 alpha:1.000];
    
    //设置子控制器集合
    UITabBarController *tabBarController = [[UITabBarController alloc]init];
    tabBarController.viewControllers =@[naviFirst,naviSecond,naviThird,naviFouth];
    
    
    //ViewController *view = [[ViewController alloc]init];
    self.window.rootViewController = tabBarController;
//    
//    
    //添加图片
    UIImage *firstImage = [UIImage imageNamed:@"cloudy7_meitu_7.png"];
    UIImage *airImage = [UIImage imageNamed:@"font-367_meitu_8.png"];
    UIImage *scenicImage   = [UIImage imageNamed:@"line_meitu_4.png"];
    UIImage *settingImage = [UIImage imageNamed:@"settings (2)_meitu_1.png"];
    
    //配置文本颜色
    tabBarController.tabBar.tintColor = [UIColor whiteColor];
    
    //标签栏颜色
    tabBarController.tabBar.barTintColor = [UIColor colorWithRed:0.302 green:0.628 blue:0.212 alpha:0.310];
    
    //创建标签栏按钮
    UITabBarItem *firstItem  = [[UITabBarItem alloc] initWithTitle:@"首页" image:firstImage tag:10];
    UITabBarItem *recommendItem  = [[UITabBarItem alloc] initWithTitle:@"空气" image:airImage tag:20];
    
    UITabBarItem *scenicItem  = [[UITabBarItem alloc] initWithTitle:@"趋势" image:scenicImage tag:30];
    UITabBarItem *moreItem = [[UITabBarItem alloc] initWithTitle:@"设置" image:settingImage tag:40];
    
    //对应各个控制器
    home.tabBarItem = firstItem;
    air.tabBarItem = recommendItem;
    scenic.tabBarItem = scenicItem;
    setting.tabBarItem = moreItem;
    
    
    
    return YES;
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
