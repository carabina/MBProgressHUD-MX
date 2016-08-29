//
//  MXProgressHUD+MX.h
//
//  Created by Meniny on 15-6-20.
//  Copyright (c) 2015年 Meniny. All rights reserved.
//

#import <MBProgressHUD/MBProgressHUD.h>

typedef enum : NSUInteger {
    MXProgressHUDTypeLoading = 0,
    MXProgressHUDTypeSuccess = 1,
    MXProgressHUDTypeError = 2,
    MXProgressHUDTypeCustomIcon = 3,
    MXProgressHUDTypeText = 4
} MXProgressHUDType;

@interface MXProgressHUD: MBProgressHUD
+ (void)showHUD:(NSString * _Nonnull)text duration:(NSTimeInterval)duration imageName:(NSString * _Nonnull)imageName view:(UIView * _Nullable)view;
+ (instancetype _Nonnull)makeHUD:(NSString * _Nonnull)text imageName:(NSString * _Nonnull)imageName view:(UIView * _Nullable)view;

+ (void)showHUD:(NSString * _Nonnull)text duration:(NSTimeInterval)duration image:(UIImage * _Nonnull)image view:(UIView * _Nullable)view;
+ (instancetype _Nonnull)makeHUD:(NSString * _Nonnull)text image:(UIImage * _Nonnull)image view:(UIView * _Nullable)view;

+ (void)showSuccess:(NSString * _Nonnull)success;
+ (void)showSuccess:(NSString * _Nonnull)success toView:(UIView * _Nullable)view;
+ (instancetype _Nonnull)makeSuccess:(NSString * _Nonnull)success toView:(UIView * _Nullable)view;

+ (void)showError:(NSString * _Nonnull)error;
+ (void)showError:(NSString * _Nonnull)error toView:(UIView * _Nullable)view;
+ (instancetype _Nonnull)makeError:(NSString * _Nonnull)error toView:(UIView * _Nullable)view;

+ (void)showLoading:(NSString * _Nonnull)message duration:(NSTimeInterval)duration;
+ (void)showLoading:(NSString * _Nonnull)message toView:(UIView * _Nullable)view duration:(NSTimeInterval)duration;
+ (instancetype _Nonnull)makeLoading:(NSString * _Nonnull)message;
+ (instancetype _Nonnull)makeLoading:(NSString * _Nonnull)message toView:(UIView * _Nullable)view;

+ (void)showText:(NSString * _Nonnull)text;
+ (void)showText:(NSString * _Nonnull)text toView:(UIView * _Nullable)view;
+ (void)showText:(NSString * _Nonnull)text duration:(NSTimeInterval)duration;
+ (void)showText:(NSString * _Nonnull)text toView:(UIView * _Nullable)view duration:(NSTimeInterval)duration;

+ (instancetype _Nonnull)makeText:(NSString * _Nonnull)text;
+ (instancetype _Nonnull)makeText:(NSString * _Nonnull)text toView:(UIView * _Nullable)view;

+ (void)showHUD:(NSString * _Nonnull)text type:(MXProgressHUDType)type duration:(NSTimeInterval)duration customIcon:(UIImage * _Nullable)icon view:(UIView * _Nullable)view;
+ (instancetype _Nonnull)makeHUD:(NSString * _Nonnull)text type:(MXProgressHUDType)type customIcon:(UIImage * _Nullable)icon view:(UIView * _Nullable)view;

+ (void)hideHUD;
+ (void)hideHUDForView:(UIView * _Nullable)view;
@end
