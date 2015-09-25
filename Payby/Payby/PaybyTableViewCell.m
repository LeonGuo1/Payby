//
//  PaybyTableViewCell.m
//  Payby
//
//  Created by leon guo on 15/9/24.
//  Copyright © 2015年 CenturyGalaxyNetworkDevelopment. All rights reserved.
//

#import "PaybyTableViewCell.h"
#import "Payby.h"

@implementation PaybyTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

- (IBAction)checked:(UIButton *)sender {
    UIButton *button = (UIButton *)sender;
    [button setSelected:!button.isSelected];
    
    NSNumber *number = [NSNumber numberWithBool:button.isSelected];
    if ([self.delegate respondsToSelector:@selector(selectedAdress:selected:)]) {
        [self.delegate performSelector:@selector(selectedAdress:selected:) withObject:self withObject:number];
    }
}


+(instancetype)paybyTableViewCell:(Payby *)model{
    PaybyTableViewCell cell= [[[NSBundle  mainBundle]  loadNibNamed:@"PaybyTableViewCell" owner:self options:nil]  lastObject];
    cell.typeName.text=model.payByName;
    cell.amount.text=[NSString stringWithFormat:@"%2f",model.amount];
    cell.recharge.enabled=model.isRecharge;
    cell.select.selected=model.isSelect;
    return cell;

}



@end
