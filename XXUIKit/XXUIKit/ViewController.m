//
//  ViewController.m
//  XXUIKit
//
//  Created by 徐徐 on 2017/5/12.
//  Copyright © 2017年 徐徐. All rights reserved.
//

#import "ViewController.h"
#import "UIView+Extension.h"

@interface ViewController ()

@property (nonatomic , strong) UIView *one;
@property (nonatomic , strong) UIView *two;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.one.frame = CGRectMake(100, 150, 100, 100);
    [self.view addSubview:self.one];
    
    self.two.size = self.one.size;
    self.two.bottom = self.one.top;
//    self.two.y = self.one.y;
    [self.view addSubview:self.two];
}

- (UIView *)one {
    if (!_one) {
        _one = [UIView new];
        _one.backgroundColor = [UIColor redColor];
    }
    return _one;
}

- (UIView *)two {
    if (!_two) {
        _two = [UIView new];
        _two.backgroundColor = [UIColor greenColor];
    }
    return _two;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
