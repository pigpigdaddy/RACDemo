//
//  ViewController.m
//  RACDemo
//
//  Created by linfeng on 15/12/29.
//  Copyright © 2015年 linfeng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    NSInteger len = [self stringLength:^(NSString *str) {
        NSLog(@"str %@", @(str.length));
    }];
    
    NSLog(@"len %@", @(len));
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)stringLength:(void(^)(NSString *str))block{
    NSString *string = @"12345";
    block(string);
    return string.length;
}


@end
