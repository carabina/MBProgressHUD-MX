//
//  MXProgressHUD+MX.m
//
//  Created by Meniny on 15-6-20.
//  Copyright (c) 2015年 Meniny. All rights reserved.
//

#import "MXProgressHUD.h"

#define kMXProgressHUDDefaultDuration 1.50f

@implementation MXProgressHUD

+ (void)showHUD:(NSString *)text duration:(NSTimeInterval)duration imageName:(NSString *)imageName view:(UIView *)view {
    [MXProgressHUD showHUD:text duration:duration image:[UIImage imageNamed:imageName] view:view];
}

+ (void)showHUD:(NSString *)text duration:(NSTimeInterval)duration image:(UIImage *)image view:(UIView *)view {
    MXProgressHUD *hud = [MXProgressHUD makeHUD:text image:image view:view];
    [hud hideAnimated:YES afterDelay:[MXProgressHUD duration:duration]];
}

+ (instancetype)makeHUD:(NSString *)text imageName:(NSString *)imageName view:(UIView *)view {
    return [MXProgressHUD makeHUD:text image:[UIImage imageNamed:imageName] view:view];
}

+ (instancetype)makeHUD:(NSString *)text image:(UIImage *)image view:(UIView *)view {
    if (view == nil) {
        view = [[UIApplication sharedApplication].windows lastObject];
    }
    MXProgressHUD* hud = [MXProgressHUD showHUDAddedTo:view animated:YES];
    hud.label.text = text;
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    [imageView setContentMode:UIViewContentModeScaleAspectFit];
    [imageView setClipsToBounds:YES];
    [imageView setBackgroundColor:[UIColor clearColor]];
    hud.customView = imageView;
    hud.mode = MBProgressHUDModeCustomView;
    [hud setBackgroundStyle];
    hud.removeFromSuperViewOnHide = YES;
    return hud;
}

+ (void)showError:(NSString *)error toView:(UIView *)view {
    [self showHUD:error duration:0 imageName:[NSString stringWithFormat:@"MXProgressHUD.bundle/error.png"] view:view];
}

+ (void)showSuccess:(NSString *)success toView:(UIView *)view {
    [self showHUD:success duration:0 imageName:[NSString stringWithFormat:@"MXProgressHUD.bundle/success.png"] view:view];
}

+ (instancetype)makeError:(NSString *)error toView:(UIView *)view {
    return [MXProgressHUD makeHUD:error imageName:[NSString stringWithFormat:@"MXProgressHUD.bundle/error.png"] view:view];
}

+ (instancetype)makeSuccess:(NSString *)success toView:(UIView *)view {
    return [MXProgressHUD makeHUD:success imageName:[NSString stringWithFormat:@"MXProgressHUD.bundle/success.png"] view:view];
}

+ (MXProgressHUD*)makeLoading:(NSString *)message toView:(UIView *)view {
    if (view == nil) {
        view = [[UIApplication sharedApplication].windows lastObject];
    }
    MXProgressHUD* hud = [MXProgressHUD showHUDAddedTo:view animated:YES];
    hud.label.text = message;
    hud.removeFromSuperViewOnHide = YES;
    [hud setBackgroundStyle];
    return hud;
}

+ (void)showLoading:(NSString *)message toView:(UIView *)view duration:(NSTimeInterval)duration {
    [[MXProgressHUD makeLoading:message toView:view] hideAnimated:YES afterDelay:[MXProgressHUD duration:duration]];
}

+ (void)showLoading:(NSString *)message duration:(NSTimeInterval)duration {
    [MXProgressHUD showLoading:message toView:nil duration:duration];
}

+ (void)showSuccess:(NSString *)success {
    [self showSuccess:success toView:nil];
}

+ (void)showError:(NSString *)error {
    [self showError:error toView:nil];
}

+ (instancetype)makeLoading:(NSString *)message {
    return [self makeLoading:message toView:nil];
}

+ (void)showText:(NSString *)text {
    [MXProgressHUD showText:text duration:0];
}

+ (void)showText:(NSString *)text toView:(UIView *)view {
    [MXProgressHUD showText:text toView:view duration:0];
}

+ (void)showText:(NSString *)text duration:(NSTimeInterval)duration {
    [MXProgressHUD showText:text toView:nil duration:duration];
}

+ (void)showText:(NSString *)text toView:(UIView *)view duration:(NSTimeInterval)duration {
    [[MXProgressHUD makeText:text toView:view] hideAnimated:YES afterDelay:[MXProgressHUD duration:duration]];
}

+ (instancetype)makeText:(NSString *)text {
    return [MXProgressHUD makeText:text toView:nil];
}

+ (instancetype)makeText:(NSString *)text toView:(UIView *)view {
    if (view == nil) {
        view = [[UIApplication sharedApplication].windows lastObject];
    }
    MXProgressHUD* hud = [MXProgressHUD showHUDAddedTo:view animated:YES];
    hud.label.text = text;
    hud.mode = MBProgressHUDModeText;
    [hud setBackgroundStyle];
    hud.removeFromSuperViewOnHide = YES;
    return hud;
}

+ (void)showHUD:(NSString *)text type:(MXProgressHUDType)type duration:(NSTimeInterval)duration customIcon:(UIImage *)icon view:(UIView *)view {
    [[MXProgressHUD makeHUD:text type:type customIcon:icon view:view] hideAnimated:YES afterDelay:[MXProgressHUD duration:duration]];
}

+ (instancetype)makeHUD:(NSString *)text type:(MXProgressHUDType)type customIcon:(UIImage *)icon view:(UIView *)view {
    if (view == nil) {
        view = [[UIApplication sharedApplication].windows lastObject];
    }
    switch (type) {
        case MXProgressHUDTypeCustomIcon: {
            return [MXProgressHUD makeHUD:text image:icon view:view];
        }
            break;
        case MXProgressHUDTypeSuccess: {
            return [MXProgressHUD makeSuccess:text toView:view];
        }
            break;
            
        case MXProgressHUDTypeError: {
            return [MXProgressHUD makeError:text toView:view];
        }
            break;
            
        case MXProgressHUDTypeText: {
            return [MXProgressHUD makeText:text toView:view];
        }
            break;
            
        default: {
            return [MXProgressHUD makeLoading:text toView:view];
        }
            break;
    }
}

+ (void)hideHUDForView:(UIView *)view {
    [self hideHUDForView:view animated:YES];
}

+ (void)hideHUD {
    [self hideHUDForView:nil];
}

- (void)setBackgroundStyle {
//    self.backgroundView.style = MXProgressHUDBackgroundStyleBlur;
//    self.backgroundView.color = [UIColor colorWithWhite:0.0f alpha:0.2f];
}

+ (NSTimeInterval)duration:(NSTimeInterval)duration {
    return ((duration <= 0.1f) ? kMXProgressHUDDefaultDuration : duration);
}
@end
