//
//  ViewController.m
//  runTimeObjectDemo
//
//  Created by Dylan.Lee on 15/5/29.
//  Copyright (c) 2015年 Dylan.Lee. All rights reserved.
//

#import "ViewController.h"
#import "ZBJDogMode.h"
#import <objc/runtime.h>
#import "tmpViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
//    NSDictionary *dic = @{
//                          @"name":@"zhumingyue",
//                          @"age" :@"23",
//                          @"gender":@"ffff",
//                          @"color" :@"black",
//                          @"height":@"90kg"
//                          };
//    addedMethod = @selector(testMethod);
//    ZBJDogMode *mode = [[ZBJDogMode alloc] initWithDictionary:dic];
//    const char *name = class_getName([ZBJDogMode class]);
//    NSString *str = [NSString stringWithUTF8String:name];
//    const char *type;
//    IMP tmpImp;
//    BOOL modes = class_addMethod([ZBJDogMode class],addedMethod , tmpImp, type);
//    unsigned int methodCount;
//    Method *methodList = class_copyMethodList([ZBJDogMode class], &methodCount);
//    NSLog(@"classname = %@, classMehtodList = %@",str,[NSString stringWithUTF8String:methodList]);
//    for (int i = 0; i < methodCount; i++)
//    {
//        NSLog(@"%@ - %@", [NSString stringWithCString:class_getName([ZBJDogMode class]) encoding:NSUTF8StringEncoding], [NSString stringWithCString:sel_getName(method_getName(methodList[i])) encoding:NSUTF8StringEncoding]);
//    }
//    ZBJDogMode *zbjMode = [NSClassFromString(str)];
//    NSLog(@"%@",[mode description]);

    UIButton *btm = [[UIButton alloc] initWithFrame:CGRectMake(30, 40, 90, 30)];
    [btm setBackgroundColor:[UIColor redColor]];
    [btm setTitle:@"a" forState:UIControlStateNormal];
    [btm addTarget:self action:@selector(btmClickAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btm];
}

- (void)btmClickAction:(UIButton *)sender
{
    tmpViewController *tmpVC  = [[tmpViewController alloc] init];
    [self presentViewController:tmpVC animated:YES completion:nil];
}

- (void)testMethod
{

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
