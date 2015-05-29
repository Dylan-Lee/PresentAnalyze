//
//  finalViewController.m
//  runTimeObjectDemo
//
//  Created by Dylan.Lee on 15/5/29.
//  Copyright (c) 2015年 Dylan.Lee. All rights reserved.
//

#import "finalViewController.h"

@interface finalViewController ()

@end

@implementation finalViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIButton *btm = [[UIButton alloc] initWithFrame:CGRectMake(30, 40, 90, 30)];
    [btm setBackgroundColor:[UIColor redColor]];
    [btm addTarget:self action:@selector(btmClickAction:) forControlEvents:UIControlEventTouchUpInside];
    [btm setTitle:@"d" forState:UIControlStateNormal];
    [self.view addSubview:btm];

    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)btmClickAction:(UIButton *)sender
{
    [[NSNotificationCenter defaultCenter] postNotificationName:@"dismiss" object:nil];
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
