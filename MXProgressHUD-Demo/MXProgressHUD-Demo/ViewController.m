//
//  ViewController.m
//  MBProgressHUD-Demo
//
//  Created by Meniny on 16/8/29.
//  Copyright © 2016年 Meniny. All rights reserved.
//

#import "ViewController.h"
#import "MXProgressHUD.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [MBProgressHUD showLoading:@"Loading" duration:10];
//    [MBProgressHUD showSuccess:@"Success"];
//    [MBProgressHUD showError:@"Error"];
//    [MBProgressHUD showText:@"Some Text"];
//    [MBProgressHUD showText:@"Some Text" duration:4];
//    [MBProgressHUD showHUD:@"This is a HUD" type:MBProgressHUDTypeLoading duration:4 customIcon:nil view:nil];
//    [MBProgressHUD showHUD:@"This is a HUD" type:MBProgressHUDTypeSuccess duration:4 customIcon:nil view:nil];
//    [MBProgressHUD showHUD:@"This is a HUD" type:MBProgressHUDTypeError duration:4 customIcon:nil view:nil];
//    [MBProgressHUD showHUD:@"This is a HUD" type:MBProgressHUDTypeText duration:4 customIcon:nil view:nil];
//    [MBProgressHUD showHUD:@"This is a HUD" type:MBProgressHUDTypeCustomIcon duration:4 customIcon:[UIImage imageNamed:@"wg" ] view:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
