//
//  SettingViewController.m
//  成都天气
//
//  Created by rimi on 15/6/28.
//  Copyright (c) 2015年 rectinajh. All rights reserved.
//

#import "SettingViewController.h"

@interface SettingViewController ()

@end

@implementation SettingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder]) {
        
        SettingViewController *setting = [[SettingViewController alloc]init];
        UIImage *settingIcon = [UIImage imageNamed:@"gear_meitu_1.jpg"];
        UITabBarItem *settingItem = [[UITabBarItem alloc]initWithTitle:@"" image:settingIcon tag:16];
        
        setting.tabBarItem = settingItem;
    }
    return self;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
