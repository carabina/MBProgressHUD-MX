# MBProgressHUD+Meniny

`MXProgressHUD` is a category of MBProgressHUD.

## Installation with CocoaPods

```
pod 'MXProgressHUD'
```

## Usage

```objective-c
#import "MXProgressHUD.h"
```

```objective-c
[MBProgressHUD showLoading:@"Loading" duration:4];
[MBProgressHUD showSuccess:@"Success"];
[MBProgressHUD showError:@"Error"];
[MBProgressHUD showText:@"Some Text"];
[MBProgressHUD showText:@"Some Text" duration:4];
[MBProgressHUD showHUD:@"This is a HUD" type:MBProgressHUDTypeLoading duration:4 customIcon:nil view:nil];
[MBProgressHUD showHUD:@"This is a HUD" type:MBProgressHUDTypeSuccess duration:4 customIcon:nil view:nil];
[MBProgressHUD showHUD:@"This is a HUD" type:MBProgressHUDTypeError duration:4 customIcon:nil view:nil];
[MBProgressHUD showHUD:@"This is a HUD" type:MBProgressHUDTypeText duration:4 customIcon:nil view:nil];
[MBProgressHUD showHUD:@"This is a HUD" type:MBProgressHUDTypeCustomIcon duration:4 customIcon:[UIImage imageNamed:@"img" ] view:nil];
```

```objective-c
MBProgressHUD *hud = [MBProgressHUD makeLoading:@"A Loading HUD" toView:nil];
[hud showAnimated:YES];
//[hud hideAnimated:YES];
```

```objective-c
[MBProgressHUD showLoading:@"Loading" duration:4];
```

And More..
