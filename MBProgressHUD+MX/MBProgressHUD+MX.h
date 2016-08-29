//
//  MBProgressHUD+MX.h
//
//  Created by Meniny on 15-6-20.
//  Copyright (c) 2015年 Meniny. All rights reserved.
//

#import "MBProgressHUD.h"

typedef MBProgressHUD MXProgressHUD;

typedef enum : NSUInteger {
    MBProgressHUDTypeLoading = 0,
    MBProgressHUDTypeSuccess = 1,
    MBProgressHUDTypeError = 2,
    MBProgressHUDTypeCustomIcon = 3,
    MBProgressHUDTypeText = 4
} MBProgressHUDType;

@interface MBProgressHUD (MX)
+ (void)showHUD:(NSString * _Nonnull)text duration:(NSTimeInterval)duration imageName:(NSString * _Nonnull)imageName view:(UIView * _Nullable)view;
+ (MBProgressHUD * _Nonnull)makeHUD:(NSString * _Nonnull)text imageName:(NSString * _Nonnull)imageName view:(UIView * _Nullable)view;

+ (void)showHUD:(NSString * _Nonnull)text duration:(NSTimeInterval)duration image:(UIImage * _Nonnull)image view:(UIView * _Nullable)view;
+ (MBProgressHUD * _Nonnull)makeHUD:(NSString * _Nonnull)text image:(UIImage * _Nonnull)image view:(UIView * _Nullable)view;

+ (void)showSuccess:(NSString * _Nonnull)success;
+ (void)showSuccess:(NSString * _Nonnull)success toView:(UIView * _Nullable)view;
+ (MBProgressHUD * _Nonnull)makeSuccess:(NSString * _Nonnull)success toView:(UIView * _Nullable)view;

+ (void)showError:(NSString * _Nonnull)error;
+ (void)showError:(NSString * _Nonnull)error toView:(UIView * _Nullable)view;
+ (MBProgressHUD * _Nonnull)makeError:(NSString * _Nonnull)error toView:(UIView * _Nullable)view;

+ (void)showLoading:(NSString * _Nonnull)message duration:(NSTimeInterval)duration;
+ (void)showLoading:(NSString * _Nonnull)message toView:(UIView * _Nullable)view duration:(NSTimeInterval)duration;
+ (MBProgressHUD * _Nonnull)makeLoading:(NSString * _Nonnull)message;
+ (MBProgressHUD * _Nonnull)makeLoading:(NSString * _Nonnull)message toView:(UIView * _Nullable)view;

+ (void)showText:(NSString * _Nonnull)text;
+ (void)showText:(NSString * _Nonnull)text toView:(UIView * _Nullable)view;
+ (void)showText:(NSString * _Nonnull)text duration:(NSTimeInterval)duration;
+ (void)showText:(NSString * _Nonnull)text toView:(UIView * _Nullable)view duration:(NSTimeInterval)duration;

+ (MBProgressHUD * _Nonnull)makeText:(NSString * _Nonnull)text;
+ (MBProgressHUD * _Nonnull)makeText:(NSString * _Nonnull)text toView:(UIView * _Nullable)view;

+ (void)showHUD:(NSString * _Nonnull)text type:(MBProgressHUDType)type duration:(NSTimeInterval)duration customIcon:(UIImage * _Nullable)icon view:(UIView * _Nullable)view;
+ (MBProgressHUD * _Nonnull)makeHUD:(NSString * _Nonnull)text type:(MBProgressHUDType)type customIcon:(UIImage * _Nullable)icon view:(UIView * _Nullable)view;

+ (void)hideHUD;
+ (void)hideHUDForView:(UIView * _Nullable)view;
@end
