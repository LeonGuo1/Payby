//
//  ViewController.m
//  Payby
//
//  Created by leon guo on 15/9/24.
//  Copyright © 2015年 CenturyGalaxyNetworkDevelopment. All rights reserved.
//

#import "ViewController.h"
#import "PaybyTableViewCell.h"
#import "Payby.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
{
    NSArray *_dataSource;

}

@property(nonatomic,strong)UITableView *tableView;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initData];
    _tableView=[[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    _tableView.backgroundColor=[UIColor redColor];
    _tableView.dataSource=self;
    _tableView.delegate=self;
    // Do any additional setup after loading the view, typically from a nib.
    
    UIView *view=[[UIView alloc]initWithFrame:CGRectMake(0, 0, 200, 100)];
    view.backgroundColor=[UIColor blueColor];
    
    UIView *footView=[[UIView alloc]initWithFrame:CGRectMake(0, 0, 200, 100)];
    footView.backgroundColor=[UIColor blueColor];

    _tableView.tableHeaderView=view;
    _tableView.tableFooterView=footView;
    [self.view addSubview:_tableView];
    
    
   
}

-(void)initData{
    Payby *legendPay=[[Payby alloc]init];
    legendPay.type=LegendPay;
    legendPay.isSelect=true;
    legendPay.payByName=@"传奇宝";
    legendPay.amount=20000.00;
    legendPay.isRecharge=true;
    
    Payby *expenseCard=[[Payby alloc]init];
    expenseCard.type=LegendPay;
    expenseCard.isSelect=true;
    expenseCard.payByName=@"传奇宝";
    expenseCard.amount=20000.00;
    expenseCard.isRecharge=true;
    
    Payby *alipay=[[Payby alloc]init];
    alipay.type=LegendPay;
    alipay.isSelect=true;
    alipay.payByName=@"传奇宝";
    alipay.amount=20000.00;
    alipay.isRecharge=true;
    
    _dataSource=@[legendPay,expenseCard,alipay];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _dataSource.count;

}

// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *cellIdentifier = @"UISpecialTableViewCell";
    PaybyTableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil)
    {
        cell= (PaybyTableViewCell *)[[[NSBundle  mainBundle]  loadNibNamed:@"PaybyTableViewCell" owner:self options:nil]  lastObject];
    }
    // 自己的一些设置
    cell.delegate=self;
    return cell;

}

- (void)selectedAdress:(PaybyTableViewCell *)cell selected:(NSNumber *)isSelected
{
    
}




@end
