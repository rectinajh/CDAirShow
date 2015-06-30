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

- (id)initWithCoder:(NSCoder *)aDecoder
{
    //设置tabBarItem图标
    if (self = [super initWithCoder:aDecoder]) {
       
       
        
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIBarButtonItem *settingItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"seting_green"] style:UIBarButtonItemStylePlain target:self action:@selector(gotoSettingViewController)];
    
    
    settingItem.tintColor = [UIColor redColor];
    
    
    self.navigationItem.rightBarButtonItem = settingItem;
    
    
    
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
