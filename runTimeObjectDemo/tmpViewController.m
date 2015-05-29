//
//  tmpViewController.m
//  runTimeObjectDemo
//
//  Created by Dylan.Lee on 15/5/29.
//  Copyright (c) 2015年 Dylan.Lee. All rights reserved.
//

#import "tmpViewController.h"
#import "mmViewController.h"
@interface tmpViewController ()

@end

@implementation tmpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(dismissAction:) name:@"dismiss" object:nil];
    UIButton *btm = [[UIButton alloc] initWithFrame:CGRectMake(30, 40, 90, 30)];
    [btm setBackgroundColor:[UIColor redColor]];
    [btm addTarget:self action:@selector(btmClickAction:) forControlEvents:UIControlEventTouchUpInside];
      [btm setTitle:@"b" forState:UIControlStateNormal];
    [self.view addSubview:btm];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)btmClickAction:(UIButton *)sender
{
    mmViewController *tmpVC  = [[mmViewController alloc] init];
    [self presentViewController:tmpVC animated:YES completion:nil];
}

- (void)dismissAction:(NSNotification *)notification
{
    [self dismissViewControllerAnimated:YES completion:nil];
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
