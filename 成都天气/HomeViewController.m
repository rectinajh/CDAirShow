//
//  HomeViewController.m
//  
//
//  Created by rimi on 15/6/28.
//
//

#import "HomeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    //设置tabBarItem图标
    if (self = [super initWithCoder:aDecoder]) {
        UIImage *homeIcon = [UIImage imageNamed:@"home2_meitu_4.jpg"];
        
        HomeViewController *home = [[HomeViewController alloc]init];
        UITabBarItem *homepageBarItem = [[UITabBarItem alloc]initWithTitle:@"" image:homeIcon tag:10];
        home.tabBarItem = homepageBarItem;
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
