//
//  SettingViewController.m
//  成都天气
//
//  Created by rimi on 15/6/28.
//  Copyright (c) 2015年 rectinajh. All rights reserved.
//

#import "SettingViewController.h"

@interface SettingViewController ()<UITableViewDelegate,UITableViewDataSource>

@property(strong, nonatomic) UITableView            *tableView;   //表格视图

- (void)initlializeDataSource;

@end

@implementation SettingViewController

- (id)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder]) {
        
        SettingViewController *setting = [[SettingViewController alloc]init];
        UIImage *settingIcon = [UIImage imageNamed:@"settings (2)_meitu_1"];
        UITabBarItem *settingItem = [[UITabBarItem alloc]initWithTitle:@"" image:settingIcon tag:16];
        
        setting.tabBarItem = settingItem;
    }
    return self;
    
}

- (void)initlializeDataSource
{
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height - 130, [UIScreen mainScreen].bounds.size.width, 40)];
    label.textColor = [UIColor lightGrayColor];
    label.font = [UIFont boldSystemFontOfSize:14];
    label.textAlignment = NSTextAlignmentCenter;
    label.numberOfLines = 2;
    label.text = @"©终于搞完了\n技术支持：😄";
    label.backgroundColor = [UIColor clearColor];
    [self.view addSubview:label];
    
    self.tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 100, CGRectGetWidth(self.view.frame), 100) style:UITableViewStylePlain];
    self.tableView.backgroundColor = [UIColor clearColor];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    [self.view addSubview:self.tableView];
    
}

#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return 2;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * ID = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:ID];
    }
    
    // Configure the cell...
    NSArray *titles = @[@"实时发布说明", @"新版本更新"];
    cell.textLabel.text = titles[indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    switch (indexPath.row) {
        case 0: {
            NSString *string = @"1、发布依据：根据《环境空气质量标准》（GB3095-2012），以及《环境空气质量指数（AQI）技术规定（试行）》的有关规定，发布天津市环境空气质量实时监测数据。\n2、发布内容：环境空气质量指数（AQI），颗粒物（PM2.5，粒径小于等于2.5μm），颗粒物（PM10，粒径小于等于10μm），二氧化硫（SO2），二氧化氮（NO2），臭氧（O3），一氧化碳（CO）。\n3、数据来源：天津市环境空气质量自动监测站点实时监测数据，发布频率为每小时更新一次。\n\t4、发布说明：当遇到监测站点仪器维护校零、校标，仪器故障、通信故障、电力故障等原因，数据会暂时出现“/”或者无数据情况。\n";
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"实时发布说明" message:string delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil];
            [alert show];
        }
            break;
        case 1: {
            //[self checkUpdate];
        }
            break;
        default:
            break;
    }
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
