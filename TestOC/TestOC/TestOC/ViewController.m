//
//  ViewController.m
//  TestOC
//
//  Created by Zhao Kun on 2018/4/30.
//  Copyright © 2018年 Zhao Kun. All rights reserved.
//

#import "ViewController.h"
#import <ZKText/ZKText.h>
#import <ZKView/ZKView.h>
#import <BaseTest/IPADViewController.h>


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setUpSubviews];
#if DEV == 1
    NSLog(@"测试环境");
#else
    NSLog(@"正式环境");
#endif
}

- (void)setUpSubviews {
    ZKLabel *label = [[ZKLabel alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    [self.view addSubview:label];
}

- (IBAction)clickButton:(UIButton *)sender {
    NSLog(@"%@", [ZKText getUUID]);
    [self presentViewController:[IPADViewController new] animated:true completion:nil];
}



@end
