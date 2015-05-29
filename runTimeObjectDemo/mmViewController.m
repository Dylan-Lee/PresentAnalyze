//
//  mmViewController.m
//  runTimeObjectDemo
//
//  Created by Dylan.Lee on 15/5/29.
//  Copyright (c) 2015年 Dylan.Lee. All rights reserved.
//

#import "mmViewController.h"
#import "finalViewController.h"
@interface mmViewController ()

@end

@implementation mmViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIButton *btm = [[UIButton alloc] initWithFrame:CGRectMake(30, 40, 90, 30)];
    [btm setBackgroundColor:[UIColor redColor]];
    [btm addTarget:self action:@selector(btmClickAction:) forControlEvents:UIControlEventTouchUpInside];
    [btm setTitle:@"c" forState:UIControlStateNormal];
    [self.view addSubview:btm];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}
- (void)btmClickAction:(UIButton *)sender
{
    finalViewController *tmpVC  = [[finalViewController alloc] init];
    [self presentViewController:tmpVC animated:YES completion:nil];
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
