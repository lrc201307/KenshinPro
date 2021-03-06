//
//  DataBaseVC.m
//  KenshinPro
//
//  Created by kenshin on 17/4/25.
//  Copyright © 2017年 Kenshin. All rights reserved.
//

#import "DataBaseVC.h"
#import "NSUserDefaultsVC.h"
#import "PlistVC.h"

@interface DataBaseVC ()

@end

@implementation DataBaseVC

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self loadData];
    [self initDataBaseVCUI];
    
}

- (void)initDataBaseVCUI
{
    self.navigationItem.title = @"数据存储";
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.tableView];
}

- (void)loadData
{
    [self addDataWithTitle:@"NSUserDefault-沙盒" andDetail:@"项目里使用最频繁的数据存储方式"];
    [self addDataWithTitle:@"plist-属性列表" andDetail:@"个人感觉还是没有沙盒用着方便 移植kenshinApp中的内容"];
    
    
}

- (void)clickCellWithTitle:(NSString *)title
{
    if ([title isEqualToString:@"NSUserDefault-沙盒"])
    {
        NSUserDefaultsVC *vc = [[NSUserDefaultsVC alloc] init];
        [self.navigationController pushViewController:vc animated:YES];
        return;
    }
    if ([title isEqualToString:@"plist-属性列表"])
    {
        PlistVC *vc = [[PlistVC alloc] init];
        [self.navigationController pushViewController:vc animated:YES];
        return;
    }
    
}



- (void)dealloc
{
    [Tools NSLogClassDestroy:self];
    
}

@end
