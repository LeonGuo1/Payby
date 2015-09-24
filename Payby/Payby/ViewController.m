//
//  ViewController.m
//  Payby
//
//  Created by leon guo on 15/9/24.
//  Copyright © 2015年 CenturyGalaxyNetworkDevelopment. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

@property(nonatomic,strong)UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _tableView=[[UITableView alloc] initWithFrame:CGRectMake(0, 0, 200, 300)];
    _tableView.backgroundColor=[UIColor redColor];
    _tableView.dataSource=self;
    _tableView.delegate=self;
    // Do any additional setup after loading the view, typically from a nib.
    [self.view addSubview:_tableView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
