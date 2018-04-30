//
//  ViewController.m
//  TestOCIPad
//
//  Created by Zhao Kun on 2018/4/30.
//  Copyright © 2018年 Zhao Kun. All rights reserved.
//

#import "ViewController.h"
#import <ZKText/ZKText.h>
#import <BaseTest/IPADViewController.h>
#import <AFNetworking/AFNetworking.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"%@", [ZKText getUUID]);
    
}

- (IBAction)clickButton:(UIButton *)sender {
    [self presentViewController:[IPADViewController new] animated:true completion:nil];

}



@end
