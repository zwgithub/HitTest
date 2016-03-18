//
//  ViewController.m
//  HitTest
//
//  Created by shanWu on 16/3/18.
//  Copyright © 2016年 caozhenwei. All rights reserved.
//

#import "ViewController.h"
#import "TestView.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    TestView *testView = [[TestView alloc] initWithFrame:CGRectMake(10, 20, self.view.frame.size.width - 20, self.view.frame.size.height - 40)];
    testView.backgroundColor = [UIColor grayColor];
    [self.view addSubview:testView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
