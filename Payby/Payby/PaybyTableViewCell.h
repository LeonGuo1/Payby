//
//  PaybyTableViewCell.h
//  Payby
//
//  Created by leon guo on 15/9/24.
//  Copyright © 2015年 CenturyGalaxyNetworkDevelopment. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PaybyTableViewCell : UITableViewCell


@property(nonatomic,assign)id delegate;
@property (weak, nonatomic) IBOutlet UILabel *typeName;
@property (weak, nonatomic) IBOutlet UILabel *amount;
@property (weak, nonatomic) IBOutlet UIButton *recharge;
@property (weak, nonatomic) IBOutlet UIButton *select;

@end
