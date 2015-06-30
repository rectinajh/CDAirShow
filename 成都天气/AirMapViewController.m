//
//  AirMapViewController.m
//  成都天气
//
//  Created by rimi on 15/6/28.
//  Copyright (c) 2015年 rectinajh. All rights reserved.
//

#import "AirMapViewController.h"

@interface AirMapViewController ()

@end

@implementation AirMapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
//
- (id)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder]) {
        
        AirMapViewController *air = [[AirMapViewController alloc]init];
        UIImage *airMapIcon = [UIImage imageNamed:@"font-367_meitu_8.png"];
        UITabBarItem * airMapItem = [[UITabBarItem alloc]initWithTitle:@"" image:airMapIcon tag:12];
        air.tabBarItem = airMapItem;
    }
    return  self;

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
