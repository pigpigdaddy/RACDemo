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
    
    self.view.backgroundColor = [UIColor whiteColor];
    
//    NSInteger len = [self stringLength:^(NSString *str) {
//        NSLog(@"str %@", @(str.length));
//    }];
//    
//    NSLog(@"len %@", @(len));
    
    UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(100, 100, 200, 50)];
    textField.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:textField];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(100, 200, 200, 50)];
    label.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:label];
    
    [textField.rac_textSignal subscribeNext:^(id x) {
        label.text = textField.text;
    } error:^(NSError *error) {
        NSLog(@"error : %@", error);
    } completed:^{
        NSLog(@"completed");
    }];
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
