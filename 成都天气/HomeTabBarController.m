//
//  HomeTabBarController.m
//  成都天气
//
//  Created by rimi on 15/6/28.
//  Copyright (c) 2015年 rectinajh. All rights reserved.
//

#import "HomeTabBarController.h"

@interface HomeTabBarController ()

@end

@implementation HomeTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    //获取storyBoard的初始化文件
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"" bundle:[NSBundle mainBundle]];
    
    //根据标识符获取控制器对象
    return [storyBoard instantiateViewControllerWithIdentifier:@""];

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
