//
//  ZKLabel.m
//  ZKView
//
//  Created by Zhao Kun on 2018/4/30.
//  Copyright © 2018年 Zhao Kun. All rights reserved.
//

#import "ZKLabel.h"

@implementation ZKLabel


- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor redColor];
        self.text = @"ZKView >> ZKLabel";
    }
    return self;
}


@end
