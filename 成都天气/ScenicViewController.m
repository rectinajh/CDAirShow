//
//  ScenicViewController.m
//  成都天气
//
//  Created by rimi on 15/6/28.
//  Copyright (c) 2015年 rectinajh. All rights reserved.
//

#import "ScenicViewController.h"

@interface ScenicViewController ()

@end

@implementation ScenicViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(id)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder]) {
        ScenicViewController *scenic = [[ScenicViewController alloc]init];
        UIImage *scenicIcon = [UIImage imageNamed:@"cloud_1.png"];
        UITabBarItem *scenicItem = [[UITabBarItem alloc]initWithTitle:@"" image:scenicIcon tag:14];
        scenic.tabBarItem = scenicItem;
    }
    return self;

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
