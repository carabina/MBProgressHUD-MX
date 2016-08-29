//
//  MBProgressHUD+MX.m
//
//  Created by Meniny on 15-6-20.
//  Copyright (c) 2015年 Meniny. All rights reserved.
//

#import "MBProgressHUD+MX.h"

#define kMXProgressHUDDefaultDuration 1.50f

@implementation MBProgressHUD (MX)

+ (void)showHUD:(NSString *)text duration:(NSTimeInterval)duration imageName:(NSString *)imageName view:(UIView *)view {
    [MBProgressHUD showHUD:text duration:duration image:[UIImage imageNamed:imageName] view:view];
}

+ (void)showHUD:(NSString *)text duration:(NSTimeInterval)duration image:(UIImage *)image view:(UIView *)view {
    MBProgressHUD *hud = [MBProgressHUD makeHUD:text image:image view:view];
    [hud hideAnimated:YES afterDelay:[MBProgressHUD duration:duration]];
}

+ (MBProgressHUD *)makeHUD:(NSString *)text imageName:(NSString *)imageName view:(UIView *)view {
    return [MBProgressHUD makeHUD:text image:[UIImage imageNamed:imageName] view:view];
}

+ (MBProgressHUD *)makeHUD:(NSString *)text image:(UIImage *)image view:(UIView *)view {
    if (view == nil) {
        view = [[UIApplication sharedApplication].windows lastObject];
    }
    MBProgressHUD* hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
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

+ (MBProgressHUD *)makeError:(NSString *)error toView:(UIView *)view {
    return [MBProgressHUD makeHUD:error imageName:[NSString stringWithFormat:@"MXProgressHUD.bundle/error.png"] view:view];
}

+ (MBProgressHUD *)makeSuccess:(NSString *)success toView:(UIView *)view {
    return [MBProgressHUD makeHUD:success imageName:[NSString stringWithFormat:@"MXProgressHUD.bundle/success.png"] view:view];
}

+ (MBProgressHUD*)makeLoading:(NSString *)message toView:(UIView *)view {
    if (view == nil) {
        view = [[UIApplication sharedApplication].windows lastObject];
    }
    MBProgressHUD* hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.label.text = message;
    hud.removeFromSuperViewOnHide = YES;
    [hud setBackgroundStyle];
    return hud;
}

+ (void)showLoading:(NSString *)message toView:(UIView *)view duration:(NSTimeInterval)duration {
    [[MBProgressHUD makeLoading:message toView:view] hideAnimated:YES afterDelay:[MBProgressHUD duration:duration]];
}

+ (void)showLoading:(NSString *)message duration:(NSTimeInterval)duration {
    [MBProgressHUD showLoading:message toView:nil duration:duration];
}

+ (void)showSuccess:(NSString *)success {
    [self showSuccess:success toView:nil];
}

+ (void)showError:(NSString *)error {
    [self showError:error toView:nil];
}

+ (MBProgressHUD *)makeLoading:(NSString *)message {
    return [self makeLoading:message toView:nil];
}

+ (void)showText:(NSString *)text {
    [MBProgressHUD showText:text duration:0];
}

+ (void)showText:(NSString *)text toView:(UIView *)view {
    [MBProgressHUD showText:text toView:view duration:0];
}

+ (void)showText:(NSString *)text duration:(NSTimeInterval)duration {
    [MBProgressHUD showText:text toView:nil duration:duration];
}

+ (void)showText:(NSString *)text toView:(UIView *)view duration:(NSTimeInterval)duration {
    [[MBProgressHUD makeText:text toView:view] hideAnimated:YES afterDelay:[MBProgressHUD duration:duration]];
}

+ (MBProgressHUD *)makeText:(NSString *)text {
    return [MBProgressHUD makeText:text toView:nil];
}

+ (MBProgressHUD *)makeText:(NSString *)text toView:(UIView *)view {
    if (view == nil) {
        view = [[UIApplication sharedApplication].windows lastObject];
    }
    MBProgressHUD* hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.label.text = text;
    hud.mode = MBProgressHUDModeText;
    [hud setBackgroundStyle];
    hud.removeFromSuperViewOnHide = YES;
    return hud;
}

+ (void)showHUD:(NSString *)text type:(MBProgressHUDType)type duration:(NSTimeInterval)duration customIcon:(UIImage *)icon view:(UIView *)view {
    [[MBProgressHUD makeHUD:text type:type customIcon:icon view:view] hideAnimated:YES afterDelay:[MBProgressHUD duration:duration]];
}

+ (MBProgressHUD *)makeHUD:(NSString *)text type:(MBProgressHUDType)type customIcon:(UIImage *)icon view:(UIView *)view {
    if (view == nil) {
        view = [[UIApplication sharedApplication].windows lastObject];
    }
    switch (type) {
        case MBProgressHUDTypeCustomIcon: {
            return [MBProgressHUD makeHUD:text image:icon view:view];
        }
            break;
        case MBProgressHUDTypeSuccess: {
            return [MBProgressHUD makeSuccess:text toView:view];
        }
            break;
            
        case MBProgressHUDTypeError: {
            return [MBProgressHUD makeError:text toView:view];
        }
            break;
            
        case MBProgressHUDTypeText: {
            return [MBProgressHUD makeText:text toView:view];
        }
            break;
            
        default: {
            return [MBProgressHUD makeLoading:text toView:view];
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
//    self.backgroundView.style = MBProgressHUDBackgroundStyleBlur;
//    self.backgroundView.color = [UIColor colorWithWhite:0.0f alpha:0.2f];
}

+ (NSTimeInterval)duration:(NSTimeInterval)duration {
    return ((duration <= 0.1f) ? kMXProgressHUDDefaultDuration : duration);
}
@end
