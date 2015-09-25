//
//  Payby.h
//  Payby
//
//  Created by leon guo on 15/9/24.
//  Copyright © 2015年 CenturyGalaxyNetworkDevelopment. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Payby : NSObject

typedef enum{
    LegendPay,
    ExpenseCard,
    Alipay
}PaybyType;


@property(nonatomic,assign)PaybyType type;

@property(nonatomic,assign)BOOL isSelect;

@property(nonatomic,strong)NSString *payByName;

@property(nonatomic,assign)float amount;

@property(nonatomic,assign)BOOL isRecharge;

@end
